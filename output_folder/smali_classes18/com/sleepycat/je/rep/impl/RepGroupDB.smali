.class public Lcom/sleepycat/je/rep/impl/RepGroupDB;
.super Ljava/lang/Object;
.source "RepGroupDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;,
        Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;,
        Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DB_ID:J = -0x101L

.field public static final GROUP_KEY:Ljava/lang/String; = "$$GROUP_KEY$$"

.field private static final NO_ACK:Lcom/sleepycat/je/TransactionConfig;

.field private static final NO_ACK_DURABILITY:Lcom/sleepycat/je/Durability;

.field private static final NO_ACK_NO_SYNC_DURABILITY:Lcom/sleepycat/je/Durability;

.field private static final QUORUM_ACK:Lcom/sleepycat/je/TransactionConfig;

.field private static final QUORUM_ACK_DURABILITY:Lcom/sleepycat/je/Durability;

.field private static final QUORUM_ACK_RETRIES:I = 0x5

.field static final READ_ONLY:Lcom/sleepycat/je/TransactionConfig;

.field public static final groupKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

.field private static final lockMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final emptyGroup:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

.field private final logger:Ljava/util/logging/Logger;

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 97
    nop

    .line 111
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->groupKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

    .line 115
    const-string v1, "$$GROUP_KEY$$"

    invoke-static {v1, v0}, Lcom/sleepycat/bind/tuple/StringBinding;->stringToEntry(Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->lockMap:Ljava/util/HashMap;

    .line 131
    new-instance v0, Lcom/sleepycat/je/Durability;

    sget-object v1, Lcom/sleepycat/je/Durability$SyncPolicy;->SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v2, Lcom/sleepycat/je/Durability$SyncPolicy;->SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v3, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/Durability;-><init>(Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->QUORUM_ACK_DURABILITY:Lcom/sleepycat/je/Durability;

    .line 136
    new-instance v1, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    sput-object v1, Lcom/sleepycat/je/rep/impl/RepGroupDB;->QUORUM_ACK:Lcom/sleepycat/je/TransactionConfig;

    .line 139
    new-instance v2, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v2}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    sput-object v2, Lcom/sleepycat/je/rep/impl/RepGroupDB;->NO_ACK:Lcom/sleepycat/je/TransactionConfig;

    .line 144
    sput-object v2, Lcom/sleepycat/je/rep/impl/RepGroupDB;->READ_ONLY:Lcom/sleepycat/je/TransactionConfig;

    .line 146
    new-instance v3, Lcom/sleepycat/je/Durability;

    sget-object v4, Lcom/sleepycat/je/Durability$SyncPolicy;->SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v5, Lcom/sleepycat/je/Durability$SyncPolicy;->SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v6, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->NONE:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    invoke-direct {v3, v4, v5, v6}, Lcom/sleepycat/je/Durability;-><init>(Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)V

    sput-object v3, Lcom/sleepycat/je/rep/impl/RepGroupDB;->NO_ACK_DURABILITY:Lcom/sleepycat/je/Durability;

    .line 151
    new-instance v4, Lcom/sleepycat/je/Durability;

    sget-object v5, Lcom/sleepycat/je/Durability$SyncPolicy;->NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v6, Lcom/sleepycat/je/Durability$SyncPolicy;->NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v7, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->NONE:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    invoke-direct {v4, v5, v6, v7}, Lcom/sleepycat/je/Durability;-><init>(Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)V

    sput-object v4, Lcom/sleepycat/je/rep/impl/RepGroupDB;->NO_ACK_NO_SYNC_DURABILITY:Lcom/sleepycat/je/Durability;

    .line 159
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/TransactionConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/TransactionConfig;

    .line 160
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/TransactionConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/TransactionConfig;

    .line 161
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 4
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 175
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    .line 176
    .local v0, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    new-instance v1, Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->GROUP_NAME:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;-><init>(Ljava/lang/String;Lcom/sleepycat/je/JEVersion;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->emptyGroup:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->logger:Ljava/util/logging/Logger;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/impl/RepGroupDB;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/RepGroupDB;
    .param p1, "x1"    # Lcom/sleepycat/je/txn/Txn;
    .param p2, "x2"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "x3"    # Lcom/sleepycat/je/LockMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->fetchGroupObject(Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/impl/RepGroupDB;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/RepGroupDB;
    .param p1, "x1"    # Lcom/sleepycat/je/txn/Txn;
    .param p2, "x2"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .param p3, "x3"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->saveGroupObject(Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sleepycat/je/rep/impl/RepGroupDB;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/RepGroupDB;

    .line 97
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/HashMap;
    .locals 1

    .line 97
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->lockMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/rep/impl/RepGroupDB;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/rep/impl/RepNodeImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/RepGroupDB;
    .param p1, "x1"    # Lcom/sleepycat/je/txn/Txn;
    .param p2, "x2"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .param p3, "x3"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p4, "x4"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->saveNodeObject(Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/rep/impl/RepNodeImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p1, "x1"    # Lcom/sleepycat/je/txn/Txn;
    .param p2, "x2"    # Lcom/sleepycat/je/CursorConfig;

    .line 97
    invoke-static {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "x2"    # Lcom/sleepycat/je/txn/Txn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 97
    invoke-static {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->fetchGroup(Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sleepycat/je/rep/impl/RepGroupDB;)Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/RepGroupDB;

    .line 97
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    return-object v0
.end method

.method static synthetic access$600()Lcom/sleepycat/je/TransactionConfig;
    .locals 1

    .line 97
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->QUORUM_ACK:Lcom/sleepycat/je/TransactionConfig;

    return-object v0
.end method

.method static synthetic access$700()Lcom/sleepycat/je/TransactionConfig;
    .locals 1

    .line 97
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->NO_ACK:Lcom/sleepycat/je/TransactionConfig;

    return-object v0
.end method

.method static synthetic access$800()Lcom/sleepycat/je/Durability;
    .locals 1

    .line 97
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->QUORUM_ACK_DURABILITY:Lcom/sleepycat/je/Durability;

    return-object v0
.end method

.method static synthetic access$900()Lcom/sleepycat/je/Durability;
    .locals 1

    .line 97
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->NO_ACK_DURABILITY:Lcom/sleepycat/je/Durability;

    return-object v0
.end method

.method private createMember(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V
    .locals 4
    .param p1, "node"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/InsufficientReplicasException;,
            Lcom/sleepycat/je/rep/InsufficientAcksException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 669
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 671
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->twoPhaseMemberUpdate(Lcom/sleepycat/je/rep/impl/RepNodeImpl;Z)V

    .line 673
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully added node:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 674
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HostPort = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 675
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 676
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 673
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 677
    return-void
.end method

.method private static fetchGroup(Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 11
    .param p0, "groupName"    # Ljava/lang/String;
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "txn"    # Lcom/sleepycat/je/txn/Txn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 349
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 350
    .local v0, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 351
    .local v1, "value":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v2, 0x0

    .line 352
    .local v2, "nodeBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    new-instance v3, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;

    invoke-direct {v3}, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;-><init>()V

    .line 354
    .local v3, "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    const/4 v4, 0x0

    .line 355
    .local v4, "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 357
    .local v5, "nodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    new-instance v6, Lcom/sleepycat/je/CursorConfig;

    invoke-direct {v6}, Lcom/sleepycat/je/CursorConfig;-><init>()V

    .line 358
    .local v6, "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sleepycat/je/CursorConfig;->setReadCommitted(Z)Lcom/sleepycat/je/CursorConfig;

    .line 360
    const/4 v7, 0x0

    .line 363
    .local v7, "mcursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    invoke-static {p1, p2, v6}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v8

    move-object v7, v8

    .line 364
    :goto_0
    sget-object v8, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v7, v0, v1, v8}, Lcom/sleepycat/je/Cursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v8

    sget-object v9, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v8, v9, :cond_3

    .line 367
    invoke-static {v0}, Lcom/sleepycat/bind/tuple/StringBinding;->entryToString(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/String;

    move-result-object v8

    .line 369
    .local v8, "key":Ljava/lang/String;
    const-string v9, "$$GROUP_KEY$$"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 370
    invoke-virtual {v3, v1}, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-object v4, v9

    .line 371
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 382
    new-instance v9, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getFormatVersion()I

    move-result v10

    invoke-direct {v9, v10}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;-><init>(I)V

    move-object v2, v9

    goto :goto_1

    .line 372
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The argument: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not match the expected group name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 375
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 373
    invoke-static {v9}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v9

    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "value":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "nodeBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    .end local v3    # "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    .end local v4    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local v5    # "nodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    .end local v6    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .end local v7    # "mcursor":Lcom/sleepycat/je/Cursor;
    .end local p0    # "groupName":Ljava/lang/String;
    .end local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "txn":Lcom/sleepycat/je/txn/Txn;
    throw v9

    .line 384
    .restart local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "value":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "nodeBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    .restart local v3    # "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    .restart local v4    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .restart local v5    # "nodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    .restart local v6    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .restart local v7    # "mcursor":Lcom/sleepycat/je/Cursor;
    .restart local p0    # "groupName":Ljava/lang/String;
    .restart local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "txn":Lcom/sleepycat/je/txn/Txn;
    :cond_1
    if-eqz v2, :cond_2

    .line 388
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 389
    .local v9, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :goto_1
    goto :goto_0

    .line 385
    .restart local v8    # "key":Ljava/lang/String;
    :cond_2
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Found node binding before group binding"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "value":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "nodeBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    .end local v3    # "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    .end local v4    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local v5    # "nodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    .end local v6    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .end local v7    # "mcursor":Lcom/sleepycat/je/Cursor;
    .end local p0    # "groupName":Ljava/lang/String;
    .end local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "txn":Lcom/sleepycat/je/txn/Txn;
    throw v9

    .line 392
    .end local v8    # "key":Ljava/lang/String;
    .restart local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "value":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "nodeBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    .restart local v3    # "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    .restart local v4    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .restart local v5    # "nodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    .restart local v6    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .restart local v7    # "mcursor":Lcom/sleepycat/je/Cursor;
    .restart local p0    # "groupName":Ljava/lang/String;
    .restart local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "txn":Lcom/sleepycat/je/txn/Txn;
    :cond_3
    if-eqz v4, :cond_5

    .line 396
    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->setNodes(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    nop

    .line 399
    if-eqz v7, :cond_4

    .line 400
    invoke-virtual {v7}, Lcom/sleepycat/je/Cursor;->close()V

    .line 397
    :cond_4
    return-object v4

    .line 393
    :cond_5
    :try_start_1
    const-string v8, "Group key: $$GROUP_KEY$$ is missing"

    .line 394
    invoke-static {v8}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v8

    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "value":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "nodeBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    .end local v3    # "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    .end local v4    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local v5    # "nodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    .end local v6    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .end local v7    # "mcursor":Lcom/sleepycat/je/Cursor;
    .end local p0    # "groupName":Ljava/lang/String;
    .end local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "txn":Lcom/sleepycat/je/txn/Txn;
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    .restart local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "value":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "nodeBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    .restart local v3    # "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    .restart local v4    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .restart local v5    # "nodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    .restart local v6    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .restart local v7    # "mcursor":Lcom/sleepycat/je/Cursor;
    .restart local p0    # "groupName":Ljava/lang/String;
    .restart local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "txn":Lcom/sleepycat/je/txn/Txn;
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_6

    .line 400
    invoke-virtual {v7}, Lcom/sleepycat/je/Cursor;->close()V

    :cond_6
    throw v8
.end method

.method private fetchGroupObject(Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 5
    .param p1, "txn"    # Lcom/sleepycat/je/txn/Txn;
    .param p2, "groupDbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 926
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;-><init>()V

    .line 927
    .local v0, "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 929
    .local v1, "groupEntry":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v2, 0x0

    .line 931
    .local v2, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    sget-object v3, Lcom/sleepycat/je/CursorConfig;->DEFAULT:Lcom/sleepycat/je/CursorConfig;

    invoke-static {p2, p1, v3}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 933
    sget-object v3, Lcom/sleepycat/je/rep/impl/RepGroupDB;->groupKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

    .line 934
    invoke-virtual {v2, v3, v1, p3}, Lcom/sleepycat/je/Cursor;->getSearchKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3

    .line 936
    .local v3, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v4, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_1

    .line 942
    .end local v3    # "status":Lcom/sleepycat/je/OperationStatus;
    if-eqz v2, :cond_0

    .line 943
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V

    .line 947
    :cond_0
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    return-object v3

    .line 937
    .restart local v3    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_1
    :try_start_1
    const-string v4, "Group entry key: $$GROUP_KEY$$ missing from group database"

    .line 938
    invoke-static {v4}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    .end local v0    # "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    .end local v1    # "groupEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local p2    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p3    # "lockMode":Lcom/sleepycat/je/LockMode;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 942
    .end local v3    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v0    # "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    .restart local v1    # "groupEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "txn":Lcom/sleepycat/je/txn/Txn;
    .restart local p2    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p3    # "lockMode":Lcom/sleepycat/je/LockMode;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 943
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method public static getGroup(Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 8
    .param p0, "rImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p1, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    const/4 v1, 0x0

    .line 205
    .local v1, "foundDbImpl":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getGroupDb()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v2
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 206
    const/4 v1, 0x1

    .line 208
    goto :goto_0

    .line 207
    :catch_0
    move-exception v2

    .line 210
    :goto_0
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 216
    new-instance v3, Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 217
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v4

    invoke-direct {v3, p1, v2, v4}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;-><init>(Ljava/lang/String;ZLcom/sleepycat/je/JEVersion;)V

    move-object v2, v3

    .local v2, "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    goto :goto_1

    .line 220
    .end local v2    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    :cond_0
    new-instance v3, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v3}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    .line 221
    .local v3, "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    sget-object v4, Lcom/sleepycat/je/rep/impl/RepGroupDB;->READ_ONLY:Lcom/sleepycat/je/TransactionConfig;

    invoke-virtual {v4}, Lcom/sleepycat/je/TransactionConfig;->getDurability()Lcom/sleepycat/je/Durability;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/TransactionConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/TransactionConfig;

    .line 222
    sget-object v4, Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;->NO_CONSISTENCY:Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/TransactionConfig;->setConsistencyPolicy(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)Lcom/sleepycat/je/TransactionConfig;

    .line 223
    invoke-virtual {v3, v2}, Lcom/sleepycat/je/TransactionConfig;->setReadUncommitted(Z)Lcom/sleepycat/je/TransactionConfig;

    .line 225
    const/4 v2, 0x0

    .line 227
    .local v2, "txn":Lcom/sleepycat/je/txn/Txn;
    :try_start_1
    new-instance v4, Lcom/sleepycat/je/rep/txn/ReadonlyTxn;

    invoke-direct {v4, p0, v3}, Lcom/sleepycat/je/rep/txn/ReadonlyTxn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)V

    move-object v2, v4

    .line 228
    invoke-static {p1, v0, v2}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->fetchGroup(Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v4

    .line 233
    .local v4, "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->makeConsistent()V

    .line 234
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Txn;->commit()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    const/4 v2, 0x0

    .line 237
    if-eqz v2, :cond_1

    .line 238
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Txn;->abort()V

    .line 244
    .end local v2    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local v3    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    :cond_1
    move-object v2, v4

    .end local v4    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .local v2, "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    :goto_1
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v3

    .line 245
    .local v3, "repNode":Lcom/sleepycat/je/rep/impl/node/RepNode;
    if-eqz v3, :cond_3

    .line 247
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->feederManager()Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activeReplicasMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 248
    .local v5, "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNode()Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v6

    .line 250
    .local v6, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 251
    invoke-virtual {v2, v6}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->addTransientIdNode(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V

    .line 253
    .end local v5    # "feeder":Lcom/sleepycat/je/rep/impl/node/Feeder;
    .end local v6    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_2
    goto :goto_2

    .line 256
    :cond_3
    return-object v2

    .line 237
    .local v2, "txn":Lcom/sleepycat/je/txn/Txn;
    .local v3, "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_4

    .line 238
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Txn;->abort()V

    :cond_4
    throw v4
.end method

.method public static getGroup(Ljava/io/File;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 12
    .param p0, "envDir"    # Ljava/io/File;

    .line 1366
    new-instance v0, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    .line 1367
    .local v0, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/EnvironmentConfig;->setReadOnly(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 1368
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/EnvironmentConfig;->setTransactional(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 1369
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setAllowCreate(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 1370
    new-instance v3, Lcom/sleepycat/je/Environment;

    invoke-direct {v3, p0, v0}, Lcom/sleepycat/je/Environment;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;)V

    .line 1371
    .local v3, "env":Lcom/sleepycat/je/Environment;
    const/4 v4, 0x0

    .line 1372
    .local v4, "txn":Lcom/sleepycat/je/Transaction;
    const/4 v5, 0x0

    .line 1374
    .local v5, "db":Lcom/sleepycat/je/Database;
    :try_start_0
    new-instance v6, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v6}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    .line 1375
    .local v6, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    invoke-virtual {v6, v1}, Lcom/sleepycat/je/DatabaseConfig;->setReadOnly(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1376
    invoke-virtual {v6, v1}, Lcom/sleepycat/je/DatabaseConfig;->setTransactional(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1377
    invoke-virtual {v6, v2}, Lcom/sleepycat/je/DatabaseConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1378
    const/4 v1, 0x0

    invoke-virtual {v3, v1, v1}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v1

    move-object v4, v1

    .line 1379
    sget-object v1, Lcom/sleepycat/je/dbi/DbType;->REP_GROUP:Lcom/sleepycat/je/dbi/DbType;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1, v6}, Lcom/sleepycat/je/Environment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v1

    move-object v5, v1

    .line 1382
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1383
    .local v1, "groupEntry":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v2, Lcom/sleepycat/je/rep/impl/RepGroupDB;->groupKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v7, Lcom/sleepycat/je/LockMode;->READ_COMMITTED:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v5, v4, v2, v1, v7}, Lcom/sleepycat/je/Database;->get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    .line 1385
    .local v2, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v7, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v2, v7, :cond_2

    .line 1389
    new-instance v7, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;

    invoke-direct {v7}, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;-><init>()V

    .line 1390
    .local v7, "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    invoke-virtual {v7, v1}, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 1392
    .local v8, "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1393
    invoke-static {v5}, Lcom/sleepycat/je/DbInternal;->getDbImpl(Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v10

    .line 1394
    invoke-static {v4}, Lcom/sleepycat/je/DbInternal;->getTxn(Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v11

    .line 1392
    invoke-static {v9, v10, v11}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->fetchGroup(Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v9

    move-object v8, v9

    .line 1395
    invoke-virtual {v4}, Lcom/sleepycat/je/Transaction;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1396
    const/4 v4, 0x0

    .line 1397
    nop

    .line 1399
    if-eqz v4, :cond_0

    .line 1400
    invoke-virtual {v4}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 1402
    :cond_0
    if-eqz v5, :cond_1

    .line 1403
    invoke-virtual {v5}, Lcom/sleepycat/je/Database;->close()V

    .line 1405
    :cond_1
    invoke-virtual {v3}, Lcom/sleepycat/je/Environment;->close()V

    .line 1397
    return-object v8

    .line 1386
    .end local v7    # "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    .end local v8    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    :cond_2
    :try_start_1
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Group entry not found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v3    # "env":Lcom/sleepycat/je/Environment;
    .end local v4    # "txn":Lcom/sleepycat/je/Transaction;
    .end local v5    # "db":Lcom/sleepycat/je/Database;
    .end local p0    # "envDir":Ljava/io/File;
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1399
    .end local v1    # "groupEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v6    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v3    # "env":Lcom/sleepycat/je/Environment;
    .restart local v4    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local v5    # "db":Lcom/sleepycat/je/Database;
    .restart local p0    # "envDir":Ljava/io/File;
    :catchall_0
    move-exception v1

    if-eqz v4, :cond_3

    .line 1400
    invoke-virtual {v4}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 1402
    :cond_3
    if-eqz v5, :cond_4

    .line 1403
    invoke-virtual {v5}, Lcom/sleepycat/je/Database;->close()V

    .line 1405
    :cond_4
    invoke-virtual {v3}, Lcom/sleepycat/je/Environment;->close()V

    throw v1
.end method

.method static jeVersionString(Lcom/sleepycat/je/JEVersion;)Ljava/lang/String;
    .locals 1
    .param p0, "jeVersion"    # Lcom/sleepycat/je/JEVersion;

    .line 1030
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 1032
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/JEVersion;->getNumericVersionString()Ljava/lang/String;

    move-result-object v0

    .line 1030
    :goto_0
    return-object v0
.end method

.method private static makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;
    .locals 3
    .param p0, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p1, "txn"    # Lcom/sleepycat/je/txn/Txn;
    .param p2, "cursorConfig"    # Lcom/sleepycat/je/CursorConfig;

    .line 333
    invoke-static {p0, p1, p2}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    .line 336
    .local v0, "cursor":Lcom/sleepycat/je/Cursor;
    invoke-static {v0}, Lcom/sleepycat/je/DbInternal;->getCursorImpl(Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/CursorImpl;->setAllowEviction(Z)V

    .line 337
    return-object v0
.end method

.method static parseJEVersion(Ljava/lang/String;)Lcom/sleepycat/je/JEVersion;
    .locals 1
    .param p0, "versionString"    # Ljava/lang/String;

    .line 1020
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sleepycat/je/JEVersion;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/JEVersion;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private refreshGroupAndNotifyGroupChange(Ljava/lang/String;Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;)V
    .locals 1
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "opType"    # Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    .line 591
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->refreshCachedGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 592
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMonitorEventManager()Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;

    move-result-object v0

    .line 593
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/rep/impl/node/MonitorEventManager;->notifyGroupChange(Ljava/lang/String;Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;)V

    .line 594
    return-void
.end method

.method private saveGroupObject(Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 5
    .param p1, "txn"    # Lcom/sleepycat/je/txn/Txn;
    .param p2, "repGroup"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .param p3, "groupDbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 958
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;

    .line 959
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getFormatVersion()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;-><init>(I)V

    .line 960
    .local v0, "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 961
    .local v1, "groupEntry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-virtual {v0, p2, v1}, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 963
    const/4 v2, 0x0

    .line 965
    .local v2, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    sget-object v3, Lcom/sleepycat/je/CursorConfig;->DEFAULT:Lcom/sleepycat/je/CursorConfig;

    invoke-static {p3, p1, v3}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 967
    sget-object v3, Lcom/sleepycat/je/rep/impl/RepGroupDB;->groupKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v2, v3, v1}, Lcom/sleepycat/je/Cursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3

    .line 968
    .local v3, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v4, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_1

    .line 973
    .end local v3    # "status":Lcom/sleepycat/je/OperationStatus;
    if-eqz v2, :cond_0

    .line 974
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V

    .line 977
    :cond_0
    return-void

    .line 969
    .restart local v3    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_1
    :try_start_1
    const-string v4, "Group entry save failed"

    .line 970
    invoke-static {v4}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    .end local v0    # "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    .end local v1    # "groupEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local p2    # "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local p3    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 973
    .end local v3    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v0    # "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    .restart local v1    # "groupEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "txn":Lcom/sleepycat/je/txn/Txn;
    .restart local p2    # "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .restart local p3    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 974
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method private saveNodeObject(Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/rep/impl/RepNodeImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V
    .locals 6
    .param p1, "txn"    # Lcom/sleepycat/je/txn/Txn;
    .param p2, "node"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .param p3, "groupDbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p4, "repGroup"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 989
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v0

    if-nez v0, :cond_3

    .line 991
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 992
    .local v0, "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sleepycat/bind/tuple/StringBinding;->stringToEntry(Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 994
    new-instance v1, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;

    .line 995
    invoke-virtual {p4}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getFormatVersion()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;-><init>(I)V

    .line 996
    .local v1, "nodeBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 997
    .local v2, "memberInfoEntry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-virtual {v1, p2, v2}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 999
    const/4 v3, 0x0

    .line 1001
    .local v3, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    sget-object v4, Lcom/sleepycat/je/CursorConfig;->DEFAULT:Lcom/sleepycat/je/CursorConfig;

    invoke-static {p3, p1, v4}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v4

    move-object v3, v4

    .line 1003
    invoke-virtual {v3, v0, v2}, Lcom/sleepycat/je/Cursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v4

    .line 1004
    .local v4, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v5, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v5, :cond_1

    .line 1009
    .end local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    if-eqz v3, :cond_0

    .line 1010
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1013
    :cond_0
    return-void

    .line 1005
    .restart local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_1
    :try_start_1
    const-string v5, "Group entry save failed"

    .line 1006
    invoke-static {v5}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v5

    .end local v0    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "nodeBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    .end local v2    # "memberInfoEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local p2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local p3    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p4    # "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1009
    .end local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v0    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "nodeBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    .restart local v2    # "memberInfoEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "txn":Lcom/sleepycat/je/txn/Txn;
    .restart local p2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .restart local p3    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p4    # "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    .line 1010
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V

    :cond_2
    throw v4

    .line 989
    .end local v0    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "nodeBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    .end local v2    # "memberInfoEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private twoPhaseMemberUpdate(Lcom/sleepycat/je/rep/impl/RepNodeImpl;Z)V
    .locals 1
    .param p1, "node"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .param p2, "quorumAck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 748
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/sleepycat/je/rep/impl/RepGroupDB$2;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupDB;Lcom/sleepycat/je/rep/impl/RepNodeImpl;Z)V

    .line 782
    .local v0, "twoPhaseUpdate":Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->execute()V

    .line 783
    return-void
.end method


# virtual methods
.method public addFirstNode()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    .line 418
    .local v0, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->GROUP_NAME:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "groupName":Ljava/lang/String;
    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_NAME:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "nodeName":Ljava/lang/String;
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->createGroupDb()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    .line 424
    .local v3, "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    new-instance v4, Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 425
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;-><init>(Ljava/lang/String;Lcom/sleepycat/je/JEVersion;)V

    .line 426
    .local v4, "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    new-instance v5, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;

    .line 427
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getFormatVersion()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;-><init>(I)V

    .line 428
    .local v5, "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    new-instance v6, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v6}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 429
    .local v6, "groupEntry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-virtual {v5, v4, v6}, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 432
    new-instance v7, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v7}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    .line 433
    .local v7, "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    sget-object v8, Lcom/sleepycat/je/rep/impl/RepGroupDB;->NO_ACK:Lcom/sleepycat/je/TransactionConfig;

    invoke-virtual {v8}, Lcom/sleepycat/je/TransactionConfig;->getDurability()Lcom/sleepycat/je/Durability;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sleepycat/je/TransactionConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/TransactionConfig;

    .line 434
    sget-object v8, Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;->NO_CONSISTENCY:Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;

    invoke-virtual {v7, v8}, Lcom/sleepycat/je/TransactionConfig;->setConsistencyPolicy(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)Lcom/sleepycat/je/TransactionConfig;

    .line 435
    const/4 v8, 0x0

    .line 436
    .local v8, "txn":Lcom/sleepycat/je/txn/Txn;
    const/4 v9, 0x0

    .line 438
    .local v9, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    new-instance v10, Lcom/sleepycat/je/rep/txn/MasterTxn;

    iget-object v11, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 440
    invoke-virtual {v11}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v12

    invoke-direct {v10, v11, v7, v12}, Lcom/sleepycat/je/rep/txn/MasterTxn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    move-object v8, v10

    .line 442
    sget-object v10, Lcom/sleepycat/je/CursorConfig;->DEFAULT:Lcom/sleepycat/je/CursorConfig;

    invoke-static {v3, v8, v10}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v10

    move-object v9, v10

    .line 443
    sget-object v10, Lcom/sleepycat/je/rep/impl/RepGroupDB;->groupKeyEntry:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v9, v10, v6}, Lcom/sleepycat/je/Cursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v10

    .line 444
    .local v10, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v11, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v10, v11, :cond_2

    .line 448
    invoke-virtual {v9}, Lcom/sleepycat/je/Cursor;->close()V

    .line 449
    const/4 v9, 0x0

    .line 450
    invoke-virtual {v8}, Lcom/sleepycat/je/txn/Txn;->commit()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    const/4 v8, 0x0

    .line 453
    .end local v10    # "status":Lcom/sleepycat/je/OperationStatus;
    if-eqz v9, :cond_0

    .line 454
    invoke-virtual {v9}, Lcom/sleepycat/je/Cursor;->close()V

    .line 457
    :cond_0
    if-eqz v8, :cond_1

    .line 458
    invoke-virtual {v8}, Lcom/sleepycat/je/txn/Txn;->abort()V

    .line 462
    :cond_1
    new-instance v10, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    iget-object v11, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 463
    invoke-virtual {v11}, Lcom/sleepycat/je/rep/impl/RepImpl;->getHostName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 464
    invoke-virtual {v12}, Lcom/sleepycat/je/rep/impl/RepImpl;->getPort()I

    move-result v12

    iget-object v13, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 465
    invoke-virtual {v13}, Lcom/sleepycat/je/rep/impl/RepImpl;->getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v13

    invoke-direct {v10, v2, v11, v12, v13}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/sleepycat/je/JEVersion;)V

    .line 462
    invoke-virtual {p0, v10}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->ensureMember(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V

    .line 466
    return-void

    .line 445
    .restart local v10    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_2
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t write first group entry "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 446
    invoke-static {v11}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v11

    .end local v0    # "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    .end local v1    # "groupName":Ljava/lang/String;
    .end local v2    # "nodeName":Ljava/lang/String;
    .end local v3    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v4    # "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local v5    # "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    .end local v6    # "groupEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v7    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    .end local v8    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local v9    # "cursor":Lcom/sleepycat/je/Cursor;
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    .end local v10    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v0    # "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    .restart local v1    # "groupName":Ljava/lang/String;
    .restart local v2    # "nodeName":Ljava/lang/String;
    .restart local v3    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v4    # "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .restart local v5    # "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    .restart local v6    # "groupEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v7    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    .restart local v8    # "txn":Lcom/sleepycat/je/txn/Txn;
    .restart local v9    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v10

    if-eqz v9, :cond_3

    .line 454
    invoke-virtual {v9}, Lcom/sleepycat/je/Cursor;->close()V

    .line 457
    :cond_3
    if-eqz v8, :cond_4

    .line 458
    invoke-virtual {v8}, Lcom/sleepycat/je/txn/Txn;->abort()V

    :cond_4
    throw v10
.end method

.method ensureMember(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V
    .locals 14
    .param p1, "ensureNode"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 493
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v0

    if-nez v0, :cond_9

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getGroupDb()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    .local v0, "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    nop

    .line 506
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 507
    .local v1, "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sleepycat/bind/tuple/StringBinding;->stringToEntry(Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 509
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 510
    .local v2, "value":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v3, 0x0

    .line 512
    .local v3, "mib":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    const/4 v4, 0x0

    .line 513
    .local v4, "txn":Lcom/sleepycat/je/txn/Txn;
    const/4 v5, 0x0

    .line 515
    .local v5, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_1
    new-instance v6, Lcom/sleepycat/je/rep/txn/ReadonlyTxn;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v8, Lcom/sleepycat/je/rep/impl/RepGroupDB;->NO_ACK:Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v6, v7, v8}, Lcom/sleepycat/je/rep/txn/ReadonlyTxn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)V

    move-object v4, v6

    .line 523
    sget-object v6, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    .line 524
    invoke-direct {p0, v4, v0, v6}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->fetchGroupObject(Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v6

    .line 525
    .local v6, "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    new-instance v7, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getFormatVersion()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;-><init>(I)V

    move-object v3, v7

    .line 527
    new-instance v7, Lcom/sleepycat/je/CursorConfig;

    invoke-direct {v7}, Lcom/sleepycat/je/CursorConfig;-><init>()V

    .line 528
    .local v7, "config":Lcom/sleepycat/je/CursorConfig;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sleepycat/je/CursorConfig;->setReadCommitted(Z)Lcom/sleepycat/je/CursorConfig;

    .line 529
    invoke-static {v0, v4, v7}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v8

    move-object v5, v8

    .line 531
    const/4 v8, 0x0

    .line 532
    invoke-virtual {v5, v1, v2, v8}, Lcom/sleepycat/je/Cursor;->getSearchKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v8

    .line 533
    .local v8, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v9, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v8, v9, :cond_4

    .line 535
    invoke-virtual {v3, v2}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 536
    .local v9, "miInDb":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v9, p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->equivalent(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 537
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isQuorumAck()Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_1

    .line 573
    if-eqz v5, :cond_0

    .line 574
    invoke-virtual {v5}, Lcom/sleepycat/je/Cursor;->close()V

    .line 577
    :cond_0
    nop

    .line 578
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/Txn;->abort()V

    .line 539
    return-void

    .line 541
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v10

    invoke-virtual {v9}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->update(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 563
    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->logger:Ljava/util/logging/Logger;

    iget-object v11, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Present but not ack\'d node: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 565
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNodeId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ack status: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 566
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isQuorumAck()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 563
    invoke-static {v10, v11, v12}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 545
    :cond_2
    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->logger:Ljava/util/logging/Logger;

    iget-object v11, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Incompatible node descriptions. Membership database definition: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 548
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Transient definition: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 550
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 545
    invoke-static {v10, v11, v12}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 551
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v10

    invoke-virtual {v9}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v11

    if-eq v10, v11, :cond_3

    .line 552
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Conflicting node types for node "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 554
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": expected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 555
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 556
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 552
    invoke-static {v10}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v10

    .end local v0    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v1    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "value":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "mib":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    .end local v4    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "ensureNode":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    throw v10

    .line 558
    .restart local v0    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v1    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "value":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "mib":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    .restart local v4    # "txn":Lcom/sleepycat/je/txn/Txn;
    .restart local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "ensureNode":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incompatible node descriptions for node: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 560
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", node ID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 561
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNodeId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 558
    invoke-static {v10}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v10

    .end local v0    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v1    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "value":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "mib":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    .end local v4    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "ensureNode":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    throw v10

    .line 568
    .end local v9    # "miInDb":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .restart local v0    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v1    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "value":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "mib":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    .restart local v4    # "txn":Lcom/sleepycat/je/txn/Txn;
    .restart local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "ensureNode":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_4
    :goto_0
    invoke-virtual {v5}, Lcom/sleepycat/je/Cursor;->close()V

    .line 569
    const/4 v5, 0x0

    .line 570
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/Txn;->commit()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 571
    const/4 v4, 0x0

    .line 573
    .end local v6    # "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local v7    # "config":Lcom/sleepycat/je/CursorConfig;
    .end local v8    # "status":Lcom/sleepycat/je/OperationStatus;
    if-eqz v5, :cond_5

    .line 574
    invoke-virtual {v5}, Lcom/sleepycat/je/Cursor;->close()V

    .line 577
    :cond_5
    if-eqz v4, :cond_6

    .line 578
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/Txn;->abort()V

    .line 582
    :cond_6
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->createMember(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V

    .line 585
    nop

    .line 586
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;->ADD:Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    invoke-direct {p0, v6, v7}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->refreshGroupAndNotifyGroupChange(Ljava/lang/String;Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;)V

    .line 587
    return-void

    .line 573
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_7

    .line 574
    invoke-virtual {v5}, Lcom/sleepycat/je/Cursor;->close()V

    .line 577
    :cond_7
    if-eqz v4, :cond_8

    .line 578
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/Txn;->abort()V

    :cond_8
    throw v6

    .line 501
    .end local v0    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v1    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "value":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "mib":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    .end local v4    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 494
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to call ensureMember on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 495
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ensureMember(Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;)V
    .locals 1
    .param p1, "membershipInfo"    # Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 487
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;-><init>(Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfo;)V

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->ensureMember(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V

    .line 488
    return-void
.end method

.method public getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 263
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->GROUP_NAME:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-static {v0, v1}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->getGroup(Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    return-object v0
.end method

.method public reinitFirstNode(Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 29
    .param p1, "lastOldVLSN"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 1430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    .line 1431
    .local v1, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v2, Lcom/sleepycat/je/rep/impl/RepParams;->GROUP_NAME:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v2

    .line 1432
    .local v2, "groupName":Ljava/lang/String;
    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_NAME:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v3

    .line 1433
    .local v3, "nodeName":Ljava/lang/String;
    sget-object v4, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_HOST_PORT:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v4

    .line 1434
    .local v4, "hostPortPair":Ljava/lang/String;
    invoke-static {v4}, Lcom/sleepycat/je/rep/utilint/HostPortPair;->getHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1435
    .local v5, "hostname":Ljava/lang/String;
    invoke-static {v4}, Lcom/sleepycat/je/rep/utilint/HostPortPair;->getPort(Ljava/lang/String;)I

    move-result v6

    .line 1436
    .local v6, "port":I
    sget-object v7, Lcom/sleepycat/je/rep/impl/RepParams;->RESET_REP_GROUP_RETAIN_UUID:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1437
    invoke-virtual {v1, v7}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v7

    .line 1439
    .local v7, "retainUUID":Z
    iget-object v8, v0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/RepImpl;->getGroupDb()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v8

    .line 1445
    .local v8, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    new-instance v9, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v9}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    .line 1446
    .local v9, "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    sget-object v10, Lcom/sleepycat/je/rep/impl/RepGroupDB;->NO_ACK:Lcom/sleepycat/je/TransactionConfig;

    invoke-virtual {v10}, Lcom/sleepycat/je/TransactionConfig;->getDurability()Lcom/sleepycat/je/Durability;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sleepycat/je/TransactionConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/TransactionConfig;

    .line 1447
    sget-object v10, Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;->NO_CONSISTENCY:Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;

    invoke-virtual {v9, v10}, Lcom/sleepycat/je/TransactionConfig;->setConsistencyPolicy(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)Lcom/sleepycat/je/TransactionConfig;

    .line 1449
    iget-object v10, v0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v10

    .line 1450
    .local v10, "nameIdPair":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->revertToNull()V

    .line 1453
    new-instance v11, Lcom/sleepycat/je/rep/txn/MasterTxn;

    iget-object v12, v0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-direct {v11, v12, v9, v10}, Lcom/sleepycat/je/rep/txn/MasterTxn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 1454
    .local v11, "txn":Lcom/sleepycat/je/txn/Txn;
    sget-object v12, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    .line 1455
    invoke-direct {v0, v11, v8, v12}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->fetchGroupObject(Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v12

    .line 1456
    .local v12, "prevRepGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    invoke-virtual {v11}, Lcom/sleepycat/je/txn/Txn;->commit()J

    .line 1458
    invoke-virtual {v12}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getNodeIdSequence()I

    move-result v13

    .line 1460
    .local v13, "nodeIdSequenceStart":I
    new-instance v14, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v14}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1461
    .local v14, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v15, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v15}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1467
    .local v15, "value":Lcom/sleepycat/je/DatabaseEntry;
    move-object/from16 v16, v1

    .end local v1    # "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    .local v16, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    add-int/lit8 v1, v13, 0x1

    .line 1468
    .local v1, "firstNodeId":I
    invoke-virtual {v10, v1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->setId(I)V

    .line 1470
    move-object/from16 v17, v4

    .end local v4    # "hostPortPair":Ljava/lang/String;
    .local v17, "hostPortPair":Ljava/lang/String;
    new-instance v4, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-object/from16 v18, v11

    .end local v11    # "txn":Lcom/sleepycat/je/txn/Txn;
    .local v18, "txn":Lcom/sleepycat/je/txn/Txn;
    iget-object v11, v0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1471
    invoke-virtual {v11}, Lcom/sleepycat/je/rep/impl/RepImpl;->getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v11

    invoke-direct {v4, v3, v5, v6, v11}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/sleepycat/je/JEVersion;)V

    .line 1472
    .local v4, "firstNode":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    new-instance v11, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    .line 1473
    move-object/from16 v19, v5

    move/from16 v20, v6

    .end local v5    # "hostname":Ljava/lang/String;
    .end local v6    # "port":I
    .local v19, "hostname":Ljava/lang/String;
    .local v20, "port":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v21, v3

    move-object/from16 v3, p1

    .end local v3    # "nodeName":Ljava/lang/String;
    .local v21, "nodeName":Ljava/lang/String;
    invoke-direct {v11, v3, v5, v6}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;-><init>(Lcom/sleepycat/je/utilint/VLSN;J)V

    move-object v5, v11

    .line 1474
    .local v5, "barrierState":Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->setBarrierState(Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;)Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    .line 1476
    new-instance v6, Lcom/sleepycat/je/rep/txn/MasterTxn;

    iget-object v11, v0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-direct {v6, v11, v9, v10}, Lcom/sleepycat/je/rep/txn/MasterTxn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 1478
    .end local v18    # "txn":Lcom/sleepycat/je/txn/Txn;
    .local v6, "txn":Lcom/sleepycat/je/txn/Txn;
    new-instance v11, Lcom/sleepycat/je/CursorConfig;

    invoke-direct {v11}, Lcom/sleepycat/je/CursorConfig;-><init>()V

    .line 1479
    .local v11, "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/sleepycat/je/CursorConfig;->setReadCommitted(Z)Lcom/sleepycat/je/CursorConfig;

    .line 1480
    invoke-static {v8, v6, v11}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v3

    .line 1482
    .local v3, "mcursor":Lcom/sleepycat/je/Cursor;
    :goto_0
    move-object/from16 v18, v5

    .end local v5    # "barrierState":Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    .local v18, "barrierState":Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    sget-object v5, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v3, v14, v15, v5}, Lcom/sleepycat/je/Cursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v5

    move-object/from16 v22, v8

    .end local v8    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v22, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    sget-object v8, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v5, v8, :cond_3

    .line 1484
    invoke-static {v14}, Lcom/sleepycat/bind/tuple/StringBinding;->entryToString(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/String;

    move-result-object v5

    .line 1486
    .local v5, "key":Ljava/lang/String;
    const-string v8, "$$GROUP_KEY$$"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1488
    if-eqz v7, :cond_0

    .line 1489
    new-instance v8, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;

    invoke-direct {v8}, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;-><init>()V

    invoke-virtual {v8, v15}, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 1490
    .local v8, "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->incrementChangeVersion()I

    move/from16 v23, v7

    goto :goto_1

    .line 1492
    .end local v8    # "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    :cond_0
    new-instance v8, Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move/from16 v23, v7

    .end local v7    # "retainUUID":Z
    .local v23, "retainUUID":Z
    iget-object v7, v0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1493
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/RepImpl;->getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v7

    invoke-direct {v8, v2, v7}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;-><init>(Ljava/lang/String;Lcom/sleepycat/je/JEVersion;)V

    .line 1495
    .restart local v8    # "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    :goto_1
    new-instance v7, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;

    .line 1496
    move-object/from16 v24, v2

    .end local v2    # "groupName":Ljava/lang/String;
    .local v24, "groupName":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getFormatVersion()I

    move-result v2

    invoke-direct {v7, v2}, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;-><init>(I)V

    move-object v2, v7

    .line 1497
    .local v2, "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    invoke-virtual {v8, v13}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->setNodeIdSequence(I)V

    .line 1498
    new-instance v7, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v7}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1499
    .local v7, "groupEntry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-virtual {v2, v8, v7}, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 1500
    move-object/from16 v25, v2

    .end local v2    # "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    .local v25, "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    invoke-virtual {v3, v7}, Lcom/sleepycat/je/Cursor;->putCurrent(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    .line 1501
    .local v2, "status":Lcom/sleepycat/je/OperationStatus;
    move-object/from16 v26, v7

    .end local v7    # "groupEntry":Lcom/sleepycat/je/DatabaseEntry;
    .local v26, "groupEntry":Lcom/sleepycat/je/DatabaseEntry;
    sget-object v7, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    invoke-virtual {v7, v2}, Lcom/sleepycat/je/OperationStatus;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1505
    .end local v2    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v8    # "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local v25    # "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    .end local v26    # "groupEntry":Lcom/sleepycat/je/DatabaseEntry;
    move-object/from16 v28, v9

    goto :goto_2

    .line 1502
    .restart local v2    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v8    # "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .restart local v25    # "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    .restart local v26    # "groupEntry":Lcom/sleepycat/je/DatabaseEntry;
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object/from16 v27, v8

    .end local v8    # "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .local v27, "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v9

    .end local v9    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    .local v28, "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    const-string v9, "Unexpected state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1506
    .end local v23    # "retainUUID":Z
    .end local v24    # "groupName":Ljava/lang/String;
    .end local v25    # "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    .end local v26    # "groupEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v27    # "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local v28    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    .local v2, "groupName":Ljava/lang/String;
    .local v7, "retainUUID":Z
    .restart local v9    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    :cond_2
    move-object/from16 v24, v2

    move/from16 v23, v7

    move-object/from16 v28, v9

    .end local v2    # "groupName":Ljava/lang/String;
    .end local v7    # "retainUUID":Z
    .end local v9    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    .restart local v23    # "retainUUID":Z
    .restart local v24    # "groupName":Ljava/lang/String;
    .restart local v28    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    iget-object v2, v0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->logger:Ljava/util/logging/Logger;

    iget-object v7, v0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing node: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1507
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->delete()Lcom/sleepycat/je/OperationStatus;

    .line 1509
    .end local v5    # "key":Ljava/lang/String;
    :goto_2
    move-object/from16 v5, v18

    move-object/from16 v8, v22

    move/from16 v7, v23

    move-object/from16 v2, v24

    move-object/from16 v9, v28

    goto/16 :goto_0

    .line 1510
    .end local v23    # "retainUUID":Z
    .end local v24    # "groupName":Ljava/lang/String;
    .end local v28    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    .restart local v2    # "groupName":Ljava/lang/String;
    .restart local v7    # "retainUUID":Z
    .restart local v9    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    :cond_3
    move-object/from16 v24, v2

    move/from16 v23, v7

    move-object/from16 v28, v9

    .end local v2    # "groupName":Ljava/lang/String;
    .end local v7    # "retainUUID":Z
    .end local v9    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    .restart local v23    # "retainUUID":Z
    .restart local v24    # "groupName":Ljava/lang/String;
    .restart local v28    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1511
    invoke-virtual {v6}, Lcom/sleepycat/je/txn/Txn;->commit()J

    .line 1514
    invoke-virtual {v0, v4}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->ensureMember(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V

    .line 1515
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNodeId()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1520
    return-void

    .line 1516
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected nodeid:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " but found:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1518
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNodeId()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeMember(Lcom/sleepycat/je/rep/impl/RepNodeImpl;Z)V
    .locals 7
    .param p1, "removeNode"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .param p2, "delete"    # Z

    .line 604
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const-string v3, "Deleting node: "

    goto :goto_0

    :cond_0
    const-string v3, "Removing node: "

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 606
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 604
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 608
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/rep/impl/RepGroupDB$1;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupDB;Lcom/sleepycat/je/rep/impl/RepNodeImpl;ZZLcom/sleepycat/je/rep/impl/RepNodeImpl;)V

    .line 652
    .local v0, "twoPhaseUpdate":Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;->execute()V

    .line 655
    nop

    .line 656
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;->REMOVE:Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;

    invoke-direct {p0, v1, v2}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->refreshGroupAndNotifyGroupChange(Ljava/lang/String;Lcom/sleepycat/je/rep/monitor/GroupChangeEvent$GroupChangeType;)V

    .line 658
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully deleted node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 659
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 658
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 660
    return-void

    .line 609
    .end local v0    # "twoPhaseUpdate":Lcom/sleepycat/je/rep/impl/RepGroupDB$TwoPhaseUpdate;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to call removeMember on a node with type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 611
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinJEVersion(Lcom/sleepycat/je/JEVersion;)V
    .locals 7
    .param p1, "newMinJEVersion"    # Lcom/sleepycat/je/JEVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;
        }
    .end annotation

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getGroupDb()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 296
    .local v0, "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    nop

    .line 297
    new-instance v1, Lcom/sleepycat/je/rep/txn/MasterTxn;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v3, Lcom/sleepycat/je/rep/impl/RepGroupDB;->QUORUM_ACK:Lcom/sleepycat/je/TransactionConfig;

    .line 298
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sleepycat/je/rep/txn/MasterTxn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 300
    .local v1, "txn":Lcom/sleepycat/je/rep/txn/MasterTxn;
    :try_start_1
    sget-object v2, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    .line 301
    invoke-direct {p0, v1, v0, v2}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->fetchGroupObject(Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v2

    .line 302
    .local v2, "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->fetchGroup(Ljava/lang/String;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v3

    move-object v2, v3

    .line 303
    invoke-virtual {v2, p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->setMinJEVersion(Lcom/sleepycat/je/JEVersion;)V

    .line 304
    invoke-direct {p0, v1, v2, v0}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->saveGroupObject(Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/rep/impl/RepGroupImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 305
    sget-object v3, Lcom/sleepycat/je/rep/impl/RepGroupDB;->QUORUM_ACK_DURABILITY:Lcom/sleepycat/je/Durability;

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/rep/txn/MasterTxn;->commit(Lcom/sleepycat/je/Durability;)J

    .line 306
    const/4 v1, 0x0

    .line 307
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updated minimum JE group version to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sleepycat/je/rep/InsufficientAcksException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    .end local v2    # "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    if-eqz v1, :cond_0

    .line 321
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->abort()V

    goto :goto_1

    .line 320
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 309
    :catch_0
    move-exception v2

    .line 316
    .local v2, "e":Lcom/sleepycat/je/rep/InsufficientAcksException;
    :try_start_2
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proceeding without enough acks, did not update minimum JE group version to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    .end local v2    # "e":Lcom/sleepycat/je/rep/InsufficientAcksException;
    if-eqz v1, :cond_0

    .line 321
    goto :goto_0

    .line 324
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->refreshCachedGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 325
    return-void

    .line 320
    :goto_2
    if-eqz v1, :cond_1

    .line 321
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/txn/MasterTxn;->abort()V

    :cond_1
    throw v2

    .line 293
    .end local v0    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v1    # "txn":Lcom/sleepycat/je/rep/txn/MasterTxn;
    :catch_1
    move-exception v0

    .line 295
    .local v0, "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public updateLocalCBVLSN(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/NodeType;)Z
    .locals 21
    .param p1, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p2, "newCBVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "nodeType"    # Lcom/sleepycat/je/rep/NodeType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 810
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 812
    .local v4, "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    const/4 v5, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->probeGroupDb()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 816
    nop

    .line 818
    if-nez v4, :cond_0

    .line 820
    return v5

    .line 823
    :cond_0
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v5, v0

    .line 824
    .local v5, "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/sleepycat/bind/tuple/StringBinding;->stringToEntry(Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 825
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v6, v0

    .line 826
    .local v6, "value":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    .line 827
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v0, v3, v7, v8}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;-><init>(Lcom/sleepycat/je/utilint/VLSN;J)V

    move-object v7, v0

    .line 828
    .local v7, "barrierState":Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    const/4 v8, 0x0

    .line 829
    .local v8, "txn":Lcom/sleepycat/je/txn/Txn;
    const/4 v9, 0x0

    .line 830
    .local v9, "cursor":Lcom/sleepycat/je/Cursor;
    const/4 v10, 0x0

    .line 838
    .local v10, "ok":Z
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/rep/NodeType;->isSecondary()Z

    move-result v0

    const/4 v11, 0x1

    if-nez v0, :cond_b

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/rep/NodeType;->isArbiter()Z

    move-result v0

    if-nez v0, :cond_b

    .line 839
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/je/rep/NodeType;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v17, v4

    move-object/from16 v20, v5

    goto/16 :goto_2

    .line 844
    :cond_1
    new-instance v0, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    .line 846
    .local v0, "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    sget-object v12, Lcom/sleepycat/je/rep/impl/RepGroupDB;->NO_ACK_NO_SYNC_DURABILITY:Lcom/sleepycat/je/Durability;

    invoke-virtual {v0, v12}, Lcom/sleepycat/je/TransactionConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/TransactionConfig;

    .line 852
    invoke-virtual {v0, v11}, Lcom/sleepycat/je/TransactionConfig;->setNoWait(Z)Lcom/sleepycat/je/TransactionConfig;

    .line 853
    new-instance v13, Lcom/sleepycat/je/rep/txn/MasterTxn;

    iget-object v14, v1, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 855
    invoke-virtual {v14}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v15

    invoke-direct {v13, v14, v0, v15}, Lcom/sleepycat/je/rep/txn/MasterTxn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    move-object v8, v13

    .line 858
    sget-object v13, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    .line 859
    invoke-direct {v1, v8, v4, v13}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->fetchGroupObject(Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v13

    .line 860
    .local v13, "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    sget-object v14, Lcom/sleepycat/je/CursorConfig;->DEFAULT:Lcom/sleepycat/je/CursorConfig;

    invoke-static {v4, v8, v14}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Txn;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v14

    move-object v9, v14

    .line 862
    sget-object v14, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    .line 863
    invoke-virtual {v9, v5, v6, v14}, Lcom/sleepycat/je/Cursor;->getSearchKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v14

    .line 864
    .local v14, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v15, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v11, "Node ID: "

    if-ne v14, v15, :cond_a

    .line 870
    :try_start_2
    new-instance v15, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;

    .line 871
    move-object/from16 v16, v0

    .end local v0    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    .local v16, "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    invoke-virtual {v13}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getFormatVersion()I

    move-result v0

    invoke-direct {v15, v0}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;-><init>(I)V

    move-object v0, v15

    .line 872
    .local v0, "nodeBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    invoke-virtual {v0, v6}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 873
    .local v15, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v15}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getBarrierState()Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->getLastCBVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v18, v17

    .line 874
    .local v18, "lastCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    move-object/from16 v17, v4

    move-object/from16 v4, v18

    .end local v18    # "lastCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .local v4, "lastCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .local v17, "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_start_3
    invoke-virtual {v4, v3}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v18, :cond_5

    .line 875
    const/4 v10, 0x1

    .line 876
    nop

    .line 893
    if-eqz v9, :cond_2

    .line 894
    invoke-virtual {v9}, Lcom/sleepycat/je/Cursor;->close()V

    .line 897
    :cond_2
    nop

    .line 898
    if-eqz v10, :cond_3

    .line 899
    invoke-virtual {v8, v12}, Lcom/sleepycat/je/txn/Txn;->commit(Lcom/sleepycat/je/Durability;)J

    goto :goto_0

    .line 901
    :cond_3
    invoke-virtual {v8}, Lcom/sleepycat/je/txn/Txn;->abort()V

    .line 903
    :goto_0
    const/4 v8, 0x0

    .line 905
    if-eqz v10, :cond_4

    .line 907
    iget-object v11, v1, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v11}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v11

    .line 908
    .local v11, "repNode":Lcom/sleepycat/je/rep/impl/node/RepNode;
    if-eqz v11, :cond_4

    .line 909
    invoke-virtual {v11, v2, v7}, Lcom/sleepycat/je/rep/impl/node/RepNode;->updateGroupInfo(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;)V

    .line 876
    .end local v11    # "repNode":Lcom/sleepycat/je/rep/impl/node/RepNode;
    :cond_4
    const/4 v11, 0x1

    return v11

    .line 879
    :cond_5
    :try_start_4
    invoke-virtual {v15, v7}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->setBarrierState(Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;)Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    .line 880
    invoke-virtual {v0, v15, v6}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 881
    invoke-virtual {v9, v6}, Lcom/sleepycat/je/Cursor;->putCurrent(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v18

    move-object/from16 v14, v18

    .line 882
    move-object/from16 v18, v0

    .end local v0    # "nodeBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    .local v18, "nodeBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    sget-object v0, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v14, v0, :cond_9

    .line 888
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/RepGroupDB;->logger:Ljava/util/logging/Logger;

    iget-object v11, v1, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    move-object/from16 v19, v4

    .end local v4    # "lastCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .local v19, "lastCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v20, v5

    .end local v5    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v20, "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    :try_start_5
    const-string v5, "Local CBVLSN updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for node "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v11, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 891
    const/4 v0, 0x1

    .line 893
    .end local v10    # "ok":Z
    .end local v13    # "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local v14    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v15    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local v16    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    .end local v18    # "nodeBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    .end local v19    # "lastCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .local v0, "ok":Z
    if-eqz v9, :cond_6

    .line 894
    invoke-virtual {v9}, Lcom/sleepycat/je/Cursor;->close()V

    .line 897
    :cond_6
    nop

    .line 898
    if-eqz v0, :cond_7

    .line 899
    invoke-virtual {v8, v12}, Lcom/sleepycat/je/txn/Txn;->commit(Lcom/sleepycat/je/Durability;)J

    goto :goto_1

    .line 901
    :cond_7
    invoke-virtual {v8}, Lcom/sleepycat/je/txn/Txn;->abort()V

    .line 903
    :goto_1
    const/4 v4, 0x0

    .line 905
    .end local v8    # "txn":Lcom/sleepycat/je/txn/Txn;
    .local v4, "txn":Lcom/sleepycat/je/txn/Txn;
    if-eqz v0, :cond_8

    .line 907
    iget-object v5, v1, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v5

    .line 908
    .local v5, "repNode":Lcom/sleepycat/je/rep/impl/node/RepNode;
    if-eqz v5, :cond_8

    .line 909
    invoke-virtual {v5, v2, v7}, Lcom/sleepycat/je/rep/impl/node/RepNode;->updateGroupInfo(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;)V

    .line 914
    .end local v5    # "repNode":Lcom/sleepycat/je/rep/impl/node/RepNode;
    :cond_8
    const/4 v5, 0x1

    return v5

    .line 883
    .end local v0    # "ok":Z
    .end local v20    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v4, "lastCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .local v5, "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v8    # "txn":Lcom/sleepycat/je/txn/Txn;
    .restart local v10    # "ok":Z
    .restart local v13    # "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .restart local v14    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v15    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .restart local v16    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    .restart local v18    # "nodeBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    :cond_9
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .end local v4    # "lastCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v5    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v19    # "lastCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v20    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " stored localCBVLSN could not be updated. Status: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 884
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local v6    # "value":Lcom/sleepycat/je/DatabaseEntry;
    .end local v7    # "barrierState":Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    .end local v8    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local v9    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v10    # "ok":Z
    .end local v17    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v20    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p1    # "nameIdPair":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .end local p2    # "newCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local p3    # "nodeType":Lcom/sleepycat/je/rep/NodeType;
    throw v0

    .line 893
    .end local v13    # "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local v14    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v15    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local v16    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    .end local v18    # "nodeBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    .end local v19    # "lastCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v5    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v6    # "value":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v7    # "barrierState":Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    .restart local v8    # "txn":Lcom/sleepycat/je/txn/Txn;
    .restart local v9    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v10    # "ok":Z
    .restart local v17    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p1    # "nameIdPair":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .restart local p2    # "newCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local p3    # "nodeType":Lcom/sleepycat/je/rep/NodeType;
    :catchall_0
    move-exception v0

    move-object/from16 v20, v5

    .end local v5    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v20    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    goto :goto_4

    .line 865
    .end local v17    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v20    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v0, "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    .local v4, "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v5    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v13    # "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .restart local v14    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_a
    move-object/from16 v16, v0

    move-object/from16 v17, v4

    move-object/from16 v20, v5

    .end local v0    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    .end local v4    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v5    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v16    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    .restart local v17    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v20    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " not present in group db"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 866
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local v6    # "value":Lcom/sleepycat/je/DatabaseEntry;
    .end local v7    # "barrierState":Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    .end local v8    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local v9    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v10    # "ok":Z
    .end local v17    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v20    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .end local p1    # "nameIdPair":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .end local p2    # "newCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local p3    # "nodeType":Lcom/sleepycat/je/rep/NodeType;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 893
    .end local v13    # "repGroup":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .end local v14    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v16    # "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    .restart local v6    # "value":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v7    # "barrierState":Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    .restart local v8    # "txn":Lcom/sleepycat/je/txn/Txn;
    .restart local v9    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v10    # "ok":Z
    .restart local v17    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v20    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p1    # "nameIdPair":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .restart local p2    # "newCBVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local p3    # "nodeType":Lcom/sleepycat/je/rep/NodeType;
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 838
    .end local v17    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v20    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v4    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v5    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    :cond_b
    move-object/from16 v17, v4

    move-object/from16 v20, v5

    .line 840
    .end local v4    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v5    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v17    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v20    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    :goto_2
    const/4 v0, 0x1

    .line 841
    .end local v10    # "ok":Z
    .local v0, "ok":Z
    nop

    .line 893
    if-eqz v9, :cond_c

    .line 894
    invoke-virtual {v9}, Lcom/sleepycat/je/Cursor;->close()V

    .line 897
    :cond_c
    if-eqz v8, :cond_e

    .line 898
    if-eqz v0, :cond_d

    .line 899
    sget-object v4, Lcom/sleepycat/je/rep/impl/RepGroupDB;->NO_ACK_NO_SYNC_DURABILITY:Lcom/sleepycat/je/Durability;

    invoke-virtual {v8, v4}, Lcom/sleepycat/je/txn/Txn;->commit(Lcom/sleepycat/je/Durability;)J

    goto :goto_3

    .line 901
    :cond_d
    invoke-virtual {v8}, Lcom/sleepycat/je/txn/Txn;->abort()V

    .line 903
    :goto_3
    const/4 v8, 0x0

    .line 905
    :cond_e
    if-eqz v0, :cond_f

    .line 907
    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v4

    .line 908
    .local v4, "repNode":Lcom/sleepycat/je/rep/impl/node/RepNode;
    if-eqz v4, :cond_f

    .line 909
    invoke-virtual {v4, v2, v7}, Lcom/sleepycat/je/rep/impl/node/RepNode;->updateGroupInfo(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;)V

    .line 841
    .end local v4    # "repNode":Lcom/sleepycat/je/rep/impl/node/RepNode;
    :cond_f
    const/4 v4, 0x1

    return v4

    .line 893
    .end local v0    # "ok":Z
    .end local v17    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v20    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v4, "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v5    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v10    # "ok":Z
    :catchall_2
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v20, v5

    .end local v4    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v5    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v17    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v20    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    :goto_4
    if-eqz v9, :cond_10

    .line 894
    invoke-virtual {v9}, Lcom/sleepycat/je/Cursor;->close()V

    .line 897
    :cond_10
    if-eqz v8, :cond_12

    .line 898
    if-eqz v10, :cond_11

    .line 899
    sget-object v4, Lcom/sleepycat/je/rep/impl/RepGroupDB;->NO_ACK_NO_SYNC_DURABILITY:Lcom/sleepycat/je/Durability;

    invoke-virtual {v8, v4}, Lcom/sleepycat/je/txn/Txn;->commit(Lcom/sleepycat/je/Durability;)J

    goto :goto_5

    .line 901
    :cond_11
    invoke-virtual {v8}, Lcom/sleepycat/je/txn/Txn;->abort()V

    .line 903
    :goto_5
    const/4 v8, 0x0

    .line 905
    :cond_12
    if-eqz v10, :cond_13

    .line 907
    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v4

    .line 908
    .local v4, "repNode":Lcom/sleepycat/je/rep/impl/node/RepNode;
    if-eqz v4, :cond_13

    .line 909
    invoke-virtual {v4, v2, v7}, Lcom/sleepycat/je/rep/impl/node/RepNode;->updateGroupInfo(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;)V

    .line 911
    .end local v4    # "repNode":Lcom/sleepycat/je/rep/impl/node/RepNode;
    :cond_13
    throw v0

    .line 813
    .end local v6    # "value":Lcom/sleepycat/je/DatabaseEntry;
    .end local v7    # "barrierState":Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    .end local v8    # "txn":Lcom/sleepycat/je/txn/Txn;
    .end local v9    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v10    # "ok":Z
    .end local v17    # "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v20    # "nodeNameKey":Lcom/sleepycat/je/DatabaseEntry;
    .local v4, "groupDbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catch_0
    move-exception v0

    .line 815
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    return v5
.end method

.method public updateMember(Lcom/sleepycat/je/rep/impl/RepNodeImpl;Z)V
    .locals 5
    .param p1, "node"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .param p2, "quorumAck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 693
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v0

    const-string v1, ": "

    if-nez v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 701
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->twoPhaseMemberUpdate(Lcom/sleepycat/je/rep/impl/RepNodeImpl;Z)V

    .line 713
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->refreshCachedGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 715
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupDB;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully updated node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 716
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Hostport = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 717
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 718
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getPort()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 715
    invoke-static {v0, v2, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 719
    return-void

    .line 694
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call updateMember on a node of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 696
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
