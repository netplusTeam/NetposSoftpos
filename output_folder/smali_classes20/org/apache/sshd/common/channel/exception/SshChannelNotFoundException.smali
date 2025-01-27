.class public Lorg/apache/sshd/common/channel/exception/SshChannelNotFoundException;
.super Lorg/apache/sshd/common/channel/exception/SshChannelException;
.source "SshChannelNotFoundException.java"


# static fields
.field private static final serialVersionUID:J = 0x568851f1156cfda1L


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "channelId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/sshd/common/channel/exception/SshChannelNotFoundException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "channelId"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sshd/common/channel/exception/SshChannelException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "channelId"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 33
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/sshd/common/channel/exception/SshChannelNotFoundException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method
