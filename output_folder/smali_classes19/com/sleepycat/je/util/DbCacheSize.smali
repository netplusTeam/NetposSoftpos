.class public Lcom/sleepycat/je/util/DbCacheSize;
.super Ljava/lang/Object;
.source "DbCacheSize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/util/DbCacheSize$BINVisitor;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COLUMN_SEPARATOR:Ljava/lang/String; = "  "

.field private static final DEFAULT_DENSITY:I = 0x46

.field private static final INT_FORMAT:Ljava/text/NumberFormat;

.field private static final MAIN_HEADER:Ljava/lang/String; = "   Number of Bytes  Description\n   ---------------  -----------"

.field private static final MIN_COLUMN_WIDTH:I = 0x12

.field private static final ORDERED_DENSITY:I = 0x64


# instance fields
.field private assumeEvictLN:Z

.field private binAvg:I

.field private binMaxEntries:I

.field private binNoLNsOrVLSNs:J

.field private binNoLNsWithVLSNs:J

.field private binOffHeapLNIds:J

.field private binOffHeapLNs:J

.field private binOffHeapNoLNIds:J

.field private binOffHeapWithLNIds:J

.field private binWithLNsAndVLSNs:J

.field private btreeInfo:Z

.field private btreeLevels:I

.field private dataSize:I

.field private doMeasure:Z

.field private duplicates:Z

.field private final envConfig:Lcom/sleepycat/je/EnvironmentConfig;

.field private envOverhead:J

.field private keyPrefix:I

.field private keySize:I

.field private mainCacheSize:J

.field private mainDataSize:J

.field private mainMinDataSize:J

.field private mainNoLNsOrVLSNs:J

.field private mainNoLNsWithVLSNs:J

.field private mainWithLNsAndVLSNs:J

.field private measuredMainNoLNsOrVLSNs:J

.field private measuredMainNoLNsWithVLSNs:J

.field private measuredMainWithLNsAndVLSNs:J

.field private measuredOffHeapNoLNsOrVLSNs:J

.field private measuredOffHeapWithLNsAndVLSNs:J

.field private nBinNodes:J

.field private nLevel2Nodes:J

.field private nMainBINsNoLNsOrVLSNs:J

.field private nMainBINsWithLNsAndVLSNs:J

.field private nMainLNsWithLNsAndVLSNs:J

.field private nUinNodes:J

.field private nodeAvg:I

.field private nodeMaxEntries:I

.field private offHeapCache:Z

.field private offHeapNoLNsOrVLSNs:J

.field private offHeapWithLNsAndVLSNs:J

.field private orderedInsertion:Z

.field private outputProperties:Z

.field private preloadMainNoLNsOrVLSNs:J

.field private preloadMainNoLNsWithVLSNs:J

.field private preloadMainWithLNsAndVLSNs:J

.field private records:J

.field private final repParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private replicated:Z

.field private tempDir:Ljava/io/File;

.field private uinNoTargets:J

.field private uinOffHeapBINIds:J

.field private uinWithTargets:J

.field private useTTL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 492
    nop

    .line 512
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/util/DbCacheSize;->INT_FORMAT:Ljava/text/NumberFormat;

    .line 511
    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    new-instance v0, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->envConfig:Lcom/sleepycat/je/EnvironmentConfig;

    .line 529
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->repParams:Ljava/util/Map;

    .line 530
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->records:J

    .line 531
    const/4 v2, 0x0

    iput v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->keySize:I

    .line 532
    const/4 v3, -0x1

    iput v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->dataSize:I

    .line 533
    iput-boolean v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    .line 534
    iput-boolean v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->assumeEvictLN:Z

    .line 535
    iput-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainCacheSize:J

    .line 536
    iput-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainDataSize:J

    .line 537
    const/16 v0, 0x80

    iput v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->nodeMaxEntries:I

    .line 538
    iput v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->binMaxEntries:I

    .line 539
    iput v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->keyPrefix:I

    .line 540
    iput-boolean v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->orderedInsertion:Z

    .line 541
    iput-boolean v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->duplicates:Z

    .line 542
    iput-boolean v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->replicated:Z

    .line 543
    iput-boolean v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->useTTL:Z

    .line 544
    iput-boolean v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->outputProperties:Z

    .line 545
    iput-boolean v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->doMeasure:Z

    .line 546
    iput-boolean v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->btreeInfo:Z

    .line 587
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/util/DbCacheSize;Lcom/sleepycat/je/Environment;)J
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/je/util/DbCacheSize;
    .param p1, "x1"    # Lcom/sleepycat/je/Environment;

    .line 492
    invoke-direct {p0, p1}, Lcom/sleepycat/je/util/DbCacheSize;->getMainDataSize(Lcom/sleepycat/je/Environment;)J

    move-result-wide v0

    return-wide v0
.end method

.method private calcLevel2AndAboveSize()J
    .locals 8

    .line 975
    iget-boolean v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-eqz v0, :cond_0

    .line 977
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->nUinNodes:J

    iget-wide v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->nLevel2Nodes:J

    sub-long/2addr v0, v2

    iget-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->uinWithTargets:J

    mul-long/2addr v0, v4

    iget-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->uinNoTargets:J

    iget-wide v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->uinOffHeapBINIds:J

    add-long/2addr v4, v6

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0

    .line 975
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private calcMainCacheSizes()V
    .locals 6

    .line 1014
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->nUinNodes:J

    iget-wide v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->uinWithTargets:J

    mul-long/2addr v0, v2

    .line 1016
    .local v0, "mainUINs":J
    iget-wide v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->nBinNodes:J

    iget-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->binNoLNsOrVLSNs:J

    mul-long/2addr v4, v2

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainNoLNsOrVLSNs:J

    .line 1019
    iget-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->binNoLNsWithVLSNs:J

    mul-long/2addr v4, v2

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainNoLNsWithVLSNs:J

    .line 1022
    iget-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->binWithLNsAndVLSNs:J

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainWithLNsAndVLSNs:J

    .line 1024
    return-void
.end method

.method private calcNNodes()V
    .locals 9

    .line 983
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->records:J

    iget v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->binAvg:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    int-to-long v5, v2

    div-long/2addr v0, v5

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->nBinNodes:J

    .line 984
    const/4 v2, 0x1

    iput v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->btreeLevels:I

    .line 985
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/sleepycat/je/util/DbCacheSize;->nUinNodes:J

    .line 986
    iput-wide v5, p0, Lcom/sleepycat/je/util/DbCacheSize;->nLevel2Nodes:J

    .line 988
    iget v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->nodeAvg:I

    int-to-long v7, v2

    div-long/2addr v0, v7

    .line 990
    .local v0, "nodes":J
    :goto_0
    cmp-long v2, v0, v5

    if-nez v2, :cond_0

    .line 991
    const-wide/16 v0, 0x1

    .line 994
    :cond_0
    iget v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->btreeLevels:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_2

    .line 995
    iget-wide v7, p0, Lcom/sleepycat/je/util/DbCacheSize;->nLevel2Nodes:J

    cmp-long v7, v7, v5

    if-nez v7, :cond_1

    .line 996
    iput-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->nLevel2Nodes:J

    goto :goto_1

    .line 995
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 999
    :cond_2
    :goto_1
    iget-wide v7, p0, Lcom/sleepycat/je/util/DbCacheSize;->nUinNodes:J

    add-long/2addr v7, v0

    iput-wide v7, p0, Lcom/sleepycat/je/util/DbCacheSize;->nUinNodes:J

    .line 1000
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->btreeLevels:I

    .line 1002
    cmp-long v2, v0, v3

    if-nez v2, :cond_3

    .line 1003
    nop

    .line 1006
    .end local v0    # "nodes":J
    return-void

    .line 988
    .restart local v0    # "nodes":J
    :cond_3
    iget v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->nodeAvg:I

    int-to-long v7, v2

    div-long/2addr v0, v7

    goto :goto_0
.end method

.method private calcOffHeapNoLNsOrVLSNs()V
    .locals 8

    .line 1027
    iget-boolean v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-eqz v0, :cond_2

    .line 1029
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainNoLNsWithVLSNs:J

    .line 1034
    iget-wide v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainNoLNsOrVLSNs:J

    iget-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainDataSize:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 1035
    iput-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapNoLNsOrVLSNs:J

    .line 1036
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->nBinNodes:J

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->nMainBINsNoLNsOrVLSNs:J

    .line 1037
    return-void

    .line 1040
    :cond_0
    iput-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainNoLNsOrVLSNs:J

    .line 1046
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbCacheSize;->calcLevel2AndAboveSize()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    iget-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainDataSize:J

    .line 1047
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbCacheSize;->calcLevel2AndAboveSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_1
    nop

    .line 1049
    .local v0, "mainSpare":J
    :goto_0
    iget-wide v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->binNoLNsOrVLSNs:J

    div-long v2, v0, v2

    .line 1050
    .local v2, "nMainBINs":J
    iget-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->nBinNodes:J

    sub-long/2addr v4, v2

    .line 1052
    .local v4, "nOffHeapBins":J
    iget-wide v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapNoLNIds:J

    mul-long/2addr v6, v4

    iput-wide v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapNoLNsOrVLSNs:J

    .line 1053
    iput-wide v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->nMainBINsNoLNsOrVLSNs:J

    .line 1054
    return-void

    .line 1027
    .end local v0    # "mainSpare":J
    .end local v2    # "nMainBINs":J
    .end local v4    # "nOffHeapBins":J
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private calcOffHeapWithLNsAndVLSNs()V
    .locals 15

    .line 1057
    move-object v0, p0

    iget-boolean v1, v0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-eqz v1, :cond_6

    .line 1062
    iget-wide v1, v0, Lcom/sleepycat/je/util/DbCacheSize;->mainWithLNsAndVLSNs:J

    iget-wide v3, v0, Lcom/sleepycat/je/util/DbCacheSize;->mainDataSize:J

    cmp-long v1, v1, v3

    const-wide/16 v5, 0x0

    if-gtz v1, :cond_1

    .line 1063
    iput-wide v5, v0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapWithLNsAndVLSNs:J

    .line 1064
    iget-wide v1, v0, Lcom/sleepycat/je/util/DbCacheSize;->nBinNodes:J

    iput-wide v1, v0, Lcom/sleepycat/je/util/DbCacheSize;->nMainBINsWithLNsAndVLSNs:J

    .line 1065
    iget-wide v1, v0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapLNs:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v5, v0, Lcom/sleepycat/je/util/DbCacheSize;->records:J

    :goto_0
    iput-wide v5, v0, Lcom/sleepycat/je/util/DbCacheSize;->nMainLNsWithLNsAndVLSNs:J

    .line 1066
    return-void

    .line 1069
    :cond_1
    iput-wide v3, v0, Lcom/sleepycat/je/util/DbCacheSize;->mainWithLNsAndVLSNs:J

    .line 1075
    iget-wide v1, v0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapLNs:J

    cmp-long v7, v1, v5

    if-nez v7, :cond_2

    .line 1076
    iget-wide v1, v0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapNoLNsOrVLSNs:J

    iput-wide v1, v0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapWithLNsAndVLSNs:J

    .line 1077
    iget-wide v1, v0, Lcom/sleepycat/je/util/DbCacheSize;->nMainBINsNoLNsOrVLSNs:J

    iput-wide v1, v0, Lcom/sleepycat/je/util/DbCacheSize;->nMainBINsWithLNsAndVLSNs:J

    .line 1078
    iput-wide v5, v0, Lcom/sleepycat/je/util/DbCacheSize;->nMainLNsWithLNsAndVLSNs:J

    .line 1079
    return-void

    .line 1088
    :cond_2
    iget-wide v7, v0, Lcom/sleepycat/je/util/DbCacheSize;->mainNoLNsOrVLSNs:J

    iget-wide v9, v0, Lcom/sleepycat/je/util/DbCacheSize;->nBinNodes:J

    iget-wide v11, v0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapLNIds:J

    mul-long/2addr v11, v9

    add-long/2addr v11, v7

    .line 1091
    .local v11, "mainWithOffHeapLNIds":J
    cmp-long v13, v11, v3

    if-gtz v13, :cond_4

    .line 1093
    cmp-long v13, v3, v7

    if-lez v13, :cond_3

    sub-long v5, v3, v7

    :cond_3
    move-wide v3, v5

    .line 1096
    .local v3, "mainSpare":J
    iget-wide v5, v0, Lcom/sleepycat/je/util/DbCacheSize;->binWithLNsAndVLSNs:J

    iget-wide v7, v0, Lcom/sleepycat/je/util/DbCacheSize;->binNoLNsOrVLSNs:J

    sub-long/2addr v5, v7

    div-long v5, v3, v5

    .line 1099
    .local v5, "nBINsWithMainLNs":J
    sub-long/2addr v9, v5

    .line 1101
    .local v9, "nBINsWithOffHeapLNs":J
    mul-long/2addr v1, v9

    iput-wide v1, v0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapWithLNsAndVLSNs:J

    .line 1102
    iget-wide v1, v0, Lcom/sleepycat/je/util/DbCacheSize;->nMainBINsNoLNsOrVLSNs:J

    iput-wide v1, v0, Lcom/sleepycat/je/util/DbCacheSize;->nMainBINsWithLNsAndVLSNs:J

    .line 1103
    iget v1, v0, Lcom/sleepycat/je/util/DbCacheSize;->nodeAvg:I

    int-to-long v1, v1

    mul-long/2addr v1, v5

    iput-wide v1, v0, Lcom/sleepycat/je/util/DbCacheSize;->nMainLNsWithLNsAndVLSNs:J

    .line 1104
    return-void

    .line 1111
    .end local v3    # "mainSpare":J
    .end local v5    # "nBINsWithMainLNs":J
    .end local v9    # "nBINsWithOffHeapLNs":J
    :cond_4
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbCacheSize;->calcLevel2AndAboveSize()J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-lez v1, :cond_5

    iget-wide v1, v0, Lcom/sleepycat/je/util/DbCacheSize;->mainDataSize:J

    .line 1112
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbCacheSize;->calcLevel2AndAboveSize()J

    move-result-wide v3

    sub-long/2addr v1, v3

    goto :goto_1

    :cond_5
    move-wide v1, v5

    .line 1114
    .local v1, "mainSpare":J
    :goto_1
    iget-wide v3, v0, Lcom/sleepycat/je/util/DbCacheSize;->binNoLNsOrVLSNs:J

    iget-wide v7, v0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapLNIds:J

    add-long/2addr v3, v7

    div-long v3, v1, v3

    .line 1115
    .local v3, "nMainBINs":J
    iget-wide v7, v0, Lcom/sleepycat/je/util/DbCacheSize;->nBinNodes:J

    sub-long v9, v7, v3

    .line 1117
    .local v9, "nOffHeapBins":J
    iget-wide v13, v0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapWithLNIds:J

    mul-long/2addr v13, v9

    iget-wide v5, v0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapLNs:J

    mul-long/2addr v7, v5

    add-long/2addr v13, v7

    iput-wide v13, v0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapWithLNsAndVLSNs:J

    .line 1121
    iput-wide v3, v0, Lcom/sleepycat/je/util/DbCacheSize;->nMainBINsWithLNsAndVLSNs:J

    .line 1122
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/sleepycat/je/util/DbCacheSize;->nMainLNsWithLNsAndVLSNs:J

    .line 1123
    return-void

    .line 1057
    .end local v1    # "mainSpare":J
    .end local v3    # "nMainBINs":J
    .end local v9    # "nOffHeapBins":J
    .end local v11    # "mainWithOffHeapLNIds":J
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private calcTreeSizes(Lcom/sleepycat/je/Environment;)V
    .locals 23
    .param p1, "env"    # Lcom/sleepycat/je/Environment;

    .line 1127
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sleepycat/je/util/DbCacheSize;->nodeMaxEntries:I

    iget v2, v0, Lcom/sleepycat/je/util/DbCacheSize;->binMaxEntries:I

    if-ne v1, v2, :cond_1f

    .line 1133
    iget v1, v0, Lcom/sleepycat/je/util/DbCacheSize;->nodeAvg:I

    iget v2, v0, Lcom/sleepycat/je/util/DbCacheSize;->binAvg:I

    if-ne v1, v2, :cond_1e

    .line 1135
    const v2, 0xffff

    if-gt v1, v2, :cond_1d

    .line 1140
    invoke-static/range {p1 .. p1}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    .line 1146
    .local v1, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    iget v2, v0, Lcom/sleepycat/je/util/DbCacheSize;->nodeAvg:I

    const/16 v3, 0xff

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-gt v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    new-array v2, v2, [B

    .line 1147
    .local v2, "keyBytes":[B
    new-instance v3, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v3}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1148
    .local v3, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v6, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v6}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v12, v6

    .line 1150
    .local v12, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v6, Lcom/sleepycat/je/WriteOptions;

    invoke-direct {v6}, Lcom/sleepycat/je/WriteOptions;-><init>()V

    move-object v13, v6

    .line 1151
    .local v13, "options":Lcom/sleepycat/je/WriteOptions;
    iget-boolean v6, v0, Lcom/sleepycat/je/util/DbCacheSize;->useTTL:Z

    if-eqz v6, :cond_1

    .line 1152
    const/16 v6, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v6, v7}, Lcom/sleepycat/je/WriteOptions;->setTTL(ILjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/WriteOptions;

    .line 1156
    :cond_1
    move-object/from16 v14, p1

    invoke-direct {v0, v14, v5}, Lcom/sleepycat/je/util/DbCacheSize;->openDatabase(Lcom/sleepycat/je/Environment;Z)Lcom/sleepycat/je/Database;

    move-result-object v15

    .line 1157
    .local v15, "db":Lcom/sleepycat/je/Database;
    const/4 v6, 0x0

    move v11, v6

    .local v11, "i":I
    :goto_1
    iget v6, v0, Lcom/sleepycat/je/util/DbCacheSize;->nodeAvg:I

    const/4 v7, 0x0

    if-ge v11, v6, :cond_6

    .line 1159
    array-length v6, v2

    if-ne v6, v5, :cond_2

    .line 1160
    int-to-byte v6, v11

    aput-byte v6, v2, v7

    goto :goto_2

    .line 1162
    :cond_2
    array-length v6, v2

    if-ne v6, v4, :cond_5

    .line 1163
    shr-int/lit8 v6, v11, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v7

    .line 1164
    int-to-byte v6, v11

    aput-byte v6, v2, v5

    .line 1167
    :goto_2
    iget v6, v0, Lcom/sleepycat/je/util/DbCacheSize;->keyPrefix:I

    invoke-direct {v0, v2, v6, v3, v12}, Lcom/sleepycat/je/util/DbCacheSize;->setKeyData([BILcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 1169
    const/4 v7, 0x0

    iget-boolean v6, v0, Lcom/sleepycat/je/util/DbCacheSize;->duplicates:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/sleepycat/je/Put;->NO_DUP_DATA:Lcom/sleepycat/je/Put;

    goto :goto_3

    :cond_3
    sget-object v6, Lcom/sleepycat/je/Put;->NO_OVERWRITE:Lcom/sleepycat/je/Put;

    :goto_3
    move-object v10, v6

    move-object v6, v15

    move-object v8, v3

    move-object v9, v12

    move/from16 v16, v11

    .end local v11    # "i":I
    .local v16, "i":I
    move-object v11, v13

    invoke-virtual/range {v6 .. v11}, Lcom/sleepycat/je/Database;->put(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v6

    .line 1174
    .local v6, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v6, :cond_4

    .line 1157
    .end local v6    # "result":Lcom/sleepycat/je/OperationResult;
    add-int/lit8 v11, v16, 0x1

    .end local v16    # "i":I
    .restart local v11    # "i":I
    goto :goto_1

    .line 1175
    .end local v11    # "i":I
    .restart local v6    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v16    # "i":I
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 1162
    .end local v6    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v16    # "i":I
    .restart local v11    # "i":I
    :cond_5
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1157
    :cond_6
    move/from16 v16, v11

    .line 1180
    .end local v11    # "i":I
    const/4 v4, 0x0

    invoke-virtual {v15, v4, v4}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v5

    .line 1181
    .local v5, "cursor":Lcom/sleepycat/je/Cursor;
    invoke-virtual {v5, v3, v12, v4}, Lcom/sleepycat/je/Cursor;->getFirst(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v4

    .line 1182
    .local v4, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v6, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v4, v6, :cond_1c

    .line 1183
    invoke-static {v5}, Lcom/sleepycat/je/DbInternal;->getCursorImpl(Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v6

    .line 1184
    .local v6, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v5}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1185
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->latchNoUpdateLRU()V

    .line 1193
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->recalcKeyPrefix()V

    .line 1194
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->compactMemory()J

    .line 1195
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->getInMemorySize()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/sleepycat/je/util/DbCacheSize;->binWithLNsAndVLSNs:J

    .line 1201
    iget-boolean v8, v0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_9

    .line 1202
    invoke-direct {v0, v1}, Lcom/sleepycat/je/util/DbCacheSize;->getOffHeapCacheSize(Lcom/sleepycat/je/dbi/EnvironmentImpl;)J

    move-result-wide v16

    .line 1204
    .local v16, "prevSize":J
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->partialEviction()J

    .line 1206
    iput-wide v9, v0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapLNs:J

    .line 1207
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    iget v11, v0, Lcom/sleepycat/je/util/DbCacheSize;->nodeAvg:I

    if-ge v8, v11, :cond_7

    .line 1208
    iget-wide v9, v0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapLNs:J

    invoke-direct {v0, v6, v7}, Lcom/sleepycat/je/util/DbCacheSize;->getOffHeapLNSize(Lcom/sleepycat/je/tree/BIN;I)J

    move-result-wide v18

    add-long v9, v9, v18

    iput-wide v9, v0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapLNs:J

    .line 1207
    add-int/lit8 v8, v8, 0x1

    const-wide/16 v9, 0x0

    goto :goto_4

    .line 1211
    .end local v8    # "i":I
    :cond_7
    invoke-direct {v0, v1}, Lcom/sleepycat/je/util/DbCacheSize;->getOffHeapCacheSize(Lcom/sleepycat/je/dbi/EnvironmentImpl;)J

    move-result-wide v8

    sub-long v8, v8, v16

    iget-wide v10, v0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapLNs:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    .line 1213
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLNIdsMemorySize()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapLNIds:J

    .line 1215
    .end local v16    # "prevSize":J
    goto :goto_5

    .line 1211
    .restart local v16    # "prevSize":J
    :cond_8
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1216
    .end local v16    # "prevSize":J
    :cond_9
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->partialEviction()J

    .line 1218
    const-wide/16 v8, 0x0

    iput-wide v8, v0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapLNs:J

    .line 1219
    iput-wide v8, v0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapLNIds:J

    .line 1222
    :goto_5
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->hasCachedChildren()Z

    move-result v8

    if-nez v8, :cond_1b

    .line 1224
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->getInMemorySize()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapLNIds:J

    sub-long/2addr v8, v10

    iput-wide v8, v0, Lcom/sleepycat/je/util/DbCacheSize;->binNoLNsWithVLSNs:J

    .line 1231
    iget-boolean v8, v0, Lcom/sleepycat/je/util/DbCacheSize;->duplicates:Z

    if-nez v8, :cond_f

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCacheVLSN()Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_6

    .line 1235
    :cond_a
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->getVLSNCache()Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/tree/INLongRep;->getMemorySize()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_e

    .line 1237
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->partialEviction()J

    .line 1239
    iget v8, v0, Lcom/sleepycat/je/util/DbCacheSize;->dataSize:I

    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMaxEmbeddedLN()I

    move-result v9

    if-gt v8, v9, :cond_c

    .line 1240
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->getVLSNCache()Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/tree/INLongRep;->getMemorySize()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_b

    goto :goto_7

    :cond_b
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1242
    :cond_c
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->getVLSNCache()Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/tree/INLongRep;->getMemorySize()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_d

    goto :goto_7

    :cond_d
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1235
    :cond_e
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1232
    :cond_f
    :goto_6
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->getVLSNCache()Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/tree/INLongRep;->getMemorySize()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1a

    .line 1247
    :goto_7
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->getInMemorySize()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapLNIds:J

    sub-long/2addr v8, v10

    iput-wide v8, v0, Lcom/sleepycat/je/util/DbCacheSize;->binNoLNsOrVLSNs:J

    .line 1253
    invoke-static {v15}, Lcom/sleepycat/je/DbInternal;->getDbImpl(Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v8

    .line 1254
    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v8

    sget-object v9, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    .line 1255
    invoke-virtual {v8, v9}, Lcom/sleepycat/je/tree/Tree;->getRootINLatchedExclusive(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v8

    .line 1256
    .local v8, "in":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v8, v7}, Lcom/sleepycat/je/tree/IN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v9

    if-ne v6, v9, :cond_19

    .line 1258
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_8
    iget v10, v0, Lcom/sleepycat/je/util/DbCacheSize;->nodeAvg:I

    if-ge v9, v10, :cond_12

    .line 1260
    nop

    .line 1261
    invoke-virtual {v6, v9}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual {v6, v9}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v20

    const/16 v22, 0x0

    .line 1260
    move-object/from16 v16, v8

    move-object/from16 v17, v6

    invoke-virtual/range {v16 .. v22}, Lcom/sleepycat/je/tree/IN;->insertEntry1(Lcom/sleepycat/je/tree/Node;[B[BJZ)I

    move-result v10

    .line 1264
    .local v10, "result":I
    const/high16 v11, 0x20000

    and-int/2addr v11, v10

    if-eqz v11, :cond_11

    .line 1265
    const v11, -0x20001

    and-int/2addr v11, v10

    if-ne v9, v11, :cond_10

    .line 1258
    .end local v10    # "result":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 1265
    .restart local v10    # "result":I
    :cond_10
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1264
    :cond_11
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1268
    .end local v9    # "i":I
    .end local v10    # "result":I
    :cond_12
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->recalcKeyPrefix()V

    .line 1269
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->compactMemory()J

    .line 1270
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->getInMemorySize()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/sleepycat/je/util/DbCacheSize;->uinWithTargets:J

    .line 1271
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->getTargets()Lcom/sleepycat/je/tree/INTargetRep;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sleepycat/je/tree/INTargetRep;->calculateMemorySize()J

    move-result-wide v16

    sub-long v9, v9, v16

    iput-wide v9, v0, Lcom/sleepycat/je/util/DbCacheSize;->uinNoTargets:J

    .line 1273
    iget-boolean v9, v0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-eqz v9, :cond_18

    .line 1275
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1277
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v9

    sget-object v10, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->CACHEMODE:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    invoke-virtual {v9, v6, v10}, Lcom/sleepycat/je/evictor/Evictor;->doTestEvict(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/evictor/Evictor$EvictionSource;)J

    move-result-wide v9

    .line 1280
    .local v9, "bytesFreed":J
    const-wide/16 v16, 0x0

    cmp-long v11, v9, v16

    if-lez v11, :cond_17

    .line 1282
    invoke-virtual {v8}, Lcom/sleepycat/je/tree/IN;->latchNoUpdateLRU()V

    .line 1284
    invoke-virtual {v8, v7}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v11

    .line 1285
    .local v11, "binId":I
    if-ltz v11, :cond_16

    .line 1287
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "keyBytes":[B
    .end local v3    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .local v16, "keyBytes":[B
    .local v17, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-direct {v0, v8, v7}, Lcom/sleepycat/je/util/DbCacheSize;->getOffHeapBINSize(Lcom/sleepycat/je/tree/IN;I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapWithLNIds:J

    .line 1289
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v2

    invoke-virtual {v2, v8, v7}, Lcom/sleepycat/je/evictor/OffHeapCache;->stripLNs(Lcom/sleepycat/je/tree/IN;I)J

    move-result-wide v2

    .line 1291
    .end local v9    # "bytesFreed":J
    .local v2, "bytesFreed":J
    invoke-direct {v0, v8, v7}, Lcom/sleepycat/je/util/DbCacheSize;->getOffHeapBINSize(Lcom/sleepycat/je/tree/IN;I)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapNoLNIds:J

    .line 1293
    move-object/from16 v18, v8

    .end local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .local v18, "in":Lcom/sleepycat/je/tree/IN;
    iget-wide v7, v0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapLNs:J

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    .end local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .local v20, "cursor":Lcom/sleepycat/je/Cursor;
    .local v21, "status":Lcom/sleepycat/je/OperationStatus;
    iget-wide v4, v0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapWithLNIds:J

    sub-long/2addr v4, v9

    add-long/2addr v7, v4

    cmp-long v4, v2, v7

    if-nez v4, :cond_15

    .line 1296
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_9
    iget v5, v0, Lcom/sleepycat/je/util/DbCacheSize;->nodeAvg:I

    if-ge v4, v5, :cond_13

    .line 1297
    move-object/from16 v5, v18

    const/4 v7, 0x0

    .end local v18    # "in":Lcom/sleepycat/je/tree/IN;
    .local v5, "in":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v5, v4, v11, v7, v7}, Lcom/sleepycat/je/tree/IN;->setOffHeapBINId(IIZZ)V

    .line 1296
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .end local v5    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v18    # "in":Lcom/sleepycat/je/tree/IN;
    :cond_13
    move-object/from16 v5, v18

    .line 1300
    .end local v4    # "i":I
    .end local v18    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v5    # "in":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINIdsMemorySize()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/sleepycat/je/util/DbCacheSize;->uinOffHeapBINIds:J

    .line 1303
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_a
    iget v7, v0, Lcom/sleepycat/je/util/DbCacheSize;->nodeAvg:I

    if-ge v4, v7, :cond_14

    .line 1304
    invoke-virtual {v5, v4}, Lcom/sleepycat/je/tree/IN;->clearOffHeapBINId(I)V

    .line 1303
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1307
    .end local v4    # "i":I
    :cond_14
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1309
    .end local v2    # "bytesFreed":J
    .end local v11    # "binId":I
    goto :goto_b

    .line 1293
    .end local v5    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v2    # "bytesFreed":J
    .restart local v11    # "binId":I
    .restart local v18    # "in":Lcom/sleepycat/je/tree/IN;
    :cond_15
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1285
    .end local v16    # "keyBytes":[B
    .end local v17    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v18    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v20    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v21    # "status":Lcom/sleepycat/je/OperationStatus;
    .local v2, "keyBytes":[B
    .restart local v3    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .local v4, "status":Lcom/sleepycat/je/OperationStatus;
    .local v5, "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local v9    # "bytesFreed":J
    :cond_16
    move-object/from16 v16, v2

    .end local v2    # "keyBytes":[B
    .restart local v16    # "keyBytes":[B
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1280
    .end local v11    # "binId":I
    .end local v16    # "keyBytes":[B
    .restart local v2    # "keyBytes":[B
    :cond_17
    move-object/from16 v16, v2

    .end local v2    # "keyBytes":[B
    .restart local v16    # "keyBytes":[B
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1310
    .end local v9    # "bytesFreed":J
    .end local v16    # "keyBytes":[B
    .restart local v2    # "keyBytes":[B
    :cond_18
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    move-object v5, v8

    .end local v2    # "keyBytes":[B
    .end local v3    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .local v5, "in":Lcom/sleepycat/je/tree/IN;
    .restart local v16    # "keyBytes":[B
    .restart local v17    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v20    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v21    # "status":Lcom/sleepycat/je/OperationStatus;
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/sleepycat/je/util/DbCacheSize;->binOffHeapWithLNIds:J

    .line 1311
    iput-wide v2, v0, Lcom/sleepycat/je/util/DbCacheSize;->uinOffHeapBINIds:J

    .line 1313
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 1314
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 1317
    :goto_b
    invoke-virtual {v15}, Lcom/sleepycat/je/Database;->close()V

    .line 1318
    return-void

    .line 1256
    .end local v16    # "keyBytes":[B
    .end local v17    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v20    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v21    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v2    # "keyBytes":[B
    .restart local v3    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    .local v5, "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v8    # "in":Lcom/sleepycat/je/tree/IN;
    :cond_19
    move-object/from16 v16, v2

    .end local v2    # "keyBytes":[B
    .restart local v16    # "keyBytes":[B
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1232
    .end local v8    # "in":Lcom/sleepycat/je/tree/IN;
    .end local v16    # "keyBytes":[B
    .restart local v2    # "keyBytes":[B
    :cond_1a
    move-object/from16 v16, v2

    .end local v2    # "keyBytes":[B
    .restart local v16    # "keyBytes":[B
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1222
    .end local v16    # "keyBytes":[B
    .restart local v2    # "keyBytes":[B
    :cond_1b
    move-object/from16 v16, v2

    .end local v2    # "keyBytes":[B
    .restart local v16    # "keyBytes":[B
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1182
    .end local v6    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v16    # "keyBytes":[B
    .restart local v2    # "keyBytes":[B
    :cond_1c
    move-object/from16 v16, v2

    .end local v2    # "keyBytes":[B
    .restart local v16    # "keyBytes":[B
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1136
    .end local v1    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v3    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v12    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v13    # "options":Lcom/sleepycat/je/WriteOptions;
    .end local v15    # "db":Lcom/sleepycat/je/Database;
    .end local v16    # "keyBytes":[B
    :cond_1d
    move-object/from16 v14, p1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entries per node ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/sleepycat/je/util/DbCacheSize;->nodeAvg:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is greater than 0xFFFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1133
    :cond_1e
    move-object/from16 v14, p1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1128
    :cond_1f
    move-object/from16 v14, p1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "-binmax not currently supported because a per-BIN max is not implemented in the Btree, so we can\'t measure an actual BIN node with the given -binmax value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkForEviction(Lcom/sleepycat/je/Environment;I)V
    .locals 5
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "recNum"    # I

    .line 1995
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/Environment;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/EnvironmentStats;

    move-result-object v0

    .line 1996
    .local v0, "stats":Lcom/sleepycat/je/EnvironmentStats;
    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentStats;->getOffHeapNodesTargeted()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 2002
    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentStats;->getNNodesTargeted()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 2008
    return-void

    .line 2003
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Out of main cache"

    invoke-direct {p0, v1, p1, v2}, Lcom/sleepycat/je/util/DbCacheSize;->getStats(Ljava/io/PrintStream;Lcom/sleepycat/je/Environment;Ljava/lang/String;)J

    .line 2004
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** Ran out of main cache at record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- try increasing Java heap size ***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1997
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Out of off-heap cache"

    invoke-direct {p0, v1, p1, v2}, Lcom/sleepycat/je/util/DbCacheSize;->getStats(Ljava/io/PrintStream;Lcom/sleepycat/je/Environment;Ljava/lang/String;)J

    .line 1998
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** Ran out of off-heap cache at record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- try increasing off-heap cache size ***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private column(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "str"    # Ljava/lang/String;

    .line 1559
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1561
    .local v0, "start":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    .line 1562
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1565
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    return-void
.end method

.method private emptyTempDir()V
    .locals 4

    .line 1832
    iget-object v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->tempDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 1833
    return-void

    .line 1835
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1836
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 1837
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1838
    .local v3, "child":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1837
    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1841
    :cond_1
    return-void
.end method

.method private evictMainToDataSize(Lcom/sleepycat/je/Database;J)V
    .locals 9
    .param p1, "db"    # Lcom/sleepycat/je/Database;
    .param p2, "dataSize"    # J

    .line 2035
    invoke-virtual {p1}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/util/DbCacheSize;->getMainDataSize(Lcom/sleepycat/je/Environment;)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-gtz v0, :cond_0

    .line 2036
    return-void

    .line 2039
    :cond_0
    new-instance v0, Lcom/sleepycat/je/util/DbCacheSize$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sleepycat/je/util/DbCacheSize$4;-><init>(Lcom/sleepycat/je/util/DbCacheSize;Lcom/sleepycat/je/Database;J)V

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/util/DbCacheSize;->iterateBINs(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/util/DbCacheSize$BINVisitor;)Z

    move-result v0

    .line 2049
    .local v0, "keepGoing":Z
    if-nez v0, :cond_1

    .line 2050
    return-void

    .line 2053
    :cond_1
    nop

    .line 2054
    invoke-virtual {p1}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v1

    .line 2056
    .local v1, "evictor":Lcom/sleepycat/je/evictor/Evictor;
    new-instance v8, Lcom/sleepycat/je/util/DbCacheSize$5;

    move-object v2, v8

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/je/util/DbCacheSize$5;-><init>(Lcom/sleepycat/je/util/DbCacheSize;Lcom/sleepycat/je/evictor/Evictor;Lcom/sleepycat/je/Database;J)V

    invoke-direct {p0, p1, v8}, Lcom/sleepycat/je/util/DbCacheSize;->iterateBINs(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/util/DbCacheSize$BINVisitor;)Z

    move-result v0

    .line 2064
    if-nez v0, :cond_2

    .line 2065
    return-void

    .line 2064
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private getMainDataSize(Lcom/sleepycat/je/Environment;)J
    .locals 2
    .param p1, "env"    # Lcom/sleepycat/je/Environment;

    .line 1321
    invoke-static {p1}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 1322
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/MemoryBudget;->getTreeMemoryUsage()J

    move-result-wide v0

    .line 1321
    return-wide v0
.end method

.method private getOffHeapBINSize(Lcom/sleepycat/je/tree/IN;I)J
    .locals 6
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "i"    # I

    .line 1344
    iget-boolean v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-eqz v0, :cond_2

    .line 1346
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v0

    .line 1348
    .local v0, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v1

    .line 1349
    .local v1, "lruId":I
    if-ltz v1, :cond_1

    .line 1351
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->getMemId(I)J

    move-result-wide v2

    .line 1352
    .local v2, "memId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 1354
    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->getAllocator()Lcom/sleepycat/je/evictor/OffHeapAllocator;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->totalSize(J)I

    move-result v4

    int-to-long v4, v4

    return-wide v4

    .line 1352
    :cond_0
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1349
    .end local v2    # "memId":J
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1344
    .end local v0    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v1    # "lruId":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private getOffHeapCacheSize(Lcom/sleepycat/je/dbi/EnvironmentImpl;)J
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1326
    iget-boolean v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-eqz v0, :cond_0

    .line 1327
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->getAllocator()Lcom/sleepycat/je/evictor/OffHeapAllocator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->getUsedBytes()J

    move-result-wide v0

    return-wide v0

    .line 1326
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private getOffHeapLNSize(Lcom/sleepycat/je/tree/BIN;I)J
    .locals 6
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "i"    # I

    .line 1331
    iget-boolean v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-eqz v0, :cond_1

    .line 1333
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v0

    .line 1335
    .local v0, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLNId(I)J

    move-result-wide v1

    .line 1336
    .local v1, "memId":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 1337
    return-wide v3

    .line 1340
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->getAllocator()Lcom/sleepycat/je/evictor/OffHeapAllocator;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/sleepycat/je/evictor/OffHeapAllocator;->totalSize(J)I

    move-result v3

    int-to-long v3, v3

    return-wide v3

    .line 1331
    .end local v0    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v1    # "memId":J
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private getStats(Ljava/io/PrintStream;Lcom/sleepycat/je/Environment;Ljava/lang/String;)J
    .locals 7
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "env"    # Lcom/sleepycat/je/Environment;
    .param p3, "msg"    # Ljava/lang/String;

    .line 2186
    if-eqz p1, :cond_0

    .line 2187
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 2188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2191
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/sleepycat/je/Environment;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/EnvironmentStats;

    move-result-object v0

    .line 2193
    .local v0, "stats":Lcom/sleepycat/je/EnvironmentStats;
    invoke-direct {p0, p2}, Lcom/sleepycat/je/util/DbCacheSize;->getMainDataSize(Lcom/sleepycat/je/Environment;)J

    move-result-wide v1

    .line 2195
    .local v1, "dataSize":J
    if-eqz p1, :cond_1

    .line 2196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MainCache= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/util/DbCacheSize;->INT_FORMAT:Ljava/text/NumberFormat;

    .line 2197
    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentStats;->getCacheTotalBytes()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Data= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2198
    invoke-virtual {v4, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " BINs= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2199
    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentStats;->getNCachedBINs()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " UINs= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2200
    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentStats;->getNCachedUpperINs()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " CacheMiss= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2201
    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentStats;->getNCacheMiss()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " OffHeapCache= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2203
    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentStats;->getOffHeapTotalBytes()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " OhLNs= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2204
    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentStats;->getOffHeapCachedLNs()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " OhBIN= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2205
    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentStats;->getOffHeapCachedBINs()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " OhBINDeltas= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2207
    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentStats;->getOffHeapCachedBINDeltas()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2196
    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2210
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentStats;->getNNodesTargeted()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    .line 2214
    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentStats;->getOffHeapNodesTargeted()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2

    .line 2218
    return-wide v1

    .line 2215
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "*** All records did not fit in the off-heap cache ***"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2211
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "*** All records did not fit in the cache ***"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private insertRecords(Ljava/io/PrintStream;Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Database;)V
    .locals 21
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "env"    # Lcom/sleepycat/je/Environment;
    .param p3, "db"    # Lcom/sleepycat/je/Database;

    .line 1862
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v5, v0

    .line 1863
    .local v5, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v6, v0

    .line 1865
    .local v6, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    iget-wide v7, v1, Lcom/sleepycat/je/util/DbCacheSize;->records:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    long-to-int v7, v7

    .line 1866
    .local v7, "lastKey":I
    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    .line 1867
    .local v8, "lastKeyBytes":[B
    array-length v9, v8

    .line 1870
    .local v9, "maxKeyBytes":I
    iget v0, v1, Lcom/sleepycat/je/util/DbCacheSize;->keyPrefix:I

    if-nez v0, :cond_0

    .line 1871
    const/4 v0, 0x0

    move v13, v0

    .local v0, "keyOffset":I
    goto :goto_2

    .line 1878
    .end local v0    # "keyOffset":I
    :cond_0
    iget-boolean v0, v1, Lcom/sleepycat/je/util/DbCacheSize;->orderedInsertion:Z

    if-eqz v0, :cond_1

    iget v0, v1, Lcom/sleepycat/je/util/DbCacheSize;->nodeMaxEntries:I

    goto :goto_0

    :cond_1
    iget v0, v1, Lcom/sleepycat/je/util/DbCacheSize;->nodeMaxEntries:I

    mul-int/lit8 v0, v0, 0x46

    div-int/lit8 v0, v0, 0x64

    .line 1881
    .local v0, "nodeAvg":I
    :goto_0
    mul-int/lit8 v10, v0, 0x2

    sub-int v10, v7, v10

    .line 1882
    .local v10, "prevKey":I
    int-to-long v11, v10

    .line 1883
    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v11

    invoke-direct {v1, v11, v9}, Lcom/sleepycat/je/util/DbCacheSize;->padLeft([BI)[B

    move-result-object v11

    .line 1885
    .local v11, "prevKeyBytes":[B
    const/4 v12, 0x0

    .line 1886
    .local v12, "calcPrefix":I
    :goto_1
    array-length v13, v8

    if-ge v12, v13, :cond_2

    array-length v13, v11

    if-ge v12, v13, :cond_2

    aget-byte v13, v8, v12

    aget-byte v14, v11, v12

    if-ne v13, v14, :cond_2

    .line 1889
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1891
    :cond_2
    iget v13, v1, Lcom/sleepycat/je/util/DbCacheSize;->keyPrefix:I

    sub-int/2addr v13, v12

    .line 1895
    .end local v0    # "nodeAvg":I
    .end local v10    # "prevKey":I
    .end local v11    # "prevKeyBytes":[B
    .end local v12    # "calcPrefix":I
    .local v13, "keyOffset":I
    :goto_2
    const/4 v0, 0x0

    .line 1896
    .local v0, "rndKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-boolean v10, v1, Lcom/sleepycat/je/util/DbCacheSize;->orderedInsertion:Z

    if-nez v10, :cond_4

    .line 1897
    new-instance v10, Ljava/util/ArrayList;

    add-int/lit8 v11, v7, 0x1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v10

    .line 1898
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-gt v10, v7, :cond_3

    .line 1899
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1898
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1901
    .end local v10    # "i":I
    :cond_3
    new-instance v10, Ljava/util/Random;

    const-wide/16 v11, 0x7b

    invoke-direct {v10, v11, v12}, Ljava/util/Random;-><init>(J)V

    invoke-static {v0, v10}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    move-object v10, v0

    goto :goto_4

    .line 1896
    :cond_4
    move-object v10, v0

    .line 1904
    .end local v0    # "rndKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v10, "rndKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_4
    new-instance v0, Lcom/sleepycat/je/WriteOptions;

    invoke-direct {v0}, Lcom/sleepycat/je/WriteOptions;-><init>()V

    move-object v11, v0

    .line 1905
    .local v11, "options":Lcom/sleepycat/je/WriteOptions;
    iget-boolean v0, v1, Lcom/sleepycat/je/util/DbCacheSize;->useTTL:Z

    if-eqz v0, :cond_5

    .line 1906
    const/16 v0, 0x1e

    sget-object v12, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v0, v12}, Lcom/sleepycat/je/WriteOptions;->setTTL(ILjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/WriteOptions;

    .line 1909
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v3, v0, v0}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v12

    .line 1910
    .local v12, "txn":Lcom/sleepycat/je/Transaction;
    invoke-virtual {v4, v12, v0}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v14

    .line 1911
    .local v14, "cursor":Lcom/sleepycat/je/Cursor;
    const/4 v15, 0x0

    .line 1913
    .local v15, "success":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    move-object/from16 v16, v8

    .end local v8    # "lastKeyBytes":[B
    .local v16, "lastKeyBytes":[B
    if-gt v0, v7, :cond_e

    .line 1914
    :try_start_0
    iget-boolean v8, v1, Lcom/sleepycat/je/util/DbCacheSize;->orderedInsertion:Z

    if-eqz v8, :cond_6

    move v8, v0

    goto :goto_6

    :cond_6
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1915
    .local v8, "keyVal":I
    :goto_6
    int-to-long v2, v8

    .line 1916
    :try_start_1
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 1915
    invoke-direct {v1, v2, v9}, Lcom/sleepycat/je/util/DbCacheSize;->padLeft([BI)[B

    move-result-object v2

    .line 1917
    .local v2, "keyBytes":[B
    invoke-direct {v1, v2, v13, v5, v6}, Lcom/sleepycat/je/util/DbCacheSize;->setKeyData([BILcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 1919
    iget-boolean v3, v1, Lcom/sleepycat/je/util/DbCacheSize;->duplicates:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/sleepycat/je/Put;->NO_DUP_DATA:Lcom/sleepycat/je/Put;

    goto :goto_7

    :cond_7
    sget-object v3, Lcom/sleepycat/je/Put;->NO_OVERWRITE:Lcom/sleepycat/je/Put;

    :goto_7
    invoke-virtual {v14, v5, v6, v3, v11}, Lcom/sleepycat/je/Cursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v3

    .line 1924
    .local v3, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v3, :cond_8

    move-object/from16 v17, v2

    .end local v2    # "keyBytes":[B
    .local v17, "keyBytes":[B
    iget-boolean v2, v1, Lcom/sleepycat/je/util/DbCacheSize;->orderedInsertion:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v2, :cond_9

    .line 1925
    add-int/lit8 v0, v0, -0x1

    .line 1926
    move-object/from16 v3, p1

    move-object/from16 v2, p2

    goto :goto_9

    .line 1924
    .end local v17    # "keyBytes":[B
    .restart local v2    # "keyBytes":[B
    :cond_8
    move-object/from16 v17, v2

    .line 1928
    .end local v2    # "keyBytes":[B
    .restart local v17    # "keyBytes":[B
    :cond_9
    if-eqz v3, :cond_c

    .line 1932
    :try_start_2
    rem-int/lit16 v2, v0, 0x2710
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_b

    .line 1933
    move-object/from16 v2, p2

    :try_start_3
    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/util/DbCacheSize;->checkForEviction(Lcom/sleepycat/je/Environment;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1934
    move-object/from16 v18, v3

    move-object/from16 v3, p1

    .end local v3    # "result":Lcom/sleepycat/je/OperationResult;
    .local v18, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v3, :cond_a

    .line 1935
    move/from16 v19, v0

    .end local v0    # "i":I
    .local v19, "i":I
    :try_start_4
    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1936
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintStream;->flush()V

    goto :goto_8

    .line 1934
    .end local v19    # "i":I
    .restart local v0    # "i":I
    :cond_a
    move/from16 v19, v0

    .end local v0    # "i":I
    .restart local v19    # "i":I
    goto :goto_8

    .line 1942
    .end local v8    # "keyVal":I
    .end local v17    # "keyBytes":[B
    .end local v18    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v19    # "i":I
    :catchall_0
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_b

    .line 1932
    .restart local v0    # "i":I
    .restart local v3    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v8    # "keyVal":I
    .restart local v17    # "keyBytes":[B
    :cond_b
    move-object/from16 v2, p2

    move/from16 v19, v0

    move-object/from16 v18, v3

    move-object/from16 v3, p1

    .line 1913
    .end local v0    # "i":I
    .end local v3    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v8    # "keyVal":I
    .end local v17    # "keyBytes":[B
    .restart local v19    # "i":I
    :goto_8
    move/from16 v0, v19

    .end local v19    # "i":I
    .restart local v0    # "i":I
    :goto_9
    const/4 v8, 0x1

    add-int/2addr v0, v8

    move-object/from16 v8, v16

    move-object/from16 v20, v3

    move-object v3, v2

    move-object/from16 v2, v20

    goto :goto_5

    .line 1942
    .end local v0    # "i":I
    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_a

    .line 1929
    .restart local v0    # "i":I
    .restart local v3    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v8    # "keyVal":I
    .restart local v17    # "keyBytes":[B
    :cond_c
    move-object/from16 v2, p2

    move/from16 v19, v0

    move-object/from16 v18, v3

    move-object/from16 v3, p1

    .end local v0    # "i":I
    .end local v3    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v18    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v19    # "i":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Could not insert"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v6    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v7    # "lastKey":I
    .end local v9    # "maxKeyBytes":I
    .end local v10    # "rndKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "options":Lcom/sleepycat/je/WriteOptions;
    .end local v12    # "txn":Lcom/sleepycat/je/Transaction;
    .end local v13    # "keyOffset":I
    .end local v14    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v15    # "success":Z
    .end local v16    # "lastKeyBytes":[B
    .end local p1    # "out":Ljava/io/PrintStream;
    .end local p2    # "env":Lcom/sleepycat/je/Environment;
    .end local p3    # "db":Lcom/sleepycat/je/Database;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1942
    .end local v8    # "keyVal":I
    .end local v17    # "keyBytes":[B
    .end local v18    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v19    # "i":I
    .restart local v5    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v6    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v7    # "lastKey":I
    .restart local v9    # "maxKeyBytes":I
    .restart local v10    # "rndKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "options":Lcom/sleepycat/je/WriteOptions;
    .restart local v12    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local v13    # "keyOffset":I
    .restart local v14    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v15    # "success":Z
    .restart local v16    # "lastKeyBytes":[B
    .restart local p1    # "out":Ljava/io/PrintStream;
    .restart local p2    # "env":Lcom/sleepycat/je/Environment;
    .restart local p3    # "db":Lcom/sleepycat/je/Database;
    :catchall_2
    move-exception v0

    goto :goto_b

    :catchall_3
    move-exception v0

    :goto_a
    move-object/from16 v2, p2

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v2, v3

    :goto_b
    invoke-virtual {v14}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1943
    if-eqz v15, :cond_d

    .line 1944
    invoke-virtual {v12}, Lcom/sleepycat/je/Transaction;->commit()V

    goto :goto_c

    .line 1946
    :cond_d
    invoke-virtual {v12}, Lcom/sleepycat/je/Transaction;->abort()V

    :goto_c
    throw v0

    .line 1913
    .restart local v0    # "i":I
    :cond_e
    move/from16 v19, v0

    move-object v2, v3

    .line 1940
    .end local v0    # "i":I
    const/4 v0, 0x1

    .line 1942
    .end local v15    # "success":Z
    .local v0, "success":Z
    invoke-virtual {v14}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1943
    if-eqz v0, :cond_f

    .line 1944
    invoke-virtual {v12}, Lcom/sleepycat/je/Transaction;->commit()V

    goto :goto_d

    .line 1946
    :cond_f
    invoke-virtual {v12}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 1948
    nop

    .line 1950
    :goto_d
    invoke-direct {v1, v2, v7}, Lcom/sleepycat/je/util/DbCacheSize;->checkForEviction(Lcom/sleepycat/je/Environment;I)V

    .line 1953
    new-instance v3, Lcom/sleepycat/je/CheckpointConfig;

    invoke-direct {v3}, Lcom/sleepycat/je/CheckpointConfig;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/sleepycat/je/CheckpointConfig;->setForce(Z)Lcom/sleepycat/je/CheckpointConfig;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/Environment;->checkpoint(Lcom/sleepycat/je/CheckpointConfig;)V

    .line 1956
    new-instance v3, Lcom/sleepycat/je/util/DbCacheSize$1;

    invoke-direct {v3, v1}, Lcom/sleepycat/je/util/DbCacheSize$1;-><init>(Lcom/sleepycat/je/util/DbCacheSize;)V

    invoke-direct {v1, v4, v3}, Lcom/sleepycat/je/util/DbCacheSize;->iterateBINs(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/util/DbCacheSize$BINVisitor;)Z

    .line 1963
    return-void
.end method

.method private iterateBINs(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/util/DbCacheSize$BINVisitor;)Z
    .locals 7
    .param p1, "db"    # Lcom/sleepycat/je/Database;
    .param p2, "visitor"    # Lcom/sleepycat/je/util/DbCacheSize$BINVisitor;

    .line 2073
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 2074
    .local v0, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 2075
    .local v1, "data":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v2, v3}, Lcom/sleepycat/je/DatabaseEntry;->setPartial(IIZ)V

    .line 2077
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v2

    .line 2078
    .local v2, "c":Lcom/sleepycat/je/Cursor;
    const/4 v3, 0x0

    .line 2079
    .local v3, "prevBin":Lcom/sleepycat/je/tree/BIN;
    const/4 v4, 0x1

    .line 2081
    .local v4, "keepGoing":Z
    :goto_0
    if-eqz v4, :cond_2

    sget-object v5, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED:Lcom/sleepycat/je/LockMode;

    .line 2082
    invoke-virtual {v2, v0, v1, v5}, Lcom/sleepycat/je/Cursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v5

    sget-object v6, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v5, v6, :cond_2

    .line 2085
    invoke-static {v2}, Lcom/sleepycat/je/DbInternal;->getCursorImpl(Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v5

    .line 2087
    .local v5, "bin":Lcom/sleepycat/je/tree/BIN;
    if-ne v5, v3, :cond_0

    .line 2088
    goto :goto_0

    .line 2091
    :cond_0
    if-eqz v3, :cond_1

    .line 2092
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/BIN;->latch()V

    .line 2093
    invoke-interface {p2, v3}, Lcom/sleepycat/je/util/DbCacheSize$BINVisitor;->visitBIN(Lcom/sleepycat/je/tree/BIN;)Z

    move-result v4

    .line 2094
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/BIN;->releaseLatchIfOwner()V

    .line 2097
    :cond_1
    move-object v3, v5

    .line 2098
    .end local v5    # "bin":Lcom/sleepycat/je/tree/BIN;
    goto :goto_0

    .line 2100
    :cond_2
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V

    .line 2102
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 2103
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/BIN;->latch()V

    .line 2104
    invoke-interface {p2, v3}, Lcom/sleepycat/je/util/DbCacheSize$BINVisitor;->visitBIN(Lcom/sleepycat/je/tree/BIN;)Z

    .line 2105
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 2108
    :cond_3
    return v4
.end method

.method private line(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "num"    # J
    .param p3, "comment"    # Ljava/lang/String;

    .line 1548
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1550
    .local v0, "buf":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/sleepycat/je/util/DbCacheSize;->INT_FORMAT:Ljava/text/NumberFormat;

    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/util/DbCacheSize;->column(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1551
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 814
    new-instance v0, Lcom/sleepycat/je/util/DbCacheSize;

    invoke-direct {v0}, Lcom/sleepycat/je/util/DbCacheSize;-><init>()V

    .line 816
    .local v0, "dbCacheSize":Lcom/sleepycat/je/util/DbCacheSize;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/sleepycat/je/util/DbCacheSize;->parseArgs([Ljava/lang/String;)V

    .line 817
    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbCacheSize;->calculateCacheSizes()V

    .line 818
    iget-boolean v1, v0, Lcom/sleepycat/je/util/DbCacheSize;->outputProperties:Z

    if-eqz v1, :cond_0

    .line 819
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/util/DbCacheSize;->printProperties(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 821
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/util/DbCacheSize;->printCacheSizes(Ljava/io/PrintStream;)V

    .line 823
    :goto_0
    iget-boolean v1, v0, Lcom/sleepycat/je/util/DbCacheSize;->doMeasure:Z

    if-eqz v1, :cond_1

    .line 824
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/util/DbCacheSize;->measure(Ljava/io/PrintStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbCacheSize;->cleanup()V

    .line 828
    nop

    .line 829
    return-void

    .line 827
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbCacheSize;->cleanup()V

    throw v1
.end method

.method private mkTempDir()V
    .locals 2

    .line 1819
    iget-object v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->tempDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 1821
    :try_start_0
    const-string v0, "DbCacheSize"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->tempDir:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1824
    nop

    .line 1826
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1827
    iget-object v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->tempDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    .line 1822
    :catch_0
    move-exception v0

    .line 1823
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1829
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private openCalcEnvironment(Z)Lcom/sleepycat/je/Environment;
    .locals 3
    .param p1, "createNew"    # Z

    .line 1722
    iget-object v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->envConfig:Lcom/sleepycat/je/EnvironmentConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->clone()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v0

    .line 1724
    .local v0, "config":Lcom/sleepycat/je/EnvironmentConfig;
    iget-boolean v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-eqz v1, :cond_0

    .line 1725
    const-wide/32 v1, 0x40000000

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setOffHeapCacheSize(J)Lcom/sleepycat/je/EnvironmentMutableConfig;

    goto :goto_0

    .line 1727
    :cond_0
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setOffHeapCacheSize(J)Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 1731
    :goto_0
    const-wide/32 v1, 0x100000

    .line 1732
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1731
    const-string v2, "je.freeDisk"

    invoke-virtual {v0, v2, v1}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 1734
    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/util/DbCacheSize;->openEnvironment(Lcom/sleepycat/je/EnvironmentConfig;Z)Lcom/sleepycat/je/Environment;

    move-result-object v1

    return-object v1
.end method

.method private openDatabase(Lcom/sleepycat/je/Environment;Z)Lcom/sleepycat/je/Database;
    .locals 3
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "createNew"    # Z

    .line 1845
    new-instance v0, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    .line 1846
    .local v0, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setTransactional(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1847
    invoke-virtual {v0, p2}, Lcom/sleepycat/je/DatabaseConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1848
    invoke-virtual {v0, p2}, Lcom/sleepycat/je/DatabaseConfig;->setExclusiveCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1849
    iget v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->nodeMaxEntries:I

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/DatabaseConfig;->setNodeMaxEntries(I)Lcom/sleepycat/je/DatabaseConfig;

    .line 1850
    iget v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->keyPrefix:I

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setKeyPrefixing(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1851
    iget-boolean v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->duplicates:Z

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setSortedDuplicates(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1852
    const/4 v1, 0x0

    const-string v2, "foo"

    invoke-virtual {p1, v1, v2, v0}, Lcom/sleepycat/je/Environment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v1

    return-object v1
.end method

.method private openEnvironment(Lcom/sleepycat/je/EnvironmentConfig;Z)Lcom/sleepycat/je/Environment;
    .locals 6
    .param p1, "config"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p2, "createNew"    # Z

    .line 1739
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbCacheSize;->mkTempDir()V

    .line 1741
    if-eqz p2, :cond_0

    .line 1742
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbCacheSize;->emptyTempDir()V

    .line 1745
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/EnvironmentConfig;->setTransactional(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 1746
    sget-object v1, Lcom/sleepycat/je/Durability;->COMMIT_NO_SYNC:Lcom/sleepycat/je/Durability;

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/EnvironmentConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 1747
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/EnvironmentConfig;->setAllowCreate(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 1750
    const-string v1, "je.env.runCleaner"

    const-string v2, "false"

    invoke-virtual {p1, v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 1752
    const-string v1, "je.env.runCheckpointer"

    invoke-virtual {p1, v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 1754
    const-string v1, "je.env.runINCompressor"

    invoke-virtual {p1, v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 1756
    const-string v1, "je.env.runEvictor"

    invoke-virtual {p1, v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 1758
    const-string v1, "je.env.runOffHeapEvictor"

    invoke-virtual {p1, v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 1760
    const-string v1, "je.env.runVerifier"

    invoke-virtual {p1, v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 1762
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_EXTINCT_RECORD_SCANNER:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1763
    invoke-virtual {v1}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1762
    invoke-virtual {p1, v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 1766
    const-string v1, "je.evictor.evictBytes"

    const-string v2, "1024"

    invoke-virtual {p1, v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 1771
    iget-boolean v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->replicated:Z

    if-eqz v1, :cond_1

    .line 1773
    :try_start_0
    const-string v1, "com.sleepycat.je.rep.utilint.DbCacheSizeRepEnv"

    .line 1774
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1775
    .local v1, "repEnvClass":Ljava/lang/Class;
    nop

    .line 1776
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/utilint/DbCacheSizeRepEnv;

    .line 1777
    .local v2, "repEnv":Lcom/sleepycat/je/utilint/DbCacheSizeRepEnv;
    iget-object v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->tempDir:Ljava/io/File;

    iget-object v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->repParams:Ljava/util/Map;

    invoke-interface {v2, v3, p1, v4}, Lcom/sleepycat/je/utilint/DbCacheSizeRepEnv;->open(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Ljava/util/Map;)Lcom/sleepycat/je/Environment;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 1782
    .end local v2    # "repEnv":Lcom/sleepycat/je/utilint/DbCacheSizeRepEnv;
    .local v1, "newEnv":Lcom/sleepycat/je/Environment;
    goto :goto_1

    .line 1778
    .end local v1    # "newEnv":Lcom/sleepycat/je/Environment;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 1781
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1784
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->repParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1789
    new-instance v1, Lcom/sleepycat/je/Environment;

    iget-object v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->tempDir:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Lcom/sleepycat/je/Environment;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;)V

    .line 1799
    .restart local v1    # "newEnv":Lcom/sleepycat/je/Environment;
    :goto_1
    nop

    .line 1800
    invoke-virtual {v1}, Lcom/sleepycat/je/Environment;->getConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v2

    const-string v3, "je.log.fileMax"

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/EnvironmentConfig;->getConfigParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1799
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 1802
    .local v2, "fileSize":J
    const-wide/32 v4, 0xfffffe

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    iget-boolean v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->orderedInsertion:Z

    if-nez v4, :cond_3

    .line 1803
    :cond_2
    sput-boolean v0, Lcom/sleepycat/je/tree/IN;->disableCompactLsns:Z

    .line 1810
    :cond_3
    iget-boolean v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-eqz v0, :cond_4

    .line 1811
    invoke-static {v1}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 1812
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->preallocateLRUEntries()V

    .line 1815
    :cond_4
    return-object v1

    .line 1785
    .end local v1    # "newEnv":Lcom/sleepycat/je/Environment;
    .end local v2    # "fileSize":J
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set replication params in a standalone environment.  May add -replicated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private openMeasureEnvironment(ZZ)Lcom/sleepycat/je/Environment;
    .locals 3
    .param p1, "createNew"    # Z
    .param p2, "setMainSize"    # Z

    .line 1691
    iget-object v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->envConfig:Lcom/sleepycat/je/EnvironmentConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->clone()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v0

    .line 1693
    .local v0, "config":Lcom/sleepycat/je/EnvironmentConfig;
    if-eqz p2, :cond_0

    .line 1694
    iget-wide v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainCacheSize:J

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setCacheSize(J)Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 1704
    const/high16 v1, 0x300000

    .line 1706
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1704
    const-string v2, "je.log.totalBufferBytes"

    invoke-virtual {v0, v2, v1}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    goto :goto_0

    .line 1708
    :cond_0
    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/EnvironmentConfig;->setCachePercent(I)Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 1711
    :goto_0
    iget-boolean v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-eqz v1, :cond_1

    .line 1712
    const-wide/32 v1, 0x40000000

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setOffHeapCacheSize(J)Lcom/sleepycat/je/EnvironmentMutableConfig;

    goto :goto_1

    .line 1714
    :cond_1
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setOffHeapCacheSize(J)Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 1717
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/util/DbCacheSize;->openEnvironment(Lcom/sleepycat/je/EnvironmentConfig;Z)Lcom/sleepycat/je/Environment;

    move-result-object v1

    return-object v1
.end method

.method private padLeft([BI)[B
    .locals 4
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .line 2116
    array-length v0, p1

    if-gt v0, p2, :cond_1

    .line 2117
    array-length v0, p1

    if-ne v0, p2, :cond_0

    .line 2118
    return-object p1

    .line 2120
    :cond_0
    new-array v0, p2, [B

    .line 2121
    .local v0, "b":[B
    const/4 v1, 0x0

    array-length v2, p1

    sub-int v2, p2, v2

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2122
    return-object v0

    .line 2116
    .end local v0    # "b":[B
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private preloadRecords(Ljava/io/PrintStream;Lcom/sleepycat/je/Database;Z)Lcom/sleepycat/je/PreloadStatus;
    .locals 4
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "db"    # Lcom/sleepycat/je/Database;
    .param p3, "loadLNs"    # Z

    .line 2131
    const/4 v0, 0x0

    .line 2132
    .local v0, "thread":Ljava/lang/Thread;
    if-eqz p1, :cond_0

    .line 2133
    new-instance v1, Lcom/sleepycat/je/util/DbCacheSize$6;

    invoke-direct {v1, p0, p1}, Lcom/sleepycat/je/util/DbCacheSize$6;-><init>(Lcom/sleepycat/je/util/DbCacheSize;Ljava/io/PrintStream;)V

    move-object v0, v1

    .line 2147
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2151
    :cond_0
    :try_start_0
    new-instance v1, Lcom/sleepycat/je/PreloadConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/PreloadConfig;-><init>()V

    invoke-virtual {v1, p3}, Lcom/sleepycat/je/PreloadConfig;->setLoadLNs(Z)Lcom/sleepycat/je/PreloadConfig;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sleepycat/je/Database;->preload(Lcom/sleepycat/je/PreloadConfig;)Lcom/sleepycat/je/PreloadStats;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2153
    .local v1, "stats":Lcom/sleepycat/je/PreloadStats;
    if-eqz v0, :cond_1

    .line 2154
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2157
    :cond_1
    if-eqz v0, :cond_2

    .line 2159
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2162
    goto :goto_0

    .line 2160
    :catch_0
    move-exception v2

    .line 2161
    .local v2, "e":Ljava/lang/InterruptedException;
    new-instance v3, Lcom/sleepycat/util/RuntimeExceptionWrapper;

    invoke-direct {v3, v2}, Lcom/sleepycat/util/RuntimeExceptionWrapper;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 2171
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v2

    .line 2172
    .local v2, "env":Lcom/sleepycat/je/Environment;
    iget-boolean v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-eqz v3, :cond_3

    .line 2173
    invoke-virtual {v2}, Lcom/sleepycat/je/Environment;->evictMemory()V

    .line 2174
    sget-object v3, Lcom/sleepycat/je/StatsConfig;->CLEAR:Lcom/sleepycat/je/StatsConfig;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/Environment;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/EnvironmentStats;

    .line 2177
    :cond_3
    invoke-virtual {v1}, Lcom/sleepycat/je/PreloadStats;->getStatus()Lcom/sleepycat/je/PreloadStatus;

    move-result-object v3

    return-object v3

    .line 2153
    .end local v1    # "stats":Lcom/sleepycat/je/PreloadStats;
    .end local v2    # "env":Lcom/sleepycat/je/Environment;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 2154
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    throw v1
.end method

.method private printProperties(Ljava/io/PrintStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overhead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->envOverhead:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalNodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainNoLNsOrVLSNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalNodesAndVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainNoLNsWithVLSNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1401
    iget v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->dataSize:I

    if-ltz v0, :cond_0

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allNodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainWithLNsAndVLSNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1404
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-eqz v0, :cond_1

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minMainCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainMinDataSize:J

    iget-wide v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->envOverhead:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offHeapInternalNodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapNoLNsOrVLSNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1407
    iget v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->dataSize:I

    if-ltz v0, :cond_1

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offHeapAllNodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapWithLNsAndVLSNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1411
    :cond_1
    const-string v0, "# Following are deprecated"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minInternalNodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainNoLNsOrVLSNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxInternalNodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainNoLNsOrVLSNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1414
    iget v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->dataSize:I

    if-ltz v0, :cond_2

    .line 1415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minAllNodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainWithLNsAndVLSNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxAllNodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainWithLNsAndVLSNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1418
    :cond_2
    return-void
.end method

.method private readRecords(Ljava/io/PrintStream;Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Database;Z)V
    .locals 7
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "env"    # Lcom/sleepycat/je/Environment;
    .param p3, "db"    # Lcom/sleepycat/je/Database;
    .param p4, "readData"    # Z

    .line 1973
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1974
    .local v0, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1976
    .local v1, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    if-nez p4, :cond_0

    .line 1977
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2}, Lcom/sleepycat/je/DatabaseEntry;->setPartial(IIZ)V

    .line 1980
    :cond_0
    new-instance v2, Lcom/sleepycat/je/ReadOptions;

    invoke-direct {v2}, Lcom/sleepycat/je/ReadOptions;-><init>()V

    .line 1982
    .local v2, "options":Lcom/sleepycat/je/ReadOptions;
    iget-boolean v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->assumeEvictLN:Z

    if-eqz v3, :cond_1

    .line 1983
    sget-object v3, Lcom/sleepycat/je/CacheMode;->EVICT_LN:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/ReadOptions;->setCacheMode(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/ReadOptions;

    .line 1986
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p3, v3, v3}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v3

    .line 1987
    .local v3, "cursor":Lcom/sleepycat/je/Cursor;
    :goto_0
    :try_start_0
    sget-object v4, Lcom/sleepycat/je/Get;->NEXT:Lcom/sleepycat/je/Get;

    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    goto :goto_0

    .line 1990
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1991
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    :cond_3
    return-void

    .line 1986
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v4

    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "options":Lcom/sleepycat/je/ReadOptions;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "out":Ljava/io/PrintStream;
    .end local p2    # "env":Lcom/sleepycat/je/Environment;
    .end local p3    # "db":Lcom/sleepycat/je/Database;
    .end local p4    # "readData":Z
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1990
    .restart local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "options":Lcom/sleepycat/je/ReadOptions;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "out":Ljava/io/PrintStream;
    .restart local p2    # "env":Lcom/sleepycat/je/Environment;
    .restart local p3    # "db":Lcom/sleepycat/je/Database;
    .restart local p4    # "readData":Z
    :catchall_1
    move-exception v5

    if-eqz v3, :cond_4

    :try_start_2
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v6

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v5
.end method

.method private setKeyData([BILcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 6
    .param p1, "keyBytes"    # [B
    .param p2, "keyOffset"    # I
    .param p3, "keyEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "dataEntry"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 1362
    iget-boolean v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->duplicates:Z

    if-eqz v0, :cond_0

    .line 1363
    iget v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->keySize:I

    iget v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->dataSize:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .local v0, "fullKey":[B
    goto :goto_0

    .line 1365
    .end local v0    # "fullKey":[B
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->keySize:I

    new-array v0, v0, [B

    .line 1368
    .restart local v0    # "fullKey":[B
    :goto_0
    iget v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->keyPrefix:I

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, v0

    if-gt v1, v2, :cond_2

    .line 1374
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1378
    iget-boolean v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->duplicates:Z

    if-eqz v1, :cond_1

    .line 1379
    iget v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->keySize:I

    new-array v3, v1, [B

    .line 1380
    .local v3, "finalKey":[B
    iget v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->dataSize:I

    new-array v4, v4, [B

    .line 1381
    .local v4, "finalData":[B
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1382
    iget v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->keySize:I

    iget v5, p0, Lcom/sleepycat/je/util/DbCacheSize;->dataSize:I

    invoke-static {v0, v1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 1384
    .end local v3    # "finalKey":[B
    .end local v4    # "finalData":[B
    :cond_1
    move-object v3, v0

    .line 1385
    .restart local v3    # "finalKey":[B
    iget v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->dataSize:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v4, v1, [B

    .line 1388
    .restart local v4    # "finalData":[B
    :goto_1
    invoke-virtual {p3, v3}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 1389
    invoke-virtual {p4, v4}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 1390
    return-void

    .line 1369
    .end local v3    # "finalKey":[B
    .end local v4    # "finalData":[B
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key doesn\'t fit, allowedLen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " keyLen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " prefixLen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->keyPrefix:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private trimLNs(Lcom/sleepycat/je/Database;)V
    .locals 1
    .param p1, "db"    # Lcom/sleepycat/je/Database;

    .line 2011
    new-instance v0, Lcom/sleepycat/je/util/DbCacheSize$2;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/util/DbCacheSize$2;-><init>(Lcom/sleepycat/je/util/DbCacheSize;)V

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/util/DbCacheSize;->iterateBINs(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/util/DbCacheSize$BINVisitor;)Z

    .line 2019
    return-void
.end method

.method private trimVLSNs(Lcom/sleepycat/je/Database;)V
    .locals 1
    .param p1, "db"    # Lcom/sleepycat/je/Database;

    .line 2022
    new-instance v0, Lcom/sleepycat/je/util/DbCacheSize$3;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/util/DbCacheSize$3;-><init>(Lcom/sleepycat/je/util/DbCacheSize;)V

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/util/DbCacheSize;->iterateBINs(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/util/DbCacheSize$BINVisitor;)Z

    .line 2030
    return-void
.end method

.method private static usage(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 836
    if-eqz p0, :cond_0

    .line 837
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 840
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usage:\njava "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sleepycat/je/util/DbCacheSize;

    .line 842
    invoke-static {v2}, Lcom/sleepycat/je/utilint/CmdUtil;->getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   -records <count>\n      # Total records (key/data pairs); required\n   -key <bytes> \n      # Average key bytes per record; required\n  [-data <bytes>]\n      # Average data bytes per record; if omitted no leaf\n      # node sizes are included in the output; required with\n      # -duplicates, and specifies the primary key length\n  [-offheap]\n      # Indicates that an off-heap cache will be used.\n  [-maincache <bytes>]\n      # The size of the main cache (in the JVM heap).\n      # The size of the off-heap cache displayed is the\n      # additional amount needed to hold the data set.\n      # If omitted, the main cache size is implied to\n      # be the amount needed to hold all internal nodes.\n      # Ignored if -offheap is not also specified.\n  [-keyprefix <bytes>]\n      # Expected size of the prefix for the keys in each\n      # BIN; default: zero, key prefixing is not configured;\n      # required with -duplicates\n  [-nodemax <entries>]\n      # Number of entries per Btree node; default: 128\n  [-orderedinsertion]\n      # Assume ordered insertions and no deletions, so BINs\n      # are 100% full; default: unordered insertions and/or\n      # deletions, BINs are 70% full\n  [-duplicates]\n      # Indicates that sorted duplicates are used, including\n      # MANY_TO_ONE and MANY_TO_MANY secondary indices;\n      # default: false\n  [-ttl]\n      # Indicates that TTL is used; default: false\n  [-replicated]\n      # Use a ReplicatedEnvironment; default: false\n  [-ENV_PARAM_NAME VALUE]...\n      # Any number of EnvironmentConfig parameters and\n      # ReplicationConfig parameters (if -replicated)\n  [-btreeinfo]\n      # Outputs additional Btree information\n  [-outputproperties]\n      # Writes Java properties to System.out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 841
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 886
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 887
    return-void
.end method


# virtual methods
.method calculateCacheSizes()V
    .locals 12

    .line 894
    iget v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->binMaxEntries:I

    if-gtz v0, :cond_0

    .line 895
    iget v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->nodeMaxEntries:I

    iput v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->binMaxEntries:I

    .line 898
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sleepycat/je/util/DbCacheSize;->openCalcEnvironment(Z)Lcom/sleepycat/je/Environment;

    move-result-object v1

    .line 899
    .local v1, "env":Lcom/sleepycat/je/Environment;
    const/4 v2, 0x0

    .line 901
    .local v2, "success":Z
    const/16 v3, 0x3e8

    const/4 v4, 0x0

    :try_start_0
    sput v4, Lcom/sleepycat/je/tree/IN;->ACCUMULATED_LIMIT:I

    .line 903
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/sleepycat/je/Environment;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/EnvironmentStats;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/EnvironmentStats;->getCacheTotalBytes()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sleepycat/je/util/DbCacheSize;->envOverhead:J

    .line 905
    iget-boolean v7, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_3

    .line 907
    iget-wide v10, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainCacheSize:J

    cmp-long v7, v10, v8

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->assumeEvictLN:Z

    .line 909
    cmp-long v0, v10, v8

    if-lez v0, :cond_3

    sub-long/2addr v10, v5

    const-wide/32 v4, 0x100000

    cmp-long v0, v10, v4

    if-lez v0, :cond_2

    goto :goto_1

    .line 912
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The -maincache value must be at least 1 MiB larger than the environment overhead ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/util/DbCacheSize;->INT_FORMAT:Ljava/text/NumberFormat;

    iget-wide v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->envOverhead:J

    .line 915
    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "env":Lcom/sleepycat/je/Environment;
    .end local v2    # "success":Z
    throw v0

    .line 919
    .restart local v1    # "env":Lcom/sleepycat/je/Environment;
    .restart local v2    # "success":Z
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->orderedInsertion:Z

    const/16 v4, 0x64

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_2

    :cond_4
    const/16 v0, 0x46

    .line 922
    .local v0, "density":I
    :goto_2
    iget v5, p0, Lcom/sleepycat/je/util/DbCacheSize;->nodeMaxEntries:I

    mul-int/2addr v5, v0

    div-int/2addr v5, v4

    iput v5, p0, Lcom/sleepycat/je/util/DbCacheSize;->nodeAvg:I

    .line 923
    iget v5, p0, Lcom/sleepycat/je/util/DbCacheSize;->binMaxEntries:I

    mul-int/2addr v5, v0

    div-int/2addr v5, v4

    iput v5, p0, Lcom/sleepycat/je/util/DbCacheSize;->binAvg:I

    .line 925
    invoke-direct {p0, v1}, Lcom/sleepycat/je/util/DbCacheSize;->calcTreeSizes(Lcom/sleepycat/je/Environment;)V

    .line 926
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbCacheSize;->calcNNodes()V

    .line 927
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbCacheSize;->calcMainCacheSizes()V

    .line 936
    iget-boolean v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-eqz v4, :cond_7

    .line 938
    iget-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainCacheSize:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_5

    .line 939
    iget-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainNoLNsOrVLSNs:J

    iget-wide v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->envOverhead:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainCacheSize:J

    .line 942
    :cond_5
    iget-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainCacheSize:J

    iget-wide v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->envOverhead:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainDataSize:J

    .line 943
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbCacheSize;->calcLevel2AndAboveSize()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainMinDataSize:J

    .line 945
    iget-wide v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainDataSize:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_6

    .line 946
    iget-wide v8, p0, Lcom/sleepycat/je/util/DbCacheSize;->records:J

    long-to-double v8, v8

    long-to-double v6, v6

    long-to-double v4, v4

    div-double/2addr v6, v4

    mul-double/2addr v8, v6

    double-to-long v4, v8

    iput-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->records:J

    .line 947
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbCacheSize;->calcNNodes()V

    .line 948
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbCacheSize;->calcMainCacheSizes()V

    .line 951
    :cond_6
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbCacheSize;->calcOffHeapNoLNsOrVLSNs()V

    .line 952
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbCacheSize;->calcOffHeapWithLNsAndVLSNs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    :cond_7
    const/4 v0, 0x1

    .line 958
    .end local v2    # "success":Z
    .local v0, "success":Z
    sput v3, Lcom/sleepycat/je/tree/IN;->ACCUMULATED_LIMIT:I

    .line 965
    :try_start_1
    invoke-virtual {v1}, Lcom/sleepycat/je/Environment;->close()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 970
    goto :goto_3

    .line 966
    :catch_0
    move-exception v2

    .line 967
    .local v2, "e":Ljava/lang/RuntimeException;
    if-nez v0, :cond_8

    .line 971
    .end local v2    # "e":Ljava/lang/RuntimeException;
    nop

    .line 972
    :goto_3
    return-void

    .line 968
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    :cond_8
    throw v2

    .line 958
    .end local v0    # "success":Z
    .local v2, "success":Z
    :catchall_0
    move-exception v0

    sput v3, Lcom/sleepycat/je/tree/IN;->ACCUMULATED_LIMIT:I

    .line 965
    :try_start_2
    invoke-virtual {v1}, Lcom/sleepycat/je/Environment;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 970
    goto :goto_4

    .line 966
    :catch_1
    move-exception v3

    .line 967
    .local v3, "e":Ljava/lang/RuntimeException;
    if-eqz v2, :cond_9

    .line 968
    throw v3

    .line 970
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_9
    :goto_4
    throw v0
.end method

.method cleanup()V
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->tempDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 750
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbCacheSize;->emptyTempDir()V

    .line 751
    iget-object v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->tempDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 753
    :cond_0
    return-void
.end method

.method getMainNoLNsOrVLSNs()J
    .locals 2

    .line 756
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainNoLNsOrVLSNs:J

    return-wide v0
.end method

.method getMainNoLNsWithVLSNs()J
    .locals 2

    .line 760
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainNoLNsWithVLSNs:J

    return-wide v0
.end method

.method getMainWithLNsAndVLSNs()J
    .locals 2

    .line 772
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainWithLNsAndVLSNs:J

    return-wide v0
.end method

.method getMeasuredMainNoLNsOrVLSNs()J
    .locals 2

    .line 776
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->measuredMainNoLNsOrVLSNs:J

    return-wide v0
.end method

.method getMeasuredMainNoLNsWithVLSNs()J
    .locals 2

    .line 780
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->measuredMainNoLNsWithVLSNs:J

    return-wide v0
.end method

.method getMeasuredMainWithLNsAndVLSNs()J
    .locals 2

    .line 784
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->measuredMainWithLNsAndVLSNs:J

    return-wide v0
.end method

.method getMeasuredOffHeapNoLNsOrVLSNs()J
    .locals 2

    .line 788
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->measuredOffHeapNoLNsOrVLSNs:J

    return-wide v0
.end method

.method getMeasuredOffHeapWithLNsAndVLSNs()J
    .locals 2

    .line 792
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->measuredOffHeapWithLNsAndVLSNs:J

    return-wide v0
.end method

.method getOffHeapNoLNsOrVLSNs()J
    .locals 2

    .line 768
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapNoLNsOrVLSNs:J

    return-wide v0
.end method

.method getOffHeapWithLNsAndVLSNs()J
    .locals 2

    .line 764
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapWithLNsAndVLSNs:J

    return-wide v0
.end method

.method getPreloadMainNoLNsOrVLSNs()J
    .locals 2

    .line 796
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->preloadMainNoLNsOrVLSNs:J

    return-wide v0
.end method

.method getPreloadMainNoLNsWithVLSNs()J
    .locals 2

    .line 800
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->preloadMainNoLNsWithVLSNs:J

    return-wide v0
.end method

.method getPreloadMainWithLNsAndVLSNs()J
    .locals 2

    .line 804
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->preloadMainWithLNsAndVLSNs:J

    return-wide v0
.end method

.method measure(Ljava/io/PrintStream;)V
    .locals 10
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 1574
    const-string v0, ")"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sleepycat/je/util/DbCacheSize;->openMeasureEnvironment(ZZ)Lcom/sleepycat/je/Environment;

    move-result-object v3

    .line 1577
    .local v3, "env":Lcom/sleepycat/je/Environment;
    const/16 v4, 0x3e8

    :try_start_0
    sput v2, Lcom/sleepycat/je/tree/IN;->ACCUMULATED_LIMIT:I

    .line 1579
    invoke-direct {p0, v3, v1}, Lcom/sleepycat/je/util/DbCacheSize;->openDatabase(Lcom/sleepycat/je/Environment;Z)Lcom/sleepycat/je/Database;

    move-result-object v5

    .line 1581
    .local v5, "db":Lcom/sleepycat/je/Database;
    if-eqz p1, :cond_0

    .line 1582
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Measuring with maximum cache size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sleepycat/je/util/DbCacheSize;->INT_FORMAT:Ljava/text/NumberFormat;

    .line 1584
    invoke-virtual {v3}, Lcom/sleepycat/je/Environment;->getConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/EnvironmentConfig;->getCacheSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " and (for off-heap) main data size: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainDataSize:J

    .line 1586
    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1582
    invoke-virtual {p1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1589
    :cond_0
    invoke-direct {p0, p1, v3, v5}, Lcom/sleepycat/je/util/DbCacheSize;->insertRecords(Ljava/io/PrintStream;Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Database;)V

    .line 1591
    iget-boolean v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-eqz v6, :cond_1

    .line 1592
    invoke-virtual {v5}, Lcom/sleepycat/je/Database;->close()V

    .line 1593
    invoke-virtual {v3}, Lcom/sleepycat/je/Environment;->close()V

    .line 1594
    const/4 v3, 0x0

    .line 1595
    invoke-direct {p0, v2, v2}, Lcom/sleepycat/je/util/DbCacheSize;->openMeasureEnvironment(ZZ)Lcom/sleepycat/je/Environment;

    move-result-object v6

    move-object v3, v6

    .line 1597
    invoke-direct {p0, v3, v2}, Lcom/sleepycat/je/util/DbCacheSize;->openDatabase(Lcom/sleepycat/je/Environment;Z)Lcom/sleepycat/je/Database;

    move-result-object v6

    move-object v5, v6

    .line 1599
    invoke-direct {p0, p1, v3, v5, v2}, Lcom/sleepycat/je/util/DbCacheSize;->readRecords(Ljava/io/PrintStream;Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Database;Z)V

    .line 1600
    iget-wide v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainDataSize:J

    invoke-direct {p0, v5, v6, v7}, Lcom/sleepycat/je/util/DbCacheSize;->evictMainToDataSize(Lcom/sleepycat/je/Database;J)V

    .line 1602
    const-string v6, "After read keys only, evict main to size"

    invoke-direct {p0, p1, v3, v6}, Lcom/sleepycat/je/util/DbCacheSize;->getStats(Ljava/io/PrintStream;Lcom/sleepycat/je/Environment;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->measuredMainNoLNsOrVLSNs:J

    .line 1605
    nop

    .line 1606
    invoke-static {v3}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sleepycat/je/util/DbCacheSize;->getOffHeapCacheSize(Lcom/sleepycat/je/dbi/EnvironmentImpl;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->measuredOffHeapNoLNsOrVLSNs:J

    .line 1608
    invoke-direct {p0, p1, v3, v5, v1}, Lcom/sleepycat/je/util/DbCacheSize;->readRecords(Ljava/io/PrintStream;Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Database;Z)V

    .line 1609
    iget-wide v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainDataSize:J

    invoke-direct {p0, v5, v6, v7}, Lcom/sleepycat/je/util/DbCacheSize;->evictMainToDataSize(Lcom/sleepycat/je/Database;J)V

    .line 1611
    const-string v6, "After read all, evict main to size"

    invoke-direct {p0, p1, v3, v6}, Lcom/sleepycat/je/util/DbCacheSize;->getStats(Ljava/io/PrintStream;Lcom/sleepycat/je/Environment;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->measuredMainWithLNsAndVLSNs:J

    .line 1614
    nop

    .line 1615
    invoke-static {v3}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sleepycat/je/util/DbCacheSize;->getOffHeapCacheSize(Lcom/sleepycat/je/dbi/EnvironmentImpl;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->measuredOffHeapWithLNsAndVLSNs:J

    goto :goto_0

    .line 1618
    :cond_1
    const-string v6, "After insert"

    invoke-direct {p0, p1, v3, v6}, Lcom/sleepycat/je/util/DbCacheSize;->getStats(Ljava/io/PrintStream;Lcom/sleepycat/je/Environment;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->measuredMainWithLNsAndVLSNs:J

    .line 1621
    invoke-direct {p0, v5}, Lcom/sleepycat/je/util/DbCacheSize;->trimLNs(Lcom/sleepycat/je/Database;)V

    .line 1623
    const-string v6, "After trimLNs"

    invoke-direct {p0, p1, v3, v6}, Lcom/sleepycat/je/util/DbCacheSize;->getStats(Ljava/io/PrintStream;Lcom/sleepycat/je/Environment;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->measuredMainNoLNsWithVLSNs:J

    .line 1626
    invoke-direct {p0, v5}, Lcom/sleepycat/je/util/DbCacheSize;->trimVLSNs(Lcom/sleepycat/je/Database;)V

    .line 1628
    const-string v6, "After trimVLSNs"

    invoke-direct {p0, p1, v3, v6}, Lcom/sleepycat/je/util/DbCacheSize;->getStats(Ljava/io/PrintStream;Lcom/sleepycat/je/Environment;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->measuredMainNoLNsOrVLSNs:J

    .line 1632
    :goto_0
    invoke-virtual {v5}, Lcom/sleepycat/je/Database;->close()V

    .line 1633
    invoke-virtual {v3}, Lcom/sleepycat/je/Environment;->close()V

    .line 1634
    const/4 v3, 0x0

    .line 1636
    iget-boolean v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    invoke-direct {p0, v2, v6}, Lcom/sleepycat/je/util/DbCacheSize;->openMeasureEnvironment(ZZ)Lcom/sleepycat/je/Environment;

    move-result-object v6

    move-object v3, v6

    .line 1638
    invoke-direct {p0, v3, v2}, Lcom/sleepycat/je/util/DbCacheSize;->openDatabase(Lcom/sleepycat/je/Environment;Z)Lcom/sleepycat/je/Database;

    move-result-object v6

    move-object v5, v6

    .line 1640
    invoke-direct {p0, p1, v5, v2}, Lcom/sleepycat/je/util/DbCacheSize;->preloadRecords(Ljava/io/PrintStream;Lcom/sleepycat/je/Database;Z)Lcom/sleepycat/je/PreloadStatus;

    move-result-object v2

    .line 1642
    .local v2, "status":Lcom/sleepycat/je/PreloadStatus;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Internal nodes only after preload ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v3, v6}, Lcom/sleepycat/je/util/DbCacheSize;->getStats(Ljava/io/PrintStream;Lcom/sleepycat/je/Environment;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->preloadMainNoLNsOrVLSNs:J

    .line 1647
    iget-boolean v8, p0, Lcom/sleepycat/je/util/DbCacheSize;->assumeEvictLN:Z

    if-eqz v8, :cond_2

    .line 1648
    iput-wide v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->preloadMainWithLNsAndVLSNs:J

    goto :goto_1

    .line 1650
    :cond_2
    invoke-direct {p0, p1, v5, v1}, Lcom/sleepycat/je/util/DbCacheSize;->preloadRecords(Ljava/io/PrintStream;Lcom/sleepycat/je/Database;Z)Lcom/sleepycat/je/PreloadStatus;

    move-result-object v1

    move-object v2, v1

    .line 1652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "All nodes after preload ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v3, v1}, Lcom/sleepycat/je/util/DbCacheSize;->getStats(Ljava/io/PrintStream;Lcom/sleepycat/je/Environment;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->preloadMainWithLNsAndVLSNs:J

    .line 1658
    :goto_1
    iget-boolean v1, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-nez v1, :cond_3

    .line 1659
    invoke-direct {p0, v5}, Lcom/sleepycat/je/util/DbCacheSize;->trimLNs(Lcom/sleepycat/je/Database;)V

    .line 1661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Internal nodes plus VLSNs after preload ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v3, v0}, Lcom/sleepycat/je/util/DbCacheSize;->getStats(Ljava/io/PrintStream;Lcom/sleepycat/je/Environment;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->preloadMainNoLNsWithVLSNs:J

    .line 1667
    :cond_3
    invoke-virtual {v5}, Lcom/sleepycat/je/Database;->close()V

    .line 1668
    invoke-virtual {v3}, Lcom/sleepycat/je/Environment;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1669
    const/4 v0, 0x0

    .line 1673
    .end local v2    # "status":Lcom/sleepycat/je/PreloadStatus;
    .end local v3    # "env":Lcom/sleepycat/je/Environment;
    .end local v5    # "db":Lcom/sleepycat/je/Database;
    .local v0, "env":Lcom/sleepycat/je/Environment;
    sput v4, Lcom/sleepycat/je/tree/IN;->ACCUMULATED_LIMIT:I

    .line 1679
    if-eqz v0, :cond_4

    .line 1681
    :try_start_1
    invoke-virtual {v0}, Lcom/sleepycat/je/Environment;->close()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1683
    :goto_2
    goto :goto_3

    .line 1682
    :catch_0
    move-exception v1

    goto :goto_2

    .line 1686
    :cond_4
    :goto_3
    return-void

    .line 1673
    .end local v0    # "env":Lcom/sleepycat/je/Environment;
    .restart local v3    # "env":Lcom/sleepycat/je/Environment;
    :catchall_0
    move-exception v0

    sput v4, Lcom/sleepycat/je/tree/IN;->ACCUMULATED_LIMIT:I

    .line 1679
    if-eqz v3, :cond_5

    .line 1681
    :try_start_2
    invoke-virtual {v3}, Lcom/sleepycat/je/Environment;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1683
    goto :goto_4

    .line 1682
    :catch_1
    move-exception v1

    .line 1683
    :cond_5
    :goto_4
    throw v0
.end method

.method parseArgs([Ljava/lang/String;)V
    .locals 11
    .param p1, "args"    # [Ljava/lang/String;

    .line 590
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_25

    .line 591
    aget-object v1, p1, v0

    .line 592
    .local v1, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 593
    .local v4, "val":Ljava/lang/String;
    array-length v5, p1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v0, v5, :cond_0

    add-int/lit8 v5, v0, 0x1

    aget-object v5, p1, v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 594
    add-int/lit8 v0, v0, 0x1

    .line 595
    aget-object v4, p1, v0

    .line 597
    :cond_0
    const-string v5, "-records"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, " is not a positive integer"

    const-string v8, " is not a number"

    if-eqz v5, :cond_2

    .line 598
    if-nez v4, :cond_1

    .line 599
    const-string v5, "No value after -records"

    invoke-static {v5}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 602
    :cond_1
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/sleepycat/je/util/DbCacheSize;->records:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    goto :goto_1

    .line 603
    :catch_0
    move-exception v5

    .line 604
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 606
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    iget-wide v8, p0, Lcom/sleepycat/je/util/DbCacheSize;->records:J

    cmp-long v2, v8, v2

    if-gtz v2, :cond_24

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 609
    :cond_2
    const-string v5, "-key"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 610
    if-nez v4, :cond_3

    .line 611
    const-string v2, "No value after -key"

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 614
    :cond_3
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->keySize:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 617
    goto :goto_2

    .line 615
    :catch_1
    move-exception v2

    .line 616
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 618
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_2
    iget v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->keySize:I

    if-gtz v2, :cond_24

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 621
    :cond_4
    const-string v5, "-data"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v9, " is not a non-negative integer"

    if-eqz v5, :cond_6

    .line 622
    if-nez v4, :cond_5

    .line 623
    const-string v2, "No value after -data"

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 626
    :cond_5
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->dataSize:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 629
    goto :goto_3

    .line 627
    :catch_2
    move-exception v2

    .line 628
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 630
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_3
    iget v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->dataSize:I

    if-gez v2, :cond_24

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 633
    :cond_6
    const-string v5, "-offheap"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v10, "No value allowed after "

    if-eqz v5, :cond_8

    .line 634
    if-eqz v4, :cond_7

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 637
    :cond_7
    iput-boolean v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    goto/16 :goto_8

    .line 638
    :cond_8
    const-string v5, "-maincache"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 639
    if-nez v4, :cond_9

    .line 640
    const-string v5, "No value after -maincache"

    invoke-static {v5}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 643
    :cond_9
    :try_start_3
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainCacheSize:J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 646
    goto :goto_4

    .line 644
    :catch_3
    move-exception v5

    .line 645
    .restart local v5    # "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 647
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :goto_4
    iget-wide v8, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainCacheSize:J

    cmp-long v2, v8, v2

    if-gtz v2, :cond_24

    .line 648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 650
    :cond_a
    const-string v2, "-keyprefix"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 651
    if-nez v4, :cond_b

    .line 652
    const-string v2, "No value after -keyprefix"

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 655
    :cond_b
    :try_start_4
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->keyPrefix:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 658
    goto :goto_5

    .line 656
    :catch_4
    move-exception v2

    .line 657
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 659
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_5
    iget v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->keyPrefix:I

    if-gez v2, :cond_24

    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 662
    :cond_c
    const-string v2, "-orderedinsertion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 663
    if-eqz v4, :cond_d

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 666
    :cond_d
    iput-boolean v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->orderedInsertion:Z

    goto/16 :goto_8

    .line 667
    :cond_e
    const-string v2, "-duplicates"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 668
    if-eqz v4, :cond_f

    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 671
    :cond_f
    iput-boolean v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->duplicates:Z

    goto/16 :goto_8

    .line 672
    :cond_10
    const-string v2, "-ttl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 673
    if-eqz v4, :cond_11

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 676
    :cond_11
    iput-boolean v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->useTTL:Z

    goto/16 :goto_8

    .line 677
    :cond_12
    const-string v2, "-replicated"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 678
    if-eqz v4, :cond_13

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 681
    :cond_13
    iput-boolean v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->replicated:Z

    goto/16 :goto_8

    .line 682
    :cond_14
    const-string v2, "-nodemax"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 683
    if-nez v4, :cond_15

    .line 684
    const-string v2, "No value after -nodemax"

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 687
    :cond_15
    :try_start_5
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->nodeMaxEntries:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 690
    goto :goto_6

    .line 688
    :catch_5
    move-exception v2

    .line 689
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 691
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_6
    iget v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->nodeMaxEntries:I

    if-gtz v2, :cond_24

    .line 692
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 694
    :cond_16
    const-string v2, "-binmax"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 695
    if-nez v4, :cond_17

    .line 696
    const-string v2, "No value after -binmax"

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 699
    :cond_17
    :try_start_6
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->binMaxEntries:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 702
    goto :goto_7

    .line 700
    :catch_6
    move-exception v2

    .line 701
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 703
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_7
    iget v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->binMaxEntries:I

    if-gtz v2, :cond_24

    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 706
    :cond_18
    const-string v2, "-density"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 707
    nop

    .line 708
    const-string v2, "-density is no longer supported, see -orderedinsertion"

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 709
    :cond_19
    const-string v2, "-overhead"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 710
    const-string v2, "-overhead is no longer supported"

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 711
    :cond_1a
    const-string v2, "-je."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 712
    if-nez v4, :cond_1b

    .line 713
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No value after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 715
    :cond_1b
    const-string v2, "-je.rep."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 716
    iget-object v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->repParams:Ljava/util/Map;

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 718
    :cond_1c
    iget-object v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->envConfig:Lcom/sleepycat/je/EnvironmentConfig;

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    goto/16 :goto_8

    .line 720
    :cond_1d
    const-string v2, "-measure"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 721
    if-eqz v4, :cond_1e

    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 724
    :cond_1e
    iput-boolean v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->doMeasure:Z

    goto :goto_8

    .line 725
    :cond_1f
    const-string v2, "-outputproperties"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 726
    if-eqz v4, :cond_20

    .line 727
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 729
    :cond_20
    iput-boolean v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->outputProperties:Z

    goto :goto_8

    .line 730
    :cond_21
    const-string v2, "-btreeinfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 731
    if-eqz v4, :cond_22

    .line 732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 734
    :cond_22
    iput-boolean v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->btreeInfo:Z

    goto :goto_8

    .line 736
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown arg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 590
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/String;
    :cond_24
    :goto_8
    add-int/2addr v0, v6

    goto/16 :goto_0

    .line 740
    .end local v0    # "i":I
    :cond_25
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->records:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_26

    .line 741
    const-string v0, "-records not specified"

    invoke-static {v0}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 743
    :cond_26
    iget v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->keySize:I

    if-nez v0, :cond_27

    .line 744
    const-string v0, "-key not specified"

    invoke-static {v0}, Lcom/sleepycat/je/util/DbCacheSize;->usage(Ljava/lang/String;)V

    .line 746
    :cond_27
    return-void
.end method

.method printCacheSizes(Ljava/io/PrintStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 1425
    iget-boolean v0, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-eqz v0, :cond_0

    const-string v0, ": MAIN cache"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 1426
    .local v0, "mainSuffix":Ljava/lang/String;
    :goto_0
    const-string v1, ": OFF-HEAP cache"

    .line 1428
    .local v1, "offHeapSuffix":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 1429
    const-string v2, "=== Environment Cache Overhead ==="

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1430
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 1431
    sget-object v2, Lcom/sleepycat/je/util/DbCacheSize;->INT_FORMAT:Ljava/text/NumberFormat;

    iget-wide v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->envOverhead:J

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1432
    const-string v3, " minimum bytes"

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1433
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 1434
    const-string v3, "To account for JE daemon operation, record locks, HA network connections, etc,"

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1437
    const-string v3, "a larger amount is needed in practice."

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1438
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 1439
    const-string v3, "=== Database Cache Size ==="

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1440
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 1441
    const-string v3, "   Number of Bytes  Description\n   ---------------  -----------"

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1443
    iget-wide v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainNoLNsOrVLSNs:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Internal nodes only"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/sleepycat/je/util/DbCacheSize;->line(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1446
    iget-boolean v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-eqz v3, :cond_1

    .line 1447
    iget-wide v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapNoLNsOrVLSNs:J

    const-string v5, "Internal nodes only: OFF-HEAP cache"

    invoke-direct {p0, v3, v4, v5}, Lcom/sleepycat/je/util/DbCacheSize;->line(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1451
    :cond_1
    iget v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->dataSize:I

    if-ltz v3, :cond_5

    .line 1452
    iget-boolean v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-nez v3, :cond_2

    iget-wide v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainNoLNsWithVLSNs:J

    iget-wide v5, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainNoLNsOrVLSNs:J

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    .line 1453
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Internal nodes and record versions"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/sleepycat/je/util/DbCacheSize;->line(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1458
    :cond_2
    iget-wide v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainWithLNsAndVLSNs:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Internal nodes and leaf nodes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/sleepycat/je/util/DbCacheSize;->line(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1462
    iget-boolean v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-eqz v3, :cond_3

    .line 1463
    iget-wide v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapWithLNsAndVLSNs:J

    const-string v5, "Internal nodes and leaf nodes: OFF-HEAP cache"

    invoke-direct {p0, v3, v4, v5}, Lcom/sleepycat/je/util/DbCacheSize;->line(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1468
    :cond_3
    iget-wide v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainNoLNsOrVLSNs:J

    iget-wide v5, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainWithLNsAndVLSNs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    iget-wide v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapNoLNsOrVLSNs:J

    iget-wide v5, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapWithLNsAndVLSNs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 1471
    iget-boolean v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->duplicates:Z

    if-eqz v3, :cond_4

    .line 1472
    const-string v3, "\nNote that leaf nodes do not use additional memory because the database is\nconfigured for duplicates. In addition, record versions are not applicable."

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1478
    :cond_4
    const-string v3, "\nNote that leaf nodes do not use additional memory because with a small\ndata size, the LNs are embedded in the BINs. In addition, record versions\n(if configured) are always cached in this mode."

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1488
    :cond_5
    iget-boolean v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->duplicates:Z

    if-nez v3, :cond_6

    .line 1489
    const-string v3, "\nTo get leaf node sizing specify -data"

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1493
    :cond_6
    :goto_1
    iget-boolean v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-eqz v3, :cond_7

    iget-wide v3, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainMinDataSize:J

    iget-wide v5, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainDataSize:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    .line 1494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nWARNING: The information above applies to a data set of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->records:J

    .line 1496
    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " records,\nnot the number of records specified, because the main cache size specified is \ntoo small to hold all upper INs. This prevents all internal nodes (or leaf\nnodes) from fitting into cache, and the data set was reduced accordingly. To\nfit all internal nodes in cache with the specified  number of records, specify\na main cache size of at least "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->mainMinDataSize:J

    iget-wide v6, p0, Lcom/sleepycat/je/util/DbCacheSize;->envOverhead:J

    add-long/2addr v4, v6

    .line 1506
    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1494
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1509
    :cond_7
    iget-boolean v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->btreeInfo:Z

    if-eqz v2, :cond_8

    .line 1510
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 1511
    const-string v2, "=== Calculated Btree Information ==="

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 1513
    iget v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->btreeLevels:I

    int-to-long v2, v2

    const-string v4, "Btree levels"

    invoke-direct {p0, v2, v3, v4}, Lcom/sleepycat/je/util/DbCacheSize;->line(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1514
    iget-wide v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->nUinNodes:J

    const-string v4, "Upper internal nodes"

    invoke-direct {p0, v2, v3, v4}, Lcom/sleepycat/je/util/DbCacheSize;->line(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1515
    iget-wide v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->nBinNodes:J

    const-string v4, "Bottom internal nodes"

    invoke-direct {p0, v2, v3, v4}, Lcom/sleepycat/je/util/DbCacheSize;->line(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1517
    iget-boolean v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->offHeapCache:Z

    if-eqz v2, :cond_8

    .line 1518
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 1519
    const-string v2, "--- BINs and LNs in Main Cache vs Off-heap ---"

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1520
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 1521
    iget-wide v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->nMainBINsNoLNsOrVLSNs:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Internal nodes only, BINs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/sleepycat/je/util/DbCacheSize;->line(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1524
    iget-wide v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->nBinNodes:J

    iget-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->nMainBINsNoLNsOrVLSNs:J

    sub-long/2addr v2, v4

    const-string v4, "Internal nodes only, BINs: OFF-HEAP cache"

    invoke-direct {p0, v2, v3, v4}, Lcom/sleepycat/je/util/DbCacheSize;->line(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1527
    iget-wide v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->nMainBINsWithLNsAndVLSNs:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Internal nodes and leaf nodes, BINs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/sleepycat/je/util/DbCacheSize;->line(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1530
    iget-wide v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->nBinNodes:J

    iget-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->nMainBINsWithLNsAndVLSNs:J

    sub-long/2addr v2, v4

    const-string v4, "Internal nodes and leaf nodes, BINs: OFF-HEAP cache"

    invoke-direct {p0, v2, v3, v4}, Lcom/sleepycat/je/util/DbCacheSize;->line(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1533
    iget-wide v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->nMainLNsWithLNsAndVLSNs:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Internal nodes and leaf nodes, LNs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/sleepycat/je/util/DbCacheSize;->line(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1536
    iget-wide v2, p0, Lcom/sleepycat/je/util/DbCacheSize;->records:J

    iget-wide v4, p0, Lcom/sleepycat/je/util/DbCacheSize;->nMainLNsWithLNsAndVLSNs:J

    sub-long/2addr v2, v4

    const-string v4, "Internal nodes and leaf nodes, LNs: OFF-HEAP cache"

    invoke-direct {p0, v2, v3, v4}, Lcom/sleepycat/je/util/DbCacheSize;->line(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1542
    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 1543
    const-string v2, "For further information see the DbCacheSize javadoc."

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1544
    return-void
.end method
