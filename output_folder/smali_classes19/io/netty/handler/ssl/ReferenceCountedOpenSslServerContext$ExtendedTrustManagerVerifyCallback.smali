.class final Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$ExtendedTrustManagerVerifyCallback;
.super Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AbstractCertificateVerifier;
.source "ReferenceCountedOpenSslServerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtendedTrustManagerVerifyCallback"
.end annotation


# instance fields
.field private final manager:Ljavax/net/ssl/X509ExtendedTrustManager;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509ExtendedTrustManager;)V
    .locals 1
    .param p1, "engineMap"    # Lio/netty/handler/ssl/OpenSslEngineMap;
    .param p2, "manager"    # Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 250
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AbstractCertificateVerifier;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;)V

    .line 251
    invoke-static {p2}, Lio/netty/handler/ssl/OpenSslTlsv13X509ExtendedTrustManager;->wrap(Ljavax/net/ssl/X509ExtendedTrustManager;)Ljavax/net/ssl/X509ExtendedTrustManager;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$ExtendedTrustManagerVerifyCallback;->manager:Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 252
    return-void
.end method


# virtual methods
.method verify(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "engine"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .param p2, "peerCerts"    # [Ljava/security/cert/X509Certificate;
    .param p3, "auth"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$ExtendedTrustManagerVerifyCallback;->manager:Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-virtual {v0, p2, p3, p1}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 258
    return-void
.end method
