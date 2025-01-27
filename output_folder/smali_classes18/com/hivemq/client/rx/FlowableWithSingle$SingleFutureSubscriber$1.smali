.class Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber$1;
.super Ljava/util/concurrent/CompletableFuture;
.source "FlowableWithSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CompletableFuture<",
        "TS;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;


# direct methods
.method constructor <init>(Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;

    .line 361
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber$1;, "Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber$1;"
    iput-object p1, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber$1;->this$0:Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;

    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .line 364
    .local p0, "this":Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber$1;, "Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber$1;"
    iget-object v0, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber$1;->this$0:Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;

    invoke-static {v0}, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->access$000(Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 365
    iget-object v0, p0, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber$1;->this$0:Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;

    invoke-virtual {v0}, Lcom/hivemq/client/rx/FlowableWithSingle$SingleFutureSubscriber;->cancel()V

    .line 366
    invoke-super {p0, p1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    move-result v0

    return v0
.end method
