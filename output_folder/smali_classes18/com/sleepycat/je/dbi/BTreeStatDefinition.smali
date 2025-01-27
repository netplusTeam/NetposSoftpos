.class public Lcom/sleepycat/je/dbi/BTreeStatDefinition;
.super Ljava/lang/Object;
.source "BTreeStatDefinition.java"


# static fields
.field public static final BT_COUNT_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BT_COUNT_BINS_BYLEVEL:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BT_COUNT_BIN_ENTRIES_HISTOGRAM:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BT_COUNT_DELETED_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BT_COUNT_GROUP_DESC:Ljava/lang/String; = "Btree node counts."

.field public static final BT_COUNT_GROUP_NAME:Ljava/lang/String; = "BTreeCount"

.field public static final BT_COUNT_INS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BT_COUNT_INS_BYLEVEL:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BT_COUNT_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BT_COUNT_MAINTREE_MAXDEPTH:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BT_OP_BIN_DELTA_DELETES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BT_OP_BIN_DELTA_DELETES_DESC:Ljava/lang/String; = "Number of deletions performed in BIN-deltas"

.field public static final BT_OP_BIN_DELTA_DELETES_NAME:Ljava/lang/String; = "nBinDeltaDelete"

.field public static final BT_OP_BIN_DELTA_GETS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BT_OP_BIN_DELTA_GETS_DESC:Ljava/lang/String; = "Number of gets performed in BIN-deltas"

.field public static final BT_OP_BIN_DELTA_GETS_NAME:Ljava/lang/String; = "nBinDeltaGet"

.field public static final BT_OP_BIN_DELTA_INSERTS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BT_OP_BIN_DELTA_INSERTS_DESC:Ljava/lang/String; = "Number of insertions performed in BIN-deltas"

.field public static final BT_OP_BIN_DELTA_INSERTS_NAME:Ljava/lang/String; = "nBinDeltaInsert"

.field public static final BT_OP_BIN_DELTA_UPDATES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BT_OP_BIN_DELTA_UPDATES_DESC:Ljava/lang/String; = "Number of updates performed in BIN-deltas"

.field public static final BT_OP_BIN_DELTA_UPDATES_NAME:Ljava/lang/String; = "nBinDeltaUpdate"

.field public static final BT_OP_GROUP_DESC:Ljava/lang/String; = "Btree internal operation statistics."

.field public static final BT_OP_GROUP_NAME:Ljava/lang/String; = "BtreeOp"

.field public static final BT_OP_RELATCHES_REQUIRED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BT_OP_RELATCHES_REQUIRED_DESC:Ljava/lang/String; = "Number of btree latch upgrades required while operating on this Environment. A measurement of contention."

.field public static final BT_OP_RELATCHES_REQUIRED_NAME:Ljava/lang/String; = "relatchesRequired"

.field public static final BT_OP_ROOT_SPLITS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BT_OP_ROOT_SPLITS_DESC:Ljava/lang/String; = "Number of times a database btree root was split."

.field public static final BT_OP_ROOT_SPLITS_NAME:Ljava/lang/String; = "nRootSplits"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "bins"

    const-string v3, "Number of bottom internal nodes in the database btree."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 37
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "deletedLNs"

    const-string v3, "Number of deleted data records in the database btree that are pending removal by the compressor."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_DELETED_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 44
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "ins"

    const-string v3, "Number of internal nodes in database btree. BINs are not included."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_INS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 50
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "lns"

    const-string v3, "Number of leaf nodes in the database btree."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 55
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "mainTreeMaxDepth"

    const-string v3, "Number of levels in the database btree."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_MAINTREE_MAXDEPTH:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 60
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "insByLevel"

    const-string v3, "Number of Internal Nodes indexed by level."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_INS_BYLEVEL:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 65
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "binsByLevel"

    const-string v3, "Number of Bottom Internal Nodes indexed by level."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_BINS_BYLEVEL:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 70
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "binsByFillPercent"

    const-string v3, "Number of Bottom Internal Nodes indexed by 0-9 indicating fill percentage: [0-9% full, 10-19% full, ..., 90-100% full]."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_COUNT_BIN_ENTRIES_HISTOGRAM:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 89
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "relatchesRequired"

    const-string v2, "Number of btree latch upgrades required while operating on this Environment. A measurement of contention."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_RELATCHES_REQUIRED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 98
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nRootSplits"

    const-string v2, "Number of times a database btree root was split."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_ROOT_SPLITS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 107
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nBinDeltaGet"

    const-string v2, "Number of gets performed in BIN-deltas"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_BIN_DELTA_GETS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 116
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nBinDeltaInsert"

    const-string v2, "Number of insertions performed in BIN-deltas"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_BIN_DELTA_INSERTS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 125
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nBinDeltaUpdate"

    const-string v2, "Number of updates performed in BIN-deltas"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_BIN_DELTA_UPDATES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 134
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nBinDeltaDelete"

    const-string v2, "Number of deletions performed in BIN-deltas"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/BTreeStatDefinition;->BT_OP_BIN_DELTA_DELETES:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
