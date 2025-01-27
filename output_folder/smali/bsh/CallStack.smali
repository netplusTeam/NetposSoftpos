.class public Lbsh/CallStack;
.super Ljava/lang/Object;
.source "CallStack.java"


# instance fields
.field private stack:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lbsh/CallStack;->stack:Ljava/util/Vector;

    .line 60
    return-void
.end method

.method public constructor <init>(Lbsh/NameSpace;)V
    .locals 2
    .param p1, "namespace"    # Lbsh/NameSpace;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lbsh/CallStack;->stack:Ljava/util/Vector;

    .line 63
    invoke-virtual {p0, p1}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    .line 64
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 67
    iget-object v0, p0, Lbsh/CallStack;->stack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 68
    return-void
.end method

.method public copy()Lbsh/CallStack;
    .locals 2

    .line 139
    new-instance v0, Lbsh/CallStack;

    invoke-direct {v0}, Lbsh/CallStack;-><init>()V

    .line 140
    .local v0, "cs":Lbsh/CallStack;
    iget-object v1, p0, Lbsh/CallStack;->stack:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    iput-object v1, v0, Lbsh/CallStack;->stack:Ljava/util/Vector;

    .line 141
    return-object v0
.end method

.method public depth()I
    .locals 1

    .line 115
    iget-object v0, p0, Lbsh/CallStack;->stack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public get(I)Lbsh/NameSpace;
    .locals 2
    .param p1, "depth"    # I

    .line 82
    invoke-virtual {p0}, Lbsh/CallStack;->depth()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 83
    sget-object v0, Lbsh/NameSpace;->JAVACODE:Lbsh/NameSpace;

    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lbsh/CallStack;->stack:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/NameSpace;

    move-object v1, v0

    check-cast v1, Lbsh/NameSpace;

    return-object v0
.end method

.method public pop()Lbsh/NameSpace;
    .locals 3

    .line 97
    invoke-virtual {p0}, Lbsh/CallStack;->depth()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    .line 100
    .local v0, "top":Lbsh/NameSpace;
    iget-object v1, p0, Lbsh/CallStack;->stack:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 101
    return-object v0

    .line 98
    .end local v0    # "top":Lbsh/NameSpace;
    :cond_0
    new-instance v0, Lbsh/InterpreterError;

    const-string/jumbo v1, "pop on empty CallStack"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public push(Lbsh/NameSpace;)V
    .locals 2
    .param p1, "ns"    # Lbsh/NameSpace;

    .line 71
    iget-object v0, p0, Lbsh/CallStack;->stack:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 72
    return-void
.end method

.method public set(ILbsh/NameSpace;)V
    .locals 1
    .param p1, "depth"    # I
    .param p2, "ns"    # Lbsh/NameSpace;

    .line 93
    iget-object v0, p0, Lbsh/CallStack;->stack:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 94
    return-void
.end method

.method public swap(Lbsh/NameSpace;)Lbsh/NameSpace;
    .locals 3
    .param p1, "newTop"    # Lbsh/NameSpace;

    .line 109
    iget-object v0, p0, Lbsh/CallStack;->stack:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/NameSpace;

    check-cast v0, Lbsh/NameSpace;

    .line 110
    .local v0, "oldTop":Lbsh/NameSpace;
    iget-object v2, p0, Lbsh/CallStack;->stack:Ljava/util/Vector;

    invoke-virtual {v2, p1, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 111
    return-object v0
.end method

.method public toArray()[Lbsh/NameSpace;
    .locals 2

    .line 119
    invoke-virtual {p0}, Lbsh/CallStack;->depth()I

    move-result v0

    new-array v0, v0, [Lbsh/NameSpace;

    .line 120
    .local v0, "nsa":[Lbsh/NameSpace;
    iget-object v1, p0, Lbsh/CallStack;->stack:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 121
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 125
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "CallStack:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {p0}, Lbsh/CallStack;->toArray()[Lbsh/NameSpace;

    move-result-object v1

    .line 128
    .local v1, "nsa":[Lbsh/NameSpace;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public top()Lbsh/NameSpace;
    .locals 1

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/CallStack;->get(I)Lbsh/NameSpace;

    move-result-object v0

    return-object v0
.end method
