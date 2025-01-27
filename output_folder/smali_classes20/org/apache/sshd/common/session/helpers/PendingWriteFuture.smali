.class public Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;
.super Lorg/apache/sshd/common/io/AbstractIoWriteFuture;
.source "PendingWriteFuture.java"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/io/AbstractIoWriteFuture;",
        "Lorg/apache/sshd/common/future/SshFutureListener<",
        "Lorg/apache/sshd/common/io/IoWriteFuture;",
        ">;"
    }
.end annotation


# instance fields
.field private final buffer:Lorg/apache/sshd/common/util/buffer/Buffer;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/common/io/AbstractIoWriteFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    const-string v0, "No buffer provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/buffer/Buffer;

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 39
    return-void
.end method


# virtual methods
.method public getBuffer()Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;->buffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    return-object v0
.end method

.method public bridge synthetic operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 0

    .line 33
    check-cast p1, Lorg/apache/sshd/common/io/IoWriteFuture;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;->operationComplete(Lorg/apache/sshd/common/io/IoWriteFuture;)V

    return-void
.end method

.method public operationComplete(Lorg/apache/sshd/common/io/IoWriteFuture;)V
    .locals 1
    .param p1, "future"    # Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 56
    invoke-interface {p1}, Lorg/apache/sshd/common/io/IoWriteFuture;->isWritten()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;->setWritten()V

    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {p1}, Lorg/apache/sshd/common/io/IoWriteFuture;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;->setException(Ljava/lang/Throwable;)V

    .line 61
    :goto_0
    return-void
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 50
    const-string v0, "No cause specified"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;->setValue(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public setWritten()V
    .locals 1

    .line 46
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/PendingWriteFuture;->setValue(Ljava/lang/Object;)V

    .line 47
    return-void
.end method
