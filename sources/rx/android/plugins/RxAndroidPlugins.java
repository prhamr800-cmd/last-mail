package rx.android.plugins;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class RxAndroidPlugins {
    private static final RxAndroidPlugins INSTANCE = new RxAndroidPlugins();
    private final AtomicReference<RxAndroidSchedulersHook> schedulersHook = new AtomicReference<>();

    public static RxAndroidPlugins getInstance() {
        return INSTANCE;
    }

    RxAndroidPlugins() {
    }

    void reset() {
        this.schedulersHook.set(null);
    }

    public RxAndroidSchedulersHook getSchedulersHook() {
        if (this.schedulersHook.get() == null) {
            RxAndroidSchedulersHook impl = (RxAndroidSchedulersHook) getPluginImplementationViaProperty(RxAndroidSchedulersHook.class);
            if (impl == null) {
                this.schedulersHook.compareAndSet(null, RxAndroidSchedulersHook.getDefaultInstance());
            } else {
                this.schedulersHook.compareAndSet(null, impl);
            }
        }
        return this.schedulersHook.get();
    }

    public void registerSchedulersHook(RxAndroidSchedulersHook impl) {
        if (!this.schedulersHook.compareAndSet(null, impl)) {
            throw new IllegalStateException("Another strategy was already registered: " + this.schedulersHook.get());
        }
    }

    private static <T> T getPluginImplementationViaProperty(Class<T> cls) {
        String simpleName = cls.getSimpleName();
        String property = System.getProperty("rxandroid.plugin." + simpleName + ".implementation");
        if (property != null) {
            try {
                return (T) Class.forName(property).asSubclass(cls).newInstance();
            } catch (ClassCastException e) {
                throw new RuntimeException(simpleName + " implementation is not an instance of " + simpleName + ": " + property);
            } catch (ClassNotFoundException e2) {
                throw new RuntimeException(simpleName + " implementation class not found: " + property, e2);
            } catch (IllegalAccessException e3) {
                throw new RuntimeException(simpleName + " implementation not able to be accessed: " + property, e3);
            } catch (InstantiationException e4) {
                throw new RuntimeException(simpleName + " implementation not able to be instantiated: " + property, e4);
            }
        }
        return null;
    }
}
