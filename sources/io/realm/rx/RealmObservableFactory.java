package io.realm.rx;

import io.reactivex.BackpressureStrategy;
import io.reactivex.Flowable;
import io.reactivex.FlowableEmitter;
import io.reactivex.FlowableOnSubscribe;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.Single;
import io.reactivex.disposables.Disposables;
import io.realm.DynamicRealm;
import io.realm.DynamicRealmObject;
import io.realm.ObjectChangeSet;
import io.realm.OrderedCollectionChangeSet;
import io.realm.OrderedRealmCollectionChangeListener;
import io.realm.Realm;
import io.realm.RealmChangeListener;
import io.realm.RealmConfiguration;
import io.realm.RealmList;
import io.realm.RealmModel;
import io.realm.RealmObject;
import io.realm.RealmObjectChangeListener;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import java.util.IdentityHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class RealmObservableFactory implements RxObservableFactory {
    private static final BackpressureStrategy BACK_PRESSURE_STRATEGY = BackpressureStrategy.LATEST;
    private ThreadLocal<StrongReferenceCounter<RealmResults>> resultsRefs = new ThreadLocal<StrongReferenceCounter<RealmResults>>() { // from class: io.realm.rx.RealmObservableFactory.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public StrongReferenceCounter<RealmResults> initialValue() {
            return new StrongReferenceCounter<>();
        }
    };
    private ThreadLocal<StrongReferenceCounter<RealmList>> listRefs = new ThreadLocal<StrongReferenceCounter<RealmList>>() { // from class: io.realm.rx.RealmObservableFactory.2
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public StrongReferenceCounter<RealmList> initialValue() {
            return new StrongReferenceCounter<>();
        }
    };
    private ThreadLocal<StrongReferenceCounter<RealmModel>> objectRefs = new ThreadLocal<StrongReferenceCounter<RealmModel>>() { // from class: io.realm.rx.RealmObservableFactory.3
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public StrongReferenceCounter<RealmModel> initialValue() {
            return new StrongReferenceCounter<>();
        }
    };

    @Override // io.realm.rx.RxObservableFactory
    public Flowable<Realm> from(Realm realm) {
        final RealmConfiguration realmConfig = realm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<Realm>() { // from class: io.realm.rx.RealmObservableFactory.4
            public void subscribe(final FlowableEmitter<Realm> emitter) throws Exception {
                final Realm observableRealm = Realm.getInstance(realmConfig);
                final RealmChangeListener<Realm> listener = new RealmChangeListener<Realm>() { // from class: io.realm.rx.RealmObservableFactory.4.1
                    @Override // io.realm.RealmChangeListener
                    public void onChange(Realm realm2) {
                        if (!emitter.isCancelled()) {
                            emitter.onNext(realm2);
                        }
                    }
                };
                observableRealm.addChangeListener(listener);
                emitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.4.2
                    @Override // java.lang.Runnable
                    public void run() {
                        observableRealm.removeChangeListener(listener);
                        observableRealm.close();
                    }
                }));
                emitter.onNext(observableRealm);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.rx.RxObservableFactory
    public Flowable<DynamicRealm> from(DynamicRealm realm) {
        final RealmConfiguration realmConfig = realm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<DynamicRealm>() { // from class: io.realm.rx.RealmObservableFactory.5
            public void subscribe(final FlowableEmitter<DynamicRealm> emitter) throws Exception {
                final DynamicRealm observableRealm = DynamicRealm.getInstance(realmConfig);
                final RealmChangeListener<DynamicRealm> listener = new RealmChangeListener<DynamicRealm>() { // from class: io.realm.rx.RealmObservableFactory.5.1
                    @Override // io.realm.RealmChangeListener
                    public void onChange(DynamicRealm realm2) {
                        if (!emitter.isCancelled()) {
                            emitter.onNext(realm2);
                        }
                    }
                };
                observableRealm.addChangeListener(listener);
                emitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.5.2
                    @Override // java.lang.Runnable
                    public void run() {
                        observableRealm.removeChangeListener(listener);
                        observableRealm.close();
                    }
                }));
                emitter.onNext(observableRealm);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E> Flowable<RealmResults<E>> from(Realm realm, final RealmResults<E> results) {
        final RealmConfiguration realmConfig = realm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.6
            public void subscribe(final FlowableEmitter<RealmResults<E>> emitter) throws Exception {
                final Realm observableRealm = Realm.getInstance(realmConfig);
                ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).acquireReference(results);
                final RealmChangeListener<RealmResults<E>> listener = new RealmChangeListener<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.6.1
                    @Override // io.realm.RealmChangeListener
                    public void onChange(RealmResults<E> results2) {
                        if (!emitter.isCancelled()) {
                            emitter.onNext(results2);
                        }
                    }
                };
                results.addChangeListener(listener);
                emitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.6.2
                    @Override // java.lang.Runnable
                    public void run() {
                        results.removeChangeListener(listener);
                        observableRealm.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).releaseReference(results);
                    }
                }));
                emitter.onNext(results);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E> Observable<CollectionChange<RealmResults<E>>> changesetsFrom(Realm realm, final RealmResults<E> results) {
        final RealmConfiguration realmConfig = realm.getConfiguration();
        return Observable.create(new ObservableOnSubscribe<CollectionChange<RealmResults<E>>>() { // from class: io.realm.rx.RealmObservableFactory.7
            public void subscribe(final ObservableEmitter<CollectionChange<RealmResults<E>>> emitter) throws Exception {
                final Realm observableRealm = Realm.getInstance(realmConfig);
                ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).acquireReference(results);
                final OrderedRealmCollectionChangeListener<RealmResults<E>> listener = new OrderedRealmCollectionChangeListener<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.7.1
                    @Override // io.realm.OrderedRealmCollectionChangeListener
                    public void onChange(RealmResults<E> e, OrderedCollectionChangeSet changeSet) {
                        if (!emitter.isDisposed()) {
                            emitter.onNext(new CollectionChange(results, changeSet));
                        }
                    }
                };
                results.addChangeListener(listener);
                emitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.7.2
                    @Override // java.lang.Runnable
                    public void run() {
                        results.removeChangeListener(listener);
                        observableRealm.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).releaseReference(results);
                    }
                }));
                emitter.onNext(new CollectionChange(results, null));
            }
        });
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E> Flowable<RealmResults<E>> from(DynamicRealm realm, final RealmResults<E> results) {
        final RealmConfiguration realmConfig = realm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.8
            public void subscribe(final FlowableEmitter<RealmResults<E>> emitter) throws Exception {
                final DynamicRealm observableRealm = DynamicRealm.getInstance(realmConfig);
                ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).acquireReference(results);
                final RealmChangeListener<RealmResults<E>> listener = new RealmChangeListener<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.8.1
                    @Override // io.realm.RealmChangeListener
                    public void onChange(RealmResults<E> results2) {
                        if (!emitter.isCancelled()) {
                            emitter.onNext(results2);
                        }
                    }
                };
                results.addChangeListener(listener);
                emitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.8.2
                    @Override // java.lang.Runnable
                    public void run() {
                        results.removeChangeListener(listener);
                        observableRealm.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).releaseReference(results);
                    }
                }));
                emitter.onNext(results);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E> Observable<CollectionChange<RealmResults<E>>> changesetsFrom(DynamicRealm realm, final RealmResults<E> results) {
        final RealmConfiguration realmConfig = realm.getConfiguration();
        return Observable.create(new ObservableOnSubscribe<CollectionChange<RealmResults<E>>>() { // from class: io.realm.rx.RealmObservableFactory.9
            public void subscribe(final ObservableEmitter<CollectionChange<RealmResults<E>>> emitter) throws Exception {
                final DynamicRealm observableRealm = DynamicRealm.getInstance(realmConfig);
                ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).acquireReference(results);
                final OrderedRealmCollectionChangeListener<RealmResults<E>> listener = new OrderedRealmCollectionChangeListener<RealmResults<E>>() { // from class: io.realm.rx.RealmObservableFactory.9.1
                    @Override // io.realm.OrderedRealmCollectionChangeListener
                    public void onChange(RealmResults<E> results2, OrderedCollectionChangeSet changeSet) {
                        if (!emitter.isDisposed()) {
                            emitter.onNext(new CollectionChange(results2, changeSet));
                        }
                    }
                };
                results.addChangeListener(listener);
                emitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.9.2
                    @Override // java.lang.Runnable
                    public void run() {
                        results.removeChangeListener(listener);
                        observableRealm.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.resultsRefs.get()).releaseReference(results);
                    }
                }));
                emitter.onNext(new CollectionChange(results, null));
            }
        });
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E> Flowable<RealmList<E>> from(Realm realm, final RealmList<E> list) {
        final RealmConfiguration realmConfig = realm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.10
            public void subscribe(final FlowableEmitter<RealmList<E>> emitter) throws Exception {
                final Realm observableRealm = Realm.getInstance(realmConfig);
                ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).acquireReference(list);
                final RealmChangeListener<RealmList<E>> listener = new RealmChangeListener<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.10.1
                    @Override // io.realm.RealmChangeListener
                    public void onChange(RealmList<E> results) {
                        if (!emitter.isCancelled()) {
                            emitter.onNext(list);
                        }
                    }
                };
                list.addChangeListener(listener);
                emitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.10.2
                    @Override // java.lang.Runnable
                    public void run() {
                        list.removeChangeListener(listener);
                        observableRealm.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).releaseReference(list);
                    }
                }));
                emitter.onNext(list);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E> Observable<CollectionChange<RealmList<E>>> changesetsFrom(Realm realm, final RealmList<E> list) {
        final RealmConfiguration realmConfig = realm.getConfiguration();
        return Observable.create(new ObservableOnSubscribe<CollectionChange<RealmList<E>>>() { // from class: io.realm.rx.RealmObservableFactory.11
            public void subscribe(final ObservableEmitter<CollectionChange<RealmList<E>>> emitter) throws Exception {
                final Realm observableRealm = Realm.getInstance(realmConfig);
                ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).acquireReference(list);
                final OrderedRealmCollectionChangeListener<RealmList<E>> listener = new OrderedRealmCollectionChangeListener<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.11.1
                    @Override // io.realm.OrderedRealmCollectionChangeListener
                    public void onChange(RealmList<E> results, OrderedCollectionChangeSet changeSet) {
                        if (!emitter.isDisposed()) {
                            emitter.onNext(new CollectionChange(results, changeSet));
                        }
                    }
                };
                list.addChangeListener(listener);
                emitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.11.2
                    @Override // java.lang.Runnable
                    public void run() {
                        list.removeChangeListener(listener);
                        observableRealm.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).releaseReference(list);
                    }
                }));
                emitter.onNext(new CollectionChange(list, null));
            }
        });
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E> Flowable<RealmList<E>> from(DynamicRealm realm, final RealmList<E> list) {
        final RealmConfiguration realmConfig = realm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.12
            public void subscribe(final FlowableEmitter<RealmList<E>> emitter) throws Exception {
                final DynamicRealm observableRealm = DynamicRealm.getInstance(realmConfig);
                ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).acquireReference(list);
                final RealmChangeListener<RealmList<E>> listener = new RealmChangeListener<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.12.1
                    @Override // io.realm.RealmChangeListener
                    public void onChange(RealmList<E> results) {
                        if (!emitter.isCancelled()) {
                            emitter.onNext(list);
                        }
                    }
                };
                list.addChangeListener(listener);
                emitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.12.2
                    @Override // java.lang.Runnable
                    public void run() {
                        list.removeChangeListener(listener);
                        observableRealm.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).releaseReference(list);
                    }
                }));
                emitter.onNext(list);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E> Observable<CollectionChange<RealmList<E>>> changesetsFrom(DynamicRealm realm, final RealmList<E> list) {
        final RealmConfiguration realmConfig = realm.getConfiguration();
        return Observable.create(new ObservableOnSubscribe<CollectionChange<RealmList<E>>>() { // from class: io.realm.rx.RealmObservableFactory.13
            public void subscribe(final ObservableEmitter<CollectionChange<RealmList<E>>> emitter) throws Exception {
                final DynamicRealm observableRealm = DynamicRealm.getInstance(realmConfig);
                ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).acquireReference(list);
                final OrderedRealmCollectionChangeListener<RealmList<E>> listener = new OrderedRealmCollectionChangeListener<RealmList<E>>() { // from class: io.realm.rx.RealmObservableFactory.13.1
                    @Override // io.realm.OrderedRealmCollectionChangeListener
                    public void onChange(RealmList<E> results, OrderedCollectionChangeSet changeSet) {
                        if (!emitter.isDisposed()) {
                            emitter.onNext(new CollectionChange(results, changeSet));
                        }
                    }
                };
                list.addChangeListener(listener);
                emitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.13.2
                    @Override // java.lang.Runnable
                    public void run() {
                        list.removeChangeListener(listener);
                        observableRealm.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.listRefs.get()).releaseReference(list);
                    }
                }));
                emitter.onNext(new CollectionChange(list, null));
            }
        });
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E extends RealmModel> Flowable<E> from(Realm realm, final E object) {
        final RealmConfiguration realmConfig = realm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<E>() { // from class: io.realm.rx.RealmObservableFactory.14
            public void subscribe(final FlowableEmitter<E> emitter) throws Exception {
                final Realm observableRealm = Realm.getInstance(realmConfig);
                ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).acquireReference(object);
                final RealmChangeListener<E> listener = new RealmChangeListener<E>() { // from class: io.realm.rx.RealmObservableFactory.14.1
                    /* JADX WARN: Incorrect types in method signature: (TE;)V */
                    @Override // io.realm.RealmChangeListener
                    public void onChange(RealmModel realmModel) {
                        if (!emitter.isCancelled()) {
                            emitter.onNext(realmModel);
                        }
                    }
                };
                RealmObject.addChangeListener(object, (RealmChangeListener<RealmModel>) listener);
                emitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.14.2
                    @Override // java.lang.Runnable
                    public void run() {
                        RealmObject.removeChangeListener(object, (RealmChangeListener<RealmModel>) listener);
                        observableRealm.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).releaseReference(object);
                    }
                }));
                emitter.onNext(object);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E extends RealmModel> Observable<ObjectChange<E>> changesetsFrom(Realm realm, final E object) {
        final RealmConfiguration realmConfig = realm.getConfiguration();
        return Observable.create(new ObservableOnSubscribe<ObjectChange<E>>() { // from class: io.realm.rx.RealmObservableFactory.15
            public void subscribe(final ObservableEmitter<ObjectChange<E>> emitter) throws Exception {
                final Realm observableRealm = Realm.getInstance(realmConfig);
                ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).acquireReference(object);
                final RealmObjectChangeListener<E> listener = new RealmObjectChangeListener<E>() { // from class: io.realm.rx.RealmObservableFactory.15.1
                    /* JADX WARN: Incorrect types in method signature: (TE;Lio/realm/ObjectChangeSet;)V */
                    @Override // io.realm.RealmObjectChangeListener
                    public void onChange(RealmModel realmModel, ObjectChangeSet changeSet) {
                        if (!emitter.isDisposed()) {
                            emitter.onNext(new ObjectChange(realmModel, changeSet));
                        }
                    }
                };
                RealmObject.addChangeListener(object, (RealmObjectChangeListener<RealmModel>) listener);
                emitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.15.2
                    @Override // java.lang.Runnable
                    public void run() {
                        RealmObject.removeChangeListener(object, listener);
                        observableRealm.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).releaseReference(object);
                    }
                }));
                emitter.onNext(new ObjectChange(object, null));
            }
        });
    }

    @Override // io.realm.rx.RxObservableFactory
    public Flowable<DynamicRealmObject> from(DynamicRealm realm, final DynamicRealmObject object) {
        final RealmConfiguration realmConfig = realm.getConfiguration();
        return Flowable.create(new FlowableOnSubscribe<DynamicRealmObject>() { // from class: io.realm.rx.RealmObservableFactory.16
            public void subscribe(final FlowableEmitter<DynamicRealmObject> emitter) throws Exception {
                final DynamicRealm observableRealm = DynamicRealm.getInstance(realmConfig);
                ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).acquireReference(object);
                final RealmChangeListener<DynamicRealmObject> listener = new RealmChangeListener<DynamicRealmObject>() { // from class: io.realm.rx.RealmObservableFactory.16.1
                    @Override // io.realm.RealmChangeListener
                    public void onChange(DynamicRealmObject obj) {
                        if (!emitter.isCancelled()) {
                            emitter.onNext(obj);
                        }
                    }
                };
                RealmObject.addChangeListener(object, listener);
                emitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.16.2
                    @Override // java.lang.Runnable
                    public void run() {
                        RealmObject.removeChangeListener(object, (RealmChangeListener<DynamicRealmObject>) listener);
                        observableRealm.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).releaseReference(object);
                    }
                }));
                emitter.onNext(object);
            }
        }, BACK_PRESSURE_STRATEGY);
    }

    @Override // io.realm.rx.RxObservableFactory
    public Observable<ObjectChange<DynamicRealmObject>> changesetsFrom(DynamicRealm realm, final DynamicRealmObject object) {
        final RealmConfiguration realmConfig = realm.getConfiguration();
        return Observable.create(new ObservableOnSubscribe<ObjectChange<DynamicRealmObject>>() { // from class: io.realm.rx.RealmObservableFactory.17
            public void subscribe(final ObservableEmitter<ObjectChange<DynamicRealmObject>> emitter) throws Exception {
                final DynamicRealm observableRealm = DynamicRealm.getInstance(realmConfig);
                ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).acquireReference(object);
                final RealmObjectChangeListener<DynamicRealmObject> listener = new RealmObjectChangeListener<DynamicRealmObject>() { // from class: io.realm.rx.RealmObservableFactory.17.1
                    @Override // io.realm.RealmObjectChangeListener
                    public void onChange(DynamicRealmObject obj, ObjectChangeSet changeSet) {
                        if (!emitter.isDisposed()) {
                            emitter.onNext(new ObjectChange(obj, changeSet));
                        }
                    }
                };
                object.addChangeListener(listener);
                emitter.setDisposable(Disposables.fromRunnable(new Runnable() { // from class: io.realm.rx.RealmObservableFactory.17.2
                    @Override // java.lang.Runnable
                    public void run() {
                        object.removeChangeListener(listener);
                        observableRealm.close();
                        ((StrongReferenceCounter) RealmObservableFactory.this.objectRefs.get()).releaseReference(object);
                    }
                }));
                emitter.onNext(new ObjectChange(object, null));
            }
        });
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E> Single<RealmQuery<E>> from(Realm realm, RealmQuery<E> query) {
        throw new RuntimeException("RealmQuery not supported yet.");
    }

    @Override // io.realm.rx.RxObservableFactory
    public <E> Single<RealmQuery<E>> from(DynamicRealm realm, RealmQuery<E> query) {
        throw new RuntimeException("RealmQuery not supported yet.");
    }

    public boolean equals(Object o) {
        return o instanceof RealmObservableFactory;
    }

    public int hashCode() {
        return 37;
    }

    private static class StrongReferenceCounter<K> {
        private final Map<K, Integer> references;

        private StrongReferenceCounter() {
            this.references = new IdentityHashMap();
        }

        public void acquireReference(K object) {
            Integer count = this.references.get(object);
            if (count == null) {
                this.references.put(object, 1);
            } else {
                this.references.put(object, Integer.valueOf(count.intValue() + 1));
            }
        }

        public void releaseReference(K object) {
            Integer count = this.references.get(object);
            if (count == null) {
                throw new IllegalStateException("Object does not have any references: " + object);
            }
            if (count.intValue() > 1) {
                this.references.put(object, Integer.valueOf(count.intValue() - 1));
            } else {
                if (count.intValue() == 1) {
                    this.references.remove(object);
                    return;
                }
                throw new IllegalStateException("Invalid reference count: " + count);
            }
        }
    }
}
