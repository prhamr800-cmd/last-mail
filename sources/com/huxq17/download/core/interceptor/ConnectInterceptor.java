package com.huxq17.download.core.interceptor;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import android.text.format.Formatter;
import com.huxq17.download.DownloadProvider;
import com.huxq17.download.ErrorCode;
import com.huxq17.download.PumpFactory;
import com.huxq17.download.TaskManager;
import com.huxq17.download.core.DownloadDetailsInfo;
import com.huxq17.download.core.DownloadInfo;
import com.huxq17.download.core.DownloadInterceptor;
import com.huxq17.download.core.DownloadRequest;
import com.huxq17.download.core.connection.DownloadConnection;
import com.huxq17.download.core.service.IDownloadConfigService;
import com.huxq17.download.core.service.IDownloadManager;
import com.huxq17.download.core.task.DownloadBlockTask;
import com.huxq17.download.core.task.DownloadTask;
import com.huxq17.download.core.task.Task;
import com.huxq17.download.db.DBService;
import com.huxq17.download.utils.LogUtil;
import com.huxq17.download.utils.Util;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public class ConnectInterceptor implements DownloadInterceptor {
    private DownloadDetailsInfo downloadInfo;
    private DownloadTask downloadTask;
    private boolean isConditionRequest;
    private DownloadBlockTask firstBlockTask = null;
    private final List<DownloadBlockTask> blockList = new ArrayList();

    private void deleteTempIfThreadNumChanged(DownloadDetailsInfo downloadInfo) {
        String[] childList;
        File tempDir = downloadInfo.getTempDir();
        if (tempDir != null && (childList = tempDir.list(new FilenameFilter() { // from class: com.huxq17.download.core.interceptor.ConnectInterceptor.1
            @Override // java.io.FilenameFilter
            public boolean accept(File dir, String name) {
                return name.startsWith(Util.DOWNLOAD_PART);
            }
        })) != null && childList.length != downloadInfo.getThreadNum()) {
            downloadInfo.deleteTempDir();
        }
    }

    @Override // com.huxq17.download.core.DownloadInterceptor
    public DownloadInfo intercept(DownloadInterceptor.DownloadChain chain) throws Throwable {
        this.isConditionRequest = false;
        DownloadRequest downloadRequest = chain.request();
        this.downloadInfo = downloadRequest.getDownloadInfo();
        this.downloadTask = this.downloadInfo.getDownloadTask();
        deleteTempIfThreadNumChanged(this.downloadInfo);
        DownloadConnection conn = buildRequest(downloadRequest);
        Response response = connect(conn);
        if (response == null) {
            conn.close();
            if (!isCancelled()) {
                this.downloadInfo.setErrorCode(ErrorCode.ERROR_NETWORK_UNAVAILABLE);
            }
            return this.downloadInfo.snapshot();
        }
        Util.setFilePathIfNeed(this.downloadTask, response);
        String lastModified = conn.getHeader(HttpRequest.HEADER_LAST_MODIFIED);
        String eTag = conn.getHeader(HttpRequest.HEADER_ETAG);
        String acceptRanges = conn.getHeader("Accept-Ranges");
        this.downloadInfo.setMD5(conn.getHeader("Content-MD5"));
        this.downloadInfo.setTransferEncoding(conn.getHeader("Transfer-Encoding"));
        int responseCode = response.code();
        long contentLength = getContentLength(conn);
        if (response.isSuccessful()) {
            if (contentLength == -1 && !this.downloadInfo.isChunked()) {
                this.downloadInfo.setErrorCode(ErrorCode.ERROR_CONTENT_LENGTH_NOT_FOUND);
                return closeConnectionAndReturn(conn);
            }
            if (checkIsSpaceNotEnough(contentLength)) {
                this.downloadInfo.setErrorCode(ErrorCode.ERROR_USABLE_SPACE_NOT_ENOUGH);
                return closeConnectionAndReturn(conn);
            }
        } else if (responseCode == 304) {
            if (this.downloadInfo.isFinished()) {
                this.downloadInfo.setCompletedSize(this.downloadInfo.getContentLength());
                this.downloadInfo.setProgress(100);
                this.downloadInfo.setStatus(DownloadInfo.Status.FINISHED);
                this.downloadTask.updateInfo();
                return closeConnectionAndReturn(conn);
            }
        } else {
            if (responseCode == 404) {
                this.downloadInfo.setErrorCode(ErrorCode.ERROR_FILE_NOT_FOUND);
            } else {
                this.downloadInfo.setErrorCode(ErrorCode.ERROR_UNKNOWN_SERVER_ERROR);
            }
            return closeConnectionAndReturn(conn);
        }
        if (responseCode == 200) {
            this.firstBlockTask.clearTemp();
        }
        DownloadProvider.CacheBean cacheBean = null;
        if (!TextUtils.isEmpty(lastModified) || !TextUtils.isEmpty(eTag)) {
            cacheBean = new DownloadProvider.CacheBean(downloadRequest.getId(), lastModified, eTag);
            this.downloadInfo.setCacheBean(cacheBean);
        }
        boolean isServerSupportBreakPointDownload = (this.downloadInfo.isChunked() || cacheBean == null || (!this.isConditionRequest && !"bytes".equals(acceptRanges))) ? false : true;
        boolean isSupportBreakPointDownload = isServerSupportBreakPointDownload && !this.downloadInfo.isDisableBreakPointDownload();
        if (isServerSupportBreakPointDownload) {
            DBService.getInstance().updateCache(cacheBean);
        }
        int threadNum = isSupportBreakPointDownload ? downloadRequest.getThreadNum() : 1;
        this.downloadInfo.setThreadNum(threadNum);
        checkDownloadFile(contentLength, isSupportBreakPointDownload);
        synchronized (this.blockList) {
            long completedSize = 0;
            for (int i = 0; i < threadNum; i++) {
                if (i == 0) {
                    try {
                        completedSize += this.firstBlockTask.getCompletedSize();
                    } catch (Throwable th) {
                        th = th;
                        while (true) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                    }
                } else {
                    DownloadBlockTask task = new DownloadBlockTask(downloadRequest, i);
                    long completedSize2 = completedSize + task.getCompletedSize();
                    try {
                        this.blockList.add(task);
                        TaskManager.execute((Task) task);
                        completedSize = completedSize2;
                    } catch (Throwable th3) {
                        th = th3;
                        while (true) {
                            throw th;
                        }
                    }
                }
            }
            this.downloadInfo.setCompletedSize(completedSize);
            this.firstBlockTask.run();
            Iterator<DownloadBlockTask> it = this.blockList.iterator();
            while (it.hasNext()) {
                it.next().waitUntilFinished();
            }
            clearBlockList();
            return chain.proceed(downloadRequest);
        }
    }

    public void cancel() {
        synchronized (this.blockList) {
            for (Task task : this.blockList) {
                task.cancel();
            }
        }
    }

    private void clearBlockList() {
        synchronized (this.blockList) {
            this.blockList.clear();
        }
    }

    private boolean checkIsSpaceNotEnough(long contentLength) {
        long downloadDirUsableSpace = Util.getUsableSpace(new File(this.downloadInfo.getFilePath()));
        long dataFileUsableSpace = Util.getUsableSpace(Environment.getDataDirectory());
        long minUsableStorageSpace = ((IDownloadConfigService) PumpFactory.getService(IDownloadConfigService.class)).getMinUsableSpace();
        if (downloadDirUsableSpace < 2 * contentLength || dataFileUsableSpace <= minUsableStorageSpace) {
            Context context = ((IDownloadManager) PumpFactory.getService(IDownloadManager.class)).getContext();
            String downloadFileAvailableSize = Formatter.formatFileSize(context, downloadDirUsableSpace);
            LogUtil.e("Download directory usable space is " + downloadFileAvailableSize + ";but download file's contentLength is " + contentLength);
            return true;
        }
        return false;
    }

    private void checkDownloadFile(long contentLength, boolean isSupportBreakPointDownload) {
        if (!isSupportBreakPointDownload || contentLength != this.downloadInfo.getContentLength()) {
            this.downloadInfo.deleteTempDir();
        }
        this.downloadInfo.setContentLength(contentLength);
        this.downloadInfo.setFinished(0);
        this.downloadInfo.deleteDownloadFile();
        this.downloadTask.updateInfo();
    }

    private DownloadConnection buildRequest(DownloadRequest downloadRequest) {
        String id = downloadRequest.getId();
        DownloadConnection connection = createConnection(downloadRequest);
        this.firstBlockTask = new DownloadBlockTask(downloadRequest, 0, connection);
        long completedSize = this.firstBlockTask.getCompletedSize();
        DownloadProvider.CacheBean cacheBean = DBService.getInstance().queryCache(id);
        if (cacheBean == null) {
            return connection;
        }
        String eTag = cacheBean.eTag;
        String lastModified = cacheBean.lastModified;
        if (completedSize > 0 && !this.downloadInfo.isDisableBreakPointDownload()) {
            connection.addHeader("If-Range", cacheBean.getIfRangeField());
            connection.addHeader("Range", "bytes=" + completedSize + "-");
            this.isConditionRequest = true;
        } else if (downloadRequest.getDownloadInfo().isFinished() && !downloadRequest.isForceReDownload()) {
            if (!TextUtils.isEmpty(lastModified)) {
                connection.addHeader("If-Modified-Since", cacheBean.lastModified);
            }
            if (!TextUtils.isEmpty(eTag)) {
                connection.addHeader(HttpRequest.HEADER_IF_NONE_MATCH, cacheBean.eTag);
            }
        }
        return connection;
    }

    private long getContentLength(DownloadConnection connection) {
        long contentLength = -1;
        String contentRange = connection.getHeader("Content-Range");
        if (contentRange != null) {
            String[] session = contentRange.split("/");
            if (session.length >= 2) {
                try {
                    contentLength = Long.parseLong(session[1]);
                } catch (NumberFormatException e) {
                    e.printStackTrace();
                }
            }
        }
        if (!this.downloadInfo.isChunked() && contentLength == -1) {
            return Util.parseContentLength(connection.getHeader(HttpRequest.HEADER_CONTENT_LENGTH));
        }
        return contentLength;
    }

    private Response connect(DownloadConnection connection) {
        if (isCancelled()) {
            return null;
        }
        try {
            Response response = connection.connect();
            return response;
        } catch (IOException e) {
            if (!Thread.currentThread().isInterrupted()) {
                e.printStackTrace();
            }
            connection.close();
            return null;
        }
    }

    private boolean isCancelled() {
        return Thread.currentThread().isInterrupted();
    }

    private DownloadInfo closeConnectionAndReturn(DownloadConnection connection) {
        connection.close();
        return this.downloadInfo.snapshot();
    }

    private DownloadConnection createConnection(DownloadRequest downloadRequest) {
        return ((IDownloadConfigService) PumpFactory.getService(IDownloadConfigService.class)).getDownloadConnectionFactory().create(downloadRequest.getHttpRequestBuilder());
    }
}
