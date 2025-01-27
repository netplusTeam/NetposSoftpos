.class public Lorg/apache/commons/collections4/sequence/EditScript;
.super Ljava/lang/Object;
.source "EditScript.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/collections4/sequence/EditCommand<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private lcsLength:I

.field private modifications:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    .local p0, "this":Lorg/apache/commons/collections4/sequence/EditScript;, "Lorg/apache/commons/collections4/sequence/EditScript<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->commands:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->lcsLength:I

    .line 62
    iput v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->modifications:I

    .line 63
    return-void
.end method


# virtual methods
.method public append(Lorg/apache/commons/collections4/sequence/DeleteCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/sequence/DeleteCommand<",
            "TT;>;)V"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/apache/commons/collections4/sequence/EditScript;, "Lorg/apache/commons/collections4/sequence/EditScript<TT;>;"
    .local p1, "command":Lorg/apache/commons/collections4/sequence/DeleteCommand;, "Lorg/apache/commons/collections4/sequence/DeleteCommand<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->modifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->modifications:I

    .line 93
    return-void
.end method

.method public append(Lorg/apache/commons/collections4/sequence/InsertCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/sequence/InsertCommand<",
            "TT;>;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/apache/commons/collections4/sequence/EditScript;, "Lorg/apache/commons/collections4/sequence/EditScript<TT;>;"
    .local p1, "command":Lorg/apache/commons/collections4/sequence/InsertCommand;, "Lorg/apache/commons/collections4/sequence/InsertCommand<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->modifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->modifications:I

    .line 83
    return-void
.end method

.method public append(Lorg/apache/commons/collections4/sequence/KeepCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/sequence/KeepCommand<",
            "TT;>;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/apache/commons/collections4/sequence/EditScript;, "Lorg/apache/commons/collections4/sequence/EditScript<TT;>;"
    .local p1, "command":Lorg/apache/commons/collections4/sequence/KeepCommand;, "Lorg/apache/commons/collections4/sequence/KeepCommand<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->lcsLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->lcsLength:I

    .line 73
    return-void
.end method

.method public getLCSLength()I
    .locals 1

    .line 118
    .local p0, "this":Lorg/apache/commons/collections4/sequence/EditScript;, "Lorg/apache/commons/collections4/sequence/EditScript<TT;>;"
    iget v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->lcsLength:I

    return v0
.end method

.method public getModifications()I
    .locals 1

    .line 129
    .local p0, "this":Lorg/apache/commons/collections4/sequence/EditScript;, "Lorg/apache/commons/collections4/sequence/EditScript<TT;>;"
    iget v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->modifications:I

    return v0
.end method

.method public visit(Lorg/apache/commons/collections4/sequence/CommandVisitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/sequence/CommandVisitor<",
            "TT;>;)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/apache/commons/collections4/sequence/EditScript;, "Lorg/apache/commons/collections4/sequence/EditScript<TT;>;"
    .local p1, "visitor":Lorg/apache/commons/collections4/sequence/CommandVisitor;, "Lorg/apache/commons/collections4/sequence/CommandVisitor<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/sequence/EditScript;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections4/sequence/EditCommand;

    .line 106
    .local v1, "command":Lorg/apache/commons/collections4/sequence/EditCommand;, "Lorg/apache/commons/collections4/sequence/EditCommand<TT;>;"
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections4/sequence/EditCommand;->accept(Lorg/apache/commons/collections4/sequence/CommandVisitor;)V

    .line 107
    .end local v1    # "command":Lorg/apache/commons/collections4/sequence/EditCommand;, "Lorg/apache/commons/collections4/sequence/EditCommand<TT;>;"
    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method
