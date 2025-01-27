.class Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;
.super Ljava/lang/Object;
.source "ChannelAsyncOutputStream.java"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->doWriteIfPossible(Z)V
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
.field final synthetic this$0:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

.field final synthetic val$future:Lorg/apache/sshd/common/channel/IoWriteFutureImpl;

.field final synthetic val$length:J

.field final synthetic val$stream:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;IJLorg/apache/sshd/common/channel/ChannelAsyncOutputStream;Lorg/apache/sshd/common/channel/IoWriteFutureImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    .line 137
    iput-object p1, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->this$0:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    iput p2, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->val$total:I

    iput-wide p3, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->val$length:J

    iput-object p5, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->val$stream:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    iput-object p6, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->val$future:Lorg/apache/sshd/common/channel/IoWriteFutureImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleOperationCompleted()V
    .locals 7

    .line 149
    iget v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->val$total:I

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->val$length:J

    cmp-long v0, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v0, :cond_1

    .line 150
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->this$0:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    invoke-static {v0}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->access$000(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->this$0:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    invoke-static {v0}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->access$100(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Lorg/slf4j/Logger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->val$stream:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    aput-object v5, v2, v4

    iget-wide v5, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->val$length:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    iget v3, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->val$total:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "doWriteIfPossible({}) completed write of {} out of {}"

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->this$0:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    invoke-virtual {v0, v4}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->doWriteIfPossible(Z)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->this$0:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    invoke-static {v0}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->access$200(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v5, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->val$future:Lorg/apache/sshd/common/channel/IoWriteFutureImpl;

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 156
    .local v0, "nullified":Z
    iget-object v5, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->this$0:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    invoke-static {v5}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->access$300(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Lorg/slf4j/Logger;

    move-result-object v5

    invoke-interface {v5}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 157
    iget-object v5, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->this$0:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    invoke-static {v5}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->access$400(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Lorg/slf4j/Logger;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->val$stream:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    aput-object v6, v2, v4

    iget v4, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->val$total:I

    .line 158
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    xor-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    .line 157
    const-string v1, "doWriteIfPossible({}) completed write len={}, more={}"

    invoke-interface {v5, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_2
    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->val$future:Lorg/apache/sshd/common/channel/IoWriteFutureImpl;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lorg/apache/sshd/common/channel/IoWriteFutureImpl;->setValue(Ljava/lang/Object;)V

    .line 162
    .end local v0    # "nullified":Z
    :goto_0
    return-void
.end method

.method private handleOperationFailed(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "reason"    # Ljava/lang/Throwable;

    .line 166
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->this$0:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    invoke-static {v0}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->access$500(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->this$0:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    invoke-static {v0}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->access$600(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Lorg/slf4j/Logger;

    move-result-object v0

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->val$stream:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    aput-object v6, v5, v3

    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-wide v6, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->val$length:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    iget v6, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->val$total:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 167
    const-string v6, "doWriteIfPossible({}) failed ({}) to complete write of {} out of {}: {}"

    invoke-interface {v0, v6, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->this$0:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    invoke-static {v0}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->access$700(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->this$0:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    invoke-static {v0}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->access$800(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Lorg/slf4j/Logger;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doWriteIfPossible("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") write failure details"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->this$0:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    invoke-static {v0}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->access$200(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v5, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->val$future:Lorg/apache/sshd/common/channel/IoWriteFutureImpl;

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 176
    .local v0, "nullified":Z
    iget-object v5, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->this$0:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    invoke-static {v5}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->access$900(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Lorg/slf4j/Logger;

    move-result-object v5

    invoke-interface {v5}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 177
    iget-object v5, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->this$0:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    invoke-static {v5}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->access$1000(Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;)Lorg/slf4j/Logger;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->val$stream:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    aput-object v6, v1, v3

    iget v3, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->val$total:I

    .line 178
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    xor-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 177
    const-string v2, "doWriteIfPossible({}) failed write len={}, more={}"

    invoke-interface {v5, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :cond_2
    iget-object v1, p0, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->val$future:Lorg/apache/sshd/common/channel/IoWriteFutureImpl;

    invoke-virtual {v1, p1}, Lorg/apache/sshd/common/channel/IoWriteFutureImpl;->setValue(Ljava/lang/Object;)V

    .line 181
    return-void
.end method


# virtual methods
.method public bridge synthetic operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 0

    .line 137
    check-cast p1, Lorg/apache/sshd/common/io/IoWriteFuture;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->operationComplete(Lorg/apache/sshd/common/io/IoWriteFuture;)V

    return-void
.end method

.method public operationComplete(Lorg/apache/sshd/common/io/IoWriteFuture;)V
    .locals 1
    .param p1, "f"    # Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 140
    invoke-interface {p1}, Lorg/apache/sshd/common/io/IoWriteFuture;->isWritten()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->handleOperationCompleted()V

    goto :goto_0

    .line 143
    :cond_0
    invoke-interface {p1}, Lorg/apache/sshd/common/io/IoWriteFuture;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream$1;->handleOperationFailed(Ljava/lang/Throwable;)V

    .line 145
    :goto_0
    return-void
.end method
