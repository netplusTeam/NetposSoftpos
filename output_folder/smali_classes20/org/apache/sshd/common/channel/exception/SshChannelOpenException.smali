.class public Lorg/apache/sshd/common/channel/exception/SshChannelOpenException;
.super Lorg/apache/sshd/common/channel/exception/SshChannelException;
.source "SshChannelOpenException.java"


# static fields
.field private static final serialVersionUID:J = 0x31d6efd43d49a02bL


# instance fields
.field private final code:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "channelId"    # I
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/sshd/common/channel/exception/SshChannelOpenException;-><init>(IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "channelId"    # I
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "cause"    # Ljava/lang/Throwable;

    .line 36
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/sshd/common/channel/exception/SshChannelException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    iput p2, p0, Lorg/apache/sshd/common/channel/exception/SshChannelOpenException;->code:I

    .line 38
    return-void
.end method


# virtual methods
.method public getReasonCode()I
    .locals 1

    .line 52
    iget v0, p0, Lorg/apache/sshd/common/channel/exception/SshChannelOpenException;->code:I

    return v0
.end method
