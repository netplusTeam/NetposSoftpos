.class Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;
.super Ljava/lang/Object;
.source "PagedChannelRandomAccessSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MRU"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final limit:I

.field private queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "limit"    # I

    .line 202
    .local p0, "this":Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;, "Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;->queue:Ljava/util/LinkedList;

    .line 203
    iput p1, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;->limit:I

    .line 204
    return-void
.end method


# virtual methods
.method public enqueue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 213
    .local p0, "this":Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;, "Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU<TE;>;"
    .local p1, "newElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 214
    return-object v1

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 218
    .local v2, "element":Ljava/lang/Object;, "TE;"
    if-ne p1, v2, :cond_1

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 220
    iget-object v3, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;->queue:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 221
    return-object v1

    .line 223
    .end local v2    # "element":Ljava/lang/Object;, "TE;"
    :cond_1
    goto :goto_0

    .line 224
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v2, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;->limit:I

    if-le v0, v2, :cond_3

    .line 227
    iget-object v0, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 229
    :cond_3
    return-object v1
.end method
