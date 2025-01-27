.class public Ljavassist/bytecode/analysis/ControlFlow;
.super Ljava/lang/Object;
.source "ControlFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/analysis/ControlFlow$Catcher;,
        Ljavassist/bytecode/analysis/ControlFlow$Node;,
        Ljavassist/bytecode/analysis/ControlFlow$Access;,
        Ljavassist/bytecode/analysis/ControlFlow$Block;
    }
.end annotation


# instance fields
.field private basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

.field private clazz:Ljavassist/CtClass;

.field private frames:[Ljavassist/bytecode/analysis/Frame;

.field private methodInfo:Ljavassist/bytecode/MethodInfo;


# direct methods
.method public constructor <init>(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 11
    .param p1, "ctclazz"    # Ljavassist/CtClass;
    .param p2, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Ljavassist/bytecode/analysis/ControlFlow;->clazz:Ljavassist/CtClass;

    .line 66
    iput-object p2, p0, Ljavassist/bytecode/analysis/ControlFlow;->methodInfo:Ljavassist/bytecode/MethodInfo;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->frames:[Ljavassist/bytecode/analysis/Frame;

    .line 68
    new-instance v0, Ljavassist/bytecode/analysis/ControlFlow$1;

    invoke-direct {v0, p0}, Ljavassist/bytecode/analysis/ControlFlow$1;-><init>(Ljavassist/bytecode/analysis/ControlFlow;)V

    .line 77
    invoke-virtual {v0, p2}, Ljavassist/bytecode/analysis/ControlFlow$1;->make(Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v0

    check-cast v0, [Ljavassist/bytecode/analysis/ControlFlow$Block;

    iput-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    .line 78
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 79
    new-array v0, v1, [Ljavassist/bytecode/analysis/ControlFlow$Block;

    iput-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    .line 80
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    array-length v0, v0

    .line 81
    .local v0, "size":I
    new-array v2, v0, [I

    .line 82
    .local v2, "counters":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 83
    iget-object v4, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    aget-object v4, v4, v3

    .line 84
    .local v4, "b":Ljavassist/bytecode/analysis/ControlFlow$Block;
    iput v3, v4, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    .line 85
    invoke-virtual {v4}, Ljavassist/bytecode/analysis/ControlFlow$Block;->incomings()I

    move-result v5

    new-array v5, v5, [Ljavassist/bytecode/analysis/ControlFlow$Block;

    iput-object v5, v4, Ljavassist/bytecode/analysis/ControlFlow$Block;->entrances:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    .line 86
    aput v1, v2, v3

    .line 82
    .end local v4    # "b":Ljavassist/bytecode/analysis/ControlFlow$Block;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    .end local v3    # "i":I
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 90
    iget-object v3, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    aget-object v3, v3, v1

    .line 91
    .local v3, "b":Ljavassist/bytecode/analysis/ControlFlow$Block;
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_2
    invoke-virtual {v3}, Ljavassist/bytecode/analysis/ControlFlow$Block;->exits()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 92
    invoke-virtual {v3, v4}, Ljavassist/bytecode/analysis/ControlFlow$Block;->exit(I)Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object v5

    .line 93
    .local v5, "e":Ljavassist/bytecode/analysis/ControlFlow$Block;
    iget-object v6, v5, Ljavassist/bytecode/analysis/ControlFlow$Block;->entrances:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v7, v5, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    aget v8, v2, v7

    add-int/lit8 v9, v8, 0x1

    aput v9, v2, v7

    aput-object v3, v6, v8

    .line 91
    .end local v5    # "e":Ljavassist/bytecode/analysis/ControlFlow$Block;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 96
    .end local v4    # "k":I
    :cond_2
    invoke-virtual {v3}, Ljavassist/bytecode/analysis/ControlFlow$Block;->catchers()[Ljavassist/bytecode/analysis/ControlFlow$Catcher;

    move-result-object v4

    .line 97
    .local v4, "catchers":[Ljavassist/bytecode/analysis/ControlFlow$Catcher;
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_3
    array-length v6, v4

    if-ge v5, v6, :cond_3

    .line 98
    aget-object v6, v4, v5

    invoke-static {v6}, Ljavassist/bytecode/analysis/ControlFlow$Catcher;->access$100(Ljavassist/bytecode/analysis/ControlFlow$Catcher;)Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object v6

    .line 99
    .local v6, "catchBlock":Ljavassist/bytecode/analysis/ControlFlow$Block;
    iget-object v7, v6, Ljavassist/bytecode/analysis/ControlFlow$Block;->entrances:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v8, v6, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    aget v9, v2, v8

    add-int/lit8 v10, v9, 0x1

    aput v10, v2, v8

    aput-object v3, v7, v9

    .line 97
    .end local v6    # "catchBlock":Ljavassist/bytecode/analysis/ControlFlow$Block;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 89
    .end local v3    # "b":Ljavassist/bytecode/analysis/ControlFlow$Block;
    .end local v4    # "catchers":[Ljavassist/bytecode/analysis/ControlFlow$Catcher;
    .end local v5    # "k":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public constructor <init>(Ljavassist/CtMethod;)V
    .locals 2
    .param p1, "method"    # Ljavassist/CtMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljavassist/bytecode/analysis/ControlFlow;-><init>(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Ljavassist/bytecode/analysis/ControlFlow;)Ljavassist/bytecode/MethodInfo;
    .locals 1
    .param p0, "x0"    # Ljavassist/bytecode/analysis/ControlFlow;

    .line 48
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->methodInfo:Ljavassist/bytecode/MethodInfo;

    return-object v0
.end method


# virtual methods
.method public basicBlocks()[Ljavassist/bytecode/analysis/ControlFlow$Block;
    .locals 1

    .line 111
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    return-object v0
.end method

.method public dominatorTree()[Ljavassist/bytecode/analysis/ControlFlow$Node;
    .locals 12

    .line 150
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    array-length v0, v0

    .line 151
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 152
    const/4 v1, 0x0

    return-object v1

    .line 154
    :cond_0
    new-array v1, v0, [Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 155
    .local v1, "nodes":[Ljavassist/bytecode/analysis/ControlFlow$Node;
    new-array v8, v0, [Z

    .line 156
    .local v8, "visited":[Z
    new-array v9, v0, [I

    .line 157
    .local v9, "distance":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v10, 0x0

    if-ge v2, v0, :cond_1

    .line 158
    new-instance v3, Ljavassist/bytecode/analysis/ControlFlow$Node;

    iget-object v4, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Ljavassist/bytecode/analysis/ControlFlow$Node;-><init>(Ljavassist/bytecode/analysis/ControlFlow$Block;)V

    aput-object v3, v1, v2

    .line 159
    aput-boolean v10, v8, v2

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljavassist/bytecode/analysis/ControlFlow$2;

    invoke-direct {v2, p0, v1}, Ljavassist/bytecode/analysis/ControlFlow$2;-><init>(Ljavassist/bytecode/analysis/ControlFlow;[Ljavassist/bytecode/analysis/ControlFlow$Node;)V

    move-object v11, v2

    .line 168
    .local v11, "access":Ljavassist/bytecode/analysis/ControlFlow$Access;
    aget-object v2, v1, v10

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, v8

    move-object v6, v9

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Ljavassist/bytecode/analysis/ControlFlow$Node;->makeDepth1stTree(Ljavassist/bytecode/analysis/ControlFlow$Node;[ZI[ILjavassist/bytecode/analysis/ControlFlow$Access;)I

    .line 170
    :goto_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 171
    aput-boolean v10, v8, v2

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 172
    .end local v2    # "i":I
    :cond_2
    aget-object v2, v1, v10

    invoke-virtual {v2, v8, v9, v11}, Ljavassist/bytecode/analysis/ControlFlow$Node;->makeDominatorTree([Z[ILjavassist/bytecode/analysis/ControlFlow$Access;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 173
    invoke-static {v1}, Ljavassist/bytecode/analysis/ControlFlow$Node;->access$300([Ljavassist/bytecode/analysis/ControlFlow$Node;)V

    .line 174
    return-object v1

    .line 172
    :cond_3
    goto :goto_1
.end method

.method public frameAt(I)Ljavassist/bytecode/analysis/Frame;
    .locals 3
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->frames:[Ljavassist/bytecode/analysis/Frame;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljavassist/bytecode/analysis/Analyzer;

    invoke-direct {v0}, Ljavassist/bytecode/analysis/Analyzer;-><init>()V

    iget-object v1, p0, Ljavassist/bytecode/analysis/ControlFlow;->clazz:Ljavassist/CtClass;

    iget-object v2, p0, Ljavassist/bytecode/analysis/ControlFlow;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0, v1, v2}, Ljavassist/bytecode/analysis/Analyzer;->analyze(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/analysis/Frame;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->frames:[Ljavassist/bytecode/analysis/Frame;

    .line 126
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->frames:[Ljavassist/bytecode/analysis/Frame;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public postDominatorTree()[Ljavassist/bytecode/analysis/ControlFlow$Node;
    .locals 14

    .line 198
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    array-length v0, v0

    .line 199
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 200
    const/4 v1, 0x0

    return-object v1

    .line 202
    :cond_0
    new-array v1, v0, [Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 203
    .local v1, "nodes":[Ljavassist/bytecode/analysis/ControlFlow$Node;
    new-array v8, v0, [Z

    .line 204
    .local v8, "visited":[Z
    new-array v9, v0, [I

    .line 205
    .local v9, "distance":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v10, 0x0

    if-ge v2, v0, :cond_1

    .line 206
    new-instance v3, Ljavassist/bytecode/analysis/ControlFlow$Node;

    iget-object v4, p0, Ljavassist/bytecode/analysis/ControlFlow;->basicBlocks:[Ljavassist/bytecode/analysis/ControlFlow$Block;

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Ljavassist/bytecode/analysis/ControlFlow$Node;-><init>(Ljavassist/bytecode/analysis/ControlFlow$Block;)V

    aput-object v3, v1, v2

    .line 207
    aput-boolean v10, v8, v2

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljavassist/bytecode/analysis/ControlFlow$3;

    invoke-direct {v2, p0, v1}, Ljavassist/bytecode/analysis/ControlFlow$3;-><init>(Ljavassist/bytecode/analysis/ControlFlow;[Ljavassist/bytecode/analysis/ControlFlow$Node;)V

    move-object v11, v2

    .line 217
    .local v11, "access":Ljavassist/bytecode/analysis/ControlFlow$Access;
    const/4 v2, 0x0

    .line 218
    .local v2, "counter":I
    const/4 v3, 0x0

    move v12, v2

    move v13, v3

    .end local v2    # "counter":I
    .local v12, "counter":I
    .local v13, "i":I
    :goto_1
    if-ge v13, v0, :cond_3

    .line 219
    aget-object v2, v1, v13

    invoke-static {v2}, Ljavassist/bytecode/analysis/ControlFlow$Node;->access$200(Ljavassist/bytecode/analysis/ControlFlow$Node;)Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/ControlFlow$Block;->exits()I

    move-result v2

    if-nez v2, :cond_2

    .line 220
    aget-object v2, v1, v13

    const/4 v3, 0x0

    move-object v4, v8

    move v5, v12

    move-object v6, v9

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Ljavassist/bytecode/analysis/ControlFlow$Node;->makeDepth1stTree(Ljavassist/bytecode/analysis/ControlFlow$Node;[ZI[ILjavassist/bytecode/analysis/ControlFlow$Access;)I

    move-result v2

    move v12, v2

    .line 218
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 224
    .end local v13    # "i":I
    :cond_3
    :goto_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v0, :cond_4

    .line 225
    aput-boolean v10, v8, v2

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 227
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x0

    .line 228
    .local v2, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v0, :cond_6

    .line 229
    aget-object v4, v1, v3

    invoke-static {v4}, Ljavassist/bytecode/analysis/ControlFlow$Node;->access$200(Ljavassist/bytecode/analysis/ControlFlow$Node;)Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object v4

    invoke-virtual {v4}, Ljavassist/bytecode/analysis/ControlFlow$Block;->exits()I

    move-result v4

    if-nez v4, :cond_5

    .line 230
    aget-object v4, v1, v3

    invoke-virtual {v4, v8, v9, v11}, Ljavassist/bytecode/analysis/ControlFlow$Node;->makeDominatorTree([Z[ILjavassist/bytecode/analysis/ControlFlow$Access;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 231
    const/4 v2, 0x1

    .line 228
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 232
    .end local v3    # "i":I
    :cond_6
    if-nez v2, :cond_7

    .line 234
    invoke-static {v1}, Ljavassist/bytecode/analysis/ControlFlow$Node;->access$300([Ljavassist/bytecode/analysis/ControlFlow$Node;)V

    .line 235
    return-object v1

    .line 232
    :cond_7
    goto :goto_2
.end method
