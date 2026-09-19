package com.google.firebase.components;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: com.google.firebase:firebase-common@@16.0.2 */
/* JADX INFO: loaded from: classes2.dex */
@KeepForSdk
public final class Component<T> {
    private final Set<Class<? super T>> zza;
    private final Set<Dependency> zzb;
    private final int zzc;
    private final ComponentFactory<T> zzd;
    private final Set<Class<?>> zze;

    /* synthetic */ Component(Set x0, Set x1, int x2, ComponentFactory x3, Set x4, byte b) {
        this(x0, x1, x2, x3, x4);
    }

    private Component(Set<Class<? super T>> providedInterfaces, Set<Dependency> dependencies, int instantiation, ComponentFactory<T> factory, Set<Class<?>> publishedEvents) {
        this.zza = Collections.unmodifiableSet(providedInterfaces);
        this.zzb = Collections.unmodifiableSet(dependencies);
        this.zzc = instantiation;
        this.zzd = factory;
        this.zze = Collections.unmodifiableSet(publishedEvents);
    }

    public final Set<Class<? super T>> zza() {
        return this.zza;
    }

    public final Set<Dependency> zzb() {
        return this.zzb;
    }

    public final ComponentFactory<T> zzc() {
        return this.zzd;
    }

    public final Set<Class<?>> zzd() {
        return this.zze;
    }

    public final boolean zze() {
        return this.zzc == 1;
    }

    public final boolean zzf() {
        return this.zzc == 2;
    }

    public final String toString() {
        return "Component<" + Arrays.toString(this.zza.toArray()) + ">{" + this.zzc + ", deps=" + Arrays.toString(this.zzb.toArray()) + "}";
    }

    @KeepForSdk
    public static <T> Builder<T> builder(Class<T> anInterface) {
        return new Builder<>(anInterface, new Class[0], (byte) 0);
    }

    @KeepForSdk
    public static <T> Builder<T> builder(Class<T> anInterface, Class<? super T>... additionalInterfaces) {
        return new Builder<>(anInterface, additionalInterfaces, (byte) 0);
    }

    @KeepForSdk
    @Deprecated
    public static <T> Component<T> of(Class<T> anInterface, T value) {
        return builder(anInterface).factory(zzb.zza(value)).build();
    }

    static /* synthetic */ Object zzb(Object obj) {
        return obj;
    }

    @SafeVarargs
    @KeepForSdk
    public static <T> Component<T> of(T value, Class<T> anInterface, Class<? super T>... additionalInterfaces) {
        return builder(anInterface, additionalInterfaces).factory(zzc.zza(value)).build();
    }

    static /* synthetic */ Object zza(Object obj) {
        return obj;
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-common@@16.0.2 */
    @KeepForSdk
    public static class Builder<T> {
        private final Set<Class<? super T>> zza;
        private final Set<Dependency> zzb;
        private int zzc;
        private ComponentFactory<T> zzd;
        private Set<Class<?>> zze;

        /* synthetic */ Builder(Class x0, Class[] x1, byte b) {
            this(x0, x1);
        }

        private Builder(Class<T> anInterface, Class<? super T>... additionalInterfaces) {
            this.zza = new HashSet();
            this.zzb = new HashSet();
            this.zzc = 0;
            this.zze = new HashSet();
            Preconditions.checkNotNull(anInterface, "Null interface");
            this.zza.add(anInterface);
            for (Class<? super T> cls : additionalInterfaces) {
                Preconditions.checkNotNull(cls, "Null interface");
            }
            Collections.addAll(this.zza, additionalInterfaces);
        }

        @KeepForSdk
        public Builder<T> add(Dependency dependency) {
            Preconditions.checkNotNull(dependency, "Null dependency");
            Preconditions.checkArgument(!this.zza.contains(dependency.zza()), "Components are not allowed to depend on interfaces they themselves provide.");
            this.zzb.add(dependency);
            return this;
        }

        @KeepForSdk
        public Builder<T> alwaysEager() {
            return zza(1);
        }

        @KeepForSdk
        public Builder<T> eagerInDefaultApp() {
            return zza(2);
        }

        @KeepForSdk
        public Builder<T> publishes(Class<?> eventType) {
            this.zze.add(eventType);
            return this;
        }

        private Builder<T> zza(int i) {
            Preconditions.checkState(this.zzc == 0, "Instantiation type has already been set.");
            this.zzc = i;
            return this;
        }

        @KeepForSdk
        public Builder<T> factory(ComponentFactory<T> value) {
            this.zzd = (ComponentFactory) Preconditions.checkNotNull(value, "Null factory");
            return this;
        }

        @KeepForSdk
        public Component<T> build() {
            Preconditions.checkState(this.zzd != null, "Missing required property: factory.");
            return new Component<>(new HashSet(this.zza), new HashSet(this.zzb), this.zzc, this.zzd, this.zze, (byte) 0);
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.components.Component$1, reason: invalid class name */
    /* JADX INFO: compiled from: com.google.firebase:firebase-common@@16.0.2 */
    public static /* synthetic */ class AnonymousClass1<T> {
        private final T zza;
        private final zze<T> zzb;

        public static AnonymousClass1<Context> zza(Context context) {
            return new AnonymousClass1<>(context, new zzd((byte) 0));
        }

        @VisibleForTesting
        private AnonymousClass1(T t, zze<T> zzeVar) {
            this.zza = t;
            this.zzb = zzeVar;
        }

        public List<ComponentRegistrar> zza() {
            return zzb(this.zzb.zza(this.zza));
        }

        private static List<ComponentRegistrar> zzb(List<String> list) {
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                try {
                    Class<?> cls = Class.forName(str);
                    if (!ComponentRegistrar.class.isAssignableFrom(cls)) {
                        Log.w("ComponentDiscovery", String.format("Class %s is not an instance of %s", str, "com.google.firebase.components.ComponentRegistrar"));
                    } else {
                        arrayList.add((ComponentRegistrar) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    }
                } catch (ClassNotFoundException e) {
                    Log.w("ComponentDiscovery", String.format("Class %s is not an found.", str), e);
                } catch (IllegalAccessException e2) {
                    Log.w("ComponentDiscovery", String.format("Could not instantiate %s.", str), e2);
                } catch (InstantiationException e3) {
                    Log.w("ComponentDiscovery", String.format("Could not instantiate %s.", str), e3);
                } catch (NoSuchMethodException e4) {
                    Log.w("ComponentDiscovery", String.format("Could not instantiate %s", str), e4);
                } catch (InvocationTargetException e5) {
                    Log.w("ComponentDiscovery", String.format("Could not instantiate %s", str), e5);
                }
            }
            return arrayList;
        }

        static List<Component<?>> zza(List<Component<?>> list) {
            zzg zzgVar;
            HashMap map = new HashMap(list.size());
            for (Component<?> component : list) {
                zzg zzgVar2 = new zzg(component);
                for (Class<? super Object> cls : component.zza()) {
                    if (map.put(cls, zzgVar2) != null) {
                        throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                    }
                }
            }
            for (zzg zzgVar3 : map.values()) {
                for (Dependency dependency : zzgVar3.zzb().zzb()) {
                    if (dependency.zzc() && (zzgVar = (zzg) map.get(dependency.zza())) != null) {
                        zzgVar3.zza(zzgVar);
                        zzgVar.zzb(zzgVar3);
                    }
                }
            }
            HashSet<zzg> hashSet = new HashSet(map.values());
            Set<zzg> setZza = zza(hashSet);
            ArrayList arrayList = new ArrayList();
            while (!setZza.isEmpty()) {
                zzg next = setZza.iterator().next();
                setZza.remove(next);
                arrayList.add(next.zzb());
                for (zzg zzgVar4 : next.zza()) {
                    zzgVar4.zzc(next);
                    if (zzgVar4.zzc()) {
                        setZza.add(zzgVar4);
                    }
                }
            }
            if (arrayList.size() == list.size()) {
                Collections.reverse(arrayList);
                return arrayList;
            }
            ArrayList arrayList2 = new ArrayList();
            for (zzg zzgVar5 : hashSet) {
                if (!zzgVar5.zzc() && !zzgVar5.zzd()) {
                    arrayList2.add(zzgVar5.zzb());
                }
            }
            throw new DependencyCycleException(arrayList2);
        }

        private static Set<zzg> zza(Set<zzg> set) {
            HashSet hashSet = new HashSet();
            for (zzg zzgVar : set) {
                if (zzgVar.zzc()) {
                    hashSet.add(zzgVar);
                }
            }
            return hashSet;
        }
    }
}
