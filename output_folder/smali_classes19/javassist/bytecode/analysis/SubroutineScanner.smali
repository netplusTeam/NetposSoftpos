.class public Ljavassist/bytecode/analysis/SubroutineScanner;
.super Ljava/lang/Object;
.source "SubroutineScanner.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;


# instance fields
.field done:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field subTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljavassist/bytecode/analysis/Subroutine;",
            ">;"
        }
    .end annotation
.end field

.field private subroutines:[Ljavassist/bytecode/analysis/Subroutine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subTable:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->done:Ljava/util/Set;

    return-void
.end method

.method private scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "sub"    # Ljavassist/bytecode/analysis/Subroutine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->done:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->done:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->lookAhead()I

    move-result v0

    .line 71
    .local v0, "old":I
    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 75
    :goto_0
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result p1

    .line 76
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scanOp(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 77
    .local v1, "next":Z
    :goto_1
    if-nez v1, :cond_2

    .line 79
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 80
    return-void

    .line 77
    :cond_2
    goto :goto_0
.end method

.method private scanLookupSwitch(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "sub"    # Ljavassist/bytecode/analysis/Subroutine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 127
    and-int/lit8 v0, p1, -0x4

    add-int/lit8 v0, v0, 0x4

    .line 129
    .local v0, "index":I
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {p0, v1, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 130
    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v1

    .line 131
    .local v1, "npairs":I
    mul-int/lit8 v2, v1, 0x8

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v2, v0

    .line 134
    .local v2, "end":I
    add-int/lit8 v0, v0, 0x4

    :goto_0
    if-ge v0, v2, :cond_0

    .line 135
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v3

    add-int/2addr v3, p1

    .line 136
    .local v3, "target":I
    invoke-direct {p0, v3, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 134
    .end local v3    # "target":I
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method private scanOp(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)Z
    .locals 5
    .param p1, "pos"    # I
    .param p2, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "sub"    # Ljavassist/bytecode/analysis/Subroutine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subroutines:[Ljavassist/bytecode/analysis/Subroutine;

    aput-object p3, v0, p1

    .line 85
    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    .line 87
    .local v0, "opcode":I
    const/4 v1, 0x0

    const/16 v2, 0xaa

    if-ne v0, v2, :cond_0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scanTableSwitch(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 90
    return v1

    .line 93
    :cond_0
    const/16 v2, 0xab

    if-ne v0, v2, :cond_1

    .line 94
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scanLookupSwitch(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 96
    return v1

    .line 100
    :cond_1
    invoke-static {v0}, Ljavassist/bytecode/analysis/Util;->isReturn(I)Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v2, 0xa9

    if-eq v0, v2, :cond_7

    const/16 v2, 0xbf

    if-ne v0, v2, :cond_2

    goto :goto_2

    .line 103
    :cond_2
    invoke-static {v0}, Ljavassist/bytecode/analysis/Util;->isJumpInstruction(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 104
    invoke-static {p1, p2}, Ljavassist/bytecode/analysis/Util;->getJumpTarget(ILjavassist/bytecode/CodeIterator;)I

    move-result v2

    .line 105
    .local v2, "target":I
    const/16 v3, 0xa8

    if-eq v0, v3, :cond_4

    const/16 v3, 0xc9

    if-ne v0, v3, :cond_3

    goto :goto_0

    .line 115
    :cond_3
    invoke-direct {p0, v2, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 118
    invoke-static {v0}, Ljavassist/bytecode/analysis/Util;->isGoto(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 119
    return v1

    .line 106
    :cond_4
    :goto_0
    iget-object v1, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subTable:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/analysis/Subroutine;

    .line 107
    .local v1, "s":Ljavassist/bytecode/analysis/Subroutine;
    if-nez v1, :cond_5

    .line 108
    new-instance v3, Ljavassist/bytecode/analysis/Subroutine;

    invoke-direct {v3, v2, p1}, Ljavassist/bytecode/analysis/Subroutine;-><init>(II)V

    move-object v1, v3

    .line 109
    iget-object v3, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subTable:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-direct {p0, v2, p2, v1}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    goto :goto_1

    .line 112
    :cond_5
    invoke-virtual {v1, p1}, Ljavassist/bytecode/analysis/Subroutine;->addCaller(I)V

    .line 123
    .end local v1    # "s":Ljavassist/bytecode/analysis/Subroutine;
    .end local v2    # "target":I
    :cond_6
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 101
    :cond_7
    :goto_2
    return v1
.end method

.method private scanTableSwitch(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 5
    .param p1, "pos"    # I
    .param p2, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "sub"    # Ljavassist/bytecode/analysis/Subroutine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 142
    and-int/lit8 v0, p1, -0x4

    add-int/lit8 v0, v0, 0x4

    .line 144
    .local v0, "index":I
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {p0, v1, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 145
    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v1

    .line 146
    .local v1, "low":I
    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v2

    .line 147
    .local v2, "high":I
    sub-int v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v3, v0

    .line 150
    .local v3, "end":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 151
    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v4

    add-int/2addr v4, p1

    .line 152
    .local v4, "target":I
    invoke-direct {p0, v4, p2, p3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 150
    .end local v4    # "target":I
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method public scan(Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/analysis/Subroutine;
    .locals 7
    .param p1, "method"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 44
    .local v0, "code":Ljavassist/bytecode/CodeAttribute;
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v1

    .line 46
    .local v1, "iter":Ljavassist/bytecode/CodeIterator;
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getCodeLength()I

    move-result v2

    new-array v2, v2, [Ljavassist/bytecode/analysis/Subroutine;

    iput-object v2, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subroutines:[Ljavassist/bytecode/analysis/Subroutine;

    .line 47
    iget-object v2, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 48
    iget-object v2, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->done:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 50
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 52
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v2

    .line 53
    .local v2, "exceptions":Ljavassist/bytecode/ExceptionTable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 54
    invoke-virtual {v2, v3}, Ljavassist/bytecode/ExceptionTable;->handlerPc(I)I

    move-result v4

    .line 57
    .local v4, "handler":I
    iget-object v5, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subroutines:[Ljavassist/bytecode/analysis/Subroutine;

    invoke-virtual {v2, v3}, Ljavassist/bytecode/ExceptionTable;->startPc(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-direct {p0, v4, v1, v5}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Subroutine;)V

    .line 53
    .end local v4    # "handler":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Ljavassist/bytecode/analysis/SubroutineScanner;->subroutines:[Ljavassist/bytecode/analysis/Subroutine;

    return-object v3
.end method
