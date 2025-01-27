.class final Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;
.super Ljava9/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/ArraysParallelSortHelpers$FJObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Merger"
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


# static fields
.field static final serialVersionUID:J = 0x21f3ddce4497ab4cL


# instance fields
.field final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final gran:I

.field final lbase:I

.field final lsize:I

.field final rbase:I

.field final rsize:I

.field final w:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final wbase:I


# direct methods
.method constructor <init>(Ljava9/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V
    .locals 0
    .param p4, "lbase"    # I
    .param p5, "lsize"    # I
    .param p6, "rbase"    # I
    .param p7, "rsize"    # I
    .param p8, "wbase"    # I
    .param p9, "gran"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;[TT;[TT;IIIIII",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 158
    .local p0, "this":Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;, "Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger<TT;>;"
    .local p1, "par":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    .local p2, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "w":[Ljava/lang/Object;, "[TT;"
    .local p10, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0, p1}, Ljava9/util/concurrent/CountedCompleter;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    .line 159
    iput-object p2, p0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->a:[Ljava/lang/Object;

    iput-object p3, p0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->w:[Ljava/lang/Object;

    .line 160
    iput p4, p0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->lbase:I

    iput p5, p0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->lsize:I

    .line 161
    iput p6, p0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->rbase:I

    iput p7, p0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->rsize:I

    .line 162
    iput p8, p0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->wbase:I

    iput p9, p0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->gran:I

    .line 163
    iput-object p10, p0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->comparator:Ljava/util/Comparator;

    .line 164
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 25

    .line 167
    .local p0, "this":Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;, "Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger<TT;>;"
    move-object/from16 v11, p0

    iget-object v12, v11, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->comparator:Ljava/util/Comparator;

    .line 168
    .local v12, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iget-object v13, v11, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->a:[Ljava/lang/Object;

    .local v13, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v14, v11, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->w:[Ljava/lang/Object;

    .line 169
    .local v14, "w":[Ljava/lang/Object;, "[TT;"
    iget v15, v11, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->lbase:I

    .local v15, "lb":I
    iget v0, v11, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->lsize:I

    .local v0, "ln":I
    iget v10, v11, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->rbase:I

    .line 170
    .local v10, "rb":I
    iget v1, v11, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->rsize:I

    .local v1, "rn":I
    iget v9, v11, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->wbase:I

    .local v9, "k":I
    iget v8, v11, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->gran:I

    .line 171
    .local v8, "g":I
    if-eqz v13, :cond_b

    if-eqz v14, :cond_b

    if-ltz v15, :cond_b

    if-ltz v10, :cond_b

    if-ltz v9, :cond_b

    if-eqz v12, :cond_b

    move v7, v0

    move v6, v1

    .line 175
    .end local v0    # "ln":I
    .end local v1    # "rn":I
    .local v6, "rn":I
    .local v7, "ln":I
    :goto_0
    const/4 v5, 0x1

    if-lt v7, v6, :cond_3

    .line 176
    if-gt v7, v8, :cond_0

    .line 177
    goto :goto_3

    .line 178
    :cond_0
    move v0, v6

    .line 179
    .local v0, "rh":I
    ushr-int/lit8 v1, v7, 0x1

    move v2, v1

    .local v2, "lh":I
    add-int/2addr v1, v15

    aget-object v1, v13, v1

    .line 180
    .local v1, "split":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .local v3, "lo":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 181
    add-int v4, v3, v0

    ushr-int/2addr v4, v5

    .line 182
    .local v4, "rm":I
    add-int v16, v4, v10

    aget-object v5, v13, v16

    invoke-interface {v12, v1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1

    .line 183
    move v0, v4

    goto :goto_2

    .line 185
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .line 186
    .end local v4    # "rm":I
    :goto_2
    const/4 v5, 0x1

    goto :goto_1

    .line 187
    .end local v1    # "split":Ljava/lang/Object;, "TT;"
    .end local v3    # "lo":I
    :cond_2
    move/from16 v16, v0

    move/from16 v18, v2

    goto :goto_9

    .line 189
    .end local v0    # "rh":I
    .end local v2    # "lh":I
    :cond_3
    if-gt v6, v8, :cond_8

    .line 190
    nop

    .line 210
    :goto_3
    add-int v0, v15, v7

    .local v0, "lf":I
    add-int v1, v10, v6

    .line 211
    .local v1, "rf":I
    :goto_4
    if-ge v15, v0, :cond_5

    if-ge v10, v1, :cond_5

    .line 213
    aget-object v2, v13, v15

    move-object v3, v2

    .local v3, "al":Ljava/lang/Object;, "TT;"
    aget-object v4, v13, v10

    move-object v5, v4

    .local v5, "ar":Ljava/lang/Object;, "TT;"
    invoke-interface {v12, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_4

    .line 214
    add-int/lit8 v15, v15, 0x1

    move-object v2, v3

    .local v2, "t":Ljava/lang/Object;, "TT;"
    goto :goto_5

    .line 217
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    :cond_4
    add-int/lit8 v10, v10, 0x1

    move-object v2, v5

    .line 219
    .restart local v2    # "t":Ljava/lang/Object;, "TT;"
    :goto_5
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "k":I
    .local v4, "k":I
    aput-object v2, v14, v9

    .line 220
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    .end local v3    # "al":Ljava/lang/Object;, "TT;"
    .end local v5    # "ar":Ljava/lang/Object;, "TT;"
    move v9, v4

    goto :goto_4

    .line 221
    .end local v4    # "k":I
    .restart local v9    # "k":I
    :cond_5
    if-ge v10, v1, :cond_6

    .line 222
    sub-int v2, v1, v10

    invoke-static {v13, v10, v14, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 223
    :cond_6
    if-ge v15, v0, :cond_7

    .line 224
    sub-int v2, v0, v15

    invoke-static {v13, v15, v14, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    :cond_7
    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->tryComplete()V

    .line 227
    return-void

    .line 191
    .end local v0    # "lf":I
    .end local v1    # "rf":I
    :cond_8
    move v0, v7

    .line 192
    .local v0, "lh":I
    ushr-int/lit8 v1, v6, 0x1

    move v2, v1

    .local v2, "rh":I
    add-int/2addr v1, v10

    aget-object v1, v13, v1

    .line 193
    .local v1, "split":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .local v3, "lo":I
    :goto_7
    if-ge v3, v0, :cond_a

    .line 194
    add-int v4, v3, v0

    const/4 v5, 0x1

    ushr-int/2addr v4, v5

    .line 195
    .local v4, "lm":I
    add-int v16, v4, v15

    aget-object v5, v13, v16

    invoke-interface {v12, v1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_9

    .line 196
    move v0, v4

    goto :goto_8

    .line 198
    :cond_9
    add-int/lit8 v3, v4, 0x1

    .line 199
    .end local v4    # "lm":I
    :goto_8
    goto :goto_7

    .line 193
    :cond_a
    move/from16 v18, v0

    move/from16 v16, v2

    .line 201
    .end local v0    # "lh":I
    .end local v1    # "split":Ljava/lang/Object;, "TT;"
    .end local v2    # "rh":I
    .end local v3    # "lo":I
    .local v16, "rh":I
    .local v18, "lh":I
    :goto_9
    new-instance v19, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;

    add-int v4, v15, v18

    sub-int v5, v7, v18

    add-int v20, v10, v16

    sub-int v21, v6, v16

    add-int v0, v9, v18

    add-int v22, v0, v16

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v23, v13

    const/4 v13, 0x1

    .end local v13    # "a":[Ljava/lang/Object;, "[TT;"
    .local v23, "a":[Ljava/lang/Object;, "[TT;"
    move/from16 v17, v6

    .end local v6    # "rn":I
    .local v17, "rn":I
    move/from16 v6, v20

    move/from16 v20, v7

    .end local v7    # "ln":I
    .local v20, "ln":I
    move/from16 v7, v21

    move/from16 v21, v8

    .end local v8    # "g":I
    .local v21, "g":I
    move/from16 v8, v22

    move/from16 v22, v9

    .end local v9    # "k":I
    .local v22, "k":I
    move/from16 v9, v21

    move/from16 v24, v10

    .end local v10    # "rb":I
    .local v24, "rb":I
    move-object v10, v12

    invoke-direct/range {v0 .. v10}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;-><init>(Ljava9/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V

    .line 204
    .local v0, "m":Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;, "Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger<TT;>;"
    move/from16 v6, v16

    .line 205
    .end local v17    # "rn":I
    .restart local v6    # "rn":I
    move/from16 v7, v18

    .line 206
    .end local v20    # "ln":I
    .restart local v7    # "ln":I
    invoke-virtual {v11, v13}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->addToPendingCount(I)V

    .line 207
    invoke-virtual {v0}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;->fork()Ljava9/util/concurrent/ForkJoinTask;

    .line 208
    .end local v0    # "m":Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;, "Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger<TT;>;"
    move/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v13, v23

    move/from16 v10, v24

    goto/16 :goto_0

    .line 171
    .end local v6    # "rn":I
    .end local v7    # "ln":I
    .end local v16    # "rh":I
    .end local v18    # "lh":I
    .end local v21    # "g":I
    .end local v22    # "k":I
    .end local v23    # "a":[Ljava/lang/Object;, "[TT;"
    .end local v24    # "rb":I
    .local v0, "ln":I
    .local v1, "rn":I
    .restart local v8    # "g":I
    .restart local v9    # "k":I
    .restart local v10    # "rb":I
    .restart local v13    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_b
    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v24, v10

    move-object/from16 v23, v13

    .line 173
    .end local v8    # "g":I
    .end local v9    # "k":I
    .end local v10    # "rb":I
    .end local v13    # "a":[Ljava/lang/Object;, "[TT;"
    .restart local v21    # "g":I
    .restart local v22    # "k":I
    .restart local v23    # "a":[Ljava/lang/Object;, "[TT;"
    .restart local v24    # "rb":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method
