.class Lorg/apache/sshd/common/channel/BufferedIoOutputStream$1;
.super Ljava/lang/Object;
.source "BufferedIoOutputStream.java"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->startWriting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/future/SshFutureListener<",
        "Lorg/apache/sshd/common/io/IoWriteFuture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/sshd/common/channel/BufferedIoOutputStream;

.field final synthetic val$future:Lorg/apache/sshd/common/channel/IoWriteFutureImpl;


# direct methods
.method constructor <init>(Lorg/apache/sshd/common/channel/BufferedIoOutputStream;Lorg/apache/sshd/common/channel/IoWriteFutureImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/common/channel/BufferedIoOutputStream;

    .line 74
    iput-object p1, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream$1;->this$0:Lorg/apache/sshd/common/channel/BufferedIoOutputStream;

    iput-object p2, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream$1;->val$future:Lorg/apache/sshd/common/channel/IoWriteFutureImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private finishWrite()V
    .locals 5

    .line 87
    iget-object v0, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream$1;->this$0:Lorg/apache/sshd/common/channel/BufferedIoOutputStream;

    iget-object v0, v0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->writes:Ljava/util/Queue;

    iget-object v1, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream$1;->val$future:Lorg/apache/sshd/common/channel/IoWriteFutureImpl;

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream$1;->this$0:Lorg/apache/sshd/common/channel/BufferedIoOutputStream;

    iget-object v0, v0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->currentWrite:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream$1;->val$future:Lorg/apache/sshd/common/channel/IoWriteFutureImpl;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream$1;->this$0:Lorg/apache/sshd/common/channel/BufferedIoOutputStream;

    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->startWriting()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream$1;->this$0:Lorg/apache/sshd/common/channel/BufferedIoOutputStream;

    invoke-static {v1}, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->access$000(Lorg/apache/sshd/common/channel/BufferedIoOutputStream;)Lorg/slf4j/Logger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream$1;->this$0:Lorg/apache/sshd/common/channel/BufferedIoOutputStream;

    iget-object v2, v2, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->out:Lorg/apache/sshd/common/io/IoOutputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "finishWrite({}) failed ({}) re-start writing"

    invoke-interface {v1, v4, v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 0

    .line 74
    check-cast p1, Lorg/apache/sshd/common/io/IoWriteFuture;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/channel/BufferedIoOutputStream$1;->operationComplete(Lorg/apache/sshd/common/io/IoWriteFuture;)V

    return-void
.end method

.method public operationComplete(Lorg/apache/sshd/common/io/IoWriteFuture;)V
    .locals 2
    .param p1, "f"    # Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 77
    invoke-interface {p1}, Lorg/apache/sshd/common/io/IoWriteFuture;->isWritten()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream$1;->val$future:Lorg/apache/sshd/common/channel/IoWriteFutureImpl;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/channel/IoWriteFutureImpl;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream$1;->val$future:Lorg/apache/sshd/common/channel/IoWriteFutureImpl;

    invoke-interface {p1}, Lorg/apache/sshd/common/io/IoWriteFuture;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/channel/IoWriteFutureImpl;->setValue(Ljava/lang/Object;)V

    .line 82
    :goto_0
    invoke-direct {p0}, Lorg/apache/sshd/common/channel/BufferedIoOutputStream$1;->finishWrite()V

    .line 83
    return-void
.end method
