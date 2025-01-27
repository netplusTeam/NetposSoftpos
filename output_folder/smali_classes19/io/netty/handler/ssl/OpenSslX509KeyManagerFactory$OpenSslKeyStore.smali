.class final Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore;
.super Ljava/security/KeyStore;
.source "OpenSslX509KeyManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OpenSslKeyStore"
.end annotation


# direct methods
.method private constructor <init>([Ljava/security/cert/X509Certificate;Z)V
    .locals 3
    .param p1, "certificateChain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "keyless"    # Z

    .line 298
    new-instance v0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;

    invoke-direct {v0, p2, p1}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;-><init>(Z[Ljava/security/cert/X509Certificate;)V

    const/4 v1, 0x0

    const-string v2, "native"

    invoke-direct {p0, v0, v1, v2}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V

    .line 410
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->ensureAvailability()V

    .line 411
    return-void
.end method

.method synthetic constructor <init>([Ljava/security/cert/X509Certificate;ZLio/netty/handler/ssl/OpenSslX509KeyManagerFactory$1;)V
    .locals 0
    .param p1, "x0"    # [Ljava/security/cert/X509Certificate;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$1;

    .line 296
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore;-><init>([Ljava/security/cert/X509Certificate;Z)V

    return-void
.end method
