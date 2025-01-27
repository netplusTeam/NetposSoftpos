.class final Lio/netty/channel/AbstractChannel$AnnotatedNoRouteToHostException;
.super Ljava/net/NoRouteToHostException;
.source "AbstractChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnnotatedNoRouteToHostException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5e638c21757658efL


# direct methods
.method constructor <init>(Ljava/net/NoRouteToHostException;Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "exception"    # Ljava/net/NoRouteToHostException;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/NoRouteToHostException;->getMessage()Ljava/lang/String;

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

    invoke-direct {p0, v0}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannel$AnnotatedNoRouteToHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1184
    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .line 1188
    return-object p0
.end method
