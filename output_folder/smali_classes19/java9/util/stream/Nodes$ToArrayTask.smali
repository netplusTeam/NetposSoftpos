.class abstract Ljava9/util/stream/Nodes$ToArrayTask;
.super Ljava9/util/concurrent/CountedCompleter;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToArrayTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/Nodes$ToArrayTask$OfDouble;,
        Ljava9/util/stream/Nodes$ToArrayTask$OfLong;,
        Ljava9/util/stream/Nodes$ToArrayTask$OfInt;,
        Ljava9/util/stream/Nodes$ToArrayTask$OfPrimitive;,
        Ljava9/util/stream/Nodes$ToArrayTask$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_NODE::",
        "Ljava9/util/stream/Node<",
        "TT;>;K:",
        "Ljava9/util/stream/Nodes$ToArrayTask<",
        "TT;TT_NODE;TK;>;>",
        "Ljava9/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected final node:Ljava9/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_NODE;"
        }
    .end annotation
.end field

.field protected final offset:I


# direct methods
.method constructor <init>(Ljava9/util/stream/Node;I)V
    .locals 0
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;I)V"
        }
    .end annotation

    .line 1987
    .local p0, "this":Ljava9/util/stream/Nodes$ToArrayTask;, "Ljava9/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>;"
    .local p1, "node":Ljava9/util/stream/Node;, "TT_NODE;"
    invoke-direct {p0}, Ljava9/util/concurrent/CountedCompleter;-><init>()V

    .line 1988
    iput-object p1, p0, Ljava9/util/stream/Nodes$ToArrayTask;->node:Ljava9/util/stream/Node;

    .line 1989
    iput p2, p0, Ljava9/util/stream/Nodes$ToArrayTask;->offset:I

    .line 1990
    return-void
.end method

.method constructor <init>(Ljava9/util/stream/Nodes$ToArrayTask;Ljava9/util/stream/Node;I)V
    .locals 0
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT_NODE;I)V"
        }
    .end annotation

    .line 1993
    .local p0, "this":Ljava9/util/stream/Nodes$ToArrayTask;, "Ljava9/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>;"
    .local p1, "parent":Ljava9/util/stream/Nodes$ToArrayTask;, "TK;"
    .local p2, "node":Ljava9/util/stream/Node;, "TT_NODE;"
    invoke-direct {p0, p1}, Ljava9/util/concurrent/CountedCompleter;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    .line 1994
    iput-object p2, p0, Ljava9/util/stream/Nodes$ToArrayTask;->node:Ljava9/util/stream/Node;

    .line 1995
    iput p3, p0, Ljava9/util/stream/Nodes$ToArrayTask;->offset:I

    .line 1996
    return-void
.end method


# virtual methods
.method public compute()V
    .locals 8

    .line 2004
    .local p0, "this":Ljava9/util/stream/Nodes$ToArrayTask;, "Ljava9/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>;"
    move-object v0, p0

    .line 2006
    .local v0, "task":Ljava9/util/stream/Nodes$ToArrayTask;, "Ljava9/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>;"
    :goto_0
    iget-object v1, v0, Ljava9/util/stream/Nodes$ToArrayTask;->node:Ljava9/util/stream/Node;

    invoke-interface {v1}, Ljava9/util/stream/Node;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 2007
    invoke-virtual {v0}, Ljava9/util/stream/Nodes$ToArrayTask;->copyNodeToArray()V

    .line 2008
    invoke-virtual {v0}, Ljava9/util/stream/Nodes$ToArrayTask;->propagateCompletion()V

    .line 2009
    return-void

    .line 2012
    :cond_0
    iget-object v1, v0, Ljava9/util/stream/Nodes$ToArrayTask;->node:Ljava9/util/stream/Node;

    invoke-interface {v1}, Ljava9/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava9/util/stream/Nodes$ToArrayTask;->setPendingCount(I)V

    .line 2014
    const/4 v1, 0x0

    .line 2015
    .local v1, "size":I
    const/4 v2, 0x0

    .line 2016
    .local v2, "i":I
    :goto_1
    iget-object v3, v0, Ljava9/util/stream/Nodes$ToArrayTask;->node:Ljava9/util/stream/Node;

    invoke-interface {v3}, Ljava9/util/stream/Node;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 2017
    iget v3, v0, Ljava9/util/stream/Nodes$ToArrayTask;->offset:I

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Ljava9/util/stream/Nodes$ToArrayTask;->makeChild(II)Ljava9/util/stream/Nodes$ToArrayTask;

    move-result-object v3

    .line 2018
    .local v3, "leftTask":Ljava9/util/stream/Nodes$ToArrayTask;, "TK;"
    int-to-long v4, v1

    iget-object v6, v3, Ljava9/util/stream/Nodes$ToArrayTask;->node:Ljava9/util/stream/Node;

    invoke-interface {v6}, Ljava9/util/stream/Node;->count()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v1, v4

    .line 2019
    invoke-virtual {v3}, Ljava9/util/stream/Nodes$ToArrayTask;->fork()Ljava9/util/concurrent/ForkJoinTask;

    .line 2016
    .end local v3    # "leftTask":Ljava9/util/stream/Nodes$ToArrayTask;, "TK;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2021
    :cond_1
    iget v3, v0, Ljava9/util/stream/Nodes$ToArrayTask;->offset:I

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Ljava9/util/stream/Nodes$ToArrayTask;->makeChild(II)Ljava9/util/stream/Nodes$ToArrayTask;

    move-result-object v0

    .line 2022
    .end local v1    # "size":I
    .end local v2    # "i":I
    goto :goto_0
.end method

.method abstract copyNodeToArray()V
.end method

.method abstract makeChild(II)Ljava9/util/stream/Nodes$ToArrayTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TK;"
        }
    .end annotation
.end method
