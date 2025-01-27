.class public Lcom/sleepycat/persist/EntityJoin;
.super Ljava/lang/Object;
.source "EntityJoin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;,
        Lcom/sleepycat/persist/EntityJoin$Condition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PK:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private conditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/EntityJoin$Condition;",
            ">;"
        }
    .end annotation
.end field

.field private primary:Lcom/sleepycat/persist/PrimaryIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/persist/PrimaryIndex<",
            "TPK;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sleepycat/persist/PrimaryIndex;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/persist/PrimaryIndex<",
            "TPK;TE;>;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/sleepycat/persist/EntityJoin;, "Lcom/sleepycat/persist/EntityJoin<TPK;TE;>;"
    .local p1, "index":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/sleepycat/persist/EntityJoin;->primary:Lcom/sleepycat/persist/PrimaryIndex;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/EntityJoin;->conditions:Ljava/util/List;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/persist/EntityJoin;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/persist/EntityJoin;

    .line 76
    iget-object v0, p0, Lcom/sleepycat/persist/EntityJoin;->conditions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/persist/EntityJoin;)Lcom/sleepycat/persist/PrimaryIndex;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/persist/EntityJoin;

    .line 76
    iget-object v0, p0, Lcom/sleepycat/persist/EntityJoin;->primary:Lcom/sleepycat/persist/PrimaryIndex;

    return-object v0
.end method


# virtual methods
.method public addCondition(Lcom/sleepycat/persist/SecondaryIndex;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SK:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sleepycat/persist/SecondaryIndex<",
            "TSK;TPK;TE;>;TSK;)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/sleepycat/persist/EntityJoin;, "Lcom/sleepycat/persist/EntityJoin<TPK;TE;>;"
    .local p1, "index":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<TSK;TPK;TE;>;"
    .local p2, "key":Ljava/lang/Object;, "TSK;"
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 106
    .local v0, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-virtual {p1}, Lcom/sleepycat/persist/SecondaryIndex;->getKeyBinding()Lcom/sleepycat/bind/EntryBinding;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Lcom/sleepycat/bind/EntryBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 109
    invoke-virtual {p1}, Lcom/sleepycat/persist/SecondaryIndex;->getKeysDatabase()Lcom/sleepycat/je/Database;

    move-result-object v1

    .line 110
    .local v1, "db":Lcom/sleepycat/je/Database;
    if-nez v1, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/sleepycat/persist/SecondaryIndex;->getDatabase()Lcom/sleepycat/je/SecondaryDatabase;

    move-result-object v1

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/persist/EntityJoin;->conditions:Ljava/util/List;

    new-instance v3, Lcom/sleepycat/persist/EntityJoin$Condition;

    invoke-direct {v3, v1, v0}, Lcom/sleepycat/persist/EntityJoin$Condition;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseEntry;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public entities()Lcom/sleepycat/persist/ForwardCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/persist/ForwardCursor<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/sleepycat/persist/EntityJoin;, "Lcom/sleepycat/persist/EntityJoin<TPK;TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/sleepycat/persist/EntityJoin;->entities(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/ForwardCursor;

    move-result-object v0

    return-object v0
.end method

.method public entities(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/ForwardCursor;
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Lcom/sleepycat/persist/ForwardCursor<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 178
    .local p0, "this":Lcom/sleepycat/persist/EntityJoin;, "Lcom/sleepycat/persist/EntityJoin<TPK;TE;>;"
    new-instance v0, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;-><init>(Lcom/sleepycat/persist/EntityJoin;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;Z)V

    return-object v0
.end method

.method public keys()Lcom/sleepycat/persist/ForwardCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/persist/ForwardCursor<",
            "TPK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 207
    .local p0, "this":Lcom/sleepycat/persist/EntityJoin;, "Lcom/sleepycat/persist/EntityJoin<TPK;TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/sleepycat/persist/EntityJoin;->keys(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/ForwardCursor;

    move-result-object v0

    return-object v0
.end method

.method public keys(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/ForwardCursor;
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Lcom/sleepycat/persist/ForwardCursor<",
            "TPK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 243
    .local p0, "this":Lcom/sleepycat/persist/EntityJoin;, "Lcom/sleepycat/persist/EntityJoin<TPK;TE;>;"
    new-instance v0, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;-><init>(Lcom/sleepycat/persist/EntityJoin;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;Z)V

    return-object v0
.end method
