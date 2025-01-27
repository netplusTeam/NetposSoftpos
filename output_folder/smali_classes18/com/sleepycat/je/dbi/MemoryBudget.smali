.class public Lcom/sleepycat/je/dbi/MemoryBudget;
.super Ljava/lang/Object;
.source "MemoryBudget.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/EnvConfigObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/dbi/MemoryBudget$SharedTotals;,
        Lcom/sleepycat/je/dbi/MemoryBudget$PrivateTotals;,
        Lcom/sleepycat/je/dbi/MemoryBudget$Totals;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ARRAYLIST_OVERHEAD:I

.field private static final ARRAYLIST_OVERHEAD_32:I

.field private static final ARRAYLIST_OVERHEAD_64:I

.field private static final ARRAYLIST_OVERHEAD_OOPS:I

.field public static final ARRAY_OVERHEAD:I

.field private static final ARRAY_OVERHEAD_32:I = 0x10

.field private static final ARRAY_OVERHEAD_64:I = 0x18

.field private static final ARRAY_OVERHEAD_OOPS:I = 0x10

.field public static final ARRAY_SIZE_INCLUDED:I

.field private static final ARRAY_SIZE_INCLUDED_32:I = 0x4

.field private static final ARRAY_SIZE_INCLUDED_64:I = 0x0

.field private static final ARRAY_SIZE_INCLUDED_OOPS:I = 0x0

.field public static final BINDELTA_OVERHEAD:I

.field private static final BINDELTA_OVERHEAD_32:I = 0x30

.field private static final BINDELTA_OVERHEAD_64:I = 0x48

.field private static final BINDELTA_OVERHEAD_OOPS:I = 0x40

.field public static final BIN_FIXED_OVERHEAD:I

.field private static final BIN_FIXED_OVERHEAD_32:I = 0xdf

.field private static final BIN_FIXED_OVERHEAD_64:I = 0x160

.field private static final BIN_FIXED_OVERHEAD_OOPS:I = 0xe8

.field public static final CHECKPOINT_REFERENCE_SIZE:I

.field private static final CHECKPOINT_REFERENCE_SIZE_32:I = 0x40

.field private static final CHECKPOINT_REFERENCE_SIZE_64:I = 0x6f

.field private static final CHECKPOINT_REFERENCE_SIZE_OOPS:I = 0x50

.field public static CLEANUP_DONE:Z = false

.field private static COMPRESSED_OOPS_KNOWN:Z = false

.field private static COMPRESSED_OOPS_KNOWN_ON:Z = false

.field private static COMPRESSED_OOPS_REQUESTED:Z = false

.field private static final DBFILESUMMARY_OVERHEAD_32:I = 0x28

.field private static final DBFILESUMMARY_OVERHEAD_64:I = 0x30

.field private static final DBFILESUMMARY_OVERHEAD_OOPS:I = 0x30

.field public static final DBIN_FIXED_OVERHEAD:I

.field private static final DBIN_FIXED_OVERHEAD_32:I = 0x98

.field private static final DBIN_FIXED_OVERHEAD_64:I = 0xe8

.field private static final DBIN_FIXED_OVERHEAD_OOPS:I = 0xa8

.field public static DEBUG_ADMIN:Z = false

.field public static DEBUG_DOS:Z = false

.field public static DEBUG_LOCK:Z = false

.field public static DEBUG_TREE:Z = false

.field public static DEBUG_TXN:Z = false

.field public static final DEFAULT_KEYVALS_OVERHEAD:I

.field private static final DEFAULT_KEYVALS_OVERHEAD_32:I = 0x10

.field private static final DEFAULT_KEYVALS_OVERHEAD_64:I = 0x18

.field private static final DEFAULT_KEYVALS_OVERHEAD_OOPS:I = 0x10

.field public static final DEFAULT_LONG_REP_OVERHEAD:I

.field private static final DEFAULT_LONG_REP_OVERHEAD_32:I = 0x10

.field private static final DEFAULT_LONG_REP_OVERHEAD_64:I = 0x20

.field private static final DEFAULT_LONG_REP_OVERHEAD_OOPS:I = 0x18

.field private static final DEFAULT_MIN_BTREE_CACHE_SIZE:I = 0x7d000

.field public static final DEFAULT_TARGET_ENTRY_OVERHEAD:I

.field private static final DEFAULT_TARGET_ENTRY_OVERHEAD_32:I = 0x10

.field private static final DEFAULT_TARGET_ENTRY_OVERHEAD_64:I = 0x18

.field private static final DEFAULT_TARGET_ENTRY_OVERHEAD_OOPS:I = 0x10

.field public static final DELTAINENTRY_OVERHEAD:I

.field private static final DELTAINENTRY_OVERHEAD_32:I = 0x20

.field private static final DELTAINENTRY_OVERHEAD_64:I = 0x30

.field private static final DELTAINENTRY_OVERHEAD_OOPS:I = 0x20

.field public static final DELTAINFO_OVERHEAD:I

.field private static final DELTAINFO_OVERHEAD_32:I = 0x18

.field private static final DELTAINFO_OVERHEAD_64:I = 0x28

.field private static final DELTAINFO_OVERHEAD_OOPS:I = 0x20

.field public static final DIN_FIXED_OVERHEAD:I

.field private static final DIN_FIXED_OVERHEAD_32:I = 0x78

.field private static final DIN_FIXED_OVERHEAD_64:I = 0xb0

.field private static final DIN_FIXED_OVERHEAD_OOPS:I = 0x78

.field public static final DOS_DEFERRED_DELTAREF_OVERHEAD:I

.field private static final DOS_DEFERRED_DELTAREF_OVERHEAD_32:I = 0x10

.field private static final DOS_DEFERRED_DELTAREF_OVERHEAD_64:I = 0x18

.field private static final DOS_DEFERRED_DELTAREF_OVERHEAD_OOPS:I = 0x10

.field public static final DOS_DEFERRED_LSN_BATCH_OVERHEAD:I

.field private static final DOS_DEFERRED_LSN_BATCH_OVERHEAD_32:I = 0x58

.field private static final DOS_DEFERRED_LSN_BATCH_OVERHEAD_64:I = 0x80

.field private static final DOS_DEFERRED_LSN_BATCH_OVERHEAD_OOPS:I = 0x58

.field public static final DOS_OFFHEAP_BINREF_OVERHEAD:I

.field private static final DOS_OFFHEAP_BINREF_OVERHEAD_32:I = 0x20

.field private static final DOS_OFFHEAP_BINREF_OVERHEAD_64:I = 0x28

.field private static final DOS_OFFHEAP_BINREF_OVERHEAD_OOPS:I = 0x28

.field public static final DOS_WEAK_BINREF_OVERHEAD:I

.field private static final DOS_WEAK_BINREF_OVERHEAD_32:I = 0x30

.field private static final DOS_WEAK_BINREF_OVERHEAD_64:I = 0x48

.field private static final DOS_WEAK_BINREF_OVERHEAD_OOPS:I = 0x30

.field public static final DUPCOUNTLN_OVERHEAD:I

.field private static final DUPCOUNTLN_OVERHEAD_32:I = 0x20

.field private static final DUPCOUNTLN_OVERHEAD_64:I = 0x30

.field private static final DUPCOUNTLN_OVERHEAD_OOPS:I = 0x28

.field private static final EMPTY_OBJ_ARRAY:I

.field public static final FILESUMMARYLN_OVERHEAD:I

.field private static final FILESUMMARYLN_OVERHEAD_32:I = 0x70

.field private static final FILESUMMARYLN_OVERHEAD_64:I = 0xa8

.field private static final FILESUMMARYLN_OVERHEAD_OOPS:I = 0x80

.field private static final FORCE_JVM_ARCH:Ljava/lang/String; = "je.forceJVMArch"

.field public static final HASHMAP_ENTRY_OVERHEAD:I

.field private static final HASHMAP_ENTRY_OVERHEAD_32:I = 0x18

.field private static final HASHMAP_ENTRY_OVERHEAD_64:I = 0x34

.field private static final HASHMAP_ENTRY_OVERHEAD_OOPS:I = 0x20

.field public static final HASHMAP_OVERHEAD:I

.field private static final HASHMAP_OVERHEAD_32:I = 0x78

.field private static final HASHMAP_OVERHEAD_64:I = 0xdb

.field private static final HASHMAP_OVERHEAD_OOPS:I = 0x80

.field public static final HASHSET_ENTRY_OVERHEAD:I

.field private static final HASHSET_ENTRY_OVERHEAD_32:I = 0x18

.field private static final HASHSET_ENTRY_OVERHEAD_64:I = 0x37

.field private static final HASHSET_ENTRY_OVERHEAD_OOPS:I = 0x20

.field public static final HASHSET_OVERHEAD:I

.field private static final HASHSET_OVERHEAD_32:I = 0x88

.field private static final HASHSET_OVERHEAD_64:I = 0xf0

.field private static final HASHSET_OVERHEAD_OOPS:I = 0x90

.field public static final INENTRY_OVERHEAD:I

.field private static final INENTRY_OVERHEAD_32:I = 0x10

.field private static final INENTRY_OVERHEAD_64:I = 0x20

.field private static final INENTRY_OVERHEAD_OOPS:I = 0x18

.field public static final IN_FIXED_OVERHEAD:I

.field private static final IN_FIXED_OVERHEAD_32:I = 0xf8

.field private static final IN_FIXED_OVERHEAD_64:I = 0x188

.field private static final IN_FIXED_OVERHEAD_OOPS:I = 0x100

.field private static final JVM_ARCH_PROPERTY:Ljava/lang/String; = "sun.arch.data.model"

.field public static final KEY_OVERHEAD:I

.field private static final KEY_OVERHEAD_32:I = 0x10

.field private static final KEY_OVERHEAD_64:I = 0x18

.field private static final KEY_OVERHEAD_OOPS:I = 0x10

.field public static final LN_INFO_OVERHEAD:I

.field private static final LN_INFO_OVERHEAD_32:I = 0x20

.field private static final LN_INFO_OVERHEAD_64:I = 0x30

.field private static final LN_INFO_OVERHEAD_OOPS:I = 0x1e

.field public static final LN_OVERHEAD:I

.field private static final LN_OVERHEAD_32:I = 0x10

.field private static final LN_OVERHEAD_64:I = 0x20

.field private static final LN_OVERHEAD_OOPS:I = 0x18

.field public static final LOCKIMPL_OVERHEAD:I

.field private static final LOCKIMPL_OVERHEAD_32:I = 0x18

.field private static final LOCKIMPL_OVERHEAD_64:I = 0x30

.field private static final LOCKIMPL_OVERHEAD_OOPS:I = 0x20

.field public static final LOCKINFO_OVERHEAD:I

.field private static final LOCKINFO_OVERHEAD_32:I = 0x10

.field private static final LOCKINFO_OVERHEAD_64:I = 0x20

.field private static final LOCKINFO_OVERHEAD_OOPS:I = 0x18

.field public static final LONG_OVERHEAD:I

.field private static final LONG_OVERHEAD_32:I = 0x10

.field private static final LONG_OVERHEAD_64:I = 0x18

.field private static final LONG_OVERHEAD_OOPS:I = 0x18

.field public static final MAPLN_OVERHEAD:I

.field private static final MAPLN_OVERHEAD_32:I = 0x398

.field private static final MAPLN_OVERHEAD_64:I = 0x658

.field private static final MAPLN_OVERHEAD_OOPS:I = 0x3f8

.field public static final MAX_KEY_SIZE_KEYVALS_OVERHEAD:I

.field private static final MAX_KEY_SIZE_KEYVALS_OVERHEAD_32:I = 0x10

.field private static final MAX_KEY_SIZE_KEYVALS_OVERHEAD_64:I = 0x20

.field private static final MAX_KEY_SIZE_KEYVALS_OVERHEAD_OOPS:I = 0x18

.field public static final MIN_MAX_MEMORY_SIZE:J = 0x18000L

.field public static final MIN_MAX_MEMORY_SIZE_STRING:Ljava/lang/String;

.field private static final N_64MB:J = 0x4000000L

.field public static final OBJECT_ARRAY_ITEM_OVERHEAD:I

.field private static final OBJECT_ARRAY_ITEM_OVERHEAD_32:I = 0x4

.field private static final OBJECT_ARRAY_ITEM_OVERHEAD_64:I = 0x8

.field private static final OBJECT_ARRAY_ITEM_OVERHEAD_OOPS:I = 0x4

.field public static final OBJECT_OVERHEAD:I

.field private static final OBJECT_OVERHEAD_32:I = 0x8

.field private static final OBJECT_OVERHEAD_64:I = 0x10

.field private static final OBJECT_OVERHEAD_OOPS:I = 0x10

.field public static final PRIMITIVE_LONG_ARRAY_ITEM_OVERHEAD:I = 0x8

.field public static final SPARSE_LONG_REP_OVERHEAD:I

.field private static final SPARSE_LONG_REP_OVERHEAD_32:I = 0x18

.field private static final SPARSE_LONG_REP_OVERHEAD_64:I = 0x28

.field private static final SPARSE_LONG_REP_OVERHEAD_OOPS:I = 0x18

.field public static final SPARSE_TARGET_ENTRY_OVERHEAD:I

.field private static final SPARSE_TARGET_ENTRY_OVERHEAD_32:I = 0x48

.field private static final SPARSE_TARGET_ENTRY_OVERHEAD_64:I = 0x78

.field private static final SPARSE_TARGET_ENTRY_OVERHEAD_OOPS:I = 0x50

.field public static final TFS_LIST_INITIAL_OVERHEAD:I

.field private static final TFS_LIST_INITIAL_OVERHEAD_32:I = 0x1d0

.field private static final TFS_LIST_INITIAL_OVERHEAD_64:I = 0x1f8

.field private static final TFS_LIST_INITIAL_OVERHEAD_OOPS:I = 0x1d0

.field public static final TFS_LIST_SEGMENT_OVERHEAD:I

.field private static final TFS_LIST_SEGMENT_OVERHEAD_32:I = 0x1b8

.field private static final TFS_LIST_SEGMENT_OVERHEAD_64:I = 0x1d1

.field private static final TFS_LIST_SEGMENT_OVERHEAD_OOPS:I = 0x1b8

.field public static final THINLOCKIMPL_OVERHEAD:I

.field private static final THINLOCKIMPL_OVERHEAD_32:I = 0x10

.field private static final THINLOCKIMPL_OVERHEAD_64:I = 0x20

.field private static final THINLOCKIMPL_OVERHEAD_OOPS:I = 0x18

.field public static final TREEMAP_ENTRY_OVERHEAD:I

.field private static final TREEMAP_ENTRY_OVERHEAD_32:I = 0x20

.field private static final TREEMAP_ENTRY_OVERHEAD_64:I = 0x40

.field private static final TREEMAP_ENTRY_OVERHEAD_OOPS:I = 0x28

.field public static final TREEMAP_OVERHEAD:I

.field private static final TREEMAP_OVERHEAD_32:I = 0x30

.field private static final TREEMAP_OVERHEAD_64:I = 0x50

.field private static final TREEMAP_OVERHEAD_OOPS:I = 0x30

.field public static final TUPLE_OUTPUT_OVERHEAD:I

.field private static final TUPLE_OUTPUT_OVERHEAD_32:I = 0x18

.field private static final TUPLE_OUTPUT_OVERHEAD_64:I = 0x20

.field private static final TUPLE_OUTPUT_OVERHEAD_OOPS:I = 0x18

.field public static final TWOHASHMAPS_OVERHEAD:I

.field private static final TWOHASHMAPS_OVERHEAD_32:I = 0xf0

.field private static final TWOHASHMAPS_OVERHEAD_64:I = 0x1b6

.field private static final TWOHASHMAPS_OVERHEAD_OOPS:I = 0x100

.field public static final TXN_OVERHEAD:I

.field private static final TXN_OVERHEAD_32:I = 0xe0

.field private static final TXN_OVERHEAD_64:I = 0x169

.field private static final TXN_OVERHEAD_OOPS:I = 0xf0

.field public static final UTILIZATION_PROFILE_ENTRY:I

.field private static final UTILIZATION_PROFILE_ENTRY_32:I = 0x6d

.field private static final UTILIZATION_PROFILE_ENTRY_64:I = 0xa0

.field private static final UTILIZATION_PROFILE_ENTRY_OOPS:I = 0x7d

.field public static final VERSIONEDLN_OVERHEAD:I

.field private static final VERSIONEDLN_OVERHEAD_32:I = 0x8

.field private static final VERSIONEDLN_OVERHEAD_64:I = 0x8

.field private static final VERSIONEDLN_OVERHEAD_OOPS:I = 0x8

.field public static final WRITE_LOCKINFO_OVERHEAD:I

.field private static final WRITE_LOCKINFO_OVERHEAD_32:I = 0x30

.field private static final WRITE_LOCKINFO_OVERHEAD_64:I = 0x48

.field private static final WRITE_LOCKINFO_OVERHEAD_OOPS:I = 0x38


# instance fields
.field private final adminMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

.field private final dosMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final lockMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

.field private logBufferBudget:J

.field private minTreeMemoryUsage:J

.field private final totals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

.field private trackerBudget:J

.field private final treeMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

.field private final txnMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 45
    nop

    .line 52
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sleepycat/je/dbi/MemoryBudget;->CLEANUP_DONE:Z

    .line 58
    const-string v0, "memAdmin"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sleepycat/je/dbi/MemoryBudget;->DEBUG_ADMIN:Z

    .line 59
    const-string v0, "memLock"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sleepycat/je/dbi/MemoryBudget;->DEBUG_LOCK:Z

    .line 60
    const-string v0, "memTxn"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sleepycat/je/dbi/MemoryBudget;->DEBUG_TXN:Z

    .line 61
    const-string v0, "memTree"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sleepycat/je/dbi/MemoryBudget;->DEBUG_TREE:Z

    .line 62
    const-string v0, "memDOS"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sleepycat/je/dbi/MemoryBudget;->DEBUG_DOS:Z

    .line 343
    invoke-static {v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->objectArraySize(I)I

    move-result v0

    sput v0, Lcom/sleepycat/je/dbi/MemoryBudget;->EMPTY_OBJ_ARRAY:I

    .line 344
    rsub-int/lit8 v2, v0, 0x28

    sput v2, Lcom/sleepycat/je/dbi/MemoryBudget;->ARRAYLIST_OVERHEAD_32:I

    .line 345
    rsub-int/lit8 v2, v0, 0x40

    sput v2, Lcom/sleepycat/je/dbi/MemoryBudget;->ARRAYLIST_OVERHEAD_64:I

    .line 346
    const/16 v2, 0x28

    rsub-int/lit8 v0, v0, 0x28

    sput v0, Lcom/sleepycat/je/dbi/MemoryBudget;->ARRAYLIST_OVERHEAD_OOPS:I

    .line 412
    sput-boolean v1, Lcom/sleepycat/je/dbi/MemoryBudget;->COMPRESSED_OOPS_REQUESTED:Z

    .line 413
    sput-boolean v1, Lcom/sleepycat/je/dbi/MemoryBudget;->COMPRESSED_OOPS_KNOWN:Z

    .line 414
    sput-boolean v1, Lcom/sleepycat/je/dbi/MemoryBudget;->COMPRESSED_OOPS_KNOWN_ON:Z

    .line 417
    const/4 v3, 0x0

    .line 418
    .local v3, "is64":Z
    const-string v0, "je.forceJVMArch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 421
    .local v4, "overrideArch":Ljava/lang/String;
    const/4 v5, 0x1

    const/16 v6, 0x40

    if-nez v4, :cond_2

    .line 422
    :try_start_0
    const-string/jumbo v0, "sun.arch.data.model"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "arch":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 424
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v6, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v1

    :goto_0
    move v3, v7

    .line 426
    .end local v0    # "arch":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 427
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v6, :cond_3

    move v0, v5

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    move v3, v0

    .line 431
    :goto_2
    goto :goto_3

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "NFE":Ljava/lang/NumberFormatException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v7}, Ljava/lang/NumberFormatException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 434
    .end local v0    # "NFE":Ljava/lang/NumberFormatException;
    :goto_3
    invoke-static {}, Lcom/sleepycat/je/dbi/CompressedOopsDetector;->isEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 435
    .local v0, "checkCompressedOops":Ljava/lang/Boolean;
    if-eqz v0, :cond_4

    .line 436
    sput-boolean v5, Lcom/sleepycat/je/dbi/MemoryBudget;->COMPRESSED_OOPS_KNOWN:Z

    .line 437
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sput-boolean v7, Lcom/sleepycat/je/dbi/MemoryBudget;->COMPRESSED_OOPS_KNOWN_ON:Z

    .line 441
    :cond_4
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/management/RuntimeMXBean;->getInputArguments()Ljava/util/List;

    move-result-object v7

    .line 442
    .local v7, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 443
    .local v9, "arg":Ljava/lang/String;
    const-string v10, "-XX:+UseCompressedOops"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 444
    sput-boolean v5, Lcom/sleepycat/je/dbi/MemoryBudget;->COMPRESSED_OOPS_REQUESTED:Z

    .line 445
    goto :goto_5

    .line 447
    .end local v9    # "arg":Ljava/lang/String;
    :cond_5
    goto :goto_4

    .line 449
    :cond_6
    :goto_5
    sget-boolean v5, Lcom/sleepycat/je/dbi/MemoryBudget;->COMPRESSED_OOPS_KNOWN:Z

    if-eqz v5, :cond_7

    sget-boolean v5, Lcom/sleepycat/je/dbi/MemoryBudget;->COMPRESSED_OOPS_KNOWN_ON:Z

    goto :goto_6

    :cond_7
    sget-boolean v5, Lcom/sleepycat/je/dbi/MemoryBudget;->COMPRESSED_OOPS_REQUESTED:Z

    .line 453
    .local v5, "useCompressedOops":Z
    :goto_6
    const/16 v8, 0x58

    const/16 v9, 0x1b8

    const/16 v10, 0x1d0

    const/16 v11, 0xa8

    const/16 v12, 0xe8

    const/16 v13, 0xf0

    const/16 v14, 0x80

    const/16 v15, 0x50

    const/16 v16, 0x4

    const/16 v17, 0x78

    const/16 v18, 0x8

    const/16 v19, 0x30

    const/16 v20, 0x20

    const/16 v21, 0x10

    const/16 v22, 0x18

    if-eqz v5, :cond_8

    .line 454
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->LONG_OVERHEAD:I

    .line 455
    sput v21, Lcom/sleepycat/je/dbi/MemoryBudget;->ARRAY_OVERHEAD:I

    .line 456
    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->ARRAY_SIZE_INCLUDED:I

    .line 457
    sput v21, Lcom/sleepycat/je/dbi/MemoryBudget;->OBJECT_OVERHEAD:I

    .line 458
    sput v16, Lcom/sleepycat/je/dbi/MemoryBudget;->OBJECT_ARRAY_ITEM_OVERHEAD:I

    .line 459
    sput v20, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHMAP_ENTRY_OVERHEAD:I

    .line 460
    const/16 v1, 0x90

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHSET_OVERHEAD:I

    .line 461
    sput v20, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHSET_ENTRY_OVERHEAD:I

    .line 462
    sput v19, Lcom/sleepycat/je/dbi/MemoryBudget;->TREEMAP_OVERHEAD:I

    .line 463
    const/16 v1, 0x3f8

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->MAPLN_OVERHEAD:I

    .line 464
    sput v12, Lcom/sleepycat/je/dbi/MemoryBudget;->BIN_FIXED_OVERHEAD:I

    .line 465
    sput v6, Lcom/sleepycat/je/dbi/MemoryBudget;->BINDELTA_OVERHEAD:I

    .line 466
    sput v20, Lcom/sleepycat/je/dbi/MemoryBudget;->DELTAINFO_OVERHEAD:I

    .line 467
    sput v15, Lcom/sleepycat/je/dbi/MemoryBudget;->SPARSE_TARGET_ENTRY_OVERHEAD:I

    .line 469
    sput v21, Lcom/sleepycat/je/dbi/MemoryBudget;->DEFAULT_TARGET_ENTRY_OVERHEAD:I

    .line 471
    sput v21, Lcom/sleepycat/je/dbi/MemoryBudget;->DEFAULT_KEYVALS_OVERHEAD:I

    .line 472
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->MAX_KEY_SIZE_KEYVALS_OVERHEAD:I

    .line 474
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->DEFAULT_LONG_REP_OVERHEAD:I

    .line 475
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->SPARSE_LONG_REP_OVERHEAD:I

    .line 476
    sput v17, Lcom/sleepycat/je/dbi/MemoryBudget;->DIN_FIXED_OVERHEAD:I

    .line 477
    sput v11, Lcom/sleepycat/je/dbi/MemoryBudget;->DBIN_FIXED_OVERHEAD:I

    .line 478
    const/16 v1, 0x100

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->IN_FIXED_OVERHEAD:I

    .line 479
    sput v14, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHMAP_OVERHEAD:I

    .line 480
    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->TWOHASHMAPS_OVERHEAD:I

    .line 481
    sput v2, Lcom/sleepycat/je/dbi/MemoryBudget;->TREEMAP_ENTRY_OVERHEAD:I

    .line 482
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->LN_OVERHEAD:I

    .line 483
    sput v18, Lcom/sleepycat/je/dbi/MemoryBudget;->VERSIONEDLN_OVERHEAD:I

    .line 484
    sput v2, Lcom/sleepycat/je/dbi/MemoryBudget;->DUPCOUNTLN_OVERHEAD:I

    .line 485
    sput v13, Lcom/sleepycat/je/dbi/MemoryBudget;->TXN_OVERHEAD:I

    .line 486
    sput v15, Lcom/sleepycat/je/dbi/MemoryBudget;->CHECKPOINT_REFERENCE_SIZE:I

    .line 487
    sput v21, Lcom/sleepycat/je/dbi/MemoryBudget;->KEY_OVERHEAD:I

    .line 488
    sput v20, Lcom/sleepycat/je/dbi/MemoryBudget;->LOCKIMPL_OVERHEAD:I

    .line 489
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->THINLOCKIMPL_OVERHEAD:I

    .line 490
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->LOCKINFO_OVERHEAD:I

    .line 491
    const/16 v1, 0x38

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->WRITE_LOCKINFO_OVERHEAD:I

    .line 492
    const/16 v1, 0x7d

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->UTILIZATION_PROFILE_ENTRY:I

    .line 493
    sput v10, Lcom/sleepycat/je/dbi/MemoryBudget;->TFS_LIST_INITIAL_OVERHEAD:I

    .line 494
    sput v9, Lcom/sleepycat/je/dbi/MemoryBudget;->TFS_LIST_SEGMENT_OVERHEAD:I

    .line 495
    const/16 v1, 0x1e

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->LN_INFO_OVERHEAD:I

    .line 496
    sput v14, Lcom/sleepycat/je/dbi/MemoryBudget;->FILESUMMARYLN_OVERHEAD:I

    .line 497
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->INENTRY_OVERHEAD:I

    .line 498
    sput v20, Lcom/sleepycat/je/dbi/MemoryBudget;->DELTAINENTRY_OVERHEAD:I

    .line 499
    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->ARRAYLIST_OVERHEAD_OOPS:I

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->ARRAYLIST_OVERHEAD:I

    .line 500
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->TUPLE_OUTPUT_OVERHEAD:I

    .line 501
    sput v19, Lcom/sleepycat/je/dbi/MemoryBudget;->DOS_WEAK_BINREF_OVERHEAD:I

    .line 502
    sput v2, Lcom/sleepycat/je/dbi/MemoryBudget;->DOS_OFFHEAP_BINREF_OVERHEAD:I

    .line 503
    sput v8, Lcom/sleepycat/je/dbi/MemoryBudget;->DOS_DEFERRED_LSN_BATCH_OVERHEAD:I

    .line 505
    sput v21, Lcom/sleepycat/je/dbi/MemoryBudget;->DOS_DEFERRED_DELTAREF_OVERHEAD:I

    goto/16 :goto_7

    .line 507
    :cond_8
    const/16 v23, 0x48

    if-eqz v3, :cond_9

    .line 508
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->LONG_OVERHEAD:I

    .line 509
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->ARRAY_OVERHEAD:I

    .line 510
    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->ARRAY_SIZE_INCLUDED:I

    .line 511
    sput v21, Lcom/sleepycat/je/dbi/MemoryBudget;->OBJECT_OVERHEAD:I

    .line 512
    sput v18, Lcom/sleepycat/je/dbi/MemoryBudget;->OBJECT_ARRAY_ITEM_OVERHEAD:I

    .line 513
    const/16 v1, 0x34

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHMAP_ENTRY_OVERHEAD:I

    .line 514
    sput v13, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHSET_OVERHEAD:I

    .line 515
    const/16 v1, 0x37

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHSET_ENTRY_OVERHEAD:I

    .line 516
    sput v15, Lcom/sleepycat/je/dbi/MemoryBudget;->TREEMAP_OVERHEAD:I

    .line 517
    const/16 v1, 0x658

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->MAPLN_OVERHEAD:I

    .line 518
    const/16 v1, 0x160

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->BIN_FIXED_OVERHEAD:I

    .line 519
    const/16 v1, 0xb0

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->DIN_FIXED_OVERHEAD:I

    .line 520
    sput v12, Lcom/sleepycat/je/dbi/MemoryBudget;->DBIN_FIXED_OVERHEAD:I

    .line 521
    const/16 v1, 0x188

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->IN_FIXED_OVERHEAD:I

    .line 522
    const/16 v1, 0xdb

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHMAP_OVERHEAD:I

    .line 523
    const/16 v1, 0x1b6

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->TWOHASHMAPS_OVERHEAD:I

    .line 524
    sput v23, Lcom/sleepycat/je/dbi/MemoryBudget;->BINDELTA_OVERHEAD:I

    .line 525
    sput v2, Lcom/sleepycat/je/dbi/MemoryBudget;->DELTAINFO_OVERHEAD:I

    .line 526
    sput v17, Lcom/sleepycat/je/dbi/MemoryBudget;->SPARSE_TARGET_ENTRY_OVERHEAD:I

    .line 527
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->DEFAULT_TARGET_ENTRY_OVERHEAD:I

    .line 529
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->DEFAULT_KEYVALS_OVERHEAD:I

    .line 530
    sput v20, Lcom/sleepycat/je/dbi/MemoryBudget;->MAX_KEY_SIZE_KEYVALS_OVERHEAD:I

    .line 532
    sput v20, Lcom/sleepycat/je/dbi/MemoryBudget;->DEFAULT_LONG_REP_OVERHEAD:I

    .line 533
    sput v2, Lcom/sleepycat/je/dbi/MemoryBudget;->SPARSE_LONG_REP_OVERHEAD:I

    .line 534
    sput v6, Lcom/sleepycat/je/dbi/MemoryBudget;->TREEMAP_ENTRY_OVERHEAD:I

    .line 535
    sput v20, Lcom/sleepycat/je/dbi/MemoryBudget;->LN_OVERHEAD:I

    .line 536
    sput v18, Lcom/sleepycat/je/dbi/MemoryBudget;->VERSIONEDLN_OVERHEAD:I

    .line 537
    sput v19, Lcom/sleepycat/je/dbi/MemoryBudget;->DUPCOUNTLN_OVERHEAD:I

    .line 538
    const/16 v1, 0x169

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->TXN_OVERHEAD:I

    .line 539
    const/16 v1, 0x6f

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->CHECKPOINT_REFERENCE_SIZE:I

    .line 540
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->KEY_OVERHEAD:I

    .line 541
    sput v19, Lcom/sleepycat/je/dbi/MemoryBudget;->LOCKIMPL_OVERHEAD:I

    .line 542
    sput v20, Lcom/sleepycat/je/dbi/MemoryBudget;->THINLOCKIMPL_OVERHEAD:I

    .line 543
    sput v20, Lcom/sleepycat/je/dbi/MemoryBudget;->LOCKINFO_OVERHEAD:I

    .line 544
    sput v23, Lcom/sleepycat/je/dbi/MemoryBudget;->WRITE_LOCKINFO_OVERHEAD:I

    .line 545
    const/16 v1, 0xa0

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->UTILIZATION_PROFILE_ENTRY:I

    .line 546
    const/16 v1, 0x1f8

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->TFS_LIST_INITIAL_OVERHEAD:I

    .line 547
    const/16 v1, 0x1d1

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->TFS_LIST_SEGMENT_OVERHEAD:I

    .line 548
    sput v19, Lcom/sleepycat/je/dbi/MemoryBudget;->LN_INFO_OVERHEAD:I

    .line 549
    sput v11, Lcom/sleepycat/je/dbi/MemoryBudget;->FILESUMMARYLN_OVERHEAD:I

    .line 550
    sput v20, Lcom/sleepycat/je/dbi/MemoryBudget;->INENTRY_OVERHEAD:I

    .line 551
    sput v19, Lcom/sleepycat/je/dbi/MemoryBudget;->DELTAINENTRY_OVERHEAD:I

    .line 552
    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->ARRAYLIST_OVERHEAD_64:I

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->ARRAYLIST_OVERHEAD:I

    .line 553
    sput v20, Lcom/sleepycat/je/dbi/MemoryBudget;->TUPLE_OUTPUT_OVERHEAD:I

    .line 554
    sput v23, Lcom/sleepycat/je/dbi/MemoryBudget;->DOS_WEAK_BINREF_OVERHEAD:I

    .line 555
    sput v2, Lcom/sleepycat/je/dbi/MemoryBudget;->DOS_OFFHEAP_BINREF_OVERHEAD:I

    .line 556
    sput v14, Lcom/sleepycat/je/dbi/MemoryBudget;->DOS_DEFERRED_LSN_BATCH_OVERHEAD:I

    .line 558
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->DOS_DEFERRED_DELTAREF_OVERHEAD:I

    goto :goto_7

    .line 560
    :cond_9
    sput v21, Lcom/sleepycat/je/dbi/MemoryBudget;->LONG_OVERHEAD:I

    .line 561
    sput v21, Lcom/sleepycat/je/dbi/MemoryBudget;->ARRAY_OVERHEAD:I

    .line 562
    sput v16, Lcom/sleepycat/je/dbi/MemoryBudget;->ARRAY_SIZE_INCLUDED:I

    .line 563
    sput v18, Lcom/sleepycat/je/dbi/MemoryBudget;->OBJECT_OVERHEAD:I

    .line 564
    sput v16, Lcom/sleepycat/je/dbi/MemoryBudget;->OBJECT_ARRAY_ITEM_OVERHEAD:I

    .line 565
    sput v17, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHMAP_OVERHEAD:I

    .line 566
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHMAP_ENTRY_OVERHEAD:I

    .line 567
    const/16 v1, 0x88

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHSET_OVERHEAD:I

    .line 568
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHSET_ENTRY_OVERHEAD:I

    .line 569
    sput v13, Lcom/sleepycat/je/dbi/MemoryBudget;->TWOHASHMAPS_OVERHEAD:I

    .line 570
    sput v19, Lcom/sleepycat/je/dbi/MemoryBudget;->TREEMAP_OVERHEAD:I

    .line 571
    const/16 v1, 0x398

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->MAPLN_OVERHEAD:I

    .line 572
    sput v20, Lcom/sleepycat/je/dbi/MemoryBudget;->TREEMAP_ENTRY_OVERHEAD:I

    .line 573
    sput v21, Lcom/sleepycat/je/dbi/MemoryBudget;->LN_OVERHEAD:I

    .line 574
    sput v18, Lcom/sleepycat/je/dbi/MemoryBudget;->VERSIONEDLN_OVERHEAD:I

    .line 575
    sput v20, Lcom/sleepycat/je/dbi/MemoryBudget;->DUPCOUNTLN_OVERHEAD:I

    .line 576
    const/16 v1, 0xdf

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->BIN_FIXED_OVERHEAD:I

    .line 577
    sput v19, Lcom/sleepycat/je/dbi/MemoryBudget;->BINDELTA_OVERHEAD:I

    .line 578
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->DELTAINFO_OVERHEAD:I

    .line 579
    sput v23, Lcom/sleepycat/je/dbi/MemoryBudget;->SPARSE_TARGET_ENTRY_OVERHEAD:I

    .line 580
    sput v21, Lcom/sleepycat/je/dbi/MemoryBudget;->DEFAULT_TARGET_ENTRY_OVERHEAD:I

    .line 582
    sput v21, Lcom/sleepycat/je/dbi/MemoryBudget;->DEFAULT_KEYVALS_OVERHEAD:I

    .line 583
    sput v21, Lcom/sleepycat/je/dbi/MemoryBudget;->MAX_KEY_SIZE_KEYVALS_OVERHEAD:I

    .line 585
    sput v21, Lcom/sleepycat/je/dbi/MemoryBudget;->DEFAULT_LONG_REP_OVERHEAD:I

    .line 586
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->SPARSE_LONG_REP_OVERHEAD:I

    .line 587
    sput v17, Lcom/sleepycat/je/dbi/MemoryBudget;->DIN_FIXED_OVERHEAD:I

    .line 588
    const/16 v1, 0x98

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->DBIN_FIXED_OVERHEAD:I

    .line 589
    const/16 v1, 0xf8

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->IN_FIXED_OVERHEAD:I

    .line 590
    const/16 v1, 0xe0

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->TXN_OVERHEAD:I

    .line 591
    sput v6, Lcom/sleepycat/je/dbi/MemoryBudget;->CHECKPOINT_REFERENCE_SIZE:I

    .line 592
    sput v21, Lcom/sleepycat/je/dbi/MemoryBudget;->KEY_OVERHEAD:I

    .line 593
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->LOCKIMPL_OVERHEAD:I

    .line 594
    sput v21, Lcom/sleepycat/je/dbi/MemoryBudget;->THINLOCKIMPL_OVERHEAD:I

    .line 595
    sput v21, Lcom/sleepycat/je/dbi/MemoryBudget;->LOCKINFO_OVERHEAD:I

    .line 596
    sput v19, Lcom/sleepycat/je/dbi/MemoryBudget;->WRITE_LOCKINFO_OVERHEAD:I

    .line 597
    const/16 v1, 0x6d

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->UTILIZATION_PROFILE_ENTRY:I

    .line 598
    sput v10, Lcom/sleepycat/je/dbi/MemoryBudget;->TFS_LIST_INITIAL_OVERHEAD:I

    .line 599
    sput v9, Lcom/sleepycat/je/dbi/MemoryBudget;->TFS_LIST_SEGMENT_OVERHEAD:I

    .line 600
    sput v20, Lcom/sleepycat/je/dbi/MemoryBudget;->LN_INFO_OVERHEAD:I

    .line 601
    const/16 v1, 0x70

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->FILESUMMARYLN_OVERHEAD:I

    .line 602
    sput v21, Lcom/sleepycat/je/dbi/MemoryBudget;->INENTRY_OVERHEAD:I

    .line 603
    sput v20, Lcom/sleepycat/je/dbi/MemoryBudget;->DELTAINENTRY_OVERHEAD:I

    .line 604
    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->ARRAYLIST_OVERHEAD_32:I

    sput v1, Lcom/sleepycat/je/dbi/MemoryBudget;->ARRAYLIST_OVERHEAD:I

    .line 605
    sput v22, Lcom/sleepycat/je/dbi/MemoryBudget;->TUPLE_OUTPUT_OVERHEAD:I

    .line 606
    sput v19, Lcom/sleepycat/je/dbi/MemoryBudget;->DOS_WEAK_BINREF_OVERHEAD:I

    .line 607
    sput v20, Lcom/sleepycat/je/dbi/MemoryBudget;->DOS_OFFHEAP_BINREF_OVERHEAD:I

    .line 608
    sput v8, Lcom/sleepycat/je/dbi/MemoryBudget;->DOS_DEFERRED_LSN_BATCH_OVERHEAD:I

    .line 610
    sput v21, Lcom/sleepycat/je/dbi/MemoryBudget;->DOS_DEFERRED_DELTAREF_OVERHEAD:I

    .line 616
    .end local v0    # "checkCompressedOops":Ljava/lang/Boolean;
    .end local v3    # "is64":Z
    .end local v4    # "overrideArch":Ljava/lang/String;
    .end local v5    # "useCompressedOops":Z
    .end local v7    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_7
    const-wide/32 v0, 0x18000

    .line 617
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/dbi/MemoryBudget;->MIN_MAX_MEMORY_SIZE_STRING:Ljava/lang/String;

    .line 616
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DbConfigManager;)V
    .locals 3
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "sharedCacheEnv"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p3, "configManager"    # Lcom/sleepycat/je/dbi/DbConfigManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->treeMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    .line 642
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->dosMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    .line 647
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->txnMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    .line 653
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->adminMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    .line 659
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->lockMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    .line 683
    iput-object p1, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 686
    invoke-virtual {p1, p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addConfigObserver(Lcom/sleepycat/je/dbi/EnvConfigObserver;)V

    .line 690
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSharedCache()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 691
    if-eqz p2, :cond_0

    .line 692
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v0

    iget-object v0, v0, Lcom/sleepycat/je/dbi/MemoryBudget;->totals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    iput-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->totals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    .line 694
    const-wide/16 v0, -0x1

    .local v0, "newMaxMemory":J
    goto :goto_0

    .line 696
    .end local v0    # "newMaxMemory":J
    :cond_0
    new-instance v0, Lcom/sleepycat/je/dbi/MemoryBudget$SharedTotals;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/dbi/MemoryBudget$SharedTotals;-><init>(Lcom/sleepycat/je/dbi/MemoryBudget$1;)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->totals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    .line 697
    invoke-direct {p0, p3}, Lcom/sleepycat/je/dbi/MemoryBudget;->calcMaxMemory(Lcom/sleepycat/je/dbi/DbConfigManager;)J

    move-result-wide v0

    .restart local v0    # "newMaxMemory":J
    goto :goto_0

    .line 700
    .end local v0    # "newMaxMemory":J
    :cond_1
    new-instance v0, Lcom/sleepycat/je/dbi/MemoryBudget$PrivateTotals;

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/dbi/MemoryBudget$PrivateTotals;-><init>(Lcom/sleepycat/je/dbi/MemoryBudget;Lcom/sleepycat/je/dbi/MemoryBudget$1;)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->totals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    .line 701
    invoke-direct {p0, p3}, Lcom/sleepycat/je/dbi/MemoryBudget;->calcMaxMemory(Lcom/sleepycat/je/dbi/DbConfigManager;)J

    move-result-wide v0

    .line 703
    .restart local v0    # "newMaxMemory":J
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/sleepycat/je/dbi/MemoryBudget;->reset(JZLcom/sleepycat/je/dbi/DbConfigManager;)V

    .line 705
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/MemoryBudget;->checkCompressedOops()V

    .line 706
    return-void
.end method

.method public static byteArraySize(I)I
    .locals 2
    .param p0, "arrayLen"    # I

    .line 1152
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->ARRAY_OVERHEAD:I

    .line 1153
    .local v0, "size":I
    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->ARRAY_SIZE_INCLUDED:I

    if-le p0, v1, :cond_0

    .line 1154
    sub-int v1, p0, v1

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 1157
    :cond_0
    return v0
.end method

.method private calcMaxMemory(Lcom/sleepycat/je/dbi/DbConfigManager;)J
    .locals 9
    .param p1, "configManager"    # Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 748
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->MAX_MEMORY:Lcom/sleepycat/je/config/LongConfigParam;

    .line 749
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v0

    .line 750
    .local v0, "newMaxMemory":J
    invoke-static {}, Lcom/sleepycat/je/utilint/JVMSystemUtils;->getRuntimeMaxMemory()J

    move-result-wide v2

    .line 752
    .local v2, "jvmMemory":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2

    .line 754
    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    .line 762
    const-wide/32 v4, 0x18000

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    .line 763
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/sleepycat/je/config/EnvironmentParams;->MAX_MEMORY:Lcom/sleepycat/je/config/LongConfigParam;

    .line 764
    invoke-virtual {v8}, Lcom/sleepycat/je/config/LongConfigParam;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " which is less than the minimum: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 755
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sleepycat/je/config/EnvironmentParams;->MAX_MEMORY:Lcom/sleepycat/je/config/LongConfigParam;

    .line 756
    invoke-virtual {v6}, Lcom/sleepycat/je/config/LongConfigParam;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a value of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but the JVM is only configured for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Consider using je.maxMemoryPercent."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 776
    :cond_2
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    .line 777
    const-wide/32 v2, 0x4000000

    .line 781
    :cond_3
    sget-object v4, Lcom/sleepycat/je/config/EnvironmentParams;->MAX_MEMORY_PERCENT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 782
    invoke-virtual {p1, v4}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v4

    .line 783
    .local v4, "maxMemoryPercent":I
    int-to-long v5, v4

    mul-long/2addr v5, v2

    const-wide/16 v7, 0x64

    div-long v0, v5, v7

    .line 786
    .end local v4    # "maxMemoryPercent":I
    :goto_0
    return-wide v0
.end method

.method private checkCompressedOops()V
    .locals 3

    .line 714
    sget-boolean v0, Lcom/sleepycat/je/dbi/MemoryBudget;->COMPRESSED_OOPS_REQUESTED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sleepycat/je/dbi/MemoryBudget;->COMPRESSED_OOPS_KNOWN:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sleepycat/je/dbi/MemoryBudget;->COMPRESSED_OOPS_KNOWN_ON:Z

    if-nez v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v2, "-XX:+UseCompressedOops was specified but is not in effect, probably because the heap size is too large for this JVM option on this platform.  This is likely to cause an OutOfMemoryError!"

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 723
    :cond_0
    return-void
.end method

.method public static intArraySize(I)I
    .locals 1
    .param p0, "arrayLen"    # I

    .line 1165
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v0

    return v0
.end method

.method public static longArraySize(I)I
    .locals 1
    .param p0, "arrayLen"    # I

    .line 1169
    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v0

    return v0
.end method

.method private makeErrorMessage(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 2
    .param p1, "memoryType"    # Ljava/lang/String;
    .param p2, "total"    # J
    .param p4, "increment"    # J

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " increment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 1059
    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1057
    return-object v0
.end method

.method public static objectArraySize(I)I
    .locals 1
    .param p0, "arrayLen"    # I

    .line 1173
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->OBJECT_ARRAY_ITEM_OVERHEAD:I

    mul-int/2addr v0, p0

    invoke-static {v0}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v0

    return v0
.end method

.method public static shortArraySize(I)I
    .locals 1
    .param p0, "arrayLen"    # I

    .line 1161
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v0

    return v0
.end method

.method private sizeNotNegative(J)Z
    .locals 4
    .param p1, "newSize"    # J

    .line 1021
    sget-boolean v0, Lcom/sleepycat/je/dbi/MemoryBudget;->CLEANUP_DONE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1022
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1024
    :cond_1
    return v1
.end method

.method public static tupleOutputSize(Lcom/sleepycat/bind/tuple/TupleOutput;)I
    .locals 2
    .param p0, "o"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1133
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->TUPLE_OUTPUT_OVERHEAD:I

    .line 1134
    invoke-virtual {p0}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBufferBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1133
    return v0
.end method

.method private updateCounter(JLjava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Z)V
    .locals 14
    .param p1, "increment"    # J
    .param p3, "counter"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p4, "debugName"    # Ljava/lang/String;
    .param p5, "debug"    # Z

    .line 997
    move-object v6, p0

    move-wide v7, p1

    move-object/from16 v9, p4

    const-wide/16 v0, 0x0

    cmp-long v2, v7, v0

    if-eqz v2, :cond_3

    .line 998
    move-object/from16 v10, p3

    invoke-virtual {v10, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v11

    .line 1000
    .local v11, "newSize":J
    invoke-direct {p0, v11, v12}, Lcom/sleepycat/je/dbi/MemoryBudget;->sizeNotNegative(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1003
    if-eqz p5, :cond_1

    .line 1004
    cmp-long v0, v7, v0

    const-string v1, " "

    if-lez v0, :cond_0

    .line 1005
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INC-------- ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1008
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------DEC="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1013
    :cond_1
    :goto_0
    iget-object v0, v6, Lcom/sleepycat/je/dbi/MemoryBudget;->totals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    invoke-virtual {v0, v7, v8}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->updateCacheUsage(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1014
    iget-object v0, v6, Lcom/sleepycat/je/dbi/MemoryBudget;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->alertEvictor()V

    goto :goto_1

    .line 1000
    :cond_2
    new-instance v13, Ljava/lang/AssertionError;

    .line 1001
    move-object v0, p0

    move-object/from16 v1, p4

    move-wide v2, v11

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/dbi/MemoryBudget;->makeErrorMessage(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v13

    .line 997
    .end local v11    # "newSize":J
    :cond_3
    move-object/from16 v10, p3

    .line 1017
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public envConfigUpdate(Lcom/sleepycat/je/dbi/DbConfigManager;Lcom/sleepycat/je/EnvironmentMutableConfig;)V
    .locals 3
    .param p1, "configManager"    # Lcom/sleepycat/je/dbi/DbConfigManager;
    .param p2, "ignore"    # Lcom/sleepycat/je/EnvironmentMutableConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 733
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/MemoryBudget;->calcMaxMemory(Lcom/sleepycat/je/dbi/DbConfigManager;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sleepycat/je/dbi/MemoryBudget;->reset(JZLcom/sleepycat/je/dbi/DbConfigManager;)V

    .line 734
    return-void
.end method

.method public getAdminMemoryUsage()J
    .locals 2

    .line 1121
    iget-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->adminMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheMemoryUsage()J
    .locals 2

    .line 1096
    iget-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->totals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->getCacheUsage()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDOSMemoryUsage()J
    .locals 2

    .line 1114
    iget-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->dosMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCacheUsage()J
    .locals 4

    .line 1067
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->logBufferBudget:J

    iget-object v2, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->treeMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1068
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->dosMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1069
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->adminMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1070
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1071
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/MemoryBudget;->getLockMemoryUsage()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1067
    return-wide v0
.end method

.method public getLockMemoryUsage()J
    .locals 4

    .line 1085
    iget-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->txnMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1086
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->lockMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1088
    .local v0, "accLockMemoryUsage":J
    return-wide v0
.end method

.method public getLogBufferBudget()J
    .locals 2

    .line 1125
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->logBufferBudget:J

    return-wide v0
.end method

.method public getMaxMemory()J
    .locals 2

    .line 1100
    iget-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->totals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->getMaxMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinTreeMemoryUsage()J
    .locals 2

    .line 954
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->minTreeMemoryUsage:J

    return-wide v0
.end method

.method public getTotals()Lcom/sleepycat/je/dbi/MemoryBudget$Totals;
    .locals 1

    .line 1201
    iget-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->totals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    return-object v0
.end method

.method public getTrackerBudget()J
    .locals 2

    .line 1129
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->trackerBudget:J

    return-wide v0
.end method

.method public getTreeMemoryUsage()J
    .locals 2

    .line 1107
    iget-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->treeMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method getVariableCacheUsage()J
    .locals 4

    .line 1075
    iget-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->treeMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->dosMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1076
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->adminMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1077
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1078
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/MemoryBudget;->getLockMemoryUsage()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1075
    return-wide v0
.end method

.method initCacheMemoryUsage()V
    .locals 6

    .line 922
    const-wide/16 v0, 0x0

    .line 923
    .local v0, "totalTree":J
    iget-object v2, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/INList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/tree/IN;

    .line 924
    .local v3, "in":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/IN;->getBudgetedMemorySize()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 925
    .end local v3    # "in":Lcom/sleepycat/je/tree/IN;
    goto :goto_0

    .line 926
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->refreshTreeMemoryUsage(J)V

    .line 927
    return-void
.end method

.method public isTreeUsageAboveMinimum()Z
    .locals 4

    .line 947
    iget-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->treeMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->minTreeMemoryUsage:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method loadStats()Lcom/sleepycat/je/utilint/StatGroup;
    .locals 5

    .line 1177
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Cache Layout"

    const-string v2, "Allocation of resources in the cache."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    .local v0, "stats":Lcom/sleepycat/je/utilint/StatGroup;
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_SHARED_CACHE_TOTAL_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->totals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    .line 1179
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->isSharedCache()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->totals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->getCacheUsage()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 1180
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_TOTAL_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/MemoryBudget;->getLocalCacheUsage()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 1181
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_DATA_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->treeMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 1182
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_DOS_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->dosMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 1183
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_ADMIN_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->adminMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 1184
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_LOCK_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/MemoryBudget;->getLockMemoryUsage()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 1186
    return-object v0
.end method

.method refreshTreeMemoryUsage(J)V
    .locals 5
    .param p1, "newSize"    # J

    .line 933
    iget-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->treeMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    .line 934
    .local v0, "oldSize":J
    sub-long v2, p1, v0

    .line 936
    .local v2, "diff":J
    iget-object v4, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->totals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    invoke-virtual {v4, v2, v3}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->updateCacheUsage(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 937
    iget-object v4, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->alertEvictor()V

    .line 939
    :cond_0
    return-void
.end method

.method reset(JZLcom/sleepycat/je/dbi/DbConfigManager;)V
    .locals 22
    .param p1, "newMaxMemory"    # J
    .param p3, "newEnv"    # Z
    .param p4, "configManager"    # Lcom/sleepycat/je/dbi/DbConfigManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 804
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    iget-wide v4, v0, Lcom/sleepycat/je/dbi/MemoryBudget;->logBufferBudget:J

    .line 809
    .local v4, "oldLogBufferBudget":J
    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-gez v8, :cond_0

    .line 810
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/MemoryBudget;->getMaxMemory()J

    move-result-wide v1

    .end local p1    # "newMaxMemory":J
    .local v1, "newMaxMemory":J
    goto :goto_0

    .line 812
    .end local v1    # "newMaxMemory":J
    .restart local p1    # "newMaxMemory":J
    :cond_0
    iget-object v8, v0, Lcom/sleepycat/je/dbi/MemoryBudget;->totals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    invoke-static {v8, v1, v2}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->access$200(Lcom/sleepycat/je/dbi/MemoryBudget$Totals;J)V

    .line 832
    .end local p1    # "newMaxMemory":J
    .restart local v1    # "newMaxMemory":J
    :goto_0
    iget-object v8, v0, Lcom/sleepycat/je/dbi/MemoryBudget;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSharedCache()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 833
    invoke-static {}, Lcom/sleepycat/je/dbi/DbEnvPool;->getInstance()Lcom/sleepycat/je/dbi/DbEnvPool;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/DbEnvPool;->getNSharedCacheEnvironments()I

    move-result v8

    .line 834
    .local v8, "nEnvs":I
    if-eqz p3, :cond_1

    .line 835
    add-int/lit8 v8, v8, 0x1

    .line 837
    :cond_1
    int-to-long v9, v8

    div-long v8, v1, v9

    .line 838
    .local v8, "myCachePortion":J
    goto :goto_1

    .line 839
    .end local v8    # "myCachePortion":J
    :cond_2
    move-wide v8, v1

    .line 851
    .restart local v8    # "myCachePortion":J
    :goto_1
    sget-object v10, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_MEM_SIZE:Lcom/sleepycat/je/config/LongConfigParam;

    .line 852
    invoke-virtual {v3, v10}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v10

    .line 853
    .local v10, "newLogBufferBudget":J
    cmp-long v6, v10, v6

    if-nez v6, :cond_3

    .line 854
    const/4 v6, 0x4

    shr-long v10, v8, v6

    goto :goto_2

    .line 855
    :cond_3
    const-wide/16 v6, 0x2

    div-long v12, v8, v6

    cmp-long v12, v10, v12

    if-lez v12, :cond_4

    .line 856
    div-long v10, v8, v6

    .line 864
    :cond_4
    :goto_2
    sget-object v6, Lcom/sleepycat/je/config/EnvironmentParams;->NUM_LOG_BUFFERS:Lcom/sleepycat/je/config/IntConfigParam;

    .line 865
    invoke-virtual {v3, v6}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v6

    .line 866
    .local v6, "numBuffers":I
    int-to-long v12, v6

    div-long v12, v10, v12

    .line 867
    .local v12, "startingBufferSize":J
    sget-object v7, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_BUFFER_MAX_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 868
    invoke-virtual {v3, v7}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v7

    .line 869
    .local v7, "logBufferSize":I
    int-to-long v14, v7

    cmp-long v14, v12, v14

    if-lez v14, :cond_5

    .line 870
    int-to-long v12, v7

    .line 871
    int-to-long v14, v6

    mul-long v10, v14, v12

    goto :goto_3

    .line 872
    :cond_5
    const-wide/16 v14, 0x800

    cmp-long v14, v12, v14

    if-gez v14, :cond_6

    .line 874
    const-wide/16 v12, 0x800

    .line 875
    int-to-long v14, v6

    mul-long v10, v14, v12

    .line 878
    :cond_6
    :goto_3
    iget-object v14, v0, Lcom/sleepycat/je/dbi/MemoryBudget;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 880
    invoke-virtual {v14}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v14

    sget-object v15, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_CRITICAL_PERCENTAGE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 881
    invoke-virtual {v14, v15}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v14

    int-to-long v14, v14

    mul-long/2addr v14, v1

    const-wide/16 v16, 0x64

    div-long v14, v14, v16

    .line 883
    .local v14, "newCriticalThreshold":J
    move-wide/from16 p1, v1

    .end local v1    # "newMaxMemory":J
    .restart local p1    # "newMaxMemory":J
    iget-object v1, v0, Lcom/sleepycat/je/dbi/MemoryBudget;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 885
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->CLEANER_DETAIL_MAX_MEMORY_PERCENTAGE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 886
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, v8

    div-long v1, v1, v16

    .line 888
    .local v1, "newTrackerBudget":J
    move/from16 v16, v6

    .end local v6    # "numBuffers":I
    .local v16, "numBuffers":I
    sget-object v6, Lcom/sleepycat/je/config/EnvironmentParams;->MIN_TREE_MEMORY:Lcom/sleepycat/je/config/LongConfigParam;

    .line 889
    move/from16 v17, v7

    .end local v7    # "logBufferSize":I
    .local v17, "logBufferSize":I
    invoke-virtual {v3, v6}, Lcom/sleepycat/je/dbi/DbConfigManager;->getLong(Lcom/sleepycat/je/config/LongConfigParam;)J

    move-result-wide v6

    move-wide/from16 v18, v12

    .end local v12    # "startingBufferSize":J
    .local v18, "startingBufferSize":J
    sub-long v12, v8, v10

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 897
    .local v6, "newMinTreeMemoryUsage":J
    iput-wide v10, v0, Lcom/sleepycat/je/dbi/MemoryBudget;->logBufferBudget:J

    .line 898
    iget-object v12, v0, Lcom/sleepycat/je/dbi/MemoryBudget;->totals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    invoke-static {v12, v14, v15}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->access$300(Lcom/sleepycat/je/dbi/MemoryBudget$Totals;J)V

    .line 899
    iput-wide v1, v0, Lcom/sleepycat/je/dbi/MemoryBudget;->trackerBudget:J

    .line 900
    iput-wide v6, v0, Lcom/sleepycat/je/dbi/MemoryBudget;->minTreeMemoryUsage:J

    .line 903
    iget-object v12, v0, Lcom/sleepycat/je/dbi/MemoryBudget;->totals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    move-wide/from16 v20, v1

    .end local v1    # "newTrackerBudget":J
    .local v20, "newTrackerBudget":J
    iget-wide v1, v0, Lcom/sleepycat/je/dbi/MemoryBudget;->logBufferBudget:J

    sub-long/2addr v1, v4

    invoke-virtual {v12, v1, v2}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->updateCacheUsage(J)Z

    .line 910
    if-nez p3, :cond_7

    iget-wide v1, v0, Lcom/sleepycat/je/dbi/MemoryBudget;->logBufferBudget:J

    cmp-long v1, v4, v1

    if-eqz v1, :cond_7

    .line 911
    iget-object v1, v0, Lcom/sleepycat/je/dbi/MemoryBudget;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/log/LogManager;->resetPool(Lcom/sleepycat/je/dbi/DbConfigManager;)V

    .line 913
    :cond_7
    return-void
.end method

.method subtractCacheUsage()V
    .locals 5

    .line 1063
    iget-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->totals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/MemoryBudget;->getLocalCacheUsage()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->updateCacheUsage(J)Z

    .line 1064
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1192
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "treeUsage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->treeMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1193
    const-string v1, "dosUsage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->dosMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1194
    const-string v1, "adminUsage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->adminMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1195
    const-string/jumbo v1, "txnUsage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->txnMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1196
    const-string v1, "lockUsage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/MemoryBudget;->getLockMemoryUsage()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateAdminMemoryUsage(J)V
    .locals 6
    .param p1, "increment"    # J

    .line 990
    iget-object v3, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->adminMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    sget-boolean v5, Lcom/sleepycat/je/dbi/MemoryBudget;->DEBUG_ADMIN:Z

    const-string v4, "admin"

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateCounter(JLjava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Z)V

    .line 991
    return-void
.end method

.method public updateDOSMemoryUsage(J)V
    .locals 6
    .param p1, "increment"    # J

    .line 972
    iget-object v3, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->dosMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    sget-boolean v5, Lcom/sleepycat/je/dbi/MemoryBudget;->DEBUG_DOS:Z

    const-string v4, "DOS"

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateCounter(JLjava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Z)V

    .line 973
    return-void
.end method

.method public updateLockMemoryUsage(JI)V
    .locals 8
    .param p1, "increment"    # J
    .param p3, "lockTableIndex"    # I

    .line 1028
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    .line 1029
    iget-object v2, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->lockMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1031
    iget-object v2, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->lockMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_2

    .line 1035
    sget-boolean v2, Lcom/sleepycat/je/dbi/MemoryBudget;->DEBUG_LOCK:Z

    if-eqz v2, :cond_1

    .line 1036
    cmp-long v0, p1, v0

    const-string v1, "] "

    const-string v2, " lock["

    if-lez v0, :cond_0

    .line 1037
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INC-------- ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->lockMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1040
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1042
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------DEC="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->lockMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1044
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1042
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1048
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->totals:Lcom/sleepycat/je/dbi/MemoryBudget$Totals;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/dbi/MemoryBudget$Totals;->updateCacheUsage(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1049
    iget-object v0, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->alertEvictor()V

    goto :goto_1

    .line 1031
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->lockMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1033
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 1032
    const-string v3, "lockMem"

    move-object v2, p0

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/je/dbi/MemoryBudget;->makeErrorMessage(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1052
    :cond_3
    :goto_1
    return-void
.end method

.method public updateTreeMemoryUsage(J)V
    .locals 6
    .param p1, "increment"    # J

    .line 963
    iget-object v3, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->treeMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    sget-boolean v5, Lcom/sleepycat/je/dbi/MemoryBudget;->DEBUG_TREE:Z

    const-string/jumbo v4, "tree"

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateCounter(JLjava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Z)V

    .line 964
    return-void
.end method

.method public updateTxnMemoryUsage(J)V
    .locals 6
    .param p1, "increment"    # J

    .line 981
    iget-object v3, p0, Lcom/sleepycat/je/dbi/MemoryBudget;->txnMemoryUsage:Ljava/util/concurrent/atomic/AtomicLong;

    sget-boolean v5, Lcom/sleepycat/je/dbi/MemoryBudget;->DEBUG_TXN:Z

    const-string/jumbo v4, "txn"

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateCounter(JLjava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Z)V

    .line 982
    return-void
.end method
