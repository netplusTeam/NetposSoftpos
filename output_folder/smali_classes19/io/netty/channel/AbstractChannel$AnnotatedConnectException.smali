.class final Lio/netty/channel/AbstractChannel$AnnotatedConnectException;
.super Ljava/net/ConnectException;
.source "AbstractChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnnotatedConnectException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x36268a3ae3b97b94L


# direct methods
.method constructor <init>(Ljava/net/ConnectException;Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "exception"    # Ljava/net/ConnectException;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

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

    invoke-direct {p0, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannel$AnnotatedConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1169
    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .line 1173
    return-object p0
.end method
