###### Class io.fabric.sdk.android.services.network.SystemKeyStore (io.fabric.sdk.android.services.network.SystemKeyStore)
.class Lio/fabric/sdk/android/services/network/SystemKeyStore;
.super Ljava/lang/Object;
.source "SystemKeyStore.java"


# instance fields
.field private final trustRoots:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/security/Principal;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field final trustStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5
    .param p1, "keystoreStream"    # Ljava/io/InputStream;
    .param p2, "passwd"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0, p1, p2}, Lio/fabric/sdk/android/services/network/SystemKeyStore;->getTrustStore(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 46
    .local v0, "trustStore":Ljava/security/KeyStore;
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/network/SystemKeyStore;->initializeTrustedRoots(Ljava/security/KeyStore;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/services/network/SystemKeyStore;->trustRoots:Ljava/util/HashMap;

    .line 47
    iput-object v0, p0, Lio/fabric/sdk/android/services/network/SystemKeyStore;->trustStore:Ljava/security/KeyStore;

    .line 48
    return-void
.end method

.method private getTrustStore(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/KeyStore;
    .registers 6
    .param p1, "keystoreStream"    # Ljava/io/InputStream;
    .param p2, "passwd"    # Ljava/lang/String;

    .line 98
    :try_start_0
    const-string v0, "BKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 99
    .local v0, "trustStore":Ljava/security/KeyStore;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_b} :catch_31
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_b} :catch_2a
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_b} :catch_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_1c

    .line 102
    .local v1, "bin":Ljava/io/BufferedInputStream;
    :try_start_b
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_17

    .line 104
    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 105
    nop

    .line 107
    return-object v0

    .line 104
    :catchall_17
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    throw v2
    :try_end_1c
    .catch Ljava/security/KeyStoreException; {:try_start_12 .. :try_end_1c} :catch_31
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_1c} :catch_2a
    .catch Ljava/security/cert/CertificateException; {:try_start_12 .. :try_end_1c} :catch_23
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_1c

    .line 114
    .end local v0    # "trustStore":Ljava/security/KeyStore;
    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    :catch_1c
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    :catch_23
    move-exception v0

    .line 113
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 110
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_2a
    move-exception v0

    .line 111
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 108
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_31
    move-exception v0

    .line 109
    .local v0, "kse":Ljava/security/KeyStoreException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private initializeTrustedRoots(Ljava/security/KeyStore;)Ljava/util/HashMap;
    .registers 7
    .param p1, "trustStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/security/Principal;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 77
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v0, "trusted":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/security/Principal;Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 81
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 82
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    .local v2, "alias":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 85
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_24

    .line 86
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_24} :catch_26

    .line 88
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    :cond_24
    goto :goto_9

    .line 90
    .end local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_25
    return-object v0

    .line 91
    .end local v0    # "trusted":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/security/Principal;Ljava/security/cert/X509Certificate;>;"
    :catch_26
    move-exception v0

    .line 92
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public getTrustRootFor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 6
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 56
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/SystemKeyStore;->trustRoots:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 58
    .local v0, "trustRoot":Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 59
    return-object v1

    .line 62
    :cond_10
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 63
    return-object v1

    .line 67
    :cond_1f
    :try_start_1f
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_26
    .catch Ljava/security/GeneralSecurityException; {:try_start_1f .. :try_end_26} :catch_28

    .line 70
    nop

    .line 72
    return-object v0

    .line 68
    :catch_28
    move-exception v2

    .line 69
    .local v2, "e":Ljava/security/GeneralSecurityException;
    return-object v1
.end method

.method public isTrustRoot(Ljava/security/cert/X509Certificate;)Z
    .registers 5
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 51
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/SystemKeyStore;->trustRoots:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 52
    .local v0, "trustRoot":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method
