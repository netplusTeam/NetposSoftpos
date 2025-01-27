.class public Lcom/hivemq/client/internal/util/collections/NodeList;
.super Ljava/lang/Object;
.source "NodeList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/util/collections/NodeList$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/hivemq/client/internal/util/collections/NodeList$Node<",
        "TN;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field private last:Lcom/hivemq/client/internal/util/collections/NodeList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/NodeList;, "Lcom/hivemq/client/internal/util/collections/NodeList<TN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/NodeList;, "Lcom/hivemq/client/internal/util/collections/NodeList<TN;>;"
    .local p1, "node":Lcom/hivemq/client/internal/util/collections/NodeList$Node;, "TN;"
    iget-object v0, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    if-nez v0, :cond_2

    .line 47
    iget-object v0, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->last:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    .line 50
    .local v0, "last":Lcom/hivemq/client/internal/util/collections/NodeList$Node;, "TN;"
    if-nez v0, :cond_0

    .line 51
    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->last:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    goto :goto_0

    .line 53
    :cond_0
    iput-object p1, v0, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    .line 54
    iput-object v0, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    .line 55
    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->last:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    .line 57
    :goto_0
    iget v1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->size:I

    .line 58
    return-void

    .line 47
    .end local v0    # "last":Lcom/hivemq/client/internal/util/collections/NodeList$Node;, "TN;"
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public addFirst(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/NodeList;, "Lcom/hivemq/client/internal/util/collections/NodeList<TN;>;"
    .local p1, "node":Lcom/hivemq/client/internal/util/collections/NodeList$Node;, "TN;"
    iget-object v0, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    if-nez v0, :cond_2

    .line 62
    iget-object v0, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    .line 65
    .local v0, "first":Lcom/hivemq/client/internal/util/collections/NodeList$Node;, "TN;"
    if-nez v0, :cond_0

    .line 66
    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->last:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    goto :goto_0

    .line 68
    :cond_0
    iput-object p1, v0, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    .line 69
    iput-object v0, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    .line 70
    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    .line 72
    :goto_0
    iget v1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->size:I

    .line 73
    return-void

    .line 62
    .end local v0    # "first":Lcom/hivemq/client/internal/util/collections/NodeList$Node;, "TN;"
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 127
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/NodeList;, "Lcom/hivemq/client/internal/util/collections/NodeList<TN;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    .line 128
    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->last:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->size:I

    .line 130
    return-void
.end method

.method public getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/NodeList;, "Lcom/hivemq/client/internal/util/collections/NodeList<TN;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    return-object v0
.end method

.method public getLast()Lcom/hivemq/client/internal/util/collections/NodeList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/NodeList;, "Lcom/hivemq/client/internal/util/collections/NodeList<TN;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->last:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 119
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/NodeList;, "Lcom/hivemq/client/internal/util/collections/NodeList<TN;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/NodeList;, "Lcom/hivemq/client/internal/util/collections/NodeList<TN;>;"
    .local p1, "node":Lcom/hivemq/client/internal/util/collections/NodeList$Node;, "TN;"
    iget-object v0, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->last:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :cond_3
    :goto_1
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->size:I

    if-lez v0, :cond_6

    .line 80
    iget-object v0, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    .line 81
    .local v0, "prev":Lcom/hivemq/client/internal/util/collections/NodeList$Node;, "TN;"
    iget-object v1, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    .line 82
    .local v1, "next":Lcom/hivemq/client/internal/util/collections/NodeList$Node;, "TN;"
    if-nez v0, :cond_4

    .line 83
    iput-object v1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    goto :goto_2

    .line 85
    :cond_4
    iput-object v1, v0, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    .line 87
    :goto_2
    if-nez v1, :cond_5

    .line 88
    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->last:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    goto :goto_3

    .line 90
    :cond_5
    iput-object v0, v1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    .line 92
    :goto_3
    iget v2, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->size:I

    .line 93
    return-void

    .line 78
    .end local v0    # "prev":Lcom/hivemq/client/internal/util/collections/NodeList$Node;, "TN;"
    .end local v1    # "next":Lcom/hivemq/client/internal/util/collections/NodeList$Node;, "TN;"
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public replace(Lcom/hivemq/client/internal/util/collections/NodeList$Node;Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)V"
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/NodeList;, "Lcom/hivemq/client/internal/util/collections/NodeList<TN;>;"
    .local p1, "oldNode":Lcom/hivemq/client/internal/util/collections/NodeList$Node;, "TN;"
    .local p2, "newNode":Lcom/hivemq/client/internal/util/collections/NodeList$Node;, "TN;"
    iget-object v0, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 97
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->last:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 98
    :cond_3
    :goto_1
    iget-object v0, p2, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    if-nez v0, :cond_8

    .line 99
    iget-object v0, p2, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    if-nez v0, :cond_7

    .line 100
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->size:I

    if-lez v0, :cond_6

    .line 102
    iget-object v0, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    .line 103
    .local v0, "prev":Lcom/hivemq/client/internal/util/collections/NodeList$Node;, "TN;"
    iget-object v1, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    .line 104
    .local v1, "next":Lcom/hivemq/client/internal/util/collections/NodeList$Node;, "TN;"
    iput-object v0, p2, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    .line 105
    iput-object v1, p2, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    .line 106
    if-nez v0, :cond_4

    .line 107
    iput-object p2, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    goto :goto_2

    .line 109
    :cond_4
    iput-object p2, v0, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    .line 111
    :goto_2
    if-nez v1, :cond_5

    .line 112
    iput-object p2, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->last:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    goto :goto_3

    .line 114
    :cond_5
    iput-object p2, v1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    .line 116
    :goto_3
    return-void

    .line 100
    .end local v0    # "prev":Lcom/hivemq/client/internal/util/collections/NodeList$Node;, "TN;"
    .end local v1    # "next":Lcom/hivemq/client/internal/util/collections/NodeList$Node;, "TN;"
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 98
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 123
    .local p0, "this":Lcom/hivemq/client/internal/util/collections/NodeList;, "Lcom/hivemq/client/internal/util/collections/NodeList<TN;>;"
    iget v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->size:I

    return v0
.end method
