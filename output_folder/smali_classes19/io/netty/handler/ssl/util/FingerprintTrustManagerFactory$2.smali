.class Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$2;
.super Ljava/lang/Object;
.source "FingerprintTrustManagerFactory.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;

    .line 93
    iput-object p1, p0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$2;->this$0:Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkTrusted(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    aget-object v1, p2, v0

    .line 107
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v1}, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$2;->fingerprint(Ljava/security/cert/X509Certificate;)[B

    move-result-object v2

    .line 108
    .local v2, "fingerprint":[B
    const/4 v3, 0x0

    .line 109
    .local v3, "found":Z
    iget-object v4, p0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$2;->this$0:Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;

    invoke-static {v4}, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;->access$000(Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;)[[B

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    .line 110
    .local v6, "allowedFingerprint":[B
    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 111
    const/4 v3, 0x1

    .line 112
    goto :goto_1

    .line 109
    .end local v6    # "allowedFingerprint":[B
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 120
    return-void

    .line 117
    :cond_2
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " certificate with unknown fingerprint: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 118
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fingerprint(Ljava/security/cert/X509Certificate;)[B
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 123
    invoke-static {}, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;->access$100()Lio/netty/util/concurrent/FastThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 124
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 125
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 97
    const-string v0, "client"

    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$2;->checkTrusted(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V

    .line 98
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 102
    const-string v0, "server"

    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$2;->checkTrusted(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V

    .line 103
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 130
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_X509_CERTIFICATES:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method
