.class public Lorg/apache/sshd/common/channel/exception/SshChannelException;
.super Ljava/io/IOException;
.source "SshChannelException.java"


# static fields
.field private static final serialVersionUID:J = 0x6614c4cd861bbffdL


# instance fields
.field private final channelId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "channelId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/sshd/common/channel/exception/SshChannelException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "channelId"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 41
    invoke-direct {p0, p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    iput p1, p0, Lorg/apache/sshd/common/channel/exception/SshChannelException;->channelId:I

    .line 43
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "channelId"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 37
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/sshd/common/channel/exception/SshChannelException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getChannelId()I
    .locals 1

    .line 46
    iget v0, p0, Lorg/apache/sshd/common/channel/exception/SshChannelException;->channelId:I

    return v0
.end method
