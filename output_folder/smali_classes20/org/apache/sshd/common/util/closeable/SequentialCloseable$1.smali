.class Lorg/apache/sshd/common/util/closeable/SequentialCloseable$1;
.super Ljava/lang/Object;
.source "SequentialCloseable.java"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/util/closeable/SequentialCloseable;->doClose(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/future/SshFutureListener<",
        "Lorg/apache/sshd/common/future/CloseFuture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/sshd/common/util/closeable/SequentialCloseable;

.field final synthetic val$immediately:Z

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/sshd/common/util/closeable/SequentialCloseable;Ljava/util/Iterator;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/common/util/closeable/SequentialCloseable;

    .line 45
    iput-object p1, p0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable$1;->this$0:Lorg/apache/sshd/common/util/closeable/SequentialCloseable;

    iput-object p2, p0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable$1;->val$iterator:Ljava/util/Iterator;

    iput-boolean p3, p0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable$1;->val$immediately:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/apache/sshd/common/future/CloseFuture;)V
    .locals 5
    .param p1, "previousFuture"    # Lorg/apache/sshd/common/future/CloseFuture;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable$1;->this$0:Lorg/apache/sshd/common/util/closeable/SequentialCloseable;

    invoke-static {v0}, Lorg/apache/sshd/common/util/closeable/SequentialCloseable;->access$000(Lorg/apache/sshd/common/util/closeable/SequentialCloseable;)Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    .line 50
    .local v0, "traceEnabled":Z
    :goto_0
    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "doClose("

    if-eqz v1, :cond_2

    .line 51
    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/Closeable;

    .line 52
    .local v1, "c":Lorg/apache/sshd/common/Closeable;
    if-eqz v1, :cond_1

    .line 53
    if-eqz v0, :cond_0

    .line 54
    iget-object v3, p0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable$1;->this$0:Lorg/apache/sshd/common/util/closeable/SequentialCloseable;

    invoke-static {v3}, Lorg/apache/sshd/common/util/closeable/SequentialCloseable;->access$100(Lorg/apache/sshd/common/util/closeable/SequentialCloseable;)Lorg/slf4j/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable$1;->val$immediately:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") closing "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 56
    :cond_0
    iget-boolean v2, p0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable$1;->val$immediately:Z

    invoke-interface {v1, v2}, Lorg/apache/sshd/common/Closeable;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    move-result-object v2

    .line 57
    .local v2, "nextFuture":Lorg/apache/sshd/common/future/CloseFuture;
    invoke-interface {v2, p0}, Lorg/apache/sshd/common/future/CloseFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 58
    return-void

    .line 60
    .end local v1    # "c":Lorg/apache/sshd/common/Closeable;
    .end local v2    # "nextFuture":Lorg/apache/sshd/common/future/CloseFuture;
    :cond_1
    goto :goto_0

    .line 61
    :cond_2
    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 62
    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable$1;->this$0:Lorg/apache/sshd/common/util/closeable/SequentialCloseable;

    invoke-static {v1}, Lorg/apache/sshd/common/util/closeable/SequentialCloseable;->access$200(Lorg/apache/sshd/common/util/closeable/SequentialCloseable;)Lorg/slf4j/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable$1;->this$0:Lorg/apache/sshd/common/util/closeable/SequentialCloseable;

    invoke-static {v1}, Lorg/apache/sshd/common/util/closeable/SequentialCloseable;->access$300(Lorg/apache/sshd/common/util/closeable/SequentialCloseable;)Lorg/slf4j/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable$1;->val$immediately:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") signal close complete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 65
    :cond_3
    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable$1;->this$0:Lorg/apache/sshd/common/util/closeable/SequentialCloseable;

    iget-object v1, v1, Lorg/apache/sshd/common/util/closeable/SequentialCloseable;->future:Lorg/apache/sshd/common/future/DefaultCloseFuture;

    invoke-virtual {v1}, Lorg/apache/sshd/common/future/DefaultCloseFuture;->setClosed()V

    .line 67
    :cond_4
    return-void
.end method

.method public bridge synthetic operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 0

    .line 45
    check-cast p1, Lorg/apache/sshd/common/future/CloseFuture;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/closeable/SequentialCloseable$1;->operationComplete(Lorg/apache/sshd/common/future/CloseFuture;)V

    return-void
.end method
