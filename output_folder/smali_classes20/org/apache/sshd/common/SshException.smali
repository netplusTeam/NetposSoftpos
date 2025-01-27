.class public Lorg/apache/sshd/common/SshException;
.super Ljava/io/IOException;
.source "SshException.java"


# static fields
.field private static final serialVersionUID:J = -0x65fe970469c0f41eL


# instance fields
.field private final disconnectCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "disconnectCode"    # I

    .line 50
    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getDisconnectReasonName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "disconnectCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "disconnectCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 62
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getDisconnectReasonName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    iput p1, p0, Lorg/apache/sshd/common/SshException;->disconnectCode:I

    .line 64
    if-eqz p3, :cond_1

    .line 65
    invoke-virtual {p0, p3}, Lorg/apache/sshd/common/SshException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 67
    :cond_1
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "disconnectCode"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 58
    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getDisconnectReasonName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 42
    const-string v0, "No cause"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getDisconnectCode()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/apache/sshd/common/SshException;->disconnectCode:I

    return v0
.end method
