.class Lcom/sleepycat/je/rep/util/ldiff/BlockBag$BagIterator;
.super Ljava/lang/Object;
.source "BlockBag.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/util/ldiff/BlockBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BagIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/sleepycat/je/rep/util/ldiff/Block;",
        ">;"
    }
.end annotation


# instance fields
.field private offset:I

.field final synthetic this$0:Lcom/sleepycat/je/rep/util/ldiff/BlockBag;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/BlockBag;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag$BagIterator;->this$0:Lcom/sleepycat/je/rep/util/ldiff/BlockBag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 p1, 0x0

    iput p1, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag$BagIterator;->offset:I

    .line 166
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 170
    iget v0, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag$BagIterator;->offset:I

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag$BagIterator;->this$0:Lcom/sleepycat/je/rep/util/ldiff/BlockBag;

    invoke-static {v1}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->access$000(Lcom/sleepycat/je/rep/util/ldiff/BlockBag;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag$BagIterator;->this$0:Lcom/sleepycat/je/rep/util/ldiff/BlockBag;

    invoke-static {v1}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->access$100(Lcom/sleepycat/je/rep/util/ldiff/BlockBag;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/sleepycat/je/rep/util/ldiff/Block;
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag$BagIterator;->this$0:Lcom/sleepycat/je/rep/util/ldiff/BlockBag;

    invoke-static {v0}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->access$100(Lcom/sleepycat/je/rep/util/ldiff/BlockBag;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag$BagIterator;->this$0:Lcom/sleepycat/je/rep/util/ldiff/BlockBag;

    invoke-static {v1}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->access$000(Lcom/sleepycat/je/rep/util/ldiff/BlockBag;)I

    move-result v1

    iget v2, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag$BagIterator;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag$BagIterator;->offset:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/util/ldiff/Block;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag$BagIterator;->next()Lcom/sleepycat/je/rep/util/ldiff/Block;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag$BagIterator;->this$0:Lcom/sleepycat/je/rep/util/ldiff/BlockBag;

    invoke-static {v0}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->access$100(Lcom/sleepycat/je/rep/util/ldiff/BlockBag;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag$BagIterator;->this$0:Lcom/sleepycat/je/rep/util/ldiff/BlockBag;

    invoke-static {v2}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->access$000(Lcom/sleepycat/je/rep/util/ldiff/BlockBag;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/util/ldiff/Block;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->remove(Lcom/sleepycat/je/rep/util/ldiff/Block;)Ljava/util/List;

    .line 176
    return-void
.end method
