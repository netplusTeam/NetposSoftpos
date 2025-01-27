.class Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;
.super Ljava/lang/Object;
.source "ImmutableElement.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/ImmutableElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ElementSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private size:I

.field final synthetic this$0:Lcom/hivemq/client/internal/util/collections/ImmutableElement;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/util/collections/ImmutableElement;)V
    .locals 0

    .line 191
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>.ElementSpliterator;"
    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;->this$0:Lcom/hivemq/client/internal/util/collections/ImmutableElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 p1, 0x1

    iput p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;->size:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/hivemq/client/internal/util/collections/ImmutableElement;Lcom/hivemq/client/internal/util/collections/ImmutableElement$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hivemq/client/internal/util/collections/ImmutableElement;
    .param p2, "x1"    # Lcom/hivemq/client/internal/util/collections/ImmutableElement$1;

    .line 191
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>.ElementSpliterator;"
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableElement;)V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 223
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>.ElementSpliterator;"
    const/16 v0, 0x4551

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 213
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>.ElementSpliterator;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;->size:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 229
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>.ElementSpliterator;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const-string v0, "Consumer"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 231
    return-void
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 218
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>.ElementSpliterator;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;->size:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 197
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>.ElementSpliterator;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const-string v0, "Consumer"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 199
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;->this$0:Lcom/hivemq/client/internal/util/collections/ImmutableElement;

    invoke-static {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->access$100(Lcom/hivemq/client/internal/util/collections/ImmutableElement;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 200
    iput v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;->size:I

    .line 201
    return v2

    .line 203
    :cond_0
    return v1
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 208
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>.ElementSpliterator;"
    const/4 v0, 0x0

    return-object v0
.end method
