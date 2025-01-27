.class Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;
.super Ljava/lang/Object;
.source "ImmutableElement.java"

# interfaces
.implements Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/ImmutableElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ElementIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/hivemq/client/internal/util/collections/ImmutableElement;


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/util/collections/ImmutableElement;I)V
    .locals 0
    .param p2, "index"    # I

    .line 140
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>.ElementIterator;"
    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;->this$0:Lcom/hivemq/client/internal/util/collections/ImmutableElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput p2, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;->index:I

    .line 142
    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 184
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>.ElementIterator;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const-string v0, "Consumer"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 188
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 146
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>.ElementIterator;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;->index:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 2

    .line 165
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>.ElementIterator;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;->index:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>.ElementIterator;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;->index:I

    .line 155
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;->this$0:Lcom/hivemq/client/internal/util/collections/ImmutableElement;

    invoke-static {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->access$100(Lcom/hivemq/client/internal/util/collections/ImmutableElement;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 152
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 160
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>.ElementIterator;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;->index:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>.ElementIterator;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;->index:I

    .line 174
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;->this$0:Lcom/hivemq/client/internal/util/collections/ImmutableElement;

    invoke-static {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->access$100(Lcom/hivemq/client/internal/util/collections/ImmutableElement;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 171
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 179
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;, "Lcom/hivemq/client/internal/util/collections/ImmutableElement<TE;>.ElementIterator;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
