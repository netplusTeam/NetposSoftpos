.class public Lorg/apache/sshd/common/RuntimeSshException;
.super Ljava/lang/RuntimeException;
.source "RuntimeSshException.java"


# static fields
.field private static final serialVersionUID:J = -0x21a22e1018aaa66fL


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/RuntimeSshException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 46
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method
