.class final Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;
.super Ljava9/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/ArraysParallelSortHelpers$FJObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Sorter"
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

.field final base:I

.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final gran:I

.field final size:I

.field final w:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final wbase:I


# direct methods
.method constructor <init>(Ljava9/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V
    .locals 0
    .param p4, "base"    # I
    .param p5, "size"    # I
    .param p6, "wbase"    # I
    .param p7, "gran"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;[TT;[TT;IIII",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 118
    .local p0, "this":Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;, "Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter<TT;>;"
    .local p1, "par":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    .local p2, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "w":[Ljava/lang/Object;, "[TT;"
    .local p8, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0, p1}, Ljava9/util/concurrent/CountedCompleter;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    .line 119
    iput-object p2, p0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->a:[Ljava/lang/Object;

    iput-object p3, p0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->w:[Ljava/lang/Object;

    iput p4, p0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->base:I

    iput p5, p0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->size:I

    .line 120
    iput p6, p0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->wbase:I

    iput p7, p0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->gran:I

    .line 121
    iput-object p8, p0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->comparator:Ljava/util/Comparator;

    .line 122
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 27

    .line 124
    .local p0, "this":Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;, "Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    .line 125
    .local v1, "s":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    iget-object v15, v0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->comparator:Ljava/util/Comparator;

    .line 126
    .local v15, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iget-object v14, v0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->a:[Ljava/lang/Object;

    .local v14, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v13, v0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->w:[Ljava/lang/Object;

    .line 127
    .local v13, "w":[Ljava/lang/Object;, "[TT;"
    iget v12, v0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->base:I

    .local v12, "b":I
    iget v2, v0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->size:I

    .local v2, "n":I
    iget v11, v0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->wbase:I

    .local v11, "wb":I
    iget v10, v0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->gran:I

    move v9, v2

    .line 128
    .end local v2    # "n":I
    .local v9, "n":I
    .local v10, "g":I
    :goto_0
    if-le v9, v10, :cond_0

    .line 129
    ushr-int/lit8 v17, v9, 0x1

    .local v17, "h":I
    ushr-int/lit8 v18, v17, 0x1

    .local v18, "q":I
    add-int v19, v17, v18

    .line 130
    .local v19, "u":I
    new-instance v8, Ljava9/util/ArraysParallelSortHelpers$Relay;

    new-instance v7, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;

    add-int v16, v11, v17

    sub-int v20, v9, v17

    move-object v2, v7

    move-object v3, v1

    move-object v4, v13

    move-object v5, v14

    move v6, v11

    move-object v0, v7

    move/from16 v7, v17

    move-object/from16 v21, v1

    move-object v1, v8

    .end local v1    # "s":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    .local v21, "s":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    move/from16 v8, v16

    move/from16 v22, v9

    .end local v9    # "n":I
    .local v22, "n":I
    move/from16 v9, v20

    move/from16 v20, v10

    .end local v10    # "g":I
    .local v20, "g":I
    move v10, v12

    move/from16 v23, v11

    .end local v11    # "wb":I
    .local v23, "wb":I
    move/from16 v11, v20

    move/from16 v24, v12

    .end local v12    # "b":I
    .local v24, "b":I
    move-object v12, v15

    invoke-direct/range {v2 .. v12}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;-><init>(Ljava9/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V

    invoke-direct {v1, v0}, Ljava9/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    move-object v3, v1

    .line 132
    .local v3, "fc":Ljava9/util/ArraysParallelSortHelpers$Relay;
    new-instance v0, Ljava9/util/ArraysParallelSortHelpers$Relay;

    new-instance v1, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;

    add-int v6, v24, v17

    add-int v8, v24, v19

    sub-int v9, v22, v19

    add-int v10, v23, v17

    move-object v2, v1

    move-object v4, v14

    move-object v5, v13

    move/from16 v7, v18

    invoke-direct/range {v2 .. v12}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;-><init>(Ljava9/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V

    invoke-direct {v0, v1}, Ljava9/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    move-object v5, v0

    .line 134
    .local v5, "rc":Ljava9/util/ArraysParallelSortHelpers$Relay;
    new-instance v0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;

    add-int v8, v24, v19

    sub-int v9, v22, v19

    add-int v10, v23, v19

    move-object v4, v0

    move-object v6, v14

    move-object v7, v13

    invoke-direct/range {v4 .. v12}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava9/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual {v0}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->fork()Ljava9/util/concurrent/ForkJoinTask;

    .line 135
    new-instance v0, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;

    add-int v10, v24, v17

    add-int v12, v23, v17

    move-object v6, v0

    move-object v7, v5

    move-object v8, v14

    move-object v9, v13

    move/from16 v11, v18

    move-object v1, v13

    .end local v13    # "w":[Ljava/lang/Object;, "[TT;"
    .local v1, "w":[Ljava/lang/Object;, "[TT;"
    move/from16 v13, v20

    move-object/from16 v25, v14

    .end local v14    # "a":[Ljava/lang/Object;, "[TT;"
    .local v25, "a":[Ljava/lang/Object;, "[TT;"
    move-object v14, v15

    invoke-direct/range {v6 .. v14}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava9/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual {v0}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->fork()Ljava9/util/concurrent/ForkJoinTask;

    .line 136
    new-instance v0, Ljava9/util/ArraysParallelSortHelpers$Relay;

    new-instance v2, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;

    add-int v12, v24, v18

    sub-int v13, v17, v18

    move-object v6, v2

    move-object v7, v3

    move-object/from16 v8, v25

    move-object v9, v1

    move/from16 v10, v24

    move/from16 v14, v23

    move-object/from16 v26, v15

    .end local v15    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v26, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move/from16 v15, v20

    move-object/from16 v16, v26

    invoke-direct/range {v6 .. v16}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Merger;-><init>(Ljava9/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V

    invoke-direct {v0, v2}, Ljava9/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    .line 138
    .local v0, "bc":Ljava9/util/ArraysParallelSortHelpers$Relay;
    new-instance v2, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;

    add-int v10, v24, v18

    sub-int v11, v17, v18

    add-int v12, v23, v18

    move-object v6, v2

    move-object v7, v0

    move/from16 v13, v20

    move-object/from16 v14, v26

    invoke-direct/range {v6 .. v14}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava9/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual {v2}, Ljava9/util/ArraysParallelSortHelpers$FJObject$Sorter;->fork()Ljava9/util/concurrent/ForkJoinTask;

    .line 139
    new-instance v2, Ljava9/util/ArraysParallelSortHelpers$EmptyCompleter;

    invoke-direct {v2, v0}, Ljava9/util/ArraysParallelSortHelpers$EmptyCompleter;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    .line 140
    .end local v21    # "s":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    .local v2, "s":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    move/from16 v9, v18

    .line 141
    .end local v0    # "bc":Ljava9/util/ArraysParallelSortHelpers$Relay;
    .end local v3    # "fc":Ljava9/util/ArraysParallelSortHelpers$Relay;
    .end local v5    # "rc":Ljava9/util/ArraysParallelSortHelpers$Relay;
    .end local v17    # "h":I
    .end local v18    # "q":I
    .end local v19    # "u":I
    .end local v22    # "n":I
    .restart local v9    # "n":I
    move-object/from16 v0, p0

    move-object v13, v1

    move-object v1, v2

    move/from16 v10, v20

    move/from16 v11, v23

    move/from16 v12, v24

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    goto/16 :goto_0

    .line 142
    .end local v2    # "s":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    .end local v20    # "g":I
    .end local v23    # "wb":I
    .end local v24    # "b":I
    .end local v25    # "a":[Ljava/lang/Object;, "[TT;"
    .end local v26    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v1, "s":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    .restart local v10    # "g":I
    .restart local v11    # "wb":I
    .restart local v12    # "b":I
    .restart local v13    # "w":[Ljava/lang/Object;, "[TT;"
    .restart local v14    # "a":[Ljava/lang/Object;, "[TT;"
    .restart local v15    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    :cond_0
    move-object/from16 v21, v1

    move/from16 v22, v9

    move/from16 v23, v11

    move/from16 v24, v12

    move-object v1, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    .end local v9    # "n":I
    .end local v11    # "wb":I
    .end local v12    # "b":I
    .end local v13    # "w":[Ljava/lang/Object;, "[TT;"
    .end local v14    # "a":[Ljava/lang/Object;, "[TT;"
    .end local v15    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v1, "w":[Ljava/lang/Object;, "[TT;"
    .restart local v21    # "s":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    .restart local v22    # "n":I
    .restart local v23    # "wb":I
    .restart local v24    # "b":I
    .restart local v25    # "a":[Ljava/lang/Object;, "[TT;"
    .restart local v26    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    add-int v4, v24, v22

    move-object/from16 v2, v25

    move/from16 v3, v24

    move-object/from16 v5, v26

    move-object v6, v1

    move/from16 v7, v23

    move/from16 v8, v22

    invoke-static/range {v2 .. v8}, Ljava9/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 143
    invoke-virtual/range {v21 .. v21}, Ljava9/util/concurrent/CountedCompleter;->tryComplete()V

    .line 144
    return-void
.end method
