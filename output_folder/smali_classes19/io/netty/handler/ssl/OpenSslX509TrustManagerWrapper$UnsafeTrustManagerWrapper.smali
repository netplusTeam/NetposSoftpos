.class final Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$UnsafeTrustManagerWrapper;
.super Ljava/lang/Object;
.source "OpenSslX509TrustManagerWrapper.java"

# interfaces
.implements Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeTrustManagerWrapper"
.end annotation


# instance fields
.field private final spiOffset:J

.field private final tmOffset:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0
    .param p1, "spiOffset"    # J
    .param p3, "tmOffset"    # J

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-wide p1, p0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$UnsafeTrustManagerWrapper;->spiOffset:J

    .line 165
    iput-wide p3, p0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$UnsafeTrustManagerWrapper;->tmOffset:J

    .line 166
    return-void
.end method


# virtual methods
.method public wrapIfNeeded(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 4
    .param p1, "manager"    # Ljavax/net/ssl/X509TrustManager;

    .line 171
    instance-of v0, p1, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-nez v0, :cond_0

    .line 173
    :try_start_0
    invoke-static {}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->access$000()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 174
    .local v0, "ctx":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 175
    iget-wide v1, p0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$UnsafeTrustManagerWrapper;->spiOffset:J

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 176
    .local v1, "spi":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 177
    iget-wide v2, p0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$UnsafeTrustManagerWrapper;->tmOffset:J

    invoke-static {v1, v2, v3}, Lio/netty/util/internal/PlatformDependent;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 178
    .local v2, "tm":Ljava/lang/Object;
    instance-of v3, v2, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v3, :cond_0

    .line 179
    move-object v3, v2

    check-cast v3, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 186
    .end local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    .end local v1    # "spi":Ljava/lang/Object;
    .end local v2    # "tm":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/security/KeyManagementException;
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 182
    .end local v0    # "e":Ljava/security/KeyManagementException;
    :catch_1
    move-exception v0

    .line 185
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 192
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    :goto_0
    return-object p1
.end method
