.class public final Lcom/danbamitale/epmslib/comms/SSLManager;
.super Ljava/lang/Object;
.source "SSLManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0008H\u0002J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u0008H\u0002J&\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0018\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0001\u0010\u0019\u001a\u00020\nJ\u0006\u0010\u001a\u001a\u00020\u0006J\u0018\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0001\u0010\u001b\u001a\u00020\nJ\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fJ\u0010\u0010 \u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u000e\u0010!\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fJ\u0016\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0008\u00a8\u0006&"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/comms/SSLManager;",
        "",
        "()V",
        "createSocket",
        "Ljava/net/Socket;",
        "sslSocketFactory",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "ipAddress",
        "",
        "port",
        "",
        "extractCommonName",
        "subjectDN",
        "extractHostFromURL",
        "url",
        "getSSLSocketFactory",
        "trustManagerFactory",
        "Ljavax/net/ssl/TrustManagerFactory;",
        "keyManagerFactory",
        "Ljavax/net/ssl/KeyManagerFactory;",
        "secureRandom",
        "Ljava/security/SecureRandom;",
        "getTrustManagerFactory",
        "context",
        "Landroid/content/Context;",
        "certificateResourceId",
        "getTrustySSLSocketFactory",
        "certId",
        "isCertClient",
        "",
        "certificate",
        "Ljava/security/cert/X509Certificate;",
        "isCertKnown",
        "isCertServer",
        "verifyCertificateAndURL",
        "socket",
        "Ljavax/net/ssl/SSLSocket;",
        "expectedURL",
        "epmslib_release"
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
.field public static final INSTANCE:Lcom/danbamitale/epmslib/comms/SSLManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/danbamitale/epmslib/comms/SSLManager;

    invoke-direct {v0}, Lcom/danbamitale/epmslib/comms/SSLManager;-><init>()V

    sput-object v0, Lcom/danbamitale/epmslib/comms/SSLManager;->INSTANCE:Lcom/danbamitale/epmslib/comms/SSLManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$isCertKnown(Lcom/danbamitale/epmslib/comms/SSLManager;Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .param p0, "$this"    # Lcom/danbamitale/epmslib/comms/SSLManager;
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 13
    invoke-direct {p0, p1}, Lcom/danbamitale/epmslib/comms/SSLManager;->isCertKnown(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    return v0
.end method

.method private final extractCommonName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subjectDN"    # Ljava/lang/String;

    new-instance v0, Lkotlin/text/Regex;

    .line 136
    const-string v1, "CN=([^,]+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "cnPattern":Lkotlin/text/Regex;
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v1

    .line 138
    .local v1, "matchResult":Lkotlin/text/MatchResult;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, ""

    :cond_1
    return-object v2
.end method

.method private final extractHostFromURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .line 143
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "://"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 144
    .local v0, "urlParts":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 145
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v1, "/"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    .local v1, "hostPortPart":Ljava/lang/String;
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, ":"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 148
    .end local v1    # "hostPortPart":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public static synthetic getSSLSocketFactory$default(Lcom/danbamitale/epmslib/comms/SSLManager;Ljavax/net/ssl/TrustManagerFactory;Ljavax/net/ssl/KeyManagerFactory;Ljava/security/SecureRandom;ILjava/lang/Object;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 95
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 97
    move-object p2, v0

    .line 95
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 98
    move-object p3, v0

    .line 95
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/danbamitale/epmslib/comms/SSLManager;->getSSLSocketFactory(Ljavax/net/ssl/TrustManagerFactory;Ljavax/net/ssl/KeyManagerFactory;Ljava/security/SecureRandom;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    return-object p0
.end method

.method private final isCertKnown(Ljava/security/cert/X509Certificate;)Z
    .locals 12
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 152
    nop

    .line 154
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 155
    .local v1, "keyStore":Ljava/security/KeyStore;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 156
    const-string v2, "cert"

    move-object v3, p1

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 159
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "tmfAlgorithm":Ljava/lang/String;
    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    .line 161
    .local v3, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v3, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 164
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    const-string/jumbo v5, "tmf.trustManagers"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v4

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 165
    .local v7, "trustManager":Ljavax/net/ssl/TrustManager;
    instance-of v8, v7, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_0

    .line 166
    nop

    .line 168
    :try_start_1
    move-object v8, v7

    check-cast v8, Ljavax/net/ssl/X509TrustManager;

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/security/cert/X509Certificate;

    aput-object p1, v10, v0

    const-string v11, "RSA"

    invoke-interface {v8, v10, v11}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    return v9

    .line 170
    :catch_0
    move-exception v8

    .line 164
    .end local v7    # "trustManager":Ljavax/net/ssl/TrustManager;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "keyStore":Ljava/security/KeyStore;
    .end local v2    # "tmfAlgorithm":Ljava/lang/String;
    .end local v3    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_1
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return v0
.end method


# virtual methods
.method public final createSocket(Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "port"    # I

    const-string/jumbo v0, "sslSocketFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ipAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1, p2, p3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    const-string/jumbo v1, "sslSocketFactory.createSocket(ipAddress, port)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSSLSocketFactory(Ljavax/net/ssl/TrustManagerFactory;Ljavax/net/ssl/KeyManagerFactory;Ljava/security/SecureRandom;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 5
    .param p1, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .param p2, "keyManagerFactory"    # Ljavax/net/ssl/KeyManagerFactory;
    .param p3, "secureRandom"    # Ljava/security/SecureRandom;

    const-string/jumbo v0, "trustManagerFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    const-string v0, "TLSv1"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$getSSLSocketFactory_u24lambda_u245":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    .line 101
    .local v2, "$i$a$-apply-SSLManager$getSSLSocketFactory$context$1":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    invoke-virtual {v1, v3, v4, p3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 102
    nop

    .line 100
    .end local v1    # "$this$getSSLSocketFactory_u24lambda_u245":Ljavax/net/ssl/SSLContext;
    .end local v2    # "$i$a$-apply-SSLManager$getSSLSocketFactory$context$1":I
    const-string v1, "getInstance(\"TLSv1\").app\u2026, secureRandom)\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const-string v2, "context.socketFactory"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getTrustManagerFactory(Landroid/content/Context;I)Ljavax/net/ssl/TrustManagerFactory;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "certificateResourceId"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    const-string v1, "getInstance(\"X.509\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "context.resources.openRa\u2026ce(certificateResourceId)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .local v1, "caInput":Ljava/io/InputStream;
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    :try_start_0
    move-object v3, v2

    check-cast v3, Ljava/io/InputStream;

    .local v3, "it":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 24
    .local v4, "$i$a$-use-SSLManager$getTrustManagerFactory$ca$1":I
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .end local v3    # "it":Ljava/io/InputStream;
    .end local v4    # "$i$a$-use-SSLManager$getTrustManagerFactory$ca$1":I
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v2, v5

    .line 26
    .local v2, "ca":Ljava/security/cert/X509Certificate;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ca= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v4

    .line 30
    .local v4, "keyStoreType":Ljava/lang/String;
    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    move-object v6, v5

    .local v6, "$this$getTrustManagerFactory_u24lambda_u241":Ljava/security/KeyStore;
    const/4 v7, 0x0

    .line 31
    .local v7, "$i$a$-apply-SSLManager$getTrustManagerFactory$keyStore$1":I
    invoke-virtual {v6, v3, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 32
    move-object v3, v2

    check-cast v3, Ljava/security/cert/Certificate;

    const-string v8, "ca"

    invoke-virtual {v6, v8, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 33
    nop

    .line 30
    .end local v6    # "$this$getTrustManagerFactory_u24lambda_u241":Ljava/security/KeyStore;
    .end local v7    # "$i$a$-apply-SSLManager$getTrustManagerFactory$keyStore$1":I
    move-object v3, v5

    .line 36
    .local v3, "keyStore":Ljava/security/KeyStore;
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getDefaultAlgorithm()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .local v5, "tmfAlgorithm":Ljava/lang/String;
    invoke-static {v5}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v6

    move-object v7, v6

    .local v7, "$this$getTrustManagerFactory_u24lambda_u242":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v8, 0x0

    .line 38
    .local v8, "$i$a$-apply-SSLManager$getTrustManagerFactory$tmf$1":I
    invoke-virtual {v7, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 39
    nop

    .line 37
    .end local v7    # "$this$getTrustManagerFactory_u24lambda_u242":Ljavax/net/ssl/TrustManagerFactory;
    .end local v8    # "$i$a$-apply-SSLManager$getTrustManagerFactory$tmf$1":I
    const-string v7, "getInstance(tmfAlgorithm\u2026 init(keyStore)\n        }"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .local v6, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    return-object v6

    .line 23
    .end local v2    # "ca":Ljava/security/cert/X509Certificate;
    .end local v3    # "keyStore":Ljava/security/KeyStore;
    .end local v4    # "keyStoreType":Ljava/lang/String;
    .end local v5    # "tmfAlgorithm":Ljava/lang/String;
    .end local v6    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catchall_0
    move-exception v3

    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v1    # "caInput":Ljava/io/InputStream;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "certificateResourceId":I
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v1    # "caInput":Ljava/io/InputStream;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "certificateResourceId":I
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public final getTrustySSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 7

    .line 45
    new-instance v0, Lcom/danbamitale/epmslib/comms/SSLManager$getTrustySSLSocketFactory$trustManager$1;

    invoke-direct {v0}, Lcom/danbamitale/epmslib/comms/SSLManager$getTrustySSLSocketFactory$trustManager$1;-><init>()V

    .line 57
    .local v0, "trustManager":Lcom/danbamitale/epmslib/comms/SSLManager$getTrustySSLSocketFactory$trustManager$1;
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    move-object v2, v1

    .local v2, "$this$getTrustySSLSocketFactory_u24lambda_u243":Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    .line 58
    .local v3, "$i$a$-apply-SSLManager$getTrustySSLSocketFactory$1":I
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/danbamitale/epmslib/comms/SSLManager$getTrustySSLSocketFactory$trustManager$1;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    check-cast v4, [Ljavax/net/ssl/TrustManager;

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 59
    nop

    .line 57
    .end local v2    # "$this$getTrustySSLSocketFactory_u24lambda_u243":Ljavax/net/ssl/SSLContext;
    .end local v3    # "$i$a$-apply-SSLManager$getTrustySSLSocketFactory$1":I
    nop

    .line 59
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const-string v2, "getInstance(\"TLS\").apply\u2026)\n        }.socketFactory"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    return-object v1
.end method

.method public final getTrustySSLSocketFactory(Landroid/content/Context;I)Ljavax/net/ssl/SSLSocketFactory;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "certId"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/danbamitale/epmslib/comms/SSLManager$getTrustySSLSocketFactory$trustManager$2;

    invoke-direct {v0, p1, p2}, Lcom/danbamitale/epmslib/comms/SSLManager$getTrustySSLSocketFactory$trustManager$2;-><init>(Landroid/content/Context;I)V

    .line 90
    .local v0, "trustManager":Lcom/danbamitale/epmslib/comms/SSLManager$getTrustySSLSocketFactory$trustManager$2;
    const-string v1, "TLSv1"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    move-object v2, v1

    .local v2, "$this$getTrustySSLSocketFactory_u24lambda_u244":Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    .line 91
    .local v3, "$i$a$-apply-SSLManager$getTrustySSLSocketFactory$2":I
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/danbamitale/epmslib/comms/SSLManager$getTrustySSLSocketFactory$trustManager$2;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    check-cast v4, [Ljavax/net/ssl/TrustManager;

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 92
    nop

    .line 90
    .end local v2    # "$this$getTrustySSLSocketFactory_u24lambda_u244":Ljavax/net/ssl/SSLContext;
    .end local v3    # "$i$a$-apply-SSLManager$getTrustySSLSocketFactory$2":I
    nop

    .line 92
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const-string v2, "getInstance(\"TLSv1\").app\u2026)\n        }.socketFactory"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    return-object v1
.end method

.method public final isCertClient(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    const-string v0, "certificate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    nop

    .line 196
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v0

    .line 197
    .local v0, "ekuExtension":Ljava/util/List;
    if-eqz v0, :cond_0

    .line 198
    const-string v1, "1.3.6.1.5.5.7.3.2"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 200
    .end local v0    # "ekuExtension":Ljava/util/List;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/security/cert/CertificateParsingException;
    invoke-virtual {v0}, Ljava/security/cert/CertificateParsingException;->printStackTrace()V

    .line 203
    .end local v0    # "e":Ljava/security/cert/CertificateParsingException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isCertServer(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    const-string v0, "certificate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    nop

    .line 183
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v0

    .line 184
    .local v0, "ekuExtension":Ljava/util/List;
    if-eqz v0, :cond_0

    .line 185
    const-string v1, "1.3.6.1.5.5.7.3.1"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 187
    .end local v0    # "ekuExtension":Ljava/util/List;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/security/cert/CertificateParsingException;
    invoke-virtual {v0}, Ljava/security/cert/CertificateParsingException;->printStackTrace()V

    .line 190
    .end local v0    # "e":Ljava/security/cert/CertificateParsingException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final verifyCertificateAndURL(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Z
    .locals 6
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "expectedURL"    # Ljava/lang/String;

    const-string/jumbo v0, "socket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expectedURL"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    nop

    .line 112
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    const-string/jumbo v2, "socket.session"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Array<java.security.cert.X509Certificate>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Ljava/security/cert/X509Certificate;

    .line 115
    .local v2, "peerCertificates":[Ljava/security/cert/X509Certificate;
    array-length v3, v2

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    xor-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 116
    aget-object v3, v2, v0

    .line 117
    .local v3, "peerCertificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "peerCertificate.subjectDN.name"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/danbamitale/epmslib/comms/SSLManager;->extractCommonName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "cnFromCertificate":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/danbamitale/epmslib/comms/SSLManager;->extractHostFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, "hostFromURL":Ljava/lang/String;
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 126
    .end local v1    # "session":Ljavax/net/ssl/SSLSession;
    .end local v2    # "peerCertificates":[Ljava/security/cert/X509Certificate;
    .end local v3    # "peerCertificate":Ljava/security/cert/X509Certificate;
    .end local v4    # "cnFromCertificate":Ljava/lang/String;
    .end local v5    # "hostFromURL":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/security/cert/CertificateParsingException;
    invoke-virtual {v1}, Ljava/security/cert/CertificateParsingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 123
    .end local v1    # "e":Ljava/security/cert/CertificateParsingException;
    :catch_1
    move-exception v1

    .line 125
    .local v1, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    .end local v1    # "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :cond_1
    :goto_1
    return v0
.end method
