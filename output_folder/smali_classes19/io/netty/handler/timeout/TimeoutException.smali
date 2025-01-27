.class public Lio/netty/handler/timeout/TimeoutException;
.super Lio/netty/channel/ChannelException;
.source "TimeoutException.java"


# static fields
.field private static final serialVersionUID:J = 0x40dc1c87cbd5aa55L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lio/netty/channel/ChannelException;-><init>()V

    .line 29
    return-void
.end method

.method constructor <init>(Z)V
    .locals 1
    .param p1, "shared"    # Z

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 33
    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .line 37
    return-object p0
.end method
