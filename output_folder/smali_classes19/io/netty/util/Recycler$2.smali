.class Lio/netty/util/Recycler$2;
.super Lio/netty/util/concurrent/FastThreadLocal;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/FastThreadLocal<",
        "Lio/netty/util/Recycler$Stack<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/Recycler;


# direct methods
.method constructor <init>(Lio/netty/util/Recycler;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/util/Recycler;

    .line 112
    .local p0, "this":Lio/netty/util/Recycler$2;, "Lio/netty/util/Recycler$2;"
    iput-object p1, p0, Lio/netty/util/Recycler$2;->this$0:Lio/netty/util/Recycler;

    invoke-direct {p0}, Lio/netty/util/concurrent/FastThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lio/netty/util/Recycler$Stack;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler$Stack<",
            "TT;>;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lio/netty/util/Recycler$2;, "Lio/netty/util/Recycler$2;"
    new-instance v7, Lio/netty/util/Recycler$Stack;

    iget-object v1, p0, Lio/netty/util/Recycler$2;->this$0:Lio/netty/util/Recycler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v0, p0, Lio/netty/util/Recycler$2;->this$0:Lio/netty/util/Recycler;

    invoke-static {v0}, Lio/netty/util/Recycler;->access$000(Lio/netty/util/Recycler;)I

    move-result v3

    iget-object v0, p0, Lio/netty/util/Recycler$2;->this$0:Lio/netty/util/Recycler;

    invoke-static {v0}, Lio/netty/util/Recycler;->access$100(Lio/netty/util/Recycler;)I

    move-result v4

    iget-object v0, p0, Lio/netty/util/Recycler$2;->this$0:Lio/netty/util/Recycler;

    .line 116
    invoke-static {v0}, Lio/netty/util/Recycler;->access$200(Lio/netty/util/Recycler;)I

    move-result v5

    iget-object v0, p0, Lio/netty/util/Recycler$2;->this$0:Lio/netty/util/Recycler;

    invoke-static {v0}, Lio/netty/util/Recycler;->access$300(Lio/netty/util/Recycler;)I

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/netty/util/Recycler$Stack;-><init>(Lio/netty/util/Recycler;Ljava/lang/Thread;IIII)V

    .line 115
    return-object v7
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    .local p0, "this":Lio/netty/util/Recycler$2;, "Lio/netty/util/Recycler$2;"
    invoke-virtual {p0}, Lio/netty/util/Recycler$2;->initialValue()Lio/netty/util/Recycler$Stack;

    move-result-object v0

    return-object v0
.end method

.method protected onRemoval(Lio/netty/util/Recycler$Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack<",
            "TT;>;)V"
        }
    .end annotation

    .line 122
    .local p0, "this":Lio/netty/util/Recycler$2;, "Lio/netty/util/Recycler$2;"
    .local p1, "value":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<TT;>;"
    iget-object v0, p1, Lio/netty/util/Recycler$Stack;->threadRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 123
    invoke-static {}, Lio/netty/util/Recycler;->access$400()Lio/netty/util/concurrent/FastThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lio/netty/util/Recycler;->access$400()Lio/netty/util/concurrent/FastThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_0
    return-void
.end method

.method protected bridge synthetic onRemoval(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    .local p0, "this":Lio/netty/util/Recycler$2;, "Lio/netty/util/Recycler$2;"
    check-cast p1, Lio/netty/util/Recycler$Stack;

    invoke-virtual {p0, p1}, Lio/netty/util/Recycler$2;->onRemoval(Lio/netty/util/Recycler$Stack;)V

    return-void
.end method
