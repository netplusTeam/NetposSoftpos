.class Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;
.super Ljava/lang/Object;
.source "LDiff.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/util/ldiff/LDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LDiffIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/sleepycat/je/rep/util/ldiff/Block;",
        ">;"
    }
.end annotation


# instance fields
.field private cached:Lcom/sleepycat/je/rep/util/ldiff/Block;

.field private cursor:Lcom/sleepycat/je/Cursor;

.field private final db:Lcom/sleepycat/je/Database;

.field private i:I

.field private lastData:Lcom/sleepycat/je/DatabaseEntry;

.field private lastKey:Lcom/sleepycat/je/DatabaseEntry;

.field private more:Z

.field private final numKeys:I

.field final synthetic this$0:Lcom/sleepycat/je/rep/util/ldiff/LDiff;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/LDiff;Lcom/sleepycat/je/Database;)V
    .locals 1
    .param p2, "db"    # Lcom/sleepycat/je/Database;

    .line 793
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->this$0:Lcom/sleepycat/je/rep/util/ldiff/LDiff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->i:I

    .line 795
    invoke-static {p1}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->access$000(Lcom/sleepycat/je/rep/util/ldiff/LDiff;)Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->numKeys:I

    .line 796
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->cached:Lcom/sleepycat/je/rep/util/ldiff/Block;

    .line 797
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->more:Z

    .line 798
    iput-object p2, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->db:Lcom/sleepycat/je/Database;

    .line 801
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->next()Lcom/sleepycat/je/rep/util/ldiff/Block;

    .line 802
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 850
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->cursor:Lcom/sleepycat/je/Cursor;

    invoke-virtual {v0}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 853
    nop

    .line 854
    return-void

    .line 852
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 806
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->more:Z

    return v0
.end method

.method public next()Lcom/sleepycat/je/rep/util/ldiff/Block;
    .locals 5

    .line 816
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->more:Z

    if-eqz v0, :cond_2

    .line 829
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->db:Lcom/sleepycat/je/Database;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->cursor:Lcom/sleepycat/je/Cursor;

    .line 830
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->lastKey:Lcom/sleepycat/je/DatabaseEntry;

    if-nez v2, :cond_0

    .line 831
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->lastKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 832
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->lastData:Lcom/sleepycat/je/DatabaseEntry;

    goto :goto_0

    .line 834
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->lastData:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v0, v2, v3, v1}, Lcom/sleepycat/je/Cursor;->getSearchBoth(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    .line 836
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->cached:Lcom/sleepycat/je/rep/util/ldiff/Block;

    .line 837
    .local v0, "ret":Lcom/sleepycat/je/rep/util/ldiff/Block;
    iget v2, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->i:I

    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->cursor:Lcom/sleepycat/je/Cursor;

    iget v4, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->numKeys:I

    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/rep/util/ldiff/LDiffUtil;->readBlock(ILcom/sleepycat/je/Cursor;I)Lcom/sleepycat/je/rep/util/ldiff/Block;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->cached:Lcom/sleepycat/je/rep/util/ldiff/Block;

    .line 838
    iget v2, v2, Lcom/sleepycat/je/rep/util/ldiff/Block;->numRecords:I

    if-nez v2, :cond_1

    .line 839
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->more:Z

    goto :goto_1

    .line 841
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->cursor:Lcom/sleepycat/je/Cursor;

    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->lastKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->lastData:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v2, v3, v4, v1}, Lcom/sleepycat/je/Cursor;->getCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    .line 843
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->cursor:Lcom/sleepycat/je/Cursor;

    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V

    .line 844
    return-object v0

    .line 817
    .end local v0    # "ret":Lcom/sleepycat/je/rep/util/ldiff/Block;
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 784
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;->next()Lcom/sleepycat/je/rep/util/ldiff/Block;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    .line 812
    return-void
.end method
