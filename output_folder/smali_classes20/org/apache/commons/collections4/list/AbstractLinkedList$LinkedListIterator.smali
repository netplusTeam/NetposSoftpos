.class public Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;
.super Ljava/lang/Object;
.source "AbstractLinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lorg/apache/commons/collections4/OrderedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/AbstractLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LinkedListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/OrderedIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected expectedModCount:I

.field protected next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected nextIndex:I

.field protected final parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/AbstractLinkedList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/list/AbstractLinkedList;I)V
    .locals 1
    .param p2, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList<",
            "TE;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 807
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator<TE;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 808
    iput-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    .line 809
    iget v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    .line 810
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 811
    iput p2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    .line 812
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 912
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->checkModCount()V

    .line 913
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 914
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 915
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    .line 916
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    .line 917
    return-void
.end method

.method protected checkModCount()V
    .locals 2

    .line 822
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 825
    return-void

    .line 823
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method protected getLastNodeReturned()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 835
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eqz v0, :cond_0

    .line 838
    return-object v0

    .line 836
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 843
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 2

    .line 861
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 848
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->checkModCount()V

    .line 849
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 853
    .local v0, "value":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 854
    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 855
    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    .line 856
    return-object v0

    .line 850
    .end local v0    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No element at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 879
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 866
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->checkModCount()V

    .line 867
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 871
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 872
    .local v0, "value":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 873
    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    .line 874
    return-object v0

    .line 868
    .end local v0    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Already at start of list."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 885
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .line 890
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->checkModCount()V

    .line 891
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne v0, v1, :cond_0

    .line 893
    iget-object v0, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 894
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->getLastNodeReturned()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    goto :goto_0

    .line 897
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->getLastNodeReturned()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 898
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    .line 900
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 901
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    .line 902
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 906
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->checkModCount()V

    .line 907
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->getLastNodeReturned()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    .line 908
    return-void
.end method
