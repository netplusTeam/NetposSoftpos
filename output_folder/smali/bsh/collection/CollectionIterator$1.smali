.class Lbsh/collection/CollectionIterator$1;
.super Ljava/lang/Object;
.source "CollectionIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsh/collection/CollectionIterator;->createIterator(Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbsh/collection/CollectionIterator;

.field final synthetic val$bbi:Lbsh/CollectionManager$BasicBshIterator;


# direct methods
.method constructor <init>(Lbsh/collection/CollectionIterator;Lbsh/CollectionManager$BasicBshIterator;)V
    .locals 0
    .param p1, "this$0"    # Lbsh/collection/CollectionIterator;

    .line 103
    iput-object p1, p0, Lbsh/collection/CollectionIterator$1;->this$0:Lbsh/collection/CollectionIterator;

    iput-object p2, p0, Lbsh/collection/CollectionIterator$1;->val$bbi:Lbsh/CollectionManager$BasicBshIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lbsh/collection/CollectionIterator$1;->val$bbi:Lbsh/CollectionManager$BasicBshIterator;

    invoke-virtual {v0}, Lbsh/CollectionManager$BasicBshIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 105
    iget-object v0, p0, Lbsh/collection/CollectionIterator$1;->val$bbi:Lbsh/CollectionManager$BasicBshIterator;

    invoke-virtual {v0}, Lbsh/CollectionManager$BasicBshIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
