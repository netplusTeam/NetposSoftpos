.class final Lio/netty/channel/AbstractChannel$AnnotatedSocketException;
.super Ljava/net/SocketException;
.source "AbstractChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnnotatedSocketException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3614035cdfe3f217L


# direct methods
.method constructor <init>(Ljava/net/SocketException;Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "exception"    # Ljava/net/SocketException;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannel$AnnotatedSocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1199
    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .line 1203
    return-object p0
.end method
