.class public Lcom/sleepycat/je/txn/TxnChain$CompareSlot;
.super Ljava/lang/Object;
.source "TxnChain.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/txn/TxnChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompareSlot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/sleepycat/je/txn/TxnChain$CompareSlot;",
        ">;"
    }
.end annotation


# instance fields
.field private final dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private final key:[B


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/log/entry/LNLogEntry;)V
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "*>;)V"
        }
    .end annotation

    .line 396
    .local p2, "undoEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual {p2}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/txn/TxnChain$CompareSlot;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;[B)V

    .line 397
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/dbi/DatabaseImpl;[B)V
    .locals 0
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "key"    # [B

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput-object p1, p0, Lcom/sleepycat/je/txn/TxnChain$CompareSlot;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 401
    iput-object p2, p0, Lcom/sleepycat/je/txn/TxnChain$CompareSlot;->key:[B

    .line 402
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sleepycat/je/txn/TxnChain$CompareSlot;)I
    .locals 4
    .param p1, "other"    # Lcom/sleepycat/je/txn/TxnChain$CompareSlot;

    .line 405
    iget-object v0, p0, Lcom/sleepycat/je/txn/TxnChain$CompareSlot;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    iget-object v1, p1, Lcom/sleepycat/je/txn/TxnChain$CompareSlot;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DatabaseId;->compareTo(Lcom/sleepycat/je/dbi/DatabaseId;)I

    move-result v0

    .line 406
    .local v0, "dbCompare":I
    if-eqz v0, :cond_0

    .line 408
    return v0

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/TxnChain$CompareSlot;->key:[B

    iget-object v2, p1, Lcom/sleepycat/je/txn/TxnChain$CompareSlot;->key:[B

    iget-object v3, p0, Lcom/sleepycat/je/txn/TxnChain$CompareSlot;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/tree/Key;->compareKeys([B[BLjava/util/Comparator;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 390
    check-cast p1, Lcom/sleepycat/je/txn/TxnChain$CompareSlot;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/txn/TxnChain$CompareSlot;->compareTo(Lcom/sleepycat/je/txn/TxnChain$CompareSlot;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 417
    instance-of v0, p1, Lcom/sleepycat/je/txn/TxnChain$CompareSlot;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 418
    return v1

    .line 420
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/txn/TxnChain$CompareSlot;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/txn/TxnChain$CompareSlot;->compareTo(Lcom/sleepycat/je/txn/TxnChain$CompareSlot;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 436
    nop

    .line 437
    const-string v0, "Hashing not supported"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method
