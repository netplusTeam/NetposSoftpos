.class public Lorg/apache/sshd/common/session/SessionWorkBuffer;
.super Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;
.source "SessionWorkBuffer.java"

# interfaces
.implements Lorg/apache/sshd/common/session/SessionHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;",
        "Lorg/apache/sshd/common/session/SessionHolder<",
        "Lorg/apache/sshd/common/session/Session;",
        ">;"
    }
.end annotation


# instance fields
.field private final session:Lorg/apache/sshd/common/session/Session;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/session/Session;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 32
    invoke-direct {p0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>()V

    .line 33
    const-string v0, "No session"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/Session;

    iput-object v0, p0, Lorg/apache/sshd/common/session/SessionWorkBuffer;->session:Lorg/apache/sshd/common/session/Session;

    .line 34
    return-void
.end method


# virtual methods
.method public clear(Z)V
    .locals 3
    .param p1, "wipeData"    # Z

    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to clear session work buffer of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/session/SessionWorkBuffer;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forceClear(Z)V
    .locals 0
    .param p1, "wipeData"    # Z

    .line 47
    invoke-super {p0, p1}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->clear(Z)V

    .line 48
    return-void
.end method

.method public getSession()Lorg/apache/sshd/common/session/Session;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/apache/sshd/common/session/SessionWorkBuffer;->session:Lorg/apache/sshd/common/session/Session;

    return-object v0
.end method
