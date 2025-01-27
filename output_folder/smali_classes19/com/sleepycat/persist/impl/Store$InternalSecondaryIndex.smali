.class Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;
.super Lcom/sleepycat/persist/SecondaryIndex;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalSecondaryIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SK:",
        "Ljava/lang/Object;",
        "PK:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/persist/SecondaryIndex<",
        "TSK;TPK;TE;>;"
    }
.end annotation


# instance fields
.field private final keyCreator:Lcom/sleepycat/persist/impl/PersistKeyCreator;

.field final synthetic this$0:Lcom/sleepycat/persist/impl/Store;


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/Store;Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/persist/PrimaryIndex;Ljava/lang/Class;Lcom/sleepycat/persist/impl/PersistKeyBinding;Lcom/sleepycat/persist/impl/PersistKeyCreator;)V
    .locals 6
    .param p2, "database"    # Lcom/sleepycat/je/SecondaryDatabase;
    .param p5, "secondaryKeyBinding"    # Lcom/sleepycat/persist/impl/PersistKeyBinding;
    .param p6, "keyCreator"    # Lcom/sleepycat/persist/impl/PersistKeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/SecondaryDatabase;",
            "Lcom/sleepycat/persist/PrimaryIndex<",
            "TPK;TE;>;",
            "Ljava/lang/Class<",
            "TSK;>;",
            "Lcom/sleepycat/persist/impl/PersistKeyBinding;",
            "Lcom/sleepycat/persist/impl/PersistKeyCreator;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1861
    .local p0, "this":Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex<TSK;TPK;TE;>;"
    .local p3, "primaryIndex":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    .local p4, "secondaryKeyClass":Ljava/lang/Class;, "Ljava/lang/Class<TSK;>;"
    iput-object p1, p0, Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;->this$0:Lcom/sleepycat/persist/impl/Store;

    .line 1863
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/persist/SecondaryIndex;-><init>(Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/je/Database;Lcom/sleepycat/persist/PrimaryIndex;Ljava/lang/Class;Lcom/sleepycat/bind/EntryBinding;)V

    .line 1865
    iput-object p6, p0, Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;->keyCreator:Lcom/sleepycat/persist/impl/PersistKeyCreator;

    .line 1866
    return-void
.end method


# virtual methods
.method protected getAutoCommitTransactionConfig()Lcom/sleepycat/je/TransactionConfig;
    .locals 1

    .line 1875
    .local p0, "this":Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex<TSK;TPK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;->this$0:Lcom/sleepycat/persist/impl/Store;

    invoke-static {v0}, Lcom/sleepycat/persist/impl/Store;->access$300(Lcom/sleepycat/persist/impl/Store;)Lcom/sleepycat/je/TransactionConfig;

    move-result-object v0

    return-object v0
.end method

.method refresh(Lcom/sleepycat/persist/impl/PersistCatalog;)V
    .locals 1
    .param p1, "newCatalog"    # Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 1869
    .local p0, "this":Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex<TSK;TPK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;->keyCreator:Lcom/sleepycat/persist/impl/PersistKeyCreator;

    invoke-virtual {v0, p1}, Lcom/sleepycat/persist/impl/PersistKeyCreator;->refresh(Lcom/sleepycat/persist/impl/PersistCatalog;)V

    .line 1870
    return-void
.end method
