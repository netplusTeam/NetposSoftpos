.class final Ljava9/util/ArrayPrefixHelpers$CumulateTask;
.super Ljava9/util/concurrent/CountedCompleter;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CumulateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final fence:I

.field final function:Ljava9/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/function/BinaryOperator<",
            "TT;>;"
        }
    .end annotation
.end field

.field final hi:I

.field in:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field left:Ljava9/util/ArrayPrefixHelpers$CumulateTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;"
        }
    .end annotation
.end field

.field final lo:I

.field final origin:I

.field out:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field right:Ljava9/util/ArrayPrefixHelpers$CumulateTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;"
        }
    .end annotation
.end field

.field final threshold:I


# direct methods
.method public constructor <init>(Ljava9/util/ArrayPrefixHelpers$CumulateTask;Ljava9/util/function/BinaryOperator;[Ljava/lang/Object;II)V
    .locals 3
    .param p4, "lo"    # I
    .param p5, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;",
            "Ljava9/util/function/BinaryOperator<",
            "TT;>;[TT;II)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local p1, "parent":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local p2, "function":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TT;>;"
    .local p3, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1}, Ljava9/util/concurrent/CountedCompleter;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    .line 91
    iput-object p2, p0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava9/util/function/BinaryOperator;

    iput-object p3, p0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    .line 92
    iput p4, p0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    iput p4, p0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    iput p5, p0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    iput p5, p0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    .line 94
    sub-int v0, p5, p4

    .line 95
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    div-int/2addr v0, v1

    move v1, v0

    .local v1, "p":I
    const/16 v2, 0x10

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, p0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    .line 97
    return-void
.end method

.method constructor <init>(Ljava9/util/ArrayPrefixHelpers$CumulateTask;Ljava9/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V
    .locals 0
    .param p4, "origin"    # I
    .param p5, "fence"    # I
    .param p6, "threshold"    # I
    .param p7, "lo"    # I
    .param p8, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;",
            "Ljava9/util/function/BinaryOperator<",
            "TT;>;[TT;IIIII)V"
        }
    .end annotation

    .line 103
    .local p0, "this":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local p1, "parent":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local p2, "function":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TT;>;"
    .local p3, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1}, Ljava9/util/concurrent/CountedCompleter;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    .line 104
    iput-object p2, p0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava9/util/function/BinaryOperator;

    iput-object p3, p0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    .line 105
    iput p4, p0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    iput p5, p0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    .line 106
    iput p6, p0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    .line 107
    iput p7, p0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    iput p8, p0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    .line 108
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 22

    .line 113
    .local p0, "this":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava9/util/function/BinaryOperator;

    move-object v11, v1

    .local v11, "fn":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TT;>;"
    if-eqz v1, :cond_21

    iget-object v1, v0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    move-object v12, v1

    .local v12, "a":[Ljava/lang/Object;, "[TT;"
    if-eqz v1, :cond_21

    .line 115
    iget v1, v0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    .local v1, "th":I
    iget v13, v0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    .local v13, "org":I
    iget v14, v0, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    .line 116
    .local v14, "fnc":I
    move-object/from16 v2, p0

    move-object v15, v2

    .line 117
    .local v15, "t":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :goto_0
    iget v2, v15, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    move v10, v2

    .local v10, "l":I
    if-ltz v2, :cond_20

    iget v2, v15, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    move v9, v2

    .local v9, "h":I
    array-length v3, v12

    if-gt v2, v3, :cond_1f

    .line 118
    sub-int v2, v9, v10

    const/4 v3, 0x1

    if-le v2, v1, :cond_a

    .line 119
    iget-object v8, v15, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava9/util/ArrayPrefixHelpers$CumulateTask;

    .local v8, "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    iget-object v7, v15, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava9/util/ArrayPrefixHelpers$CumulateTask;

    .line 120
    .local v7, "rt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-nez v8, :cond_0

    .line 121
    add-int v2, v10, v9

    ushr-int/lit8 v16, v2, 0x1

    .line 122
    .local v16, "mid":I
    new-instance v6, Ljava9/util/ArrayPrefixHelpers$CumulateTask;

    move-object v2, v6

    move-object v3, v15

    move-object v4, v11

    move-object v5, v12

    move-object v0, v6

    move v6, v13

    move-object/from16 v17, v7

    .end local v7    # "rt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v17, "rt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move v7, v14

    move-object/from16 v18, v8

    .end local v8    # "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v18, "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move v8, v1

    move/from16 v19, v9

    .end local v9    # "h":I
    .local v19, "h":I
    move/from16 v9, v16

    move/from16 v20, v10

    .end local v10    # "l":I
    .local v20, "l":I
    move/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Ljava9/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava9/util/ArrayPrefixHelpers$CumulateTask;Ljava9/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V

    iput-object v0, v15, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava9/util/ArrayPrefixHelpers$CumulateTask;

    move-object/from16 v17, v0

    .line 124
    .local v0, "f":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    new-instance v10, Ljava9/util/ArrayPrefixHelpers$CumulateTask;

    move-object v2, v10

    move/from16 v9, v20

    move-object/from16 v21, v0

    move-object v0, v10

    .end local v0    # "f":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v21, "f":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move/from16 v10, v16

    invoke-direct/range {v2 .. v10}, Ljava9/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava9/util/ArrayPrefixHelpers$CumulateTask;Ljava9/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V

    iput-object v0, v15, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava9/util/ArrayPrefixHelpers$CumulateTask;

    move-object v8, v0

    .line 126
    .end local v15    # "t":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v16    # "mid":I
    .end local v18    # "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v0, "t":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v8    # "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object v15, v0

    move-object v2, v8

    move-object/from16 v7, v17

    move/from16 v8, v20

    move-object/from16 v0, v21

    goto/16 :goto_4

    .line 128
    .end local v0    # "t":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v17    # "rt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v19    # "h":I
    .end local v20    # "l":I
    .end local v21    # "f":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v7    # "rt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v9    # "h":I
    .restart local v10    # "l":I
    .restart local v15    # "t":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_0
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    .end local v7    # "rt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v8    # "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v9    # "h":I
    .end local v10    # "l":I
    .restart local v17    # "rt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v18    # "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v19    # "h":I
    .restart local v20    # "l":I
    iget-object v0, v15, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 129
    .local v0, "pin":Ljava/lang/Object;, "TT;"
    move-object/from16 v2, v18

    .end local v18    # "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v2, "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    iput-object v0, v2, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 130
    const/4 v4, 0x0

    move-object v5, v4

    .line 131
    .end local v15    # "t":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v4, "f":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v5, "t":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object/from16 v6, v17

    .end local v17    # "rt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v6, "rt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-eqz v6, :cond_4

    .line 132
    iget-object v7, v2, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    .line 133
    .local v7, "lout":Ljava/lang/Object;, "TT;"
    move/from16 v8, v20

    .end local v20    # "l":I
    .local v8, "l":I
    if-ne v8, v13, :cond_1

    move-object v9, v7

    goto :goto_1

    .line 134
    :cond_1
    invoke-interface {v11, v0, v7}, Ljava9/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    :goto_1
    iput-object v9, v6, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 136
    :cond_2
    invoke-virtual {v6}, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->getPendingCount()I

    move-result v9

    move v10, v9

    .local v10, "c":I
    and-int/2addr v9, v3

    if-eqz v9, :cond_3

    .line 137
    goto :goto_2

    .line 138
    :cond_3
    or-int/lit8 v9, v10, 0x1

    invoke-virtual {v6, v10, v9}, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 139
    move-object v5, v6

    .line 140
    goto :goto_2

    .line 131
    .end local v7    # "lout":Ljava/lang/Object;, "TT;"
    .end local v8    # "l":I
    .end local v10    # "c":I
    .restart local v20    # "l":I
    :cond_4
    move/from16 v8, v20

    .line 145
    .end local v20    # "l":I
    .restart local v8    # "l":I
    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->getPendingCount()I

    move-result v7

    move v9, v7

    .local v9, "c":I
    and-int/2addr v7, v3

    if-eqz v7, :cond_6

    .line 146
    move-object v15, v5

    goto :goto_3

    .line 147
    :cond_6
    or-int/lit8 v7, v9, 0x1

    invoke-virtual {v2, v9, v7}, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 148
    if-eqz v5, :cond_7

    .line 149
    move-object v4, v5

    .line 150
    :cond_7
    move-object v3, v2

    .line 151
    .end local v5    # "t":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v3, "t":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object v15, v3

    .line 154
    .end local v3    # "t":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v9    # "c":I
    .restart local v15    # "t":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :goto_3
    if-nez v15, :cond_8

    .line 155
    move/from16 v18, v1

    goto/16 :goto_10

    .line 154
    :cond_8
    move-object v0, v4

    move-object v7, v6

    .line 157
    .end local v4    # "f":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v6    # "rt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v0, "f":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v7, "rt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :goto_4
    if-eqz v0, :cond_9

    .line 158
    invoke-virtual {v0}, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->fork()Ljava9/util/concurrent/ForkJoinTask;

    .line 159
    .end local v0    # "f":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v2    # "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v7    # "rt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_9
    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 118
    .end local v8    # "l":I
    .end local v19    # "h":I
    .local v9, "h":I
    .local v10, "l":I
    :cond_a
    move/from16 v19, v9

    move v8, v10

    .line 163
    .end local v9    # "h":I
    .end local v10    # "l":I
    .restart local v8    # "l":I
    .restart local v19    # "h":I
    :goto_5
    invoke-virtual {v15}, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->getPendingCount()I

    move-result v0

    move v2, v0

    .local v2, "b":I
    const/4 v4, 0x4

    and-int/2addr v0, v4

    if-eqz v0, :cond_b

    .line 164
    move/from16 v18, v1

    goto/16 :goto_10

    .line 165
    :cond_b
    and-int/lit8 v0, v2, 0x1

    const/4 v5, 0x2

    if-eqz v0, :cond_c

    move v0, v4

    goto :goto_6

    :cond_c
    if-le v8, v13, :cond_d

    move v0, v5

    goto :goto_6

    :cond_d
    const/4 v0, 0x6

    .line 167
    .local v0, "state":I
    :goto_6
    or-int v6, v2, v0

    invoke-virtual {v15, v2, v6}, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 168
    nop

    .line 172
    .end local v2    # "b":I
    if-eq v0, v5, :cond_10

    .line 174
    if-ne v8, v13, :cond_e

    .line 175
    aget-object v2, v12, v13

    .line 176
    .local v2, "sum":Ljava/lang/Object;, "TT;"
    add-int/lit8 v6, v13, 0x1

    .local v6, "first":I
    goto :goto_7

    .line 179
    .end local v2    # "sum":Ljava/lang/Object;, "TT;"
    .end local v6    # "first":I
    :cond_e
    iget-object v2, v15, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 180
    .restart local v2    # "sum":Ljava/lang/Object;, "TT;"
    move v6, v8

    .line 182
    .restart local v6    # "first":I
    :goto_7
    move v7, v6

    .local v7, "i":I
    :goto_8
    move/from16 v9, v19

    .end local v19    # "h":I
    .restart local v9    # "h":I
    if-ge v7, v9, :cond_f

    .line 183
    aget-object v10, v12, v7

    invoke-interface {v11, v2, v10}, Ljava9/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v2, v10

    aput-object v10, v12, v7

    .line 182
    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v9

    goto :goto_8

    .line 184
    .end local v6    # "first":I
    .end local v7    # "i":I
    :cond_f
    move-object v6, v2

    goto :goto_a

    .line 185
    .end local v2    # "sum":Ljava/lang/Object;, "TT;"
    .end local v9    # "h":I
    .restart local v19    # "h":I
    :cond_10
    move/from16 v9, v19

    .end local v19    # "h":I
    .restart local v9    # "h":I
    if-ge v9, v14, :cond_12

    .line 186
    aget-object v2, v12, v8

    .line 187
    .restart local v2    # "sum":Ljava/lang/Object;, "TT;"
    add-int/lit8 v10, v8, 0x1

    .local v10, "i":I
    :goto_9
    if-ge v10, v9, :cond_11

    .line 188
    aget-object v6, v12, v10

    invoke-interface {v11, v2, v6}, Ljava9/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 187
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_11
    move-object v6, v2

    .end local v10    # "i":I
    goto :goto_a

    .line 191
    .end local v2    # "sum":Ljava/lang/Object;, "TT;"
    :cond_12
    iget-object v2, v15, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    move-object v6, v2

    .line 192
    .local v6, "sum":Ljava/lang/Object;, "TT;"
    :goto_a
    iput-object v6, v15, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    .line 194
    :goto_b
    nop

    .line 195
    invoke-virtual {v15}, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->getCompleter()Ljava9/util/concurrent/CountedCompleter;

    move-result-object v2

    check-cast v2, Ljava9/util/ArrayPrefixHelpers$CumulateTask;

    .line 196
    .local v2, "partmp":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object v7, v2

    .local v7, "par":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-nez v2, :cond_14

    .line 197
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_13

    .line 198
    invoke-virtual {v15}, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->quietlyComplete()V

    move/from16 v18, v1

    goto/16 :goto_10

    .line 197
    :cond_13
    move/from16 v18, v1

    goto/16 :goto_10

    .line 201
    :cond_14
    invoke-virtual {v7}, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->getPendingCount()I

    move-result v10

    .line 202
    .local v10, "b":I
    and-int v16, v10, v0

    and-int/lit8 v16, v16, 0x4

    if-eqz v16, :cond_15

    .line 203
    move-object v15, v7

    move/from16 v18, v1

    goto/16 :goto_f

    .line 204
    :cond_15
    and-int v16, v10, v0

    and-int/lit8 v16, v16, 0x2

    if-eqz v16, :cond_1c

    .line 206
    iget-object v3, v7, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava9/util/ArrayPrefixHelpers$CumulateTask;

    move-object/from16 v17, v3

    .local v17, "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-eqz v3, :cond_18

    iget-object v3, v7, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava9/util/ArrayPrefixHelpers$CumulateTask;

    move-object/from16 v18, v3

    .local v18, "rt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-eqz v3, :cond_17

    .line 208
    move-object/from16 v3, v17

    .end local v17    # "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v3, "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    iget-object v4, v3, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    .line 209
    .local v4, "lout":Ljava/lang/Object;, "TT;"
    move-object/from16 v5, v18

    move/from16 v18, v1

    .end local v1    # "th":I
    .local v5, "rt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v18, "th":I
    iget v1, v5, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    if-ne v1, v14, :cond_16

    move-object v1, v4

    goto :goto_c

    :cond_16
    iget-object v1, v5, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    .line 210
    invoke-interface {v11, v4, v1}, Ljava9/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_c
    iput-object v1, v7, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    goto :goto_d

    .line 206
    .end local v3    # "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v4    # "lout":Ljava/lang/Object;, "TT;"
    .end local v5    # "rt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v1    # "th":I
    .restart local v17    # "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v18, "rt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_17
    move-object/from16 v3, v17

    move-object/from16 v5, v18

    move/from16 v18, v1

    .end local v1    # "th":I
    .end local v17    # "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v3    # "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v5    # "rt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v18, "th":I
    goto :goto_d

    .end local v3    # "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v5    # "rt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v18    # "th":I
    .restart local v1    # "th":I
    .restart local v17    # "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_18
    move/from16 v18, v1

    move-object/from16 v3, v17

    .line 212
    .end local v1    # "th":I
    .end local v17    # "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v3    # "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v18    # "th":I
    :goto_d
    and-int/lit8 v1, v10, 0x1

    if-nez v1, :cond_19

    iget v1, v7, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    if-ne v1, v13, :cond_19

    const/4 v1, 0x1

    goto :goto_e

    :cond_19
    const/4 v1, 0x0

    .line 214
    .local v1, "refork":I
    :goto_e
    or-int v4, v10, v0

    or-int/2addr v4, v1

    move v5, v4

    .local v5, "nextState":I
    if-eq v4, v10, :cond_1a

    .line 215
    invoke-virtual {v7, v10, v5}, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 216
    :cond_1a
    const/4 v0, 0x2

    .line 217
    move-object v15, v7

    .line 218
    if-eqz v1, :cond_1b

    .line 219
    invoke-virtual {v7}, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->fork()Ljava9/util/concurrent/ForkJoinTask;

    .line 221
    .end local v1    # "refork":I
    .end local v3    # "lt":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v5    # "nextState":I
    :cond_1b
    goto :goto_f

    .line 222
    .end local v18    # "th":I
    .local v1, "th":I
    :cond_1c
    move/from16 v18, v1

    .end local v1    # "th":I
    .restart local v18    # "th":I
    or-int v1, v10, v0

    invoke-virtual {v7, v10, v1}, Ljava9/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 223
    goto :goto_10

    .line 224
    .end local v2    # "partmp":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v10    # "b":I
    :cond_1d
    :goto_f
    move/from16 v1, v18

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x2

    goto/16 :goto_b

    .line 167
    .end local v6    # "sum":Ljava/lang/Object;, "TT;"
    .end local v7    # "par":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v9    # "h":I
    .end local v18    # "th":I
    .restart local v1    # "th":I
    .local v2, "b":I
    .restart local v19    # "h":I
    :cond_1e
    move/from16 v18, v1

    move/from16 v9, v19

    .end local v1    # "th":I
    .end local v19    # "h":I
    .restart local v9    # "h":I
    .restart local v18    # "th":I
    const/4 v3, 0x1

    goto/16 :goto_5

    .line 117
    .end local v0    # "state":I
    .end local v2    # "b":I
    .end local v8    # "l":I
    .end local v18    # "th":I
    .restart local v1    # "th":I
    .local v10, "l":I
    :cond_1f
    move/from16 v18, v1

    move v8, v10

    .end local v1    # "th":I
    .end local v10    # "l":I
    .restart local v8    # "l":I
    .restart local v18    # "th":I
    goto :goto_10

    .end local v8    # "l":I
    .end local v9    # "h":I
    .end local v18    # "th":I
    .restart local v1    # "th":I
    .restart local v10    # "l":I
    :cond_20
    move/from16 v18, v1

    move v8, v10

    .line 227
    .end local v1    # "th":I
    .end local v10    # "l":I
    .restart local v8    # "l":I
    .restart local v18    # "th":I
    :goto_10
    return-void

    .line 114
    .end local v8    # "l":I
    .end local v12    # "a":[Ljava/lang/Object;, "[TT;"
    .end local v13    # "org":I
    .end local v14    # "fnc":I
    .end local v15    # "t":Ljava9/util/ArrayPrefixHelpers$CumulateTask;, "Ljava9/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v18    # "th":I
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
