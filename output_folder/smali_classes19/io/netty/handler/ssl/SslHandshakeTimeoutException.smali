.class public final Lio/netty/handler/ssl/SslHandshakeTimeoutException;
.super Ljavax/net/ssl/SSLHandshakeException;
.source "SslHandshakeTimeoutException.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
