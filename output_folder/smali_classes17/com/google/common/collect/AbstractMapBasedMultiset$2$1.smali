.class Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractMapBasedMultiset$2;->next()Lcom/google/common/collect/Multiset$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$AbstractEntry<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/AbstractMapBasedMultiset$2;

.field final synthetic val$mapEntry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset$2;Ljava/util/Map$Entry;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/collect/AbstractMapBasedMultiset$2;

    .line 132
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;, "Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;->this$1:Lcom/google/common/collect/AbstractMapBasedMultiset$2;

    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 141
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;, "Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    .line 142
    .local v0, "count":Lcom/google/common/collect/Count;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v1

    if-nez v1, :cond_1

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;->this$1:Lcom/google/common/collect/AbstractMapBasedMultiset$2;

    iget-object v1, v1, Lcom/google/common/collect/AbstractMapBasedMultiset$2;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$100(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Count;

    .line 144
    .local v1, "frequency":Lcom/google/common/collect/Count;
    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {v1}, Lcom/google/common/collect/Count;->get()I

    move-result v2

    return v2

    .line 148
    .end local v1    # "frequency":Lcom/google/common/collect/Count;
    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 136
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;, "Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
