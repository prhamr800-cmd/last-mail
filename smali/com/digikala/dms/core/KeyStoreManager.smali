###### Class com.digikala.dms.core.KeyStoreManager (com.digikala.dms.core.KeyStoreManager)
.class public Lcom/digikala/dms/core/KeyStoreManager;
.super Ljava/lang/Object;
.source "KeyStoreManager.java"


# instance fields
.field private alias:Ljava/lang/String;

.field private keyStore:Ljava/security/KeyStore;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/digikala/dms/core/KeyStoreManager;->alias:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lcom/digikala/dms/core/KeyStoreManager;->initialKeyStore()V

    .line 48
    return-void
.end method

.method public static getKeyStoreManager(Ljava/lang/String;)Lcom/digikala/dms/core/KeyStoreManager;
    .registers 2
    .param p0, "alias"    # Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/digikala/dms/core/KeyStoreManager;

    invoke-direct {v0, p0}, Lcom/digikala/dms/core/KeyStoreManager;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private initialKeyStore()V
    .registers 3

    .line 52
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/core/KeyStoreManager;->keyStore:Ljava/security/KeyStore;
    :try_end_8
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_8} :catch_9

    .line 55
    goto :goto_d

    .line 53
    :catch_9
    move-exception v0

    .line 54
    .local v0, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 58
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :goto_d
    :try_start_d
    iget-object v0, p0, Lcom/digikala/dms/core/KeyStoreManager;->keyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_1e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_13} :catch_19
    .catch Ljava/security/cert/CertificateException; {:try_start_d .. :try_end_13} :catch_14

    goto :goto_22

    .line 63
    :catch_14
    move-exception v0

    .line 64
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_23

    .line 61
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_19
    move-exception v0

    .line 62
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_22

    .line 59
    :catch_1e
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    :goto_22
    nop

    .line 66
    :goto_23
    return-void
.end method


# virtual methods
.method public createNewKeys(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/digikala/dms/core/KeyStoreManager;->keyStore:Ljava/security/KeyStore;

    iget-object v1, p0, Lcom/digikala/dms/core/KeyStoreManager;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 77
    .local v0, "start":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 78
    .local v1, "end":Ljava/util/Calendar;
    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 79
    const/4 v2, 0x0

    .line 81
    .local v2, "spec":Landroid/security/KeyPairGeneratorSpec;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_84

    .line 82
    new-instance v3, Landroid/security/KeyPairGeneratorSpec$Builder;

    invoke-direct {v3, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/digikala/dms/core/KeyStoreManager;->alias:Ljava/lang/String;

    .line 83
    invoke-virtual {v3, v4}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v3

    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    const-string v5, "CN=DMS, O=DigiKala , C=Iran"

    invoke-direct {v4, v5}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v3, v4}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v3

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 85
    invoke-virtual {v3, v4}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v3

    .line 86
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v3

    .line 87
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v3

    .line 88
    invoke-virtual {v3}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v3

    move-object v2, v3

    .line 90
    const-string v3, "RSA"

    const-string v4, "AndroidKeyStore"

    invoke-static {v3, v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v3

    .line 92
    .local v3, "generator":Ljava/security/KeyPairGenerator;
    invoke-virtual {v3, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 94
    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    .line 95
    .local v4, "keyPair":Ljava/security/KeyPair;
    const-string v5, "alias"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_84} :catch_85

    .line 100
    .end local v0    # "start":Ljava/util/Calendar;
    .end local v1    # "end":Ljava/util/Calendar;
    .end local v2    # "spec":Landroid/security/KeyPairGeneratorSpec;
    .end local v3    # "generator":Ljava/security/KeyPairGenerator;
    .end local v4    # "keyPair":Ljava/security/KeyPair;
    :cond_84
    goto :goto_8f

    .line 98
    :catch_85
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "s\'"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8f
    return-void
.end method

.method public decryptString(Ljava/lang/String;)V
    .registers 14
    .param p1, "encryptedText"    # Ljava/lang/String;

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/digikala/dms/core/KeyStoreManager;->keyStore:Ljava/security/KeyStore;

    iget-object v1, p0, Lcom/digikala/dms/core/KeyStoreManager;->alias:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 176
    .local v0, "privateKeyEntry":Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 178
    .local v1, "privateKey":Ljava/security/interfaces/RSAPrivateKey;
    const-string v2, "RSA/ECB/PKCS1Padding"

    const-string v3, "AndroidOpenSSL"

    invoke-static {v2, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 179
    .local v2, "output":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 181
    move-object v3, p1

    .line 183
    .local v3, "cipherText":Ljava/lang/String;
    new-instance v4, Ljavax/crypto/CipherInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 184
    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 185
    .local v4, "cipherInputStream":Ljavax/crypto/CipherInputStream;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :goto_32
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v7

    move v8, v7

    .local v8, "nextByte":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_43

    .line 188
    int-to-byte v7, v8

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 190
    :cond_43
    const-string v7, "alias"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Decrypted Text : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [B

    .line 193
    .local v7, "bytes":[B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_64
    array-length v10, v7

    if-ge v9, v10, :cond_76

    .line 194
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Byte;

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    aput-byte v10, v7, v9

    .line 193
    add-int/lit8 v9, v9, 0x1

    goto :goto_64

    .line 197
    .end local v9    # "i":I
    :cond_76
    new-instance v9, Ljava/lang/String;

    array-length v10, v7

    const-string v11, "UTF-8"

    invoke-direct {v9, v7, v6, v10, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7e} :catch_7f

    .line 200
    .end local v0    # "privateKeyEntry":Ljava/security/KeyStore$PrivateKeyEntry;
    .end local v1    # "privateKey":Ljava/security/interfaces/RSAPrivateKey;
    .end local v2    # "output":Ljavax/crypto/Cipher;
    .end local v3    # "cipherText":Ljava/lang/String;
    .end local v4    # "cipherInputStream":Ljavax/crypto/CipherInputStream;
    .end local v5    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v7    # "bytes":[B
    .end local v8    # "nextByte":I
    goto :goto_89

    .line 198
    :catch_7f
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "alias"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_89
    return-void
.end method

.method public encryptString(Ljava/lang/String;)V
    .registers 8
    .param p1, "originalContent"    # Ljava/lang/String;

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/digikala/dms/core/KeyStoreManager;->keyStore:Ljava/security/KeyStore;

    iget-object v1, p0, Lcom/digikala/dms/core/KeyStoreManager;->alias:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 152
    .local v0, "privateKeyEntry":Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 154
    .local v1, "publicKey":Ljava/security/interfaces/RSAPublicKey;
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 155
    return-void

    .line 158
    :cond_1c
    const-string v2, "RSA/ECB/PKCS1Padding"

    const-string v3, "AndroidOpenSSL"

    invoke-static {v2, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 159
    .local v2, "input":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 161
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 162
    .local v3, "outputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v4, v3, v2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 164
    .local v4, "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 165
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 167
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_42

    .line 170
    .end local v0    # "privateKeyEntry":Ljava/security/KeyStore$PrivateKeyEntry;
    .end local v1    # "publicKey":Ljava/security/interfaces/RSAPublicKey;
    .end local v2    # "input":Ljavax/crypto/Cipher;
    .end local v3    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    goto :goto_4c

    .line 168
    :catch_42
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "alias"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4c
    return-void
.end method

.method public get64ByteKey(Landroid/content/Context;)[B
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 125
    .local v1, "key64Byte":[B
    invoke-virtual {p0, p1}, Lcom/digikala/dms/core/KeyStoreManager;->createNewKeys(Landroid/content/Context;)V

    .line 127
    const/4 v2, 0x0

    move-object v3, v2

    .line 130
    .local v3, "publicKey":Ljava/security/interfaces/RSAPublicKey;
    :try_start_9
    iget-object v4, p0, Lcom/digikala/dms/core/KeyStoreManager;->keyStore:Ljava/security/KeyStore;

    iget-object v5, p0, Lcom/digikala/dms/core/KeyStoreManager;->alias:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 131
    .local v2, "privateKeyEntry":Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v2}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    check-cast v4, Ljava/security/interfaces/RSAPublicKey;
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_1d} :catch_29
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_9 .. :try_end_1d} :catch_24
    .catch Ljava/security/KeyStoreException; {:try_start_9 .. :try_end_1d} :catch_1f

    move-object v3, v4

    .line 138
    .end local v2    # "privateKeyEntry":Ljava/security/KeyStore$PrivateKeyEntry;
    :goto_1e
    goto :goto_2e

    .line 136
    :catch_1f
    move-exception v2

    .line 137
    .local v2, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v2}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_2e

    .line 134
    .end local v2    # "e":Ljava/security/KeyStoreException;
    :catch_24
    move-exception v2

    .line 135
    .local v2, "e":Ljava/security/UnrecoverableEntryException;
    invoke-virtual {v2}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    .end local v2    # "e":Ljava/security/UnrecoverableEntryException;
    goto :goto_1e

    .line 132
    :catch_29
    move-exception v2

    .line 133
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_1e

    .line 140
    :goto_2e
    invoke-interface {v3}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 142
    .local v2, "publicKeyByte":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_37
    if-ge v4, v0, :cond_40

    .line 143
    aget-byte v5, v2, v4

    aput-byte v5, v1, v4

    .line 142
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 146
    .end local v4    # "i":I
    :cond_40
    return-object v1
.end method

.method public refreshKeys()V
    .registers 5

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "keyAliases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_5
    iget-object v1, p0, Lcom/digikala/dms/core/KeyStoreManager;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 109
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 110
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_1a

    goto :goto_b

    .line 114
    .end local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_19
    goto :goto_1e

    .line 112
    :catch_1a
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    .local v2, "alias":Ljava/lang/String;
    const-string v3, "alias"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v2    # "alias":Ljava/lang/String;
    goto :goto_22

    .line 119
    :cond_34
    return-void
.end method
