.class Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;
.super Lcom/sleepycat/persist/PrimaryIndex;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalPrimaryIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PK:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/persist/PrimaryIndex<",
        "TPK;TE;>;"
    }
.end annotation


# instance fields
.field private final entityBinding:Lcom/sleepycat/persist/impl/PersistEntityBinding;

.field final synthetic this$0:Lcom/sleepycat/persist/impl/Store;


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/Store;Lcom/sleepycat/je/Database;Ljava/lang/Class;Lcom/sleepycat/persist/impl/PersistKeyBinding;Ljava/lang/Class;Lcom/sleepycat/persist/impl/PersistEntityBinding;)V
    .locals 6
    .param p2, "database"    # Lcom/sleepycat/je/Database;
    .param p4, "keyBinding"    # Lcom/sleepycat/persist/impl/PersistKeyBinding;
    .param p6, "entityBinding"    # Lcom/sleepycat/persist/impl/PersistEntityBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Database;",
            "Ljava/lang/Class<",
            "TPK;>;",
            "Lcom/sleepycat/persist/impl/PersistKeyBinding;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/sleepycat/persist/impl/PersistEntityBinding;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1833
    .local p0, "this":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .local p3, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TPK;>;"
    .local p5, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iput-object p1, p0, Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;->this$0:Lcom/sleepycat/persist/impl/Store;

    .line 1835
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/persist/PrimaryIndex;-><init>(Lcom/sleepycat/je/Database;Ljava/lang/Class;Lcom/sleepycat/bind/EntryBinding;Ljava/lang/Class;Lcom/sleepycat/bind/EntityBinding;)V

    .line 1836
    iput-object p6, p0, Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;->entityBinding:Lcom/sleepycat/persist/impl/PersistEntityBinding;

    .line 1837
    return-void
.end method


# virtual methods
.method protected getAutoCommitTransactionConfig()Lcom/sleepycat/je/TransactionConfig;
    .locals 1

    .line 1846
    .local p0, "this":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;->this$0:Lcom/sleepycat/persist/impl/Store;

    invoke-static {v0}, Lcom/sleepycat/persist/impl/Store;->access$300(Lcom/sleepycat/persist/impl/Store;)Lcom/sleepycat/je/TransactionConfig;

    move-result-object v0

    return-object v0
.end method

.method refresh(Lcom/sleepycat/persist/impl/PersistCatalog;)V
    .locals 1
    .param p1, "newCatalog"    # Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 1840
    .local p0, "this":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;->entityBinding:Lcom/sleepycat/persist/impl/PersistEntityBinding;

    invoke-virtual {v0, p1}, Lcom/sleepycat/persist/impl/PersistEntityBinding;->refresh(Lcom/sleepycat/persist/impl/PersistCatalog;)V

    .line 1841
    return-void
.end method
