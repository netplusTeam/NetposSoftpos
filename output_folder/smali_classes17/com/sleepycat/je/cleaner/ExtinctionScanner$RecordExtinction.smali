.class Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;
.super Ljava/lang/Object;
.source "ExtinctionScanner.java"

# interfaces
.implements Lcom/sleepycat/je/cleaner/ExtinctionScanner$ExtinctionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/ExtinctionScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordExtinction"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final beginKey:[B

.field private checkFlushKeyThisDB:Z

.field private countComplete:Z

.field private countLNsThisDB:Z

.field private final dbIds:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final endKey:[B

.field private extinctRecords:J

.field private final filter:Lcom/sleepycat/je/ScanFilter;

.field private final flushAtLastDb:J

.field private final flushAtLastKey:[B

.field private final id:J

.field private final label:Ljava/lang/String;

.field private scannedRecords:J

.field final synthetic this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

.field private tracker:Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

.field private unflushedBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 875
    const-class v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/cleaner/ExtinctionScanner;JLcom/sleepycat/bind/tuple/TupleInput;)V
    .locals 7
    .param p2, "id"    # J
    .param p4, "in"    # Lcom/sleepycat/bind/tuple/TupleInput;

    .line 932
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    new-instance v0, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    invoke-static {p1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->tracker:Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    .line 935
    iput-wide p2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->id:J

    .line 937
    invoke-virtual {p4}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    .line 938
    invoke-virtual {p4}, Lcom/sleepycat/bind/tuple/TupleInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->countComplete:Z

    .line 941
    invoke-virtual {p4}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    move-result v0

    .line 942
    .local v0, "nDbs":I
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->dbIds:Ljava/util/NavigableSet;

    .line 943
    const-wide/16 v1, 0x0

    .line 945
    .local v1, "prevDbId":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 946
    invoke-virtual {p4}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 947
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->dbIds:Ljava/util/NavigableSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    .line 945
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 950
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p4}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    move-result v3

    .line 951
    .local v3, "len":I
    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 952
    iput-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->beginKey:[B

    goto :goto_1

    .line 954
    :cond_1
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->beginKey:[B

    .line 955
    invoke-virtual {p4, v5}, Lcom/sleepycat/bind/tuple/TupleInput;->read([B)I

    .line 958
    :goto_1
    invoke-virtual {p4}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    move-result v3

    .line 959
    if-nez v3, :cond_2

    .line 960
    iput-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->endKey:[B

    goto :goto_2

    .line 962
    :cond_2
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->endKey:[B

    .line 963
    invoke-virtual {p4, v5}, Lcom/sleepycat/bind/tuple/TupleInput;->read([B)I

    .line 966
    :goto_2
    invoke-virtual {p4}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    move-result v3

    .line 967
    if-nez v3, :cond_3

    .line 968
    iput-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->filter:Lcom/sleepycat/je/ScanFilter;

    goto :goto_3

    .line 970
    :cond_3
    new-array v5, v3, [B

    .line 971
    .local v5, "bytes":[B
    invoke-virtual {p4, v5}, Lcom/sleepycat/bind/tuple/TupleInput;->read([B)I

    .line 973
    nop

    .line 974
    invoke-static {p1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 973
    const-string v6, "ScanFilter"

    invoke-static {v5, v6, p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->bytesToObject([BLjava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sleepycat/je/ScanFilter;

    iput-object p1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->filter:Lcom/sleepycat/je/ScanFilter;

    .line 977
    .end local v5    # "bytes":[B
    :goto_3
    invoke-virtual {p4}, Lcom/sleepycat/bind/tuple/TupleInput;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->label:Ljava/lang/String;

    .line 979
    invoke-virtual {p4}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->flushAtLastDb:J

    .line 981
    invoke-virtual {p4}, Lcom/sleepycat/bind/tuple/TupleInput;->readPackedInt()I

    move-result p1

    .line 982
    .end local v3    # "len":I
    .local p1, "len":I
    if-nez p1, :cond_4

    .line 983
    iput-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->flushAtLastKey:[B

    goto :goto_4

    .line 985
    :cond_4
    new-array v3, p1, [B

    iput-object v3, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->flushAtLastKey:[B

    .line 986
    invoke-virtual {p4, v3}, Lcom/sleepycat/bind/tuple/TupleInput;->read([B)I

    .line 988
    :goto_4
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/cleaner/ExtinctionScanner;JLjava/util/NavigableSet;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/ScanFilter;Ljava/lang/String;)V
    .locals 2
    .param p2, "id"    # J
    .param p5, "beginKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p6, "endKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p7, "filter"    # Lcom/sleepycat/je/ScanFilter;
    .param p8, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/ScanFilter;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 910
    .local p4, "dbIds":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    new-instance v0, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    invoke-static {p1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->tracker:Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    .line 914
    iput-wide p2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->id:J

    .line 915
    iput-object p4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->dbIds:Ljava/util/NavigableSet;

    .line 916
    const/4 p1, 0x0

    if-eqz p5, :cond_0

    .line 917
    invoke-static {p5}, Lcom/sleepycat/je/tree/LN;->copyEntryData(Lcom/sleepycat/je/DatabaseEntry;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->beginKey:[B

    .line 918
    if-eqz p6, :cond_1

    .line 919
    invoke-static {p6}, Lcom/sleepycat/je/tree/LN;->copyEntryData(Lcom/sleepycat/je/DatabaseEntry;)[B

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    iput-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->endKey:[B

    .line 920
    iput-object p7, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->filter:Lcom/sleepycat/je/ScanFilter;

    .line 921
    iput-object p8, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->label:Ljava/lang/String;

    .line 923
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->countComplete:Z

    .line 924
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->flushAtLastDb:J

    .line 925
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->flushAtLastKey:[B

    .line 926
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;)J
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;

    .line 875
    iget-wide v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;Lcom/sleepycat/je/dbi/DatabaseImpl;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;
    .param p1, "x1"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "x2"    # [B

    .line 875
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->isKeyTargeted(Lcom/sleepycat/je/dbi/DatabaseImpl;[B)Z

    move-result v0

    return v0
.end method

.method private isKeyTargeted(Lcom/sleepycat/je/dbi/DatabaseImpl;[B)Z
    .locals 3
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "key"    # [B

    .line 1646
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->dbIds:Ljava/util/NavigableSet;

    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseId;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1647
    return v1

    .line 1650
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->beginKey:[B

    if-eqz v0, :cond_1

    .line 1651
    invoke-static {p2, v0, p1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$1600([B[BLcom/sleepycat/je/dbi/DatabaseImpl;)I

    move-result v0

    if-gez v0, :cond_1

    .line 1652
    return v1

    .line 1655
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->endKey:[B

    if-eqz v0, :cond_2

    .line 1656
    invoke-static {p2, v0, p1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$1600([B[BLcom/sleepycat/je/dbi/DatabaseImpl;)I

    move-result v0

    if-lez v0, :cond_2

    .line 1657
    return v1

    .line 1660
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->filter:Lcom/sleepycat/je/ScanFilter;

    if-eqz v0, :cond_3

    invoke-interface {v0, p2}, Lcom/sleepycat/je/ScanFilter;->checkKey([B)Lcom/sleepycat/je/ScanFilter$ScanResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/ScanFilter$ScanResult;->getInclude()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1661
    return v1

    .line 1664
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private isTaskCommitted()Z
    .locals 9

    .line 1108
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 1109
    invoke-static {v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v0

    .line 1112
    .local v0, "locker":Lcom/sleepycat/je/txn/Locker;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/txn/Locker;->setLockTimeout(J)V

    .line 1114
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1115
    .local v2, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    iget-wide v3, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->id:J

    invoke-static {v3, v4, v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$400(JLcom/sleepycat/je/DatabaseEntry;)V

    .line 1117
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 1118
    invoke-static {v3}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$300(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v3
    :try_end_0
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1117
    .local v3, "cursor":Lcom/sleepycat/je/Cursor;
    nop

    .line 1120
    :try_start_1
    sget-object v5, Lcom/sleepycat/je/Get;->SEARCH:Lcom/sleepycat/je/Get;

    invoke-virtual {v3, v2, v4, v5, v4}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 1121
    const/4 v4, 0x1

    .line 1127
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_2
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1141
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1121
    return v4

    .line 1123
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v4}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$600(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Ljava/util/Map;

    move-result-object v4

    iget-wide v5, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1124
    nop

    .line 1127
    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_4
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1141
    :cond_2
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1124
    return v1

    .line 1117
    :catchall_0
    move-exception v4

    .end local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1127
    .restart local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v2    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_1
    move-exception v5

    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v6

    :try_start_7
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    :cond_3
    :goto_0
    throw v5
    :try_end_7
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1141
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v2    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    :catchall_3
    move-exception v1

    goto :goto_1

    .line 1127
    :catch_0
    move-exception v3

    .line 1129
    .local v3, "e":Lcom/sleepycat/je/LockConflictException;
    :try_start_8
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 1130
    invoke-static {v4}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$700(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Ljava/util/logging/Logger;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v5}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delaying extinct record scan, discardExtinctRecord txn is still open, id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " label="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->label:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1129
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1135
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v4}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$800(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1137
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v4}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$800(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1138
    nop

    .line 1141
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1138
    return v1

    .line 1135
    :cond_4
    :try_start_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v2    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1141
    .end local v3    # "e":Lcom/sleepycat/je/LockConflictException;
    .restart local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v2    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    :goto_1
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    throw v1
.end method

.method private passedEndKey([BLcom/sleepycat/je/dbi/DatabaseImpl;)Z
    .locals 5
    .param p1, "binKey"    # [B
    .param p2, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1632
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->endKey:[B

    array-length v3, v0

    .line 1636
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v4

    .line 1634
    invoke-static {p1, v0, v2, v3, v4}, Lcom/sleepycat/je/dbi/DupKeyData;->compareMainKey([B[BIILjava/util/Comparator;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->endKey:[B

    .line 1640
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v3

    .line 1638
    invoke-static {p1, v0, v3}, Lcom/sleepycat/je/tree/Key;->compareKeys([B[BLjava/util/Comparator;)I

    move-result v0

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1632
    :goto_0
    return v1
.end method

.method private scanBIN(Lcom/sleepycat/je/tree/BIN;I)Z
    .locals 24
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "startIndex"    # I

    .line 1464
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/BIN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v2

    .line 1465
    .local v2, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v3

    .line 1467
    .local v3, "nEntries":I
    iget-object v4, v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->endKey:[B

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 1468
    .local v4, "checkEndKeyThisBIN":Z
    :goto_0
    iget-boolean v7, v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->countLNsThisDB:Z

    .line 1469
    .local v7, "countLNsThisBIN":Z
    if-eqz v7, :cond_1

    iget-boolean v8, v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->checkFlushKeyThisDB:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v5

    .line 1477
    .local v8, "checkFlushKeyThisBIN":Z
    :goto_1
    sub-int v9, v3, p2

    const/4 v10, 0x3

    if-le v9, v10, :cond_4

    if-nez v4, :cond_2

    if-eqz v8, :cond_4

    .line 1480
    :cond_2
    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v1, v9}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v9

    .line 1482
    .local v9, "lastBinKey":[B
    if-eqz v4, :cond_3

    .line 1487
    invoke-direct {v0, v9, v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->passedEndKey([BLcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1488
    const/4 v4, 0x0

    .line 1492
    :cond_3
    if-eqz v8, :cond_4

    .line 1497
    iget-object v10, v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->flushAtLastKey:[B

    .line 1499
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v11

    .line 1497
    invoke-static {v9, v10, v11}, Lcom/sleepycat/je/tree/Key;->compareKeys([B[BLjava/util/Comparator;)I

    move-result v10

    if-gtz v10, :cond_4

    .line 1501
    const/4 v7, 0x0

    .line 1502
    const/4 v8, 0x0

    .line 1507
    .end local v9    # "lastBinKey":[B
    :cond_4
    const/4 v9, 0x1

    .line 1508
    .local v9, "moreKeys":Z
    const/4 v10, 0x0

    .line 1510
    .local v10, "addToCompressorQueue":Z
    move/from16 v11, p2

    .local v11, "i":I
    :goto_2
    if-ge v11, v3, :cond_11

    if-eqz v9, :cond_11

    .line 1512
    iget-wide v12, v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->scannedRecords:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    iput-wide v12, v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->scannedRecords:J

    .line 1518
    const/4 v12, 0x0

    .line 1520
    .local v12, "slotKey":[B
    if-eqz v4, :cond_5

    .line 1522
    invoke-virtual {v1, v11}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v12

    .line 1524
    invoke-direct {v0, v12, v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->passedEndKey([BLcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1525
    const/4 v9, 0x0

    .line 1526
    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_7

    .line 1530
    :cond_5
    iget-object v13, v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->filter:Lcom/sleepycat/je/ScanFilter;

    if-eqz v13, :cond_8

    .line 1532
    if-nez v12, :cond_6

    .line 1533
    invoke-virtual {v1, v11}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v12

    .line 1536
    :cond_6
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v13

    if-eqz v13, :cond_7

    array-length v13, v12

    .line 1537
    invoke-static {v12, v5, v13}, Lcom/sleepycat/je/dbi/DupKeyData;->getData([BII)[B

    move-result-object v13

    goto :goto_3

    :cond_7
    move-object v13, v12

    .line 1540
    .local v13, "priKey":[B
    :goto_3
    sget-object v16, Lcom/sleepycat/je/cleaner/ExtinctionScanner$1;->$SwitchMap$com$sleepycat$je$ScanFilter$ScanResult:[I

    iget-object v6, v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->filter:Lcom/sleepycat/je/ScanFilter;

    invoke-interface {v6, v13}, Lcom/sleepycat/je/ScanFilter;->checkKey([B)Lcom/sleepycat/je/ScanFilter$ScanResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/ScanFilter$ScanResult;->ordinal()I

    move-result v6

    aget v6, v16, v6

    packed-switch v6, :pswitch_data_0

    goto :goto_4

    .line 1549
    :pswitch_0
    const/4 v6, 0x0

    .line 1550
    .end local v9    # "moreKeys":Z
    .local v6, "moreKeys":Z
    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move v13, v5

    move v9, v6

    goto/16 :goto_6

    .line 1546
    .end local v6    # "moreKeys":Z
    .restart local v9    # "moreKeys":Z
    :pswitch_1
    const/4 v9, 0x0

    .line 1547
    goto :goto_4

    .line 1544
    :pswitch_2
    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move v13, v5

    goto/16 :goto_6

    .line 1554
    .end local v13    # "priKey":[B
    :cond_8
    :goto_4
    :pswitch_3
    iget-wide v5, v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->extinctRecords:J

    add-long/2addr v5, v14

    iput-wide v5, v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->extinctRecords:J

    .line 1557
    iget-boolean v5, v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->countComplete:Z

    if-eqz v5, :cond_9

    .line 1558
    invoke-virtual {v1, v11}, Lcom/sleepycat/je/tree/BIN;->setKnownDeleted(I)V

    .line 1559
    const/4 v10, 0x1

    .line 1569
    :cond_9
    if-eqz v7, :cond_10

    .line 1570
    invoke-virtual {v1, v11}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v5

    if-nez v5, :cond_f

    .line 1571
    invoke-virtual {v1, v11}, Lcom/sleepycat/je/tree/BIN;->isDefunct(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1572
    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    const/4 v13, 0x0

    goto/16 :goto_6

    .line 1576
    :cond_a
    invoke-virtual {v1, v11}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v5

    .line 1577
    .local v5, "lsn":J
    invoke-static {v5, v6}, Lcom/sleepycat/je/utilint/DbLsn;->isTransientOrNull(J)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1578
    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    const/4 v13, 0x0

    goto :goto_6

    .line 1587
    :cond_b
    if-eqz v8, :cond_e

    .line 1589
    if-nez v12, :cond_c

    .line 1590
    invoke-virtual {v1, v11}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v12

    .line 1593
    :cond_c
    iget-object v14, v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->flushAtLastKey:[B

    .line 1595
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v15

    .line 1593
    invoke-static {v12, v14, v15}, Lcom/sleepycat/je/tree/Key;->compareKeys([B[BLjava/util/Comparator;)I

    move-result v14

    if-gez v14, :cond_d

    .line 1596
    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    const/4 v13, 0x0

    goto :goto_6

    .line 1600
    :cond_d
    const/4 v8, 0x0

    .line 1601
    const/4 v13, 0x0

    iput-boolean v13, v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->checkFlushKeyThisDB:Z

    goto :goto_5

    .line 1587
    :cond_e
    const/4 v13, 0x0

    .line 1604
    :goto_5
    invoke-virtual {v1, v11}, Lcom/sleepycat/je/tree/BIN;->getLastLoggedSize(I)I

    move-result v14

    .line 1606
    .local v14, "size":I
    iget-object v15, v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->tracker:Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v15

    move-wide/from16 v18, v5

    move/from16 v21, v14

    invoke-virtual/range {v17 .. v23}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;->countObsolete(JLcom/sleepycat/je/log/LogEntryType;IZZ)V

    .line 1610
    move-object v15, v2

    move/from16 v16, v3

    .end local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v3    # "nEntries":I
    .local v15, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .local v16, "nEntries":I
    iget-wide v2, v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->unflushedBytes:J

    move/from16 v17, v4

    .end local v4    # "checkEndKeyThisBIN":Z
    .end local v5    # "lsn":J
    .local v17, "checkEndKeyThisBIN":Z
    .local v18, "lsn":J
    int-to-long v4, v14

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->unflushedBytes:J

    goto :goto_6

    .line 1570
    .end local v14    # "size":I
    .end local v15    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v16    # "nEntries":I
    .end local v17    # "checkEndKeyThisBIN":Z
    .end local v18    # "lsn":J
    .restart local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v3    # "nEntries":I
    .restart local v4    # "checkEndKeyThisBIN":Z
    :cond_f
    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    const/4 v13, 0x0

    .end local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v3    # "nEntries":I
    .end local v4    # "checkEndKeyThisBIN":Z
    .restart local v15    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v16    # "nEntries":I
    .restart local v17    # "checkEndKeyThisBIN":Z
    goto :goto_6

    .line 1569
    .end local v15    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v16    # "nEntries":I
    .end local v17    # "checkEndKeyThisBIN":Z
    .restart local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v3    # "nEntries":I
    .restart local v4    # "checkEndKeyThisBIN":Z
    :cond_10
    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    const/4 v13, 0x0

    .line 1510
    .end local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v3    # "nEntries":I
    .end local v4    # "checkEndKeyThisBIN":Z
    .end local v12    # "slotKey":[B
    .restart local v15    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v16    # "nEntries":I
    .restart local v17    # "checkEndKeyThisBIN":Z
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move v5, v13

    move-object v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    goto/16 :goto_2

    .end local v15    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v16    # "nEntries":I
    .end local v17    # "checkEndKeyThisBIN":Z
    .restart local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v3    # "nEntries":I
    .restart local v4    # "checkEndKeyThisBIN":Z
    :cond_11
    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    .line 1613
    .end local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v3    # "nEntries":I
    .end local v4    # "checkEndKeyThisBIN":Z
    .end local v11    # "i":I
    .restart local v15    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v16    # "nEntries":I
    .restart local v17    # "checkEndKeyThisBIN":Z
    :goto_7
    if-eqz v10, :cond_12

    .line 1619
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/BIN;->setProhibitNextDelta(Z)V

    .line 1620
    iget-object v2, v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addToCompressorQueue(Lcom/sleepycat/je/tree/BIN;)V

    .line 1623
    :cond_12
    return v9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private scanBatch(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Z)Z
    .locals 11
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "keyEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "dataEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "firstBatch"    # Z

    .line 1337
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 1338
    invoke-static {v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/txn/LockerFactory;->getInternalReadOperationLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    .line 1340
    .local v0, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v1, 0x0

    .line 1341
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v0, v1, v2}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;Z)Lcom/sleepycat/je/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1340
    .local v1, "cursor":Lcom/sleepycat/je/Cursor;
    nop

    .line 1343
    :try_start_1
    invoke-static {v1}, Lcom/sleepycat/je/DbInternal;->excludeFromOpStats(Lcom/sleepycat/je/Cursor;)V

    .line 1344
    sget-object v3, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/Cursor;->setCacheMode(Lcom/sleepycat/je/CacheMode;)V

    .line 1360
    nop

    .line 1362
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sleepycat/je/Get;->FIRST:Lcom/sleepycat/je/Get;

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    sget-object v3, Lcom/sleepycat/je/Get;->SEARCH_GTE:Lcom/sleepycat/je/Get;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/sleepycat/je/Get;->SEARCH_ANY_GTE:Lcom/sleepycat/je/Get;

    .line 1364
    :goto_0
    invoke-static {}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$1200()Lcom/sleepycat/je/ReadOptions;

    move-result-object v4

    .line 1360
    invoke-virtual {v1, p2, p3, v3, v4}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_3

    .line 1365
    nop

    .line 1415
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1416
    :cond_2
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1365
    return v2

    .line 1368
    :cond_3
    :try_start_3
    iget-wide v3, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->scannedRecords:J

    .line 1371
    .local v3, "prevScanned":J
    :goto_1
    iget-object v5, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v5}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$1000(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_5

    .line 1372
    nop

    .line 1415
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1416
    :cond_4
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1372
    return v2

    .line 1375
    :cond_5
    nop

    .line 1376
    :try_start_5
    invoke-static {v1}, Lcom/sleepycat/je/DbInternal;->getCursorImpl(Lcom/sleepycat/je/Cursor;)Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v5

    .line 1378
    .local v5, "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/CursorImpl;->latchBIN()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1380
    :try_start_6
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/CursorImpl;->getBIN()Lcom/sleepycat/je/tree/BIN;

    move-result-object v6

    .line 1381
    .local v6, "bin":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {v6, v2}, Lcom/sleepycat/je/tree/BIN;->mutateToFullBIN(Z)V

    .line 1383
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/CursorImpl;->getIndex()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->scanBIN(Lcom/sleepycat/je/tree/BIN;I)Z

    move-result v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v7, :cond_7

    .line 1384
    nop

    .line 1390
    :try_start_7
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1415
    if-eqz v1, :cond_6

    :try_start_8
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1416
    :cond_6
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1384
    return v2

    .line 1388
    :cond_7
    :try_start_9
    invoke-virtual {v6}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v5, v7}, Lcom/sleepycat/je/dbi/CursorImpl;->setIndex(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1390
    .end local v6    # "bin":Lcom/sleepycat/je/tree/BIN;
    :try_start_a
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .line 1391
    nop

    .line 1393
    sget-object v6, Lcom/sleepycat/je/Get;->NEXT:Lcom/sleepycat/je/Get;

    .line 1395
    invoke-static {}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$1200()Lcom/sleepycat/je/ReadOptions;

    move-result-object v7

    .line 1393
    invoke-virtual {v1, p2, p3, v6, v7}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-nez v6, :cond_9

    .line 1396
    nop

    .line 1415
    if-eqz v1, :cond_8

    :try_start_b
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1416
    :cond_8
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1396
    return v2

    .line 1399
    :cond_9
    :try_start_c
    iget-wide v6, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->unflushedBytes:J

    iget-object v9, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v9}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$1300(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)J

    move-result-wide v9

    cmp-long v6, v6, v9

    if-ltz v6, :cond_a

    .line 1408
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->unflushedBytes:J

    .line 1411
    :cond_a
    iget-wide v6, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->scannedRecords:J

    sub-long/2addr v6, v3

    iget-object v9, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v9}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$1400(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)I

    move-result v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    int-to-long v9, v9

    cmp-long v6, v6, v9

    if-ltz v6, :cond_c

    .line 1412
    nop

    .line 1415
    if-eqz v1, :cond_b

    :try_start_d
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1416
    :cond_b
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    .line 1412
    return v8

    .line 1414
    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    :cond_c
    goto/16 :goto_1

    .line 1390
    .restart local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    :catchall_0
    move-exception v2

    :try_start_e
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/CursorImpl;->releaseBIN()V

    .end local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v1    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "firstBatch":Z
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1340
    .end local v3    # "prevScanned":J
    .end local v5    # "cursorImpl":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v1    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "firstBatch":Z
    :catchall_1
    move-exception v2

    .end local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v1    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "firstBatch":Z
    :try_start_f
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1415
    .restart local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v1    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "firstBatch":Z
    :catchall_2
    move-exception v3

    if-eqz v1, :cond_d

    :try_start_10
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v4

    :try_start_11
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "firstBatch":Z
    :cond_d
    :goto_2
    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 1416
    .end local v1    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v0    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "firstBatch":Z
    :catchall_4
    move-exception v1

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd()V

    throw v1
.end method

.method private scanDb(J)V
    .locals 12
    .param p1, "dbId"    # J

    .line 1234
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    .line 1235
    .local v0, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1237
    .local v1, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v2, 0x0

    .line 1238
    .local v2, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v3, 0x1

    .line 1241
    .local v3, "firstBatch":Z
    :goto_0
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v4}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->checkOpen()V

    .line 1243
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v4}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$1000(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1244
    return-void

    .line 1247
    :cond_0
    new-instance v4, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-direct {v4, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>(J)V

    .line 1248
    invoke-virtual {v0, v4}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v4

    .line 1250
    .local v4, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    const-string v5, " label="

    if-eqz v4, :cond_b

    :try_start_0
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeleting()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_4

    .line 1259
    :cond_1
    if-eqz v3, :cond_8

    .line 1260
    iget-boolean v6, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->countComplete:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 1261
    iput-boolean v7, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->countLNsThisDB:Z

    .line 1262
    iput-boolean v7, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->checkFlushKeyThisDB:Z

    goto :goto_2

    .line 1270
    :cond_2
    nop

    .line 1271
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isLNImmediatelyObsolete()Z

    move-result v6

    const/4 v8, 0x1

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->flushAtLastKey:[B

    if-eqz v6, :cond_3

    iget-wide v9, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->flushAtLastDb:J

    cmp-long v6, p1, v9

    if-ltz v6, :cond_4

    :cond_3
    move v6, v8

    goto :goto_1

    :cond_4
    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->countLNsThisDB:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1275
    if-nez v6, :cond_5

    .line 1305
    invoke-virtual {v0, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1276
    return-void

    .line 1280
    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->flushAtLastKey:[B

    if-eqz v6, :cond_6

    iget-wide v9, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->flushAtLastDb:J

    cmp-long v6, p1, v9

    if-nez v6, :cond_6

    move v7, v8

    :cond_6
    iput-boolean v7, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->checkFlushKeyThisDB:Z

    .line 1286
    :goto_2
    iget-object v6, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->beginKey:[B

    if-eqz v6, :cond_7

    .line 1287
    invoke-virtual {v1, v6}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 1294
    :cond_7
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1295
    new-instance v6, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v6}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v2, v6

    .line 1299
    :cond_8
    invoke-direct {p0, v4, v1, v2, v3}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->scanBatch(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Z)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_9

    .line 1305
    invoke-virtual {v0, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1300
    return-void

    .line 1303
    :cond_9
    const/4 v3, 0x0

    .line 1305
    invoke-virtual {v0, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1306
    nop

    .line 1308
    iget-object v6, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v6}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$1100(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)I

    move-result v6

    if-lez v6, :cond_a

    .line 1310
    :try_start_2
    iget-object v6, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v6}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$1100(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1317
    goto :goto_3

    .line 1311
    :catch_0
    move-exception v6

    .line 1312
    .local v6, "e":Ljava/lang/InterruptedException;
    iget-object v7, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 1313
    invoke-static {v7}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$700(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Ljava/util/logging/Logger;

    move-result-object v7

    iget-object v8, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v8}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Extinct record scan interrupted, id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->label:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1312
    invoke-static {v7, v8, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1316
    new-instance v5, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v7, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v7}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v7

    invoke-direct {v5, v7, v6}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v5

    .line 1319
    .end local v4    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_a
    :goto_3
    goto/16 :goto_0

    .line 1251
    .restart local v4    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_b
    :goto_4
    :try_start_3
    iget-object v6, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 1252
    invoke-static {v6}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$700(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Ljava/util/logging/Logger;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v7}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DB="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " deleted during extinct record scan, id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->id:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->label:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1251
    invoke-static {v6, v7, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1305
    invoke-virtual {v0, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1256
    return-void

    .line 1305
    :catchall_0
    move-exception v5

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    throw v5
.end method


# virtual methods
.method flushUtilization(J[B)V
    .locals 8
    .param p1, "currentDbId"    # J
    .param p3, "currentKey"    # [B

    .line 1433
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationProfile()Lcom/sleepycat/je/cleaner/UtilizationProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->tracker:Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->flushLocalTracker(Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;)V

    .line 1434
    new-instance v0, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->tracker:Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    .line 1440
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-static {}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$1500()Lcom/sleepycat/je/TransactionConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/je/txn/Txn;->createLocalAutoTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    .line 1441
    .local v0, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v1, 0x0

    .line 1443
    .local v1, "success":Z
    const/4 v7, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, v0

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->writeTask(J[BLcom/sleepycat/je/txn/Locker;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1445
    const/4 v1, 0x1

    .line 1447
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 1448
    nop

    .line 1449
    return-void

    .line 1447
    :catchall_0
    move-exception v2

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    throw v2
.end method

.method public isExtinctionForDb(Lcom/sleepycat/je/dbi/DatabaseId;)Z
    .locals 1
    .param p1, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;

    .line 1086
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 10

    .line 1153
    const-string v0, " label="

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$900(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Ljava/util/Set;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1156
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->isTaskCommitted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1157
    return-void

    .line 1160
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 1161
    invoke-static {v1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$700(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start extinct record scan, id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1160
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1167
    iget-boolean v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->countComplete:Z

    if-nez v1, :cond_5

    .line 1169
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    iget-object v1, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->beforeScan1Hook:Lcom/sleepycat/je/utilint/TestHook;

    if-eqz v1, :cond_1

    .line 1170
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    iget-object v1, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->beforeScan1Hook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-interface {v1}, Lcom/sleepycat/je/utilint/TestHook;->doHook()V

    .line 1173
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->dbIds:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1174
    .local v2, "dbId":J
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v4}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$1000(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1175
    return-void

    .line 1177
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->scanDb(J)V

    .line 1178
    .end local v2    # "dbId":J
    goto :goto_0

    .line 1180
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    iget-object v1, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->beforeScan1FlushHook:Lcom/sleepycat/je/utilint/TestHook;

    if-eqz v1, :cond_4

    .line 1181
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    iget-object v1, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->beforeScan1FlushHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-interface {v1}, Lcom/sleepycat/je/utilint/TestHook;->doHook()V

    .line 1184
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->countComplete:Z

    .line 1185
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->flushUtilization(J[B)V

    .line 1187
    iget-wide v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->scannedRecords:J

    .line 1188
    .local v4, "pass1Scanned":J
    iget-wide v6, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->extinctRecords:J

    .line 1189
    .local v6, "pass1Extinct":J
    iput-wide v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->scannedRecords:J

    .line 1190
    iput-wide v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->extinctRecords:J

    goto :goto_1

    .line 1192
    .end local v4    # "pass1Scanned":J
    .end local v6    # "pass1Extinct":J
    :cond_5
    const-wide/16 v4, 0x0

    .line 1193
    .restart local v4    # "pass1Scanned":J
    const-wide/16 v1, 0x0

    move-wide v6, v1

    .line 1196
    .restart local v6    # "pass1Extinct":J
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    iget-object v1, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->beforeScan2Hook:Lcom/sleepycat/je/utilint/TestHook;

    if-eqz v1, :cond_6

    .line 1197
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    iget-object v1, v1, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->beforeScan2Hook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-interface {v1}, Lcom/sleepycat/je/utilint/TestHook;->doHook()V

    .line 1200
    :cond_6
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->dbIds:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1201
    .restart local v2    # "dbId":J
    iget-object v8, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v8}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$1000(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1202
    return-void

    .line 1204
    :cond_7
    invoke-direct {p0, v2, v3}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->scanDb(J)V

    .line 1205
    .end local v2    # "dbId":J
    goto :goto_2

    .line 1207
    :cond_8
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$900(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Ljava/util/Set;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1209
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 1210
    invoke-static {v1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$700(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End extinct record scan, wait for checkpoint, id="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->id:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " pass1Scanned="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " pass1Extinct="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " pass2Scanned="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->scannedRecords:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " pass2Extinct="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->extinctRecords:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->label:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1209
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1224
    .end local v4    # "pass1Scanned":J
    .end local v6    # "pass1Extinct":J
    nop

    .line 1225
    return-void

    .line 1218
    :catch_0
    move-exception v1

    .line 1219
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 1220
    invoke-static {v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$700(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v3}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fatal exception during extinct record scan, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->label:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1219
    invoke-static {v2, v3, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1223
    throw v1

    .line 1153
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method serializeData(J[BLcom/sleepycat/bind/tuple/TupleOutput;)V
    .locals 8
    .param p1, "flushedDbId"    # J
    .param p3, "flushedKey"    # [B
    .param p4, "out"    # Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 994
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 995
    iget-boolean v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->countComplete:Z

    invoke-virtual {p4, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeBoolean(Z)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 998
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->dbIds:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->size()I

    move-result v1

    invoke-virtual {p4, v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 999
    const-wide/16 v1, 0x0

    .line 1001
    .local v1, "prevDbId":J
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->dbIds:Ljava/util/NavigableSet;

    invoke-interface {v3}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1002
    .local v4, "id":J
    sub-long v6, v4, v1

    invoke-virtual {p4, v6, v7}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1003
    move-wide v1, v4

    .line 1004
    .end local v4    # "id":J
    goto :goto_0

    .line 1006
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->beginKey:[B

    if-nez v3, :cond_1

    .line 1007
    invoke-virtual {p4, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    goto :goto_1

    .line 1009
    :cond_1
    array-length v3, v3

    invoke-virtual {p4, v3}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1010
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->beginKey:[B

    invoke-virtual {p4, v3}, Lcom/sleepycat/bind/tuple/TupleOutput;->write([B)V

    .line 1013
    :goto_1
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->endKey:[B

    if-nez v3, :cond_2

    .line 1014
    invoke-virtual {p4, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    goto :goto_2

    .line 1016
    :cond_2
    array-length v3, v3

    invoke-virtual {p4, v3}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1017
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->endKey:[B

    invoke-virtual {p4, v3}, Lcom/sleepycat/bind/tuple/TupleOutput;->write([B)V

    .line 1020
    :goto_2
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->filter:Lcom/sleepycat/je/ScanFilter;

    if-nez v3, :cond_3

    .line 1021
    invoke-virtual {p4, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    goto :goto_3

    .line 1023
    :cond_3
    const-string v4, "ScanFilter"

    invoke-static {v3, v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->objectToBytes(Ljava/lang/Object;Ljava/lang/String;)[B

    move-result-object v3

    .line 1026
    .local v3, "bytes":[B
    array-length v4, v3

    invoke-virtual {p4, v4}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1027
    invoke-virtual {p4, v3}, Lcom/sleepycat/bind/tuple/TupleOutput;->write([B)V

    .line 1030
    .end local v3    # "bytes":[B
    :goto_3
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->label:Ljava/lang/String;

    invoke-virtual {p4, v3}, Lcom/sleepycat/bind/tuple/TupleOutput;->writeString(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1032
    invoke-virtual {p4, p1, p2}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1034
    if-nez p3, :cond_4

    .line 1035
    invoke-virtual {p4, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    goto :goto_4

    .line 1037
    :cond_4
    array-length v0, p3

    invoke-virtual {p4, v0}, Lcom/sleepycat/bind/tuple/TupleOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 1038
    invoke-virtual {p4, p3}, Lcom/sleepycat/bind/tuple/TupleOutput;->write([B)V

    .line 1040
    :goto_4
    return-void
.end method

.method writeTask(J[BLcom/sleepycat/je/txn/Locker;Z)V
    .locals 7
    .param p1, "flushedDbId"    # J
    .param p3, "flushedKey"    # [B
    .param p4, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p5, "insert"    # Z

    .line 1059
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Lcom/sleepycat/je/txn/Locker;->isReplicated()Z

    move-result v0

    if-ne p5, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1060
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$300(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1062
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1063
    .local v0, "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1065
    .local v1, "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    iget-wide v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->id:J

    invoke-static {v2, v3, v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$400(JLcom/sleepycat/je/DatabaseEntry;)V

    .line 1066
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$500(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    move-result-object v2

    .line 1067
    .local v2, "out":Lcom/sleepycat/bind/tuple/TupleOutput;
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->serializeData(J[BLcom/sleepycat/bind/tuple/TupleOutput;)V

    .line 1068
    invoke-static {v2, v1}, Lcom/sleepycat/bind/tuple/TupleBase;->outputToEntry(Lcom/sleepycat/bind/tuple/TupleOutput;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 1070
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 1071
    invoke-static {v3}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$300(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p4, v4}, Lcom/sleepycat/je/DbInternal;->makeCursor(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v3

    .line 1070
    .local v3, "cursor":Lcom/sleepycat/je/Cursor;
    nop

    .line 1073
    if-eqz p5, :cond_2

    :try_start_0
    sget-object v4, Lcom/sleepycat/je/dbi/PutMode;->NO_OVERWRITE:Lcom/sleepycat/je/dbi/PutMode;

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/sleepycat/je/dbi/PutMode;->OVERWRITE:Lcom/sleepycat/je/dbi/PutMode;

    .line 1076
    :goto_1
    invoke-virtual {p4}, Lcom/sleepycat/je/txn/Locker;->isReplicated()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$RecordExtinction;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 1077
    invoke-static {v5}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$300(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getRepContext()Lcom/sleepycat/je/log/ReplicationContext;

    move-result-object v5

    goto :goto_2

    :cond_3
    sget-object v5, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    .line 1073
    :goto_2
    invoke-static {v3, v0, v1, v4, v5}, Lcom/sleepycat/je/DbInternal;->putWithRepContext(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/PutMode;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_5

    .line 1082
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1083
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    :cond_4
    return-void

    .line 1080
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "out":Lcom/sleepycat/bind/tuple/TupleOutput;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "flushedDbId":J
    .end local p3    # "flushedKey":[B
    .end local p4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p5    # "insert":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1070
    .restart local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "out":Lcom/sleepycat/bind/tuple/TupleOutput;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "flushedDbId":J
    .restart local p3    # "flushedKey":[B
    .restart local p4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p5    # "insert":Z
    :catchall_0
    move-exception v4

    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "out":Lcom/sleepycat/bind/tuple/TupleOutput;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "flushedDbId":J
    .end local p3    # "flushedKey":[B
    .end local p4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p5    # "insert":Z
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1082
    .restart local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "out":Lcom/sleepycat/bind/tuple/TupleOutput;
    .restart local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "flushedDbId":J
    .restart local p3    # "flushedKey":[B
    .restart local p4    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p5    # "insert":Z
    :catchall_1
    move-exception v5

    if-eqz v3, :cond_6

    :try_start_3
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v6

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v5

    .line 1060
    .end local v0    # "keyEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "dataEntry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "out":Lcom/sleepycat/bind/tuple/TupleOutput;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
