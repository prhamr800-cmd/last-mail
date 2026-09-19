package io.realm;

import android.support.v4.app.FrameMetricsAggregator;
import android.support.v7.widget.helper.ItemTouchHelper;
import com.github.jorgecastilloprz.progressarc.animations.ArcAnimationFactory;
import io.realm.log.RealmLog;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum ErrorCode {
    UNKNOWN(-1),
    IO_EXCEPTION(0, Category.RECOVERABLE),
    JSON_EXCEPTION(1),
    CLIENT_RESET(7),
    CONNECTION_CLOSED(100),
    OTHER_ERROR(101),
    UNKNOWN_MESSAGE(102),
    BAD_SYNTAX(103),
    LIMITS_EXCEEDED(104),
    WRONG_PROTOCOL_VERSION(105),
    BAD_SESSION_IDENT(106),
    REUSE_OF_SESSION_IDENT(107),
    BOUND_IN_OTHER_SESSION(108),
    BAD_MESSAGE_ORDER(109),
    BAD_ORIGIN_FILE_IDENT(110),
    BAD_SERVER_VERSION_DOWNLOAD(111),
    BAD_CHANGESET_DOWNLOAD(112),
    BAD_REQUEST_IDENT(113),
    BAD_ERROR_CODE(114),
    BAD_COMPRESSION(115),
    BAD_CLIENT_VERSION_DOWNLOAD(116),
    SSL_SERVER_CERT_REJECTED(117),
    PONG_TIMEOUT(118),
    SESSION_CLOSED(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, Category.RECOVERABLE),
    OTHER_SESSION_ERROR(201, Category.RECOVERABLE),
    TOKEN_EXPIRED(202, Category.RECOVERABLE),
    BAD_AUTHENTICATION(203),
    ILLEGAL_REALM_PATH(204),
    NO_SUCH_PATH(205),
    PERMISSION_DENIED(206),
    BAD_SERVER_FILE_IDENT(207),
    BAD_CLIENT_FILE_IDENT(208),
    BAD_SERVER_VERSION(209),
    BAD_CLIENT_VERSION(210),
    DIVERGING_HISTORIES(211),
    BAD_CHANGESET(212),
    DISABLED_SESSION(213),
    PARTIAL_SYNC_DISABLED(214),
    MULTIPLE_CHOICES(ArcAnimationFactory.MAXIMUM_SWEEP_ANGLE),
    MOVED_PERMANENTLY(301),
    FOUND(302),
    SEE_OTHER(303),
    NOT_MODIFIED(304),
    USE_PROXY(305),
    TEMPORARY_REDIRECT(307),
    PERMANENT_REDIRECT(308),
    BAD_REQUEST(400),
    UNAUTHORIZED(401),
    PAYMENT_REQUIRED(402),
    FORBIDDEN(403),
    NOT_FOUND(404),
    METHOD_NOT_ALLOWED(405),
    NOT_ACCEPTABLE(406),
    PROXY_AUTHENTICATION_REQUIRED(407),
    REQUEST_TIMEOUT(408),
    CONFLICT(409),
    GONE(410),
    LENGTH_REQUIRED(411),
    PRECONDITION_FAILED(412),
    PAYLOAD_TOO_LARGE(413),
    URI_TOO_LONG(414),
    UNSUPPORTED_MEDIA_TYPE(415),
    RANGE_NOT_SATISFIABLE(416),
    EXPECTATION_FAILED(417),
    MISDIRECTED_REQUEST(421),
    UNPROCESSABLE_ENTITY(422),
    LOCKED(423),
    FAILED_DEPENDENCY(424),
    UPGRADE_REQUIRED(426),
    PRECONDITION_REQUIRED(428),
    TOO_MANY_REQUESTS(429),
    REQUEST_HEADER_FIELDS_TOO_LARGE(431),
    UNAVAILABLE_FOR_LEGAL_REASONS(451),
    INTERNAL_SERVER_ERROR(500),
    NOT_IMPLEMENTED(501),
    BAD_GATEWAY(502),
    SERVICE_UNAVAILABLE(503),
    GATEWAY_TIMEOUT(504),
    HTTP_VERSION_NOT_SUPPORTED(505),
    VARIANT_ALSO_NEGOTIATES(506),
    INSUFFICIENT_STORAGE(507),
    LOOP_DETECTED(508),
    NOT_EXTENDED(510),
    NETWORK_AUTHENTICATION_REQUIRED(FrameMetricsAggregator.EVERY_DURATION),
    INVALID_PARAMETERS(601),
    MISSING_PARAMETERS(602),
    INVALID_CREDENTIALS(611),
    UNKNOWN_ACCOUNT(612),
    EXISTING_ACCOUNT(613),
    ACCESS_DENIED(614),
    EXPIRED_REFRESH_TOKEN(615),
    INVALID_HOST(616),
    EXPIRED_PERMISSION_OFFER(701),
    AMBIGUOUS_PERMISSION_OFFER_TOKEN(702),
    FILE_MAY_NOT_BE_SHARED(703),
    SERVER_MISCONFIGURATION(801);

    private final Category category;
    private final int code;

    public enum Category {
        FATAL,
        RECOVERABLE
    }

    ErrorCode(int errorCode) {
        this(errorCode, Category.FATAL);
    }

    ErrorCode(int errorCode, Category category) {
        this.code = errorCode;
        this.category = category;
    }

    @Override // java.lang.Enum
    public String toString() {
        return super.toString() + "(" + this.code + ")";
    }

    public int intValue() {
        return this.code;
    }

    public Category getCategory() {
        return this.category;
    }

    public static ErrorCode fromInt(int errorCode) {
        ErrorCode[] errorCodes = values();
        for (ErrorCode error : errorCodes) {
            if (error.intValue() == errorCode) {
                return error;
            }
        }
        RealmLog.warn("Unknown error code: " + errorCode, new Object[0]);
        return UNKNOWN;
    }

    public static ErrorCode fromException(Exception exception) {
        if (exception instanceof IOException) {
            return IO_EXCEPTION;
        }
        return UNKNOWN;
    }
}
