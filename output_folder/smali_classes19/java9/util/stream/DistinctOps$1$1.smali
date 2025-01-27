.class Ljava9/util/stream/DistinctOps$1$1;
.super Ljava9/util/stream/Sink$ChainedReference;
.source "DistinctOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava9/util/stream/DistinctOps$1;->opWrapSink(ILjava9/util/stream/Sink;)Ljava9/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/Sink$ChainedReference<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field lastSeen:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field seenNull:Z

.field final synthetic this$0:Ljava9/util/stream/DistinctOps$1;


# direct methods
.method constructor <init>(Ljava9/util/stream/DistinctOps$1;Ljava9/util/stream/Sink;)V
    .locals 0
    .param p1, "this$0"    # Ljava9/util/stream/DistinctOps$1;

    .line 140
    .local p2, "downstream":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<-TT;>;"
    iput-object p1, p0, Ljava9/util/stream/DistinctOps$1$1;->this$0:Ljava9/util/stream/DistinctOps$1;

    invoke-direct {p0, p2}, Ljava9/util/stream/Sink$ChainedReference;-><init>(Ljava9/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 160
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 161
    iget-boolean v0, p0, Ljava9/util/stream/DistinctOps$1$1;->seenNull:Z

    if-nez v0, :cond_2

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/DistinctOps$1$1;->seenNull:Z

    .line 163
    iget-object v0, p0, Ljava9/util/stream/DistinctOps$1$1;->downstream:Ljava9/util/stream/Sink;

    const/4 v1, 0x0

    iput-object v1, p0, Ljava9/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava9/util/stream/Sink;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Ljava9/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 166
    :cond_1
    iget-object v0, p0, Ljava9/util/stream/DistinctOps$1$1;->downstream:Ljava9/util/stream/Sink;

    iput-object p1, p0, Ljava9/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava9/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 168
    :cond_2
    :goto_0
    return-void
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava9/util/stream/DistinctOps$1$1;->seenNull:Z

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Ljava9/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Ljava9/util/stream/DistinctOps$1$1;->downstream:Ljava9/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava9/util/stream/Sink;->begin(J)V

    .line 149
    return-void
.end method

.method public end()V
    .locals 1

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava9/util/stream/DistinctOps$1$1;->seenNull:Z

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Ljava9/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Ljava9/util/stream/DistinctOps$1$1;->downstream:Ljava9/util/stream/Sink;

    invoke-interface {v0}, Ljava9/util/stream/Sink;->end()V

    .line 156
    return-void
.end method
