.class public final Lcom/woleapp/netpos/contactless/mqtt/SSLUtil;
.super Ljava/lang/Object;
.source "SSLUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013H\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/mqtt/SSLUtil;",
        "",
        "()V",
        "getDecryptedX509Certificate",
        "Ljava/security/cert/X509Certificate;",
        "context",
        "Landroid/content/Context;",
        "encryptedFileName",
        "",
        "getFromString",
        "Ljava/security/PrivateKey;",
        "getKeyMangerFactory",
        "Ljavax/net/ssl/KeyManagerFactory;",
        "getSSLFactory",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "getTrustManagerFactory",
        "Ljavax/net/ssl/TrustManagerFactory;",
        "getX509Certificate",
        "inputStream",
        "Ljava/io/InputStream;",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/woleapp/netpos/contactless/mqtt/SSLUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/woleapp/netpos/contactless/mqtt/SSLUtil;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/mqtt/SSLUtil;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/mqtt/SSLUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/mqtt/SSLUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getDecryptedX509Certificate(Landroid/content/Context;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "encryptedFileName"    # Ljava/lang/String;

    .line 80
    invoke-static {p1, p2}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->decryptOpenSslFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 81
    .local v0, "decryptedData":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 82
    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    move-object v2, v1

    check-cast v2, Ljava/io/InputStream;

    invoke-direct {p0, v2}, Lcom/woleapp/netpos/contactless/mqtt/SSLUtil;->getX509Certificate(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    return-object v2
.end method

.method public static final getFromString(Landroid/content/Context;)Ljava/security/PrivateKey;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/woleapp/netpos/contactless/BuildConfig;->APPMODE_PROD:Ljava/lang/Boolean;

    const-string v1, "APPMODE_PROD"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "device.key.enc"

    goto :goto_0

    :cond_0
    const-string v0, "netpos_client_key.key.enc"

    :goto_0
    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->decryptOpenSslFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 60
    .local v1, "reader":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "-----BEGIN RSA PRIVATE KEY-----\n"

    const-string v3, ""

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .end local v1    # "reader":Ljava/lang/String;
    .local v0, "reader":Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "-----END RSA PRIVATE KEY-----"

    const-string v9, ""

    move-object v7, v0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v2, "decode(reader, Base64.DEFAULT)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .local v1, "encoded":[B
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 66
    .local v2, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    const-string v4, "getInstance(\"RSA\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .local v3, "kf":Ljava/security/KeyFactory;
    move-object v4, v2

    check-cast v4, Ljava/security/spec/KeySpec;

    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v4

    return-object v4
.end method

.method private final getX509Certificate(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 87
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    const-string v1, "getInstance(\"X.509\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    move-object v1, p1

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Ljava/io/InputStream;

    .local v2, "it":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 89
    .local v3, "$i$a$-use-SSLUtil$getX509Certificate$1":I
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .end local v2    # "it":Ljava/io/InputStream;
    .end local v3    # "$i$a$-use-SSLUtil$getX509Certificate$1":I
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :catchall_0
    move-exception v2

    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public final getKeyMangerFactory(Landroid/content/Context;)Ljavax/net/ssl/KeyManagerFactory;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    const-string v0, "netpos_password"

    .line 38
    .local v0, "password":Ljava/lang/String;
    sget-object v1, Lcom/woleapp/netpos/contactless/BuildConfig;->APPMODE_PROD:Ljava/lang/Boolean;

    const-string v2, "APPMODE_PROD"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "netpos_device.pem.enc"

    goto :goto_0

    :cond_0
    const-string v1, "netpos_client_cert.pem.enc"

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/woleapp/netpos/contactless/mqtt/SSLUtil;->getDecryptedX509Certificate(Landroid/content/Context;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 40
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {p1}, Lcom/woleapp/netpos/contactless/mqtt/SSLUtil;->getFromString(Landroid/content/Context;)Ljava/security/PrivateKey;

    move-result-object v2

    .line 42
    .local v2, "key":Ljava/security/PrivateKey;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 43
    .local v3, "ks":Ljava/security/KeyStore;
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 44
    move-object v4, v1

    check-cast v4, Ljava/security/cert/Certificate;

    const-string v5, "certificate"

    invoke-virtual {v3, v5, v4}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 45
    nop

    .line 46
    nop

    .line 47
    move-object v4, v2

    check-cast v4, Ljava/security/Key;

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const-string v6, "this as java.lang.String).toCharArray()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/security/cert/Certificate;

    const/4 v8, 0x0

    move-object v9, v1

    check-cast v9, Ljava/security/cert/Certificate;

    aput-object v9, v7, v8

    .line 45
    const-string v8, "private-key"

    invoke-virtual {v3, v8, v4, v5, v7}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 51
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v4

    .line 52
    .local v4, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v5}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 53
    return-object v4
.end method

.method public final getSSLFactory(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    const-string v0, "TLSv1"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 96
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    nop

    .line 97
    invoke-virtual {p0, p1}, Lcom/woleapp/netpos/contactless/mqtt/SSLUtil;->getKeyMangerFactory(Landroid/content/Context;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    .line 98
    invoke-virtual {p0, p1}, Lcom/woleapp/netpos/contactless/mqtt/SSLUtil;->getTrustManagerFactory(Landroid/content/Context;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 99
    nop

    .line 96
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 102
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    return-object v1
.end method

.method public final getTrustManagerFactory(Landroid/content/Context;)Ljavax/net/ssl/TrustManagerFactory;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/woleapp/netpos/contactless/BuildConfig;->APPMODE_PROD:Ljava/lang/Boolean;

    const-string v1, "APPMODE_PROD"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cacert.pem.enc"

    goto :goto_0

    :cond_0
    const-string v0, "test_cacert.pem.enc"

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/woleapp/netpos/contactless/mqtt/SSLUtil;->getDecryptedX509Certificate(Landroid/content/Context;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 24
    nop

    .line 26
    .local v0, "caCert":Ljava/security/cert/X509Certificate;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 27
    .local v1, "caKs":Ljava/security/KeyStore;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 28
    move-object v2, v0

    check-cast v2, Ljava/security/cert/Certificate;

    const-string v3, "ca-certificate"

    invoke-virtual {v1, v3, v2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 29
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 30
    .local v2, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v2, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 31
    return-object v2
.end method
