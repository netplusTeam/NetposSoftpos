.class public Lcom/sleepycat/je/tree/BIN;
.super Lcom/sleepycat/je/tree/IN;
.source "BIN.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BEGIN_TAG:Ljava/lang/String; = "<bin>"

.field private static final EMPTY_EXPIRATION:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

.field private static final EMPTY_LAST_LOGGED_SIZES:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

.field private static final EMPTY_OFFHEAP_LN_IDS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

.field private static final EMPTY_VLSNS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

.field private static final END_TAG:Ljava/lang/String; = "</bin>"

.field public static TEST_NO_LAST_LOGGED_SIZES:Z


# instance fields
.field bloomFilter:[B

.field private cursorSet:Lcom/sleepycat/je/utilint/TinyHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TinyHashSet<",
            "Lcom/sleepycat/je/dbi/CursorImpl;",
            ">;"
        }
    .end annotation
.end field

.field private expirationBase:I

.field private expirationValues:Lcom/sleepycat/je/tree/INLongRep;

.field private fullBinMaxEntries:I

.field private fullBinNEntries:I

.field private lastDeltaVersion:J

.field private lastLoggedSizes:Lcom/sleepycat/je/tree/INLongRep;

.field private offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

.field private offHeapLruId:I

.field private vlsnCache:Lcom/sleepycat/je/tree/INLongRep;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 170
    nop

    .line 183
    new-instance v0, Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/tree/INLongRep$EmptyRep;-><init>(IZ)V

    sput-object v0, Lcom/sleepycat/je/tree/BIN;->EMPTY_LAST_LOGGED_SIZES:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    .line 198
    new-instance v0, Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    const/4 v3, 0x5

    invoke-direct {v0, v3, v2}, Lcom/sleepycat/je/tree/INLongRep$EmptyRep;-><init>(IZ)V

    sput-object v0, Lcom/sleepycat/je/tree/BIN;->EMPTY_VLSNS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    .line 209
    new-instance v0, Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    const/16 v3, 0x8

    invoke-direct {v0, v3, v1}, Lcom/sleepycat/je/tree/INLongRep$EmptyRep;-><init>(IZ)V

    sput-object v0, Lcom/sleepycat/je/tree/BIN;->EMPTY_OFFHEAP_LN_IDS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    .line 221
    new-instance v0, Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    invoke-direct {v0, v1, v1}, Lcom/sleepycat/je/tree/INLongRep$EmptyRep;-><init>(IZ)V

    sput-object v0, Lcom/sleepycat/je/tree/BIN;->EMPTY_EXPIRATION:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    .line 314
    sput-boolean v2, Lcom/sleepycat/je/tree/BIN;->TEST_NO_LAST_LOGGED_SIZES:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 316
    invoke-direct {p0}, Lcom/sleepycat/je/tree/IN;-><init>()V

    .line 239
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/tree/BIN;->fullBinNEntries:I

    .line 246
    iput v0, p0, Lcom/sleepycat/je/tree/BIN;->fullBinMaxEntries:I

    .line 262
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sleepycat/je/tree/BIN;->lastDeltaVersion:J

    .line 281
    sget-object v1, Lcom/sleepycat/je/tree/BIN;->EMPTY_VLSNS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    iput-object v1, p0, Lcom/sleepycat/je/tree/BIN;->vlsnCache:Lcom/sleepycat/je/tree/INLongRep;

    .line 291
    sget-object v1, Lcom/sleepycat/je/tree/BIN;->EMPTY_LAST_LOGGED_SIZES:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    iput-object v1, p0, Lcom/sleepycat/je/tree/BIN;->lastLoggedSizes:Lcom/sleepycat/je/tree/INLongRep;

    .line 297
    sget-object v1, Lcom/sleepycat/je/tree/BIN;->EMPTY_OFFHEAP_LN_IDS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    iput-object v1, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 298
    iput v0, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLruId:I

    .line 307
    sget-object v1, Lcom/sleepycat/je/tree/BIN;->EMPTY_EXPIRATION:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    iput-object v1, p0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    .line 308
    iput v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationBase:I

    .line 317
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/DatabaseImpl;[BII)V
    .locals 3
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "identifierKey"    # [B
    .param p3, "capacity"    # I
    .param p4, "level"    # I

    .line 325
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/tree/IN;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;[BII)V

    .line 239
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/tree/BIN;->fullBinNEntries:I

    .line 246
    iput v0, p0, Lcom/sleepycat/je/tree/BIN;->fullBinMaxEntries:I

    .line 262
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sleepycat/je/tree/BIN;->lastDeltaVersion:J

    .line 281
    sget-object v1, Lcom/sleepycat/je/tree/BIN;->EMPTY_VLSNS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    iput-object v1, p0, Lcom/sleepycat/je/tree/BIN;->vlsnCache:Lcom/sleepycat/je/tree/INLongRep;

    .line 291
    sget-object v1, Lcom/sleepycat/je/tree/BIN;->EMPTY_LAST_LOGGED_SIZES:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    iput-object v1, p0, Lcom/sleepycat/je/tree/BIN;->lastLoggedSizes:Lcom/sleepycat/je/tree/INLongRep;

    .line 297
    sget-object v1, Lcom/sleepycat/je/tree/BIN;->EMPTY_OFFHEAP_LN_IDS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    iput-object v1, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 298
    iput v0, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLruId:I

    .line 307
    sget-object v1, Lcom/sleepycat/je/tree/BIN;->EMPTY_EXPIRATION:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    iput-object v1, p0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    .line 308
    iput v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationBase:I

    .line 326
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/SizeofMarker;)V
    .locals 3
    .param p1, "marker"    # Lcom/sleepycat/je/utilint/SizeofMarker;

    .line 332
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/IN;-><init>(Lcom/sleepycat/je/utilint/SizeofMarker;)V

    .line 239
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/tree/BIN;->fullBinNEntries:I

    .line 246
    iput v0, p0, Lcom/sleepycat/je/tree/BIN;->fullBinMaxEntries:I

    .line 262
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sleepycat/je/tree/BIN;->lastDeltaVersion:J

    .line 281
    sget-object v1, Lcom/sleepycat/je/tree/BIN;->EMPTY_VLSNS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    iput-object v1, p0, Lcom/sleepycat/je/tree/BIN;->vlsnCache:Lcom/sleepycat/je/tree/INLongRep;

    .line 291
    sget-object v1, Lcom/sleepycat/je/tree/BIN;->EMPTY_LAST_LOGGED_SIZES:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    iput-object v1, p0, Lcom/sleepycat/je/tree/BIN;->lastLoggedSizes:Lcom/sleepycat/je/tree/INLongRep;

    .line 297
    sget-object v1, Lcom/sleepycat/je/tree/BIN;->EMPTY_OFFHEAP_LN_IDS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    iput-object v1, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 298
    iput v0, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLruId:I

    .line 307
    sget-object v1, Lcom/sleepycat/je/tree/BIN;->EMPTY_EXPIRATION:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    iput-object v1, p0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    .line 308
    iput v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationBase:I

    .line 333
    return-void
.end method

.method private evictLNInternal(IZ)J
    .locals 6
    .param p1, "index"    # I
    .param p2, "ifFetchedCold"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1555
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    .line 1557
    .local v0, "n":Lcom/sleepycat/je/tree/Node;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sleepycat/je/tree/LN;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1559
    :cond_1
    :goto_0
    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    .line 1560
    return-wide v1

    .line 1563
    :cond_2
    move-object v3, v0

    check-cast v3, Lcom/sleepycat/je/tree/LN;

    .line 1565
    .local v3, "ln":Lcom/sleepycat/je/tree/LN;
    if-eqz p2, :cond_3

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/LN;->getFetchedCold()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1566
    return-wide v1

    .line 1572
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lcom/sleepycat/je/tree/LN;->isEvictable(J)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1573
    const-wide/16 v1, -0x1

    return-wide v1

    .line 1580
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, p1, v3, v1}, Lcom/sleepycat/je/tree/BIN;->logDirtyLN(ILcom/sleepycat/je/tree/LN;Z)V

    .line 1583
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/sleepycat/je/tree/BIN;->setTarget(ILcom/sleepycat/je/tree/Node;)V

    .line 1585
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v1

    .line 1586
    .local v1, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1587
    invoke-virtual {v1, p0, p1, v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->storeEvictedLN(Lcom/sleepycat/je/tree/BIN;ILcom/sleepycat/je/tree/LN;)Z

    .line 1590
    :cond_5
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/Node;->getMemorySizeIncludedByParent()J

    move-result-wide v4

    return-wide v4
.end method

.method private fetchFullBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/BIN;
    .locals 8
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2251
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 2252
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getLastFullLsn()J

    move-result-wide v1

    .line 2255
    .local v1, "lsn":J
    nop

    .line 2256
    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/sleepycat/je/log/LogManager;->getEntryHandleNotFound(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/tree/BIN;
    :try_end_0
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2255
    return-object v4

    .line 2262
    :catch_0
    move-exception v4

    .line 2263
    .local v4, "e":Ljava/lang/RuntimeException;
    new-instance v5, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 2265
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v1, v2, v3}, Lcom/sleepycat/je/tree/BIN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v0, v6, v3, v4}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 2258
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v4

    .line 2259
    .local v4, "e":Lcom/sleepycat/je/EnvironmentFailureException;
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1, v2, v3}, Lcom/sleepycat/je/tree/BIN;->makeFetchErrorMsg(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/sleepycat/je/EnvironmentFailureException;->addErrorMessage(Ljava/lang/String;)V

    .line 2260
    throw v4
.end method

.method private initBINDelta(Lcom/sleepycat/je/tree/BIN;IIZ)V
    .locals 27
    .param p1, "destBIN"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "nDeltas"    # I
    .param p3, "capacity"    # I
    .param p4, "copyTargets"    # Z

    .line 1977
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v14, p2

    const/4 v1, 0x0

    .line 1978
    .local v1, "longLSNs":[J
    const/4 v2, 0x0

    .line 1980
    .local v2, "compactLSNs":[B
    iget-object v3, v0, Lcom/sleepycat/je/tree/BIN;->entryLsnLongArray:[J

    if-nez v3, :cond_0

    .line 1981
    mul-int/lit8 v3, v14, 0x4

    new-array v2, v3, [B

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto :goto_0

    .line 1983
    :cond_0
    new-array v1, v14, [J

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 1986
    .end local v1    # "longLSNs":[J
    .end local v2    # "compactLSNs":[B
    .local v17, "longLSNs":[J
    .local v18, "compactLSNs":[B
    :goto_0
    new-array v13, v14, [J

    .line 1987
    .local v13, "vlsns":[J
    new-array v12, v14, [I

    .line 1988
    .local v12, "sizes":[I
    new-array v11, v14, [[B

    .line 1989
    .local v11, "keys":[[B
    new-array v10, v14, [B

    .line 1990
    .local v10, "states":[B
    const/4 v1, 0x0

    .line 1991
    .local v1, "memIds":[J
    const/4 v2, 0x0

    .line 1992
    .local v2, "targets":[Lcom/sleepycat/je/tree/Node;
    const/4 v3, 0x0

    .line 1994
    .local v3, "expiration":[I
    if-eqz p4, :cond_1

    .line 1995
    new-array v2, v14, [Lcom/sleepycat/je/tree/Node;

    .line 1996
    new-array v1, v14, [J

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    goto :goto_1

    .line 1994
    :cond_1
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .line 1999
    .end local v1    # "memIds":[J
    .end local v2    # "targets":[Lcom/sleepycat/je/tree/Node;
    .local v19, "memIds":[J
    .local v20, "targets":[Lcom/sleepycat/je/tree/Node;
    :goto_1
    iget v1, v0, Lcom/sleepycat/je/tree/BIN;->expirationBase:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 2000
    new-array v3, v14, [I

    move-object/from16 v21, v3

    goto :goto_2

    .line 1999
    :cond_2
    move-object/from16 v21, v3

    .line 2003
    .end local v3    # "expiration":[I
    .local v21, "expiration":[I
    :goto_2
    const/4 v1, 0x0

    .line 2004
    .local v1, "j":I
    const/4 v2, 0x0

    move/from16 v22, v1

    .end local v1    # "j":I
    .local v2, "i":I
    .local v22, "j":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v1

    if-ge v2, v1, :cond_8

    .line 2006
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->isDirty(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2007
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->freeOffHeapLN(I)V

    .line 2008
    goto :goto_5

    .line 2011
    :cond_3
    iget-object v1, v0, Lcom/sleepycat/je/tree/BIN;->entryLsnLongArray:[J

    if-nez v1, :cond_4

    .line 2012
    shl-int/lit8 v1, v22, 0x2

    .line 2013
    .local v1, "doff":I
    shl-int/lit8 v3, v2, 0x2

    .line 2014
    .local v3, "soff":I
    iget-object v4, v0, Lcom/sleepycat/je/tree/BIN;->entryLsnByteArray:[B

    aget-byte v4, v4, v3

    aput-byte v4, v18, v1

    .line 2015
    add-int/lit8 v4, v1, 0x1

    iget-object v5, v0, Lcom/sleepycat/je/tree/BIN;->entryLsnByteArray:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v5, v5, v6

    aput-byte v5, v18, v4

    .line 2016
    add-int/lit8 v4, v1, 0x2

    iget-object v5, v0, Lcom/sleepycat/je/tree/BIN;->entryLsnByteArray:[B

    add-int/lit8 v6, v3, 0x2

    aget-byte v5, v5, v6

    aput-byte v5, v18, v4

    .line 2017
    add-int/lit8 v4, v1, 0x3

    iget-object v5, v0, Lcom/sleepycat/je/tree/BIN;->entryLsnByteArray:[B

    add-int/lit8 v6, v3, 0x3

    aget-byte v5, v5, v6

    aput-byte v5, v18, v4

    .line 2018
    .end local v1    # "doff":I
    .end local v3    # "soff":I
    goto :goto_4

    .line 2019
    :cond_4
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v3

    aput-wide v3, v17, v22

    .line 2022
    :goto_4
    iget-object v1, v0, Lcom/sleepycat/je/tree/BIN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/INKeyRep;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    aput-object v1, v11, v22

    .line 2023
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->getState(I)B

    move-result v1

    aput-byte v1, v10, v22

    .line 2025
    if-eqz v20, :cond_5

    .line 2026
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v1

    aput-object v1, v20, v22

    .line 2029
    :cond_5
    if-eqz v19, :cond_6

    .line 2030
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLNId(I)J

    move-result-wide v3

    aput-wide v3, v19, v22

    .line 2033
    :cond_6
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->getCachedVLSN(I)J

    move-result-wide v3

    aput-wide v3, v13, v22

    .line 2034
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->getLastLoggedSize(I)I

    move-result v1

    aput v1, v12, v22

    .line 2036
    if-eqz v21, :cond_7

    .line 2037
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v1

    aput v1, v21, v22

    .line 2040
    :cond_7
    add-int/lit8 v22, v22, 0x1

    .line 2004
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2047
    .end local v2    # "i":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->getFullBinNEntries()I

    move-result v1

    iput v1, v15, Lcom/sleepycat/je/tree/BIN;->fullBinNEntries:I

    .line 2048
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->getFullBinMaxEntries()I

    move-result v1

    iput v1, v15, Lcom/sleepycat/je/tree/BIN;->fullBinMaxEntries:I

    .line 2050
    iget-wide v4, v0, Lcom/sleepycat/je/tree/BIN;->baseFileNumber:J

    iget-object v9, v0, Lcom/sleepycat/je/tree/BIN;->keyPrefix:[B

    .line 2055
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v16

    .line 2050
    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p2

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    move-object v8, v10

    move-object/from16 v23, v10

    .end local v10    # "states":[B
    .local v23, "states":[B
    move-object v10, v11

    move-object/from16 v24, v11

    .end local v11    # "keys":[[B
    .local v24, "keys":[[B
    move-object/from16 v11, v20

    move-object/from16 v25, v12

    .end local v12    # "sizes":[I
    .local v25, "sizes":[I
    move-object/from16 v26, v13

    .end local v13    # "vlsns":[J
    .local v26, "vlsns":[J
    move-object/from16 v13, v19

    move-object/from16 v14, v26

    move-object v0, v15

    move-object/from16 v15, v21

    invoke-direct/range {v1 .. v16}, Lcom/sleepycat/je/tree/BIN;->resetContent(IIJ[B[J[B[B[[B[Lcom/sleepycat/je/tree/Node;[I[J[J[IZ)V

    .line 2057
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/BIN;->setBINDelta(Z)V

    .line 2059
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/tree/BIN;->compactMemory()J

    .line 2060
    return-void
.end method

.method private logDirtyLN(ILcom/sleepycat/je/tree/LN;Z)V
    .locals 22
    .param p1, "idx"    # I
    .param p2, "ln"    # Lcom/sleepycat/je/tree/LN;
    .param p3, "allowEviction"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1618
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v16

    .line 1620
    .local v16, "currLsn":J
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1621
    invoke-static/range {v16 .. v17}, Lcom/sleepycat/je/utilint/DbLsn;->isTransientOrNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move/from16 v18, v0

    .line 1623
    .local v18, "force":Z
    if-nez v18, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/LN;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    goto/16 :goto_3

    .line 1624
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v19

    .line 1625
    .local v19, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual/range {v19 .. v19}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v20

    .line 1628
    .local v20, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual/range {v19 .. v19}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v0

    if-nez v0, :cond_4

    move-object/from16 v15, p2

    instance-of v0, v15, Lcom/sleepycat/je/tree/MapLN;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    move-object/from16 v15, p2

    .line 1639
    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1641
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v5

    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v6

    .line 1642
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v8

    .line 1643
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v9

    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/BIN;->getLastLoggedSize(I)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    sget-object v21, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    .line 1639
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-wide/from16 v10, v16

    move-object/from16 v15, v21

    invoke-virtual/range {v0 .. v15}, Lcom/sleepycat/je/tree/LN;->log(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/WriteLockInfo;Z[BIZZJIZZLcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/log/LogItem;

    move-result-object v6

    .line 1647
    .local v6, "logItem":Lcom/sleepycat/je/log/LogItem;
    iget-wide v9, v6, Lcom/sleepycat/je/log/LogItem;->lsn:J

    .line 1648
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/LN;->getVLSNSequence()J

    move-result-wide v11

    iget v13, v6, Lcom/sleepycat/je/log/LogItem;->size:I

    .line 1647
    move-object/from16 v7, p0

    move/from16 v8, p1

    invoke-virtual/range {v7 .. v13}, Lcom/sleepycat/je/tree/BIN;->updateEntry(IJJI)V

    .line 1652
    iget-wide v3, v6, Lcom/sleepycat/je/log/LogItem;->lsn:J

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/dbi/CursorImpl;->lockAfterLsnChange(Lcom/sleepycat/je/dbi/DatabaseImpl;JJLcom/sleepycat/je/txn/Locker;)V

    .line 1659
    if-eqz p3, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sleepycat/je/tree/BIN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1660
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isLNImmediatelyObsolete()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1661
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1662
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/BIN;->evictLN(I)V

    goto :goto_3

    .line 1659
    :cond_6
    move-object/from16 v0, p0

    .line 1665
    .end local v6    # "logItem":Lcom/sleepycat/je/log/LogItem;
    .end local v19    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v20    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_7
    :goto_3
    return-void
.end method

.method private resetContent(IIJ[B[J[B[B[[B[Lcom/sleepycat/je/tree/Node;[I[J[J[IZ)V
    .locals 11
    .param p1, "capacity"    # I
    .param p2, "newNEntries"    # I
    .param p3, "baseFileNumber"    # J
    .param p5, "compactLSNs"    # [B
    .param p6, "longLSNs"    # [J
    .param p7, "states"    # [B
    .param p8, "keyPrefix"    # [B
    .param p9, "keys"    # [[B
    .param p10, "targets"    # [Lcom/sleepycat/je/tree/Node;
    .param p11, "loggedSizes"    # [I
    .param p12, "memIds"    # [J
    .param p13, "vlsns"    # [J
    .param p14, "expiration"    # [I
    .param p15, "expirationInHours"    # Z

    .line 2083
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sleepycat/je/tree/BIN;->updateRepCacheStats(Z)V

    .line 2085
    iput v2, v0, Lcom/sleepycat/je/tree/BIN;->nEntries:I

    .line 2087
    move-wide v3, p3

    iput-wide v3, v0, Lcom/sleepycat/je/tree/BIN;->baseFileNumber:J

    .line 2088
    const/4 v5, 0x0

    if-nez p6, :cond_0

    .line 2089
    shl-int/lit8 v6, v1, 0x2

    new-array v6, v6, [B

    iput-object v6, v0, Lcom/sleepycat/je/tree/BIN;->entryLsnByteArray:[B

    .line 2090
    iput-object v5, v0, Lcom/sleepycat/je/tree/BIN;->entryLsnLongArray:[J

    goto :goto_0

    .line 2092
    :cond_0
    iput-object v5, v0, Lcom/sleepycat/je/tree/BIN;->entryLsnByteArray:[B

    .line 2093
    new-array v5, v1, [J

    iput-object v5, v0, Lcom/sleepycat/je/tree/BIN;->entryLsnLongArray:[J

    .line 2096
    :goto_0
    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/sleepycat/je/tree/BIN;->keyPrefix:[B

    .line 2098
    new-instance v6, Lcom/sleepycat/je/tree/INKeyRep$Default;

    invoke-direct {v6, p1}, Lcom/sleepycat/je/tree/INKeyRep$Default;-><init>(I)V

    iput-object v6, v0, Lcom/sleepycat/je/tree/BIN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 2099
    sget-object v6, Lcom/sleepycat/je/tree/INTargetRep;->NONE:Lcom/sleepycat/je/tree/INTargetRep$None;

    iput-object v6, v0, Lcom/sleepycat/je/tree/BIN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    .line 2100
    sget-object v6, Lcom/sleepycat/je/tree/BIN;->EMPTY_VLSNS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    iput-object v6, v0, Lcom/sleepycat/je/tree/BIN;->vlsnCache:Lcom/sleepycat/je/tree/INLongRep;

    .line 2101
    sget-object v6, Lcom/sleepycat/je/tree/BIN;->EMPTY_LAST_LOGGED_SIZES:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    iput-object v6, v0, Lcom/sleepycat/je/tree/BIN;->lastLoggedSizes:Lcom/sleepycat/je/tree/INLongRep;

    .line 2102
    sget-object v6, Lcom/sleepycat/je/tree/BIN;->EMPTY_EXPIRATION:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    iput-object v6, v0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    .line 2103
    const/4 v6, -0x1

    iput v6, v0, Lcom/sleepycat/je/tree/BIN;->expirationBase:I

    .line 2104
    sget-object v6, Lcom/sleepycat/je/tree/BIN;->EMPTY_OFFHEAP_LN_IDS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    iput-object v6, v0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 2106
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sleepycat/je/tree/BIN;->updateRepCacheStats(Z)V

    .line 2108
    new-array v6, v1, [B

    iput-object v6, v0, Lcom/sleepycat/je/tree/BIN;->entryStates:[B

    .line 2110
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_5

    .line 2112
    if-nez p6, :cond_1

    .line 2113
    shl-int/lit8 v7, v6, 0x2

    .line 2114
    .local v7, "off":I
    iget-object v8, v0, Lcom/sleepycat/je/tree/BIN;->entryLsnByteArray:[B

    aget-byte v9, p5, v7

    aput-byte v9, v8, v7

    .line 2115
    iget-object v8, v0, Lcom/sleepycat/je/tree/BIN;->entryLsnByteArray:[B

    add-int/lit8 v9, v7, 0x1

    add-int/lit8 v10, v7, 0x1

    aget-byte v10, p5, v10

    aput-byte v10, v8, v9

    .line 2116
    iget-object v8, v0, Lcom/sleepycat/je/tree/BIN;->entryLsnByteArray:[B

    add-int/lit8 v9, v7, 0x2

    add-int/lit8 v10, v7, 0x2

    aget-byte v10, p5, v10

    aput-byte v10, v8, v9

    .line 2117
    iget-object v8, v0, Lcom/sleepycat/je/tree/BIN;->entryLsnByteArray:[B

    add-int/lit8 v9, v7, 0x3

    add-int/lit8 v10, v7, 0x3

    aget-byte v10, p5, v10

    aput-byte v10, v8, v9

    .line 2118
    .end local v7    # "off":I
    goto :goto_2

    .line 2119
    :cond_1
    iget-object v7, v0, Lcom/sleepycat/je/tree/BIN;->entryLsnLongArray:[J

    aget-wide v8, p6, v6

    aput-wide v8, v7, v6

    .line 2122
    :goto_2
    iget-object v7, v0, Lcom/sleepycat/je/tree/BIN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    aget-object v8, p9, v6

    invoke-virtual {v7, v6, v8, p0}, Lcom/sleepycat/je/tree/INKeyRep;->set(ILjava/lang/Object;Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/tree/INKeyRep;

    iput-object v7, v0, Lcom/sleepycat/je/tree/BIN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 2123
    iget-object v7, v0, Lcom/sleepycat/je/tree/BIN;->entryStates:[B

    aget-byte v8, p7, v6

    aput-byte v8, v7, v6

    .line 2125
    if-eqz p10, :cond_2

    .line 2126
    iget-object v7, v0, Lcom/sleepycat/je/tree/BIN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    aget-object v8, p10, v6

    invoke-virtual {v7, v6, v8, p0}, Lcom/sleepycat/je/tree/INTargetRep;->set(ILjava/lang/Object;Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/tree/INTargetRep;

    iput-object v7, v0, Lcom/sleepycat/je/tree/BIN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    .line 2129
    :cond_2
    if-eqz p12, :cond_3

    .line 2130
    aget-wide v7, p12, v6

    invoke-virtual {p0, v6, v7, v8}, Lcom/sleepycat/je/tree/BIN;->setOffHeapLNId(IJ)V

    .line 2133
    :cond_3
    if-eqz p14, :cond_4

    .line 2134
    aget v7, p14, v6

    move/from16 v8, p15

    invoke-virtual {p0, v6, v7, v8}, Lcom/sleepycat/je/tree/BIN;->setExpiration(IIZ)V

    goto :goto_3

    .line 2133
    :cond_4
    move/from16 v8, p15

    .line 2137
    :goto_3
    aget v7, p11, v6

    invoke-virtual {p0, v6, v7}, Lcom/sleepycat/je/tree/BIN;->setLastLoggedSizeUnconditional(II)V

    .line 2138
    aget-wide v9, p13, v6

    invoke-virtual {p0, v6, v9, v10}, Lcom/sleepycat/je/tree/BIN;->setCachedVLSNUnconditional(IJ)V

    .line 2110
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    move/from16 v8, p15

    .line 2141
    .end local v6    # "i":I
    iget-wide v6, v0, Lcom/sleepycat/je/tree/BIN;->inMemorySize:J

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->computeMemorySize()J

    move-result-wide v9

    invoke-virtual {p0, v6, v7, v9, v10}, Lcom/sleepycat/je/tree/BIN;->updateMemorySize(JJ)V

    .line 2142
    return-void
.end method

.method private resetContent(Lcom/sleepycat/je/tree/BIN;)V
    .locals 4
    .param p1, "other"    # Lcom/sleepycat/je/tree/BIN;

    .line 2276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/BIN;->updateRepCacheStats(Z)V

    .line 2278
    iget v0, p1, Lcom/sleepycat/je/tree/BIN;->nEntries:I

    iput v0, p0, Lcom/sleepycat/je/tree/BIN;->nEntries:I

    .line 2280
    iget-wide v0, p1, Lcom/sleepycat/je/tree/BIN;->baseFileNumber:J

    iput-wide v0, p0, Lcom/sleepycat/je/tree/BIN;->baseFileNumber:J

    .line 2281
    iget-object v0, p1, Lcom/sleepycat/je/tree/BIN;->entryLsnByteArray:[B

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->entryLsnByteArray:[B

    .line 2282
    iget-object v0, p1, Lcom/sleepycat/je/tree/BIN;->entryLsnLongArray:[J

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->entryLsnLongArray:[J

    .line 2284
    iget-object v0, p1, Lcom/sleepycat/je/tree/BIN;->keyPrefix:[B

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->keyPrefix:[B

    .line 2285
    iget-object v0, p1, Lcom/sleepycat/je/tree/BIN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 2287
    iget-object v0, p1, Lcom/sleepycat/je/tree/BIN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    .line 2289
    iget-object v0, p1, Lcom/sleepycat/je/tree/BIN;->entryStates:[B

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->entryStates:[B

    .line 2291
    iget-object v0, p1, Lcom/sleepycat/je/tree/BIN;->lastLoggedSizes:Lcom/sleepycat/je/tree/INLongRep;

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->lastLoggedSizes:Lcom/sleepycat/je/tree/INLongRep;

    .line 2293
    iget-object v0, p1, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    .line 2294
    iget v0, p1, Lcom/sleepycat/je/tree/BIN;->expirationBase:I

    iput v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationBase:I

    .line 2296
    iget-object v0, p1, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 2297
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLruId()I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->hasOffHeapLNs()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2299
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/sleepycat/je/tree/BIN;->vlsnCache:Lcom/sleepycat/je/tree/INLongRep;

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->vlsnCache:Lcom/sleepycat/je/tree/INLongRep;

    .line 2301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->bloomFilter:[B

    .line 2303
    iget-wide v0, p0, Lcom/sleepycat/je/tree/BIN;->inMemorySize:J

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->computeMemorySize()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/je/tree/BIN;->updateMemorySize(JJ)V

    .line 2305
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/BIN;->updateRepCacheStats(Z)V

    .line 2306
    return-void
.end method

.method private resize(I)V
    .locals 4
    .param p1, "newCapacity"    # I

    .line 2310
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 2312
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/BIN;->updateRepCacheStats(Z)V

    .line 2314
    iget-object v1, p0, Lcom/sleepycat/je/tree/BIN;->entryLsnByteArray:[B

    if-eqz v1, :cond_0

    .line 2315
    iget-object v1, p0, Lcom/sleepycat/je/tree/BIN;->entryLsnByteArray:[B

    mul-int/lit8 v2, p1, 0x4

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/tree/BIN;->entryLsnByteArray:[B

    .line 2318
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/tree/BIN;->entryLsnLongArray:[J

    if-eqz v1, :cond_1

    .line 2319
    iget-object v1, p0, Lcom/sleepycat/je/tree/BIN;->entryLsnLongArray:[J

    invoke-static {v1, v0, p1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/tree/BIN;->entryLsnLongArray:[J

    .line 2322
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/tree/BIN;->entryStates:[B

    if-eqz v1, :cond_2

    .line 2323
    iget-object v1, p0, Lcom/sleepycat/je/tree/BIN;->entryStates:[B

    invoke-static {v1, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->entryStates:[B

    .line 2327
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INKeyRep;->resize(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/INKeyRep;

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 2328
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INTargetRep;->resize(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/INTargetRep;

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->entryTargets:Lcom/sleepycat/je/tree/INTargetRep;

    .line 2329
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->lastLoggedSizes:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INLongRep;->resize(I)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->lastLoggedSizes:Lcom/sleepycat/je/tree/INLongRep;

    .line 2330
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INLongRep;->resize(I)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    .line 2331
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INLongRep;->resize(I)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 2332
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->vlsnCache:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INLongRep;->resize(I)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->vlsnCache:Lcom/sleepycat/je/tree/INLongRep;

    .line 2334
    iget-wide v0, p0, Lcom/sleepycat/je/tree/BIN;->inMemorySize:J

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->computeMemorySize()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/je/tree/BIN;->updateMemorySize(JJ)V

    .line 2336
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/BIN;->updateRepCacheStats(Z)V

    .line 2337
    return-void

    .line 2310
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method accumulateStats(Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;)V
    .locals 2
    .param p1, "acc"    # Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;

    .line 2540
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getLevel()I

    move-result v1

    invoke-interface {p1, p0, v0, v1}, Lcom/sleepycat/je/tree/TreeWalkerStatsAccumulator;->processBIN(Lcom/sleepycat/je/tree/BIN;Ljava/lang/Long;I)V

    .line 2541
    return-void
.end method

.method public addCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V
    .locals 1
    .param p1, "cursor"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 830
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->cursorSet:Lcom/sleepycat/je/utilint/TinyHashSet;

    if-nez v0, :cond_0

    .line 832
    new-instance v0, Lcom/sleepycat/je/utilint/TinyHashSet;

    invoke-direct {v0}, Lcom/sleepycat/je/utilint/TinyHashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->cursorSet:Lcom/sleepycat/je/utilint/TinyHashSet;

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->cursorSet:Lcom/sleepycat/je/utilint/TinyHashSet;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/TinyHashSet;->add(Ljava/lang/Object;)Z

    .line 835
    return-void

    .line 830
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method adjustCursors(Lcom/sleepycat/je/tree/IN;II)V
    .locals 6
    .param p1, "newSibling"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "newSiblingLow"    # I
    .param p3, "newSiblingHigh"    # I

    .line 889
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 890
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 891
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->cursorSet:Lcom/sleepycat/je/utilint/TinyHashSet;

    if-nez v0, :cond_0

    .line 892
    return-void

    .line 894
    :cond_0
    sub-int v1, p3, p2

    .line 895
    .local v1, "adjustmentDelta":I
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/TinyHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 897
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/dbi/CursorImpl;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 898
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/dbi/CursorImpl;

    .line 899
    .local v2, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/CursorImpl;->getIndex()I

    move-result v3

    .line 900
    .local v3, "cIdx":I
    invoke-virtual {v2, p0}, Lcom/sleepycat/je/dbi/CursorImpl;->assertBIN(Lcom/sleepycat/je/tree/BIN;)V

    .line 901
    instance-of v4, p1, Lcom/sleepycat/je/tree/BIN;

    if-eqz v4, :cond_4

    .line 956
    move-object v4, p1

    check-cast v4, Lcom/sleepycat/je/tree/BIN;

    .line 957
    .local v4, "ns":Lcom/sleepycat/je/tree/BIN;
    if-nez p2, :cond_2

    .line 958
    if-ge v3, p3, :cond_1

    .line 960
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 961
    invoke-virtual {v2, v4}, Lcom/sleepycat/je/dbi/CursorImpl;->setBIN(Lcom/sleepycat/je/tree/BIN;)V

    .line 962
    invoke-virtual {v4, v2}, Lcom/sleepycat/je/tree/BIN;->addCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V

    goto :goto_1

    .line 965
    :cond_1
    sub-int v5, v3, v1

    invoke-virtual {v2, v5}, Lcom/sleepycat/je/dbi/CursorImpl;->setIndex(I)V

    goto :goto_1

    .line 968
    :cond_2
    if-lt v3, p2, :cond_3

    .line 970
    sub-int v5, v3, p2

    invoke-virtual {v2, v5}, Lcom/sleepycat/je/dbi/CursorImpl;->setIndex(I)V

    .line 971
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 972
    invoke-virtual {v2, v4}, Lcom/sleepycat/je/dbi/CursorImpl;->setBIN(Lcom/sleepycat/je/tree/BIN;)V

    .line 973
    invoke-virtual {v4, v2}, Lcom/sleepycat/je/tree/BIN;->addCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V

    .line 976
    .end local v2    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v3    # "cIdx":I
    .end local v4    # "ns":Lcom/sleepycat/je/tree/BIN;
    :cond_3
    :goto_1
    goto :goto_0

    .line 901
    .restart local v2    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .restart local v3    # "cIdx":I
    :cond_4
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 977
    .end local v2    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v3    # "cIdx":I
    :cond_5
    return-void

    .line 890
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/dbi/CursorImpl;>;"
    .end local v1    # "adjustmentDelta":I
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 889
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method adjustCursorsForInsert(I)V
    .locals 4
    .param p1, "insertIndex"    # I

    .line 1000
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1001
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->cursorSet:Lcom/sleepycat/je/utilint/TinyHashSet;

    if-nez v0, :cond_0

    .line 1002
    return-void

    .line 1005
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/TinyHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/dbi/CursorImpl;

    .line 1006
    .local v1, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/CursorImpl;->getIndex()I

    move-result v2

    .line 1007
    .local v2, "cIdx":I
    if-gt p1, v2, :cond_1

    .line 1008
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/dbi/CursorImpl;->setIndex(I)V

    .line 1010
    .end local v1    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v2    # "cIdx":I
    :cond_1
    goto :goto_0

    .line 1011
    :cond_2
    return-void

    .line 1000
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method allowBlindPuts()Z
    .locals 4

    .line 1744
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->allowBlindPuts()Z

    move-result v0

    .line 1746
    .local v0, "res":Z
    if-eqz v0, :cond_2

    .line 1747
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sleepycat/je/tree/BIN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->hasBtreeBinaryEqualityComparator()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v0, v3

    .line 1748
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/sleepycat/je/tree/BIN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->hasDuplicateBinaryEqualityComparator()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v0, v1

    .line 1751
    :cond_2
    return v0
.end method

.method appendEntryFromOtherNode(Lcom/sleepycat/je/tree/IN;I)V
    .locals 6
    .param p1, "from"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "fromIdx"    # I

    .line 766
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/tree/IN;->appendEntryFromOtherNode(Lcom/sleepycat/je/tree/IN;I)V

    .line 768
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/tree/BIN;

    .line 769
    .local v0, "fromBin":Lcom/sleepycat/je/tree/BIN;
    iget v1, p0, Lcom/sleepycat/je/tree/BIN;->nEntries:I

    add-int/lit8 v1, v1, -0x1

    .line 771
    .local v1, "idx":I
    invoke-virtual {v0, p2}, Lcom/sleepycat/je/tree/BIN;->getCachedVLSN(I)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/sleepycat/je/tree/BIN;->setCachedVLSNUnconditional(IJ)V

    .line 772
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/tree/IN;->getLastLoggedSize(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sleepycat/je/tree/BIN;->setLastLoggedSizeUnconditional(II)V

    .line 774
    nop

    .line 775
    invoke-virtual {v0, p2}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v2

    .line 776
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v3

    .line 774
    invoke-virtual {p0, v1, v2, v3}, Lcom/sleepycat/je/tree/BIN;->setExpiration(IIZ)V

    .line 778
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v2

    .line 780
    .local v2, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    invoke-virtual {v2}, Lcom/sleepycat/je/evictor/OffHeapCache;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 782
    iget-object v3, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    iget-object v4, v0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 783
    invoke-virtual {v4, p2}, Lcom/sleepycat/je/tree/INLongRep;->get(I)J

    move-result-wide v4

    .line 782
    invoke-virtual {v3, v1, v4, v5, p0}, Lcom/sleepycat/je/tree/INLongRep;->set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 785
    invoke-virtual {v2, p0}, Lcom/sleepycat/je/evictor/OffHeapCache;->ensureOffHeapLNsInLRU(Lcom/sleepycat/je/tree/BIN;)Z

    .line 787
    :cond_0
    return-void
.end method

.method applyDelta([B[BJBIJJLcom/sleepycat/je/tree/Node;IZ)V
    .locals 12
    .param p1, "key"    # [B
    .param p2, "data"    # [B
    .param p3, "lsn"    # J
    .param p5, "state"    # B
    .param p6, "lastLoggedSize"    # I
    .param p7, "ohLnId"    # J
    .param p9, "vlsn"    # J
    .param p11, "child"    # Lcom/sleepycat/je/tree/Node;
    .param p12, "expiration"    # I
    .param p13, "expirationInHours"    # Z

    .line 2500
    move-object v9, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    move-object v10, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sleepycat/je/tree/BIN;->findEntry([BZZ)I

    move-result v8

    .line 2502
    .local v8, "foundIndex":I
    if-ltz v8, :cond_0

    const/high16 v0, 0x10000

    and-int/2addr v0, v8

    if-eqz v0, :cond_0

    .line 2504
    const v0, -0x10001

    and-int v11, v8, v0

    .line 2510
    .end local v8    # "foundIndex":I
    .local v11, "foundIndex":I
    move-object v0, p0

    move v1, v11

    move-object/from16 v2, p11

    move-wide v3, p3

    move/from16 v5, p6

    move/from16 v6, p5

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/sleepycat/je/tree/BIN;->applyDeltaSlot(ILcom/sleepycat/je/tree/Node;JIB[B[B)V

    move/from16 v1, p6

    goto :goto_0

    .line 2521
    .end local v11    # "foundIndex":I
    .restart local v8    # "foundIndex":I
    :cond_0
    const/4 v7, 0x0

    move-object v0, p0

    move-object/from16 v1, p11

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sleepycat/je/tree/BIN;->insertEntry1(Lcom/sleepycat/je/tree/Node;[B[BJBZ)I

    move-result v0

    .line 2524
    .local v0, "result":I
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 2525
    const v1, -0x20001

    and-int v11, v0, v1

    .line 2527
    .end local v8    # "foundIndex":I
    .restart local v11    # "foundIndex":I
    move/from16 v1, p6

    invoke-virtual {p0, v11, v1}, Lcom/sleepycat/je/tree/BIN;->setLastLoggedSizeUnconditional(II)V

    .line 2530
    .end local v0    # "result":I
    :goto_0
    move-wide/from16 v2, p9

    invoke-virtual {p0, v11, v2, v3}, Lcom/sleepycat/je/tree/BIN;->setCachedVLSNUnconditional(IJ)V

    .line 2531
    move-wide/from16 v4, p7

    invoke-virtual {p0, v11, v4, v5}, Lcom/sleepycat/je/tree/BIN;->setOffHeapLNId(IJ)V

    .line 2532
    move/from16 v6, p12

    move/from16 v7, p13

    invoke-virtual {p0, v11, v6, v7}, Lcom/sleepycat/je/tree/BIN;->setExpiration(IIZ)V

    .line 2533
    return-void

    .line 2524
    .end local v11    # "foundIndex":I
    .restart local v0    # "result":I
    .restart local v8    # "foundIndex":I
    :cond_1
    move/from16 v1, p6

    move-wide/from16 v4, p7

    move-wide/from16 v2, p9

    move/from16 v6, p12

    move/from16 v7, p13

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11
.end method

.method public beginTag()Ljava/lang/String;
    .locals 1

    .line 375
    const-string v0, "<bin>"

    return-object v0
.end method

.method public canMutateToBINDelta()Z
    .locals 1

    .line 1914
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1915
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->shouldLogDelta()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1916
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->nCursors()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1914
    :goto_0
    return v0
.end method

.method clearEntry(I)V
    .locals 3
    .param p1, "idx"    # I

    .line 806
    invoke-super {p0, p1}, Lcom/sleepycat/je/tree/IN;->clearEntry(I)V

    .line 807
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sleepycat/je/tree/BIN;->setCachedVLSNUnconditional(IJ)V

    .line 808
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/tree/BIN;->setLastLoggedSizeUnconditional(II)V

    .line 809
    invoke-virtual {p0, p1, v0, v0}, Lcom/sleepycat/je/tree/BIN;->setExpiration(IIZ)V

    .line 810
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/sleepycat/je/tree/INLongRep;->set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 811
    return-void
.end method

.method public clearLastLoggedSize(I)V
    .locals 1
    .param p1, "idx"    # I

    .line 525
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/tree/BIN;->setLastLoggedSizeUnconditional(II)V

    .line 526
    return-void
.end method

.method public clearOffHeapLNIds()V
    .locals 2

    .line 713
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    sget-object v1, Lcom/sleepycat/je/tree/BIN;->EMPTY_OFFHEAP_LN_IDS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    invoke-virtual {v0, p0, v1}, Lcom/sleepycat/je/tree/INLongRep;->clear(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/INLongRep$EmptyRep;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 714
    return-void
.end method

.method public cloneBINDelta()Lcom/sleepycat/je/tree/BIN;
    .locals 5

    .line 1954
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1956
    new-instance v0, Lcom/sleepycat/je/tree/BIN;

    iget-object v1, p0, Lcom/sleepycat/je/tree/BIN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1957
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getIdentifierKey()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getLevel()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sleepycat/je/tree/BIN;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;[BII)V

    .line 1959
    .local v0, "bin":Lcom/sleepycat/je/tree/BIN;
    iget-wide v1, p0, Lcom/sleepycat/je/tree/BIN;->nodeId:J

    iput-wide v1, v0, Lcom/sleepycat/je/tree/BIN;->nodeId:J

    .line 1960
    iget v1, p0, Lcom/sleepycat/je/tree/BIN;->flags:I

    iput v1, v0, Lcom/sleepycat/je/tree/BIN;->flags:I

    .line 1961
    iget-wide v1, p0, Lcom/sleepycat/je/tree/BIN;->lastFullVersion:J

    iput-wide v1, v0, Lcom/sleepycat/je/tree/BIN;->lastFullVersion:J

    .line 1963
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNDeltas()I

    move-result v1

    .line 1964
    .local v1, "nDeltas":I
    invoke-direct {p0, v0, v1, v1, v4}, Lcom/sleepycat/je/tree/BIN;->initBINDelta(Lcom/sleepycat/je/tree/BIN;IIZ)V

    .line 1965
    return-object v0

    .line 1954
    .end local v0    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v1    # "nDeltas":I
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public compactMemory()J
    .locals 4

    .line 1341
    iget-wide v0, p0, Lcom/sleepycat/je/tree/BIN;->inMemorySize:J

    .line 1342
    .local v0, "oldSize":J
    invoke-super {p0}, Lcom/sleepycat/je/tree/IN;->compactMemory()J

    .line 1343
    iget-object v2, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    sget-object v3, Lcom/sleepycat/je/tree/BIN;->EMPTY_OFFHEAP_LN_IDS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    invoke-virtual {v2, p0, v3}, Lcom/sleepycat/je/tree/INLongRep;->compact(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/INLongRep$EmptyRep;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 1344
    iget-object v2, p0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    sget-object v3, Lcom/sleepycat/je/tree/BIN;->EMPTY_EXPIRATION:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    invoke-virtual {v2, p0, v3}, Lcom/sleepycat/je/tree/INLongRep;->compact(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/INLongRep$EmptyRep;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    .line 1345
    iget-wide v2, p0, Lcom/sleepycat/je/tree/BIN;->inMemorySize:J

    sub-long v2, v0, v2

    return-wide v2
.end method

.method public compress(ZLcom/sleepycat/je/cleaner/LocalUtilizationTracker;)Z
    .locals 23
    .param p1, "compressDirtySlots"    # Z
    .param p2, "localTracker"    # Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    .line 1108
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/sleepycat/je/tree/BIN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 1109
    return v3

    .line 1112
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->nCursors()I

    move-result v2

    if-gtz v2, :cond_11

    .line 1116
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1120
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v2

    .line 1121
    .local v2, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v4

    .line 1123
    .local v4, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    nop

    .line 1124
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/txn/TxnManager;->getLockManager()Lcom/sleepycat/je/txn/LockManager;

    move-result-object v5

    .line 1126
    .local v5, "lockManager":Lcom/sleepycat/je/txn/LockManager;
    const/4 v6, 0x0

    .line 1127
    .local v6, "setNewIdKey":Z
    const/4 v7, 0x0

    .line 1129
    .local v7, "anyLocked":Z
    const/4 v8, 0x0

    move v14, v8

    .local v14, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v8

    if-ge v14, v8, :cond_c

    .line 1131
    if-nez p1, :cond_1

    invoke-virtual {v0, v14}, Lcom/sleepycat/je/tree/BIN;->isDirty(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1132
    goto/16 :goto_2

    .line 1135
    :cond_1
    invoke-virtual {v0, v14}, Lcom/sleepycat/je/tree/BIN;->isExpired(I)Z

    move-result v16

    .line 1136
    .local v16, "expired":Z
    invoke-virtual {v0, v14}, Lcom/sleepycat/je/tree/BIN;->isDeleted(I)Z

    move-result v17

    .line 1138
    .local v17, "deleted":Z
    if-nez v17, :cond_2

    if-nez v16, :cond_2

    .line 1139
    goto/16 :goto_2

    .line 1166
    :cond_2
    invoke-virtual {v0, v14}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v12

    .line 1169
    .local v12, "lsn":J
    const-wide/16 v8, -0x1

    cmp-long v8, v12, v8

    if-eqz v8, :cond_4

    .line 1170
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sleepycat/je/txn/LockManager;->isLockUncontended(Ljava/lang/Long;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1178
    invoke-virtual {v0, v14}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1179
    invoke-virtual {v0, v14}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v8

    invoke-virtual {v4, v2, v8}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionState(Lcom/sleepycat/je/dbi/DatabaseImpl;[B)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    move-result-object v8

    sget-object v9, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    if-eq v8, v9, :cond_4

    .line 1181
    :cond_3
    const/4 v7, 0x1

    .line 1182
    goto/16 :goto_2

    .line 1187
    :cond_4
    iget-object v8, v0, Lcom/sleepycat/je/tree/BIN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    .line 1188
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->getIdentifierKey()[B

    move-result-object v9

    iget-object v10, v0, Lcom/sleepycat/je/tree/BIN;->keyPrefix:[B

    invoke-virtual {v0, v14}, Lcom/sleepycat/je/tree/BIN;->haveEmbeddedData(I)Z

    move-result v18

    .line 1189
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v19

    .line 1187
    move v11, v14

    move-wide/from16 v20, v12

    .end local v12    # "lsn":J
    .local v20, "lsn":J
    move/from16 v12, v18

    move-object/from16 v13, v19

    invoke-virtual/range {v8 .. v13}, Lcom/sleepycat/je/tree/INKeyRep;->compareKeys([B[BIZLjava/util/Comparator;)I

    move-result v8

    if-nez v8, :cond_5

    .line 1195
    const/4 v6, 0x1

    .line 1203
    :cond_5
    if-nez v16, :cond_b

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1205
    invoke-virtual {v0, v14}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Lcom/sleepycat/je/tree/LN;

    .line 1207
    .local v13, "ln":Lcom/sleepycat/je/tree/LN;
    if-eqz v13, :cond_a

    .line 1208
    invoke-virtual {v13}, Lcom/sleepycat/je/tree/LN;->isDirty()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1209
    invoke-static/range {v20 .. v21}, Lcom/sleepycat/je/utilint/DbLsn;->isTransient(J)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1211
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTemporary()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1222
    if-eqz v1, :cond_6

    .line 1223
    nop

    .line 1224
    invoke-virtual {v13}, Lcom/sleepycat/je/tree/LN;->getGenericLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v8

    .line 1225
    invoke-virtual {v0, v14}, Lcom/sleepycat/je/tree/BIN;->getLastLoggedSize(I)I

    move-result v9

    .line 1223
    move-wide/from16 v11, v20

    .end local v20    # "lsn":J
    .local v11, "lsn":J
    invoke-virtual {v1, v11, v12, v8, v9}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;->countObsoleteNode(JLcom/sleepycat/je/log/LogEntryType;I)V

    move-wide/from16 v21, v11

    goto :goto_1

    .line 1227
    .end local v11    # "lsn":J
    .restart local v20    # "lsn":J
    :cond_6
    move-wide/from16 v11, v20

    .end local v20    # "lsn":J
    .restart local v11    # "lsn":J
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v8

    .line 1228
    invoke-virtual {v13}, Lcom/sleepycat/je/tree/LN;->getGenericLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v18

    .line 1229
    invoke-virtual {v0, v14}, Lcom/sleepycat/je/tree/BIN;->getLastLoggedSize(I)I

    move-result v19

    const/16 v20, 0x1

    .line 1227
    move-wide v9, v11

    move-wide/from16 v21, v11

    .end local v11    # "lsn":J
    .local v21, "lsn":J
    move-object/from16 v11, v18

    move/from16 v12, v19

    move-object v15, v13

    .end local v13    # "ln":Lcom/sleepycat/je/tree/LN;
    .local v15, "ln":Lcom/sleepycat/je/tree/LN;
    move/from16 v13, v20

    invoke-virtual/range {v8 .. v13}, Lcom/sleepycat/je/log/LogManager;->countObsoleteNode(JLcom/sleepycat/je/log/LogEntryType;IZ)V

    goto :goto_1

    .line 1240
    .end local v15    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v21    # "lsn":J
    .restart local v13    # "ln":Lcom/sleepycat/je/tree/LN;
    .restart local v20    # "lsn":J
    :cond_7
    move-object v15, v13

    move-wide/from16 v21, v20

    .end local v13    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v20    # "lsn":J
    .restart local v15    # "ln":Lcom/sleepycat/je/tree/LN;
    .restart local v21    # "lsn":J
    invoke-direct {v0, v14, v15, v3}, Lcom/sleepycat/je/tree/BIN;->logDirtyLN(ILcom/sleepycat/je/tree/LN;Z)V

    goto :goto_1

    .line 1209
    .end local v15    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v21    # "lsn":J
    .restart local v13    # "ln":Lcom/sleepycat/je/tree/LN;
    .restart local v20    # "lsn":J
    :cond_8
    move-object v15, v13

    move-wide/from16 v21, v20

    .end local v13    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v20    # "lsn":J
    .restart local v15    # "ln":Lcom/sleepycat/je/tree/LN;
    .restart local v21    # "lsn":J
    goto :goto_1

    .line 1208
    .end local v15    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v21    # "lsn":J
    .restart local v13    # "ln":Lcom/sleepycat/je/tree/LN;
    .restart local v20    # "lsn":J
    :cond_9
    move-object v15, v13

    move-wide/from16 v21, v20

    .end local v13    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v20    # "lsn":J
    .restart local v15    # "ln":Lcom/sleepycat/je/tree/LN;
    .restart local v21    # "lsn":J
    goto :goto_1

    .line 1207
    .end local v15    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v21    # "lsn":J
    .restart local v13    # "ln":Lcom/sleepycat/je/tree/LN;
    .restart local v20    # "lsn":J
    :cond_a
    move-object v15, v13

    move-wide/from16 v21, v20

    .end local v13    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v20    # "lsn":J
    .restart local v15    # "ln":Lcom/sleepycat/je/tree/LN;
    .restart local v21    # "lsn":J
    goto :goto_1

    .line 1203
    .end local v15    # "ln":Lcom/sleepycat/je/tree/LN;
    .end local v21    # "lsn":J
    .restart local v20    # "lsn":J
    :cond_b
    move-wide/from16 v21, v20

    .line 1245
    .end local v20    # "lsn":J
    .restart local v21    # "lsn":J
    :goto_1
    const/4 v8, 0x0

    invoke-virtual {v0, v14, v8, v3}, Lcom/sleepycat/je/tree/BIN;->deleteEntry(IZZ)V

    .line 1248
    add-int/lit8 v14, v14, -0x1

    .line 1129
    .end local v16    # "expired":Z
    .end local v17    # "deleted":Z
    .end local v21    # "lsn":J
    :goto_2
    add-int/2addr v14, v3

    goto/16 :goto_0

    .line 1251
    .end local v14    # "i":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v6, :cond_d

    .line 1252
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v8

    invoke-virtual {v0, v8, v3}, Lcom/sleepycat/je/tree/BIN;->setIdentifierKey([BZ)V

    .line 1255
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v3

    if-nez v3, :cond_e

    .line 1257
    sget-object v3, Lcom/sleepycat/je/CacheMode;->MAKE_COLD:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/tree/BIN;->updateLRU(Lcom/sleepycat/je/CacheMode;)V

    .line 1266
    :cond_e
    iget-object v3, v0, Lcom/sleepycat/je/tree/BIN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getNodeMaxTreeEntries()I

    move-result v3

    .line 1267
    .local v3, "configuredCapacity":I
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->getMaxEntries()I

    move-result v8

    if-le v8, v3, :cond_f

    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v8

    if-ge v8, v3, :cond_f

    .line 1269
    invoke-direct {v0, v3}, Lcom/sleepycat/je/tree/BIN;->resize(I)V

    .line 1272
    :cond_f
    xor-int/lit8 v8, v7, 0x1

    return v8

    .line 1117
    .end local v2    # "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v3    # "configuredCapacity":I
    .end local v4    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v5    # "lockManager":Lcom/sleepycat/je/txn/LockManager;
    .end local v6    # "setNewIdKey":Z
    .end local v7    # "anyLocked":Z
    :cond_10
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 1113
    :cond_11
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2
.end method

.method public computeMemorySize()J
    .locals 4

    .line 1354
    invoke-super {p0}, Lcom/sleepycat/je/tree/IN;->computeMemorySize()J

    move-result-wide v0

    .line 1362
    .local v0, "size":J
    iget-object v2, p0, Lcom/sleepycat/je/tree/BIN;->vlsnCache:Lcom/sleepycat/je/tree/INLongRep;

    if-eqz v2, :cond_0

    .line 1363
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/INLongRep;->getMemorySize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1366
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/tree/BIN;->lastLoggedSizes:Lcom/sleepycat/je/tree/INLongRep;

    if-eqz v2, :cond_1

    .line 1367
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/INLongRep;->getMemorySize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1370
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    if-eqz v2, :cond_2

    .line 1371
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/INLongRep;->getMemorySize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1374
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    if-eqz v2, :cond_3

    .line 1375
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/INLongRep;->getMemorySize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1378
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/je/tree/BIN;->bloomFilter:[B

    if-eqz v2, :cond_4

    .line 1379
    invoke-static {v2}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter;->getMemorySize([B)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1382
    :cond_4
    return-wide v0
.end method

.method copyEntries(III)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "n"    # I

    .line 794
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/je/tree/IN;->copyEntries(III)V

    .line 795
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->vlsnCache:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sleepycat/je/tree/INLongRep;->copy(IIILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->vlsnCache:Lcom/sleepycat/je/tree/INLongRep;

    .line 796
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->lastLoggedSizes:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sleepycat/je/tree/INLongRep;->copy(IIILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->lastLoggedSizes:Lcom/sleepycat/je/tree/INLongRep;

    .line 797
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sleepycat/je/tree/INLongRep;->copy(IIILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    .line 798
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sleepycat/je/tree/INLongRep;->copy(IIILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 799
    return-void
.end method

.method createBloomFilter()[B
    .locals 8

    .line 1769
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->bloomFilter:[B

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1771
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->allowBlindPuts()Z

    move-result v0

    .line 1773
    .local v0, "blindPuts":Z
    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 1774
    iget-object v2, p0, Lcom/sleepycat/je/tree/BIN;->bloomFilter:[B

    if-nez v2, :cond_2

    .line 1775
    return-object v1

    .line 1774
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1778
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/je/tree/BIN;->bloomFilter:[B

    if-eqz v2, :cond_4

    .line 1783
    return-object v2

    .line 1786
    :cond_4
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1787
    return-object v1

    .line 1790
    :cond_5
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v1

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNDeltas()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1791
    .local v1, "numKeys":I
    invoke-static {v1}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter;->getByteSize(I)I

    move-result v2

    .line 1793
    .local v2, "nbytes":I
    new-array v3, v2, [B

    .line 1795
    .local v3, "bf":[B
    new-instance v4, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;

    invoke-direct {v4}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;-><init>()V

    .line 1798
    .local v4, "hc":Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;
    iget-object v5, p0, Lcom/sleepycat/je/tree/BIN;->keyPrefix:[B

    if-eqz v5, :cond_6

    .line 1799
    iget-object v5, p0, Lcom/sleepycat/je/tree/BIN;->keyPrefix:[B

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->hashKeyPrefix([B)V

    .line 1802
    :cond_6
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 1804
    invoke-virtual {p0, v5}, Lcom/sleepycat/je/tree/BIN;->isDirty(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1805
    goto :goto_2

    .line 1808
    :cond_7
    iget-object v6, p0, Lcom/sleepycat/je/tree/BIN;->entryKeys:Lcom/sleepycat/je/tree/INKeyRep;

    invoke-virtual {p0, v5}, Lcom/sleepycat/je/tree/BIN;->haveEmbeddedData(I)Z

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/sleepycat/je/tree/INKeyRep;->getKey(IZ)[B

    move-result-object v6

    .line 1809
    .local v6, "suffix":[B
    if-nez v6, :cond_8

    .line 1810
    sget-object v6, Lcom/sleepycat/je/tree/Key;->EMPTY_KEY:[B

    .line 1813
    :cond_8
    invoke-static {v3, v6, v4}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter;->add([B[BLcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;)V

    .line 1802
    .end local v6    # "suffix":[B
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1816
    .end local v5    # "i":I
    :cond_9
    return-object v3
.end method

.method protected createNewInstance([BII)Lcom/sleepycat/je/tree/IN;
    .locals 2
    .param p1, "identifierKey"    # [B
    .param p2, "maxEntries"    # I
    .param p3, "level"    # I

    .line 345
    new-instance v0, Lcom/sleepycat/je/tree/BIN;

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/sleepycat/je/tree/BIN;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;[BII)V

    return-object v0
.end method

.method public createReference()Lcom/sleepycat/je/tree/BINReference;
    .locals 5

    .line 349
    new-instance v0, Lcom/sleepycat/je/tree/BINReference;

    .line 350
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getIdentifierKey()[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/tree/BINReference;-><init>(JLcom/sleepycat/je/dbi/DatabaseId;[B)V

    .line 349
    return-object v0
.end method

.method public discardVLSNCache()J
    .locals 7

    .line 1443
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->vlsnCache:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/INLongRep;->getMemorySize()J

    move-result-wide v0

    .line 1445
    .local v0, "vlsnBytes":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 1447
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v4

    .line 1448
    .local v4, "numEntries":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 1449
    invoke-virtual {p0, v5}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1450
    return-wide v2

    .line 1448
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1454
    .end local v5    # "i":I
    :cond_1
    sget-object v5, Lcom/sleepycat/je/tree/BIN;->EMPTY_VLSNS:Lcom/sleepycat/je/tree/INLongRep$EmptyRep;

    iput-object v5, p0, Lcom/sleepycat/je/tree/BIN;->vlsnCache:Lcom/sleepycat/je/tree/INLongRep;

    .line 1455
    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/sleepycat/je/tree/BIN;->updateMemorySize(J)V

    .line 1458
    .end local v4    # "numEntries":I
    :cond_2
    return-wide v0
.end method

.method public endTag()Ljava/lang/String;
    .locals 1

    .line 380
    const-string v0, "</bin>"

    return-object v0
.end method

.method public evictLN(I)V
    .locals 1
    .param p1, "index"    # I

    .line 1528
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/tree/BIN;->evictLN(IZ)V

    .line 1529
    return-void
.end method

.method public evictLN(IZ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "ifFetchedCold"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1534
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/tree/BIN;->evictLNInternal(IZ)J

    move-result-wide v0

    .line 1537
    .local v0, "removed":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1538
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/je/tree/BIN;->updateMemorySize(JJ)V

    .line 1539
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->compactMemory()J

    .line 1541
    :cond_0
    return-void
.end method

.method public evictLNs()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1474
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1484
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->nCursors()I

    move-result v0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-lez v0, :cond_0

    .line 1485
    return-wide v1

    .line 1489
    :cond_0
    const-wide/16 v3, 0x0

    .line 1490
    .local v3, "totalRemoved":J
    const-wide/16 v5, 0x0

    .line 1491
    .local v5, "numLNsEvicted":J
    const/4 v0, 0x0

    .line 1493
    .local v0, "haveNonEvictableLN":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v8

    const-wide/16 v9, 0x0

    if-ge v7, v8, :cond_3

    .line 1495
    invoke-virtual {p0, v7}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v8

    if-nez v8, :cond_1

    .line 1496
    goto :goto_1

    .line 1499
    :cond_1
    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/sleepycat/je/tree/BIN;->evictLNInternal(IZ)J

    move-result-wide v11

    .line 1501
    .local v11, "lnRemoved":J
    cmp-long v8, v11, v9

    if-gez v8, :cond_2

    .line 1502
    const/4 v0, 0x1

    goto :goto_1

    .line 1504
    :cond_2
    add-long/2addr v3, v11

    .line 1505
    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    .line 1493
    .end local v11    # "lnRemoved":J
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1513
    .end local v7    # "i":I
    :cond_3
    cmp-long v7, v3, v9

    if-lez v7, :cond_4

    .line 1514
    invoke-virtual {p0, v3, v4, v9, v10}, Lcom/sleepycat/je/tree/BIN;->updateMemorySize(JJ)V

    .line 1515
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->compactMemory()J

    move-result-wide v7

    add-long/2addr v3, v7

    .line 1518
    :cond_4
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/sleepycat/je/evictor/Evictor;->incNumLNsEvicted(J)V

    .line 1520
    if-eqz v0, :cond_5

    .line 1521
    or-long/2addr v1, v3

    return-wide v1

    .line 1523
    :cond_5
    return-wide v3

    .line 1474
    .end local v0    # "haveNonEvictableLN":Z
    .end local v3    # "totalRemoved":J
    .end local v5    # "numLNsEvicted":J
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "BIN must be latched before evicting LNs"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method freeOffHeapLN(I)V
    .locals 1
    .param p1, "idx"    # I

    .line 742
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sleepycat/je/evictor/OffHeapCache;->freeLN(Lcom/sleepycat/je/tree/BIN;I)I

    .line 743
    return-void
.end method

.method getBloomFilterLogSize()I
    .locals 2

    .line 1835
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->allowBlindPuts()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1836
    return v1

    .line 1839
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1840
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->bloomFilter:[B

    if-eqz v0, :cond_1

    .line 1841
    invoke-static {v0}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter;->getLogSize([B)I

    move-result v0

    return v0

    .line 1844
    :cond_1
    return v1

    .line 1847
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->bloomFilter:[B

    if-nez v0, :cond_3

    .line 1848
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v0

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNDeltas()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1849
    .local v0, "numKeys":I
    invoke-static {v0}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter;->getLogSize(I)I

    move-result v1

    return v1

    .line 1847
    .end local v0    # "numKeys":I
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method getCachedVLSN(I)J
    .locals 4
    .param p1, "idx"    # I

    .line 410
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->vlsnCache:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INLongRep;->get(I)J

    move-result-wide v0

    .line 411
    .local v0, "vlsn":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method public getCursorSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/CursorImpl;",
            ">;"
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->cursorSet:Lcom/sleepycat/je/utilint/TinyHashSet;

    if-nez v0, :cond_0

    .line 820
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 822
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/TinyHashSet;->copy()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getDeltaCapacity(I)I
    .locals 3
    .param p1, "numDirtyEntries"    # I

    .line 1729
    nop

    .line 1730
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->allowBlindOps()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->allowBlindPuts()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1732
    .local v0, "blindOps":Z
    :goto_1
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1733
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getMaxEntries()I

    move-result v1

    return v1

    .line 1736
    :cond_2
    if-eqz v0, :cond_3

    .line 1737
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v1

    iget-object v2, p0, Lcom/sleepycat/je/tree/BIN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getBinDeltaPercent()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    return v1

    .line 1740
    :cond_3
    return p1
.end method

.method public getExpiration(I)I
    .locals 3
    .param p1, "idx"    # I

    .line 646
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INLongRep;->get(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 648
    .local v0, "offset":I
    if-nez v0, :cond_0

    .line 649
    const/4 v1, 0x0

    return v1

    .line 652
    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget v2, p0, Lcom/sleepycat/je/tree/BIN;->expirationBase:I

    add-int/2addr v1, v2

    return v1
.end method

.method getExpirationBase()I
    .locals 1

    .line 656
    iget v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationBase:I

    return v0
.end method

.method getExpirationOffset(I)I
    .locals 2
    .param p1, "idx"    # I

    .line 660
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INLongRep;->get(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected getFixedMemoryOverhead()J
    .locals 2

    .line 1407
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->BIN_FIXED_OVERHEAD:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFullBinMaxEntries()I
    .locals 1

    .line 1715
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1716
    iget v0, p0, Lcom/sleepycat/je/tree/BIN;->fullBinMaxEntries:I

    return v0

    .line 1718
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getMaxEntries()I

    move-result v0

    return v0
.end method

.method public getFullBinNEntries()I
    .locals 1

    .line 1697
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    iget v0, p0, Lcom/sleepycat/je/tree/BIN;->fullBinNEntries:I

    return v0

    .line 1700
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/tree/BIN;->nEntries:I

    return v0
.end method

.method public getLastDeltaLsn()J
    .locals 2

    .line 1685
    iget-wide v0, p0, Lcom/sleepycat/je/tree/BIN;->lastDeltaVersion:J

    return-wide v0
.end method

.method public getLastLoggedSize(I)I
    .locals 2
    .param p1, "idx"    # I

    .line 549
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/BIN;->isLastLoggedSizeStored(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->lastLoggedSizes:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INLongRep;->get(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 553
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLastLoggedSizeUnconditional(I)I
    .locals 2
    .param p1, "idx"    # I

    .line 700
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->lastLoggedSizes:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INLongRep;->get(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLogType()Lcom/sleepycat/je/log/LogEntryType;
    .locals 1

    .line 1676
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN:Lcom/sleepycat/je/log/LogEntryType;

    return-object v0
.end method

.method public getOffHeapLNId(I)J
    .locals 2
    .param p1, "idx"    # I

    .line 722
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INLongRep;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffHeapLNIdsMemorySize()J
    .locals 2

    .line 717
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/INLongRep;->getMemorySize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffHeapLruId()I
    .locals 1

    .line 738
    iget v0, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLruId:I

    return v0
.end method

.method public getVLSN(IZLcom/sleepycat/je/CacheMode;)J
    .locals 6
    .param p1, "idx"    # I
    .param p2, "allowFetch"    # Z
    .param p3, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 428
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/LN;

    .line 429
    .local v0, "ln":Lcom/sleepycat/je/tree/LN;
    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/LN;->getVLSNSequence()J

    move-result-wide v1

    return-wide v1

    .line 434
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/BIN;->getCachedVLSN(I)J

    move-result-wide v1

    .line 435
    .local v1, "vlsn":J
    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/VLSN;->isNull(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 436
    return-wide v1

    .line 440
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v3

    .line 441
    .local v3, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    invoke-virtual {v3}, Lcom/sleepycat/je/evictor/OffHeapCache;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 443
    invoke-virtual {v3, p0, p1}, Lcom/sleepycat/je/evictor/OffHeapCache;->loadVLSN(Lcom/sleepycat/je/tree/BIN;I)J

    move-result-wide v1

    .line 445
    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/VLSN;->isNull(J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 446
    return-wide v1

    .line 451
    :cond_2
    if-eqz p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 455
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/sleepycat/je/tree/BIN;->fetchLN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/LN;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_4

    .line 457
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/LN;->getVLSNSequence()J

    move-result-wide v4

    return-wide v4

    .line 460
    :cond_4
    const-wide/16 v4, -0x1

    return-wide v4

    .line 452
    :cond_5
    :goto_0
    return-wide v1
.end method

.method public getVLSNCache()Lcom/sleepycat/je/tree/INLongRep;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->vlsnCache:Lcom/sleepycat/je/tree/INLongRep;

    return-object v0
.end method

.method public hasExpirationValues()Z
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/INLongRep;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasOffHeapLNs()Z
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/INLongRep;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method incFullBinNEntries()V
    .locals 1

    .line 1710
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1711
    iget v0, p0, Lcom/sleepycat/je/tree/BIN;->fullBinNEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/tree/BIN;->fullBinNEntries:I

    .line 1712
    return-void

    .line 1710
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method isAlwaysLatchedExclusively()Z
    .locals 1

    .line 365
    const/4 v0, 0x1

    return v0
.end method

.method public isBIN()Z
    .locals 1

    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method public isDefunct(I)Z
    .locals 1
    .param p1, "idx"    # I

    .line 675
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/BIN;->isDeleted(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/BIN;->isExpired(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isDeleted(I)Z
    .locals 1
    .param p1, "idx"    # I

    .line 682
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/BIN;->isEntryPendingDeleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isDeltaProhibited()Z
    .locals 4

    .line 1854
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getProhibitNextDelta()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1855
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1856
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getLastFullLsn()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1854
    :goto_1
    return v0
.end method

.method public isExpired(I)Z
    .locals 3
    .param p1, "idx"    # I

    .line 689
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isExpired(IZ)Z

    move-result v0

    return v0
.end method

.method isLastLoggedSizeStored(I)Z
    .locals 1
    .param p1, "idx"    # I

    .line 479
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->mayHaveLastLoggedSizeStored()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProbablyExpired(I)Z
    .locals 5
    .param p1, "idx"    # I

    .line 694
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 695
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v2

    .line 696
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTtlClockTolerance()I

    move-result v3

    int-to-long v3, v3

    .line 694
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->expiresWithin(IZJ)Z

    move-result v0

    return v0
.end method

.method isVLSNCachingEnabled()Z
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCacheVLSN()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isValidForDelete()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1316
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1318
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1319
    return v1

    .line 1322
    :cond_0
    const/4 v0, 0x0

    .line 1324
    .local v0, "numValidEntries":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1325
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/BIN;->isEntryKnownDeleted(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1326
    add-int/lit8 v0, v0, 0x1

    .line 1324
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1330
    .end local v2    # "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 1331
    return v1

    .line 1333
    :cond_3
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->nCursors()I

    move-result v2

    if-lez v2, :cond_4

    .line 1334
    return v1

    .line 1336
    :cond_4
    const/4 v1, 0x1

    return v1

    .line 1316
    .end local v0    # "numValidEntries":I
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public logDirtyChildren()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1601
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1602
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v1

    .line 1603
    .local v1, "node":Lcom/sleepycat/je/tree/Node;
    if-eqz v1, :cond_0

    .line 1604
    move-object v2, v1

    check-cast v2, Lcom/sleepycat/je/tree/LN;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/sleepycat/je/tree/BIN;->logDirtyLN(ILcom/sleepycat/je/tree/LN;Z)V

    .line 1601
    .end local v1    # "node":Lcom/sleepycat/je/tree/Node;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1607
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public mayHaveKeyInFullBin([B)Z
    .locals 1
    .param p1, "key"    # [B

    .line 1821
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1823
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->bloomFilter:[B

    if-nez v0, :cond_0

    .line 1824
    const/4 v0, 0x1

    return v0

    .line 1827
    :cond_0
    invoke-static {v0, p1}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter;->contains([B[B)Z

    move-result v0

    return v0

    .line 1821
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method mayHaveLastLoggedSizeStored()Z
    .locals 1

    .line 486
    sget-boolean v0, Lcom/sleepycat/je/utilint/DatabaseUtil;->TEST:Z

    if-eqz v0, :cond_0

    .line 488
    sget-boolean v0, Lcom/sleepycat/je/tree/BIN;->TEST_NO_LAST_LOGGED_SIZES:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 489
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDbType()Lcom/sleepycat/je/dbi/DbType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbType;->isInternal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    const/4 v0, 0x0

    return v0

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isLNImmediatelyObsolete()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public mutateToBINDelta()J
    .locals 7

    .line 1929
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1930
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->canMutateToBINDelta()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1932
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getInListResident()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1933
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/INList;->updateBINDeltaStat(I)V

    .line 1936
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getInMemorySize()J

    move-result-wide v2

    .line 1937
    .local v2, "oldSize":J
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNDeltas()I

    move-result v0

    .line 1938
    .local v0, "nDeltas":I
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/BIN;->getDeltaCapacity(I)I

    move-result v4

    .line 1940
    .local v4, "capacity":I
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->createBloomFilter()[B

    move-result-object v5

    iput-object v5, p0, Lcom/sleepycat/je/tree/BIN;->bloomFilter:[B

    .line 1942
    invoke-direct {p0, p0, v0, v4, v1}, Lcom/sleepycat/je/tree/BIN;->initBINDelta(Lcom/sleepycat/je/tree/BIN;IIZ)V

    .line 1944
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getInMemorySize()J

    move-result-wide v5

    sub-long v5, v2, v5

    return-wide v5

    .line 1930
    .end local v0    # "nDeltas":I
    .end local v2    # "oldSize":J
    .end local v4    # "capacity":I
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1929
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public mutateToFullBIN(Lcom/sleepycat/je/tree/BIN;Z)V
    .locals 8
    .param p1, "fullBIN"    # Lcom/sleepycat/je/tree/BIN;
    .param p2, "leaveFreeSlot"    # Z

    .line 2183
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2184
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2186
    const/4 v0, 0x0

    check-cast v0, [[B

    .line 2187
    .local v0, "keys":[[B
    const/4 v1, 0x0

    .line 2189
    .local v1, "i":I
    iget-object v2, p0, Lcom/sleepycat/je/tree/BIN;->cursorSet:Lcom/sleepycat/je/utilint/TinyHashSet;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 2190
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/TinyHashSet;->size()I

    move-result v2

    new-array v0, v2, [[B

    .line 2192
    iget-object v2, p0, Lcom/sleepycat/je/tree/BIN;->cursorSet:Lcom/sleepycat/je/utilint/TinyHashSet;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/TinyHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/dbi/CursorImpl;

    .line 2193
    .local v4, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/CursorImpl;->getIndex()I

    move-result v5

    .line 2194
    .local v5, "index":I
    if-ltz v5, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 2195
    invoke-virtual {v4, v3}, Lcom/sleepycat/je/dbi/CursorImpl;->getCurrentKey(Z)[B

    move-result-object v6

    aput-object v6, v0, v1

    .line 2197
    :cond_0
    nop

    .end local v4    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    .end local v5    # "index":I
    add-int/lit8 v1, v1, 0x1

    .line 2198
    goto :goto_0

    .line 2201
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/tree/BIN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {p0, v2, p1, p2}, Lcom/sleepycat/je/tree/BIN;->reconstituteBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/BIN;Z)V

    .line 2203
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/BIN;->resetContent(Lcom/sleepycat/je/tree/BIN;)V

    .line 2205
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/BIN;->setBINDelta(Z)V

    .line 2212
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/BIN;->getIdentifierKey()[B

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/sleepycat/je/tree/BIN;->setIdentifierKey([BZ)V

    .line 2214
    iget-object v4, p0, Lcom/sleepycat/je/tree/BIN;->cursorSet:Lcom/sleepycat/je/utilint/TinyHashSet;

    if-eqz v4, :cond_5

    .line 2216
    const/4 v1, 0x0

    .line 2217
    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/TinyHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/dbi/CursorImpl;

    .line 2219
    .local v5, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    aget-object v6, v0, v1

    if-eqz v6, :cond_4

    .line 2224
    aget-object v6, v0, v1

    invoke-virtual {p0, v6, v3, v2}, Lcom/sleepycat/je/tree/BIN;->findEntry([BZZ)I

    move-result v6

    .line 2226
    .local v6, "index":I
    const/high16 v7, 0x10000

    and-int/2addr v7, v6

    if-eqz v7, :cond_3

    .line 2232
    const v7, -0x10001

    and-int/2addr v6, v7

    .line 2234
    if-ltz v6, :cond_2

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 2235
    invoke-virtual {v5, v6}, Lcom/sleepycat/je/dbi/CursorImpl;->setIndex(I)V

    goto :goto_2

    .line 2234
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2227
    :cond_3
    nop

    .line 2228
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    .line 2227
    const-string v3, "Failed to reposition cursor during mutation of a BIN delta to a full BIN"

    invoke-static {v2, v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 2237
    .end local v6    # "index":I
    :cond_4
    :goto_2
    nop

    .end local v5    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    add-int/lit8 v1, v1, 0x1

    .line 2238
    goto :goto_1

    .line 2241
    :cond_5
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->lazyCompress(Lcom/sleepycat/je/tree/IN;)V

    .line 2242
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->compactMemory()J

    .line 2244
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getInListResident()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2245
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/INList;->updateBINDeltaStat(I)V

    .line 2247
    :cond_6
    return-void

    .line 2184
    .end local v0    # "keys":[[B
    .end local v1    # "i":I
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2183
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public mutateToFullBIN(Z)V
    .locals 2
    .param p1, "leaveFreeSlot"    # Z

    .line 2154
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2155
    return-void

    .line 2158
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/tree/BIN;->fetchFullBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v0

    .line 2160
    .local v0, "fullBIN":Lcom/sleepycat/je/tree/BIN;
    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/je/tree/BIN;->mutateToFullBIN(Lcom/sleepycat/je/tree/BIN;Z)V

    .line 2162
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getEvictor()Lcom/sleepycat/je/evictor/Evictor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/evictor/Evictor;->incFullBINMissStats()V

    .line 2163
    return-void
.end method

.method public nCursors()I
    .locals 2

    .line 865
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->cursorSet:Lcom/sleepycat/je/utilint/TinyHashSet;

    .line 866
    .local v0, "cursors":Lcom/sleepycat/je/utilint/TinyHashSet;, "Lcom/sleepycat/je/utilint/TinyHashSet<Lcom/sleepycat/je/dbi/CursorImpl;>;"
    if-nez v0, :cond_0

    .line 867
    const/4 v1, 0x0

    return v1

    .line 869
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/TinyHashSet;->size()I

    move-result v1

    return v1
.end method

.method public partialEviction()J
    .locals 8

    .line 1425
    iget-wide v0, p0, Lcom/sleepycat/je/tree/BIN;->inMemorySize:J

    .line 1426
    .local v0, "oldMemSize":J
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->lazyCompress(Lcom/sleepycat/je/tree/IN;)V

    .line 1427
    iget-wide v2, p0, Lcom/sleepycat/je/tree/BIN;->inMemorySize:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1428
    iget-wide v2, p0, Lcom/sleepycat/je/tree/BIN;->inMemorySize:J

    sub-long v2, v0, v2

    return-wide v2

    .line 1432
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->evictLNs()J

    move-result-wide v2

    .line 1433
    .local v2, "lnBytesAndStatus":J
    const-wide v4, -0x4000000000000001L    # -1.9999999999999998

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 1434
    return-wide v2

    .line 1438
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->discardVLSNCache()J

    move-result-wide v4

    or-long/2addr v4, v2

    return-wide v4
.end method

.method protected printMemorySize()J
    .locals 17

    .line 1388
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Lcom/sleepycat/je/tree/IN;->printMemorySize()J

    move-result-wide v1

    .line 1389
    .local v1, "inTotal":J
    iget-object v3, v0, Lcom/sleepycat/je/tree/BIN;->vlsnCache:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/INLongRep;->getMemorySize()J

    move-result-wide v3

    .line 1390
    .local v3, "vlsnCacheOverhead":J
    iget-object v5, v0, Lcom/sleepycat/je/tree/BIN;->lastLoggedSizes:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v5}, Lcom/sleepycat/je/tree/INLongRep;->getMemorySize()J

    move-result-wide v5

    .line 1391
    .local v5, "logSizesOverhead":J
    iget-object v7, v0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v7}, Lcom/sleepycat/je/tree/INLongRep;->getMemorySize()J

    move-result-wide v7

    .line 1392
    .local v7, "expirationOverhead":J
    iget-object v9, v0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v9}, Lcom/sleepycat/je/tree/INLongRep;->getMemorySize()J

    move-result-wide v9

    .line 1394
    .local v9, "offHeapLNIdOverhead":J
    add-long v11, v1, v3

    add-long/2addr v11, v5

    add-long/2addr v11, v9

    .line 1397
    .local v11, "binTotal":J
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    .line 1399
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x2

    aput-object v15, v14, v16

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v14, v16

    .line 1400
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x4

    aput-object v15, v14, v16

    .line 1397
    const-string v15, "BIN: %d vlsns: %d logSizes: %d expiration: %d offHeapLNIds: %d %n"

    invoke-virtual {v13, v15, v14}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1402
    return-wide v11
.end method

.method public queueSlotDeletion(I)V
    .locals 1
    .param p1, "idx"    # I

    .line 1290
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/BIN;->isDirty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->shouldLogDelta()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1291
    return-void

    .line 1294
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addToCompressorQueue(Lcom/sleepycat/je/tree/BIN;)V

    .line 1295
    return-void
.end method

.method public reconstituteBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/BIN;
    .locals 2
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2350
    invoke-direct {p0, p1}, Lcom/sleepycat/je/tree/BIN;->fetchFullBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/BIN;

    move-result-object v0

    .line 2351
    .local v0, "fullBIN":Lcom/sleepycat/je/tree/BIN;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sleepycat/je/tree/BIN;->reconstituteBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/BIN;Z)V

    .line 2352
    return-object v0
.end method

.method public reconstituteBIN(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/BIN;Z)V
    .locals 23
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "fullBIN"    # Lcom/sleepycat/je/tree/BIN;
    .param p3, "leaveFreeSlot"    # Z

    .line 2374
    move-object/from16 v1, p0

    move-object/from16 v15, p2

    move-object/from16 v14, p1

    invoke-virtual {v15, v14}, Lcom/sleepycat/je/tree/BIN;->setDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 2375
    sget-object v0, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v15, v0}, Lcom/sleepycat/je/tree/BIN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 2378
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/tree/BIN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    if-nez v0, :cond_0

    .line 2379
    invoke-virtual/range {p0 .. p1}, Lcom/sleepycat/je/tree/BIN;->setDatabase(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 2382
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLruId()I

    move-result v0

    if-gez v0, :cond_a

    .line 2383
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/BIN;->hasOffHeapLNs()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2389
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->getLastFullLsn()J

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Lcom/sleepycat/je/tree/BIN;->setLastFullLsn(J)V

    .line 2431
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isInInit()Z

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_1

    .line 2432
    const/4 v0, 0x0

    invoke-virtual {v15, v13, v0}, Lcom/sleepycat/je/tree/BIN;->compress(ZLcom/sleepycat/je/cleaner/LocalUtilizationTracker;)Z

    .line 2435
    :cond_1
    const/4 v0, 0x1

    if-eqz p3, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v13

    .line 2436
    .local v2, "nInsertions":I
    :goto_0
    const/4 v3, 0x0

    move/from16 v16, v2

    .end local v2    # "nInsertions":I
    .local v3, "i":I
    .local v16, "nInsertions":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v2

    if-ge v3, v2, :cond_5

    .line 2437
    nop

    .line 2438
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v2

    .line 2437
    invoke-virtual {v15, v2, v0, v13}, Lcom/sleepycat/je/tree/BIN;->findEntry([BZZ)I

    move-result v2

    .line 2439
    .local v2, "foundIndex":I
    if-ltz v2, :cond_3

    const/high16 v4, 0x10000

    and-int/2addr v4, v2

    if-nez v4, :cond_4

    .line 2440
    :cond_3
    add-int/lit8 v16, v16, 0x1

    .line 2436
    .end local v2    # "foundIndex":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2443
    .end local v3    # "i":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v0

    add-int v0, v16, v0

    .line 2444
    .local v0, "maxEntries":I
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/BIN;->getMaxEntries()I

    move-result v2

    if-le v0, v2, :cond_6

    .line 2445
    invoke-direct {v15, v0}, Lcom/sleepycat/je/tree/BIN;->resize(I)V

    .line 2446
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addToCompressorQueue(Lcom/sleepycat/je/tree/BIN;)V

    .line 2450
    :cond_6
    const/4 v2, 0x0

    move v11, v2

    .local v11, "i":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ge v11, v2, :cond_8

    .line 2452
    :try_start_1
    invoke-virtual {v1, v11}, Lcom/sleepycat/je/tree/BIN;->isDirty(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2454
    nop

    .line 2455
    invoke-virtual {v1, v11}, Lcom/sleepycat/je/tree/BIN;->getKey(I)[B

    move-result-object v3

    invoke-virtual {v1, v11}, Lcom/sleepycat/je/tree/BIN;->getData(I)[B

    move-result-object v4

    invoke-virtual {v1, v11}, Lcom/sleepycat/je/tree/BIN;->getLsn(I)J

    move-result-wide v5

    invoke-virtual {v1, v11}, Lcom/sleepycat/je/tree/BIN;->getState(I)B

    move-result v7

    .line 2456
    invoke-virtual {v1, v11}, Lcom/sleepycat/je/tree/BIN;->getLastLoggedSize(I)I

    move-result v8

    invoke-virtual {v1, v11}, Lcom/sleepycat/je/tree/BIN;->getOffHeapLNId(I)J

    move-result-wide v9

    .line 2457
    invoke-virtual {v1, v11}, Lcom/sleepycat/je/tree/BIN;->getCachedVLSN(I)J

    move-result-wide v17

    invoke-virtual {v1, v11}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v19

    .line 2458
    invoke-virtual {v1, v11}, Lcom/sleepycat/je/tree/BIN;->getExpiration(I)I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v21

    .line 2454
    move-object/from16 v2, p2

    move/from16 v22, v11

    .end local v11    # "i":I
    .local v22, "i":I
    move-wide/from16 v11, v17

    move/from16 v17, v0

    move v0, v13

    .end local v0    # "maxEntries":I
    .local v17, "maxEntries":I
    move-object/from16 v13, v19

    move/from16 v14, v20

    move/from16 v15, v21

    invoke-virtual/range {v2 .. v15}, Lcom/sleepycat/je/tree/BIN;->applyDelta([B[BJBIJJLcom/sleepycat/je/tree/Node;IZ)V

    .line 2450
    add-int/lit8 v11, v22, 0x1

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move v13, v0

    move/from16 v0, v17

    .end local v22    # "i":I
    .restart local v11    # "i":I
    goto :goto_2

    .line 2469
    .end local v11    # "i":I
    .end local v16    # "nInsertions":I
    .end local v17    # "maxEntries":I
    :catchall_0
    move-exception v0

    move-object/from16 v2, p2

    goto :goto_3

    .line 2452
    .restart local v0    # "maxEntries":I
    .restart local v11    # "i":I
    .restart local v16    # "nInsertions":I
    :cond_7
    move/from16 v17, v0

    move/from16 v22, v11

    .end local v0    # "maxEntries":I
    .end local v11    # "i":I
    .restart local v17    # "maxEntries":I
    .restart local v22    # "i":I
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "fullBIN":Lcom/sleepycat/je/tree/BIN;
    .end local p3    # "leaveFreeSlot":Z
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2450
    .end local v17    # "maxEntries":I
    .end local v22    # "i":I
    .restart local v0    # "maxEntries":I
    .restart local v11    # "i":I
    .restart local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "fullBIN":Lcom/sleepycat/je/tree/BIN;
    .restart local p3    # "leaveFreeSlot":Z
    :cond_8
    move/from16 v17, v0

    move/from16 v22, v11

    move v0, v13

    .line 2467
    .end local v0    # "maxEntries":I
    .end local v11    # "i":I
    .restart local v17    # "maxEntries":I
    move-object/from16 v2, p2

    :try_start_2
    invoke-virtual {v2, v0}, Lcom/sleepycat/je/tree/BIN;->setDirty(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2469
    .end local v16    # "nInsertions":I
    .end local v17    # "maxEntries":I
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    .line 2470
    nop

    .line 2471
    return-void

    .line 2383
    :cond_9
    move-object v2, v15

    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "fullBIN":Lcom/sleepycat/je/tree/BIN;
    .end local p3    # "leaveFreeSlot":Z
    throw v0

    .line 2382
    .restart local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "fullBIN":Lcom/sleepycat/je/tree/BIN;
    .restart local p3    # "leaveFreeSlot":Z
    :cond_a
    move-object v2, v15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "fullBIN":Lcom/sleepycat/je/tree/BIN;
    .end local p3    # "leaveFreeSlot":Z
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2469
    .restart local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "fullBIN":Lcom/sleepycat/je/tree/BIN;
    .restart local p3    # "leaveFreeSlot":Z
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v15

    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/tree/BIN;->releaseLatch()V

    throw v0
.end method

.method public removeCursor(Lcom/sleepycat/je/dbi/CursorImpl;)V
    .locals 1
    .param p1, "cursor"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 844
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isLatchExclusiveOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 845
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->cursorSet:Lcom/sleepycat/je/utilint/TinyHashSet;

    if-nez v0, :cond_0

    .line 846
    return-void

    .line 848
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/TinyHashSet;->remove(Ljava/lang/Object;)Z

    .line 849
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->cursorSet:Lcom/sleepycat/je/utilint/TinyHashSet;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/TinyHashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 850
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->cursorSet:Lcom/sleepycat/je/utilint/TinyHashSet;

    .line 852
    :cond_1
    return-void

    .line 844
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setCachedVLSN(IJ)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "vlsn"    # J

    .line 396
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isVLSNCachingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    return-void

    .line 399
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/tree/BIN;->setCachedVLSNUnconditional(IJ)V

    .line 400
    return-void
.end method

.method setCachedVLSNUnconditional(IJ)V
    .locals 3
    .param p1, "idx"    # I
    .param p2, "vlsn"    # J

    .line 403
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->vlsnCache:Lcom/sleepycat/je/tree/INLongRep;

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/sleepycat/je/tree/INLongRep;->set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->vlsnCache:Lcom/sleepycat/je/tree/INLongRep;

    .line 407
    return-void
.end method

.method public setExpiration(IIZ)V
    .locals 5
    .param p1, "idx"    # I
    .param p2, "value"    # I
    .param p3, "hours"    # Z

    .line 562
    if-nez p2, :cond_0

    .line 563
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/sleepycat/je/tree/INLongRep;->set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    .line 564
    return-void

    .line 571
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationBase:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/sleepycat/je/tree/BIN;->nEntries:I

    if-ne v0, v2, :cond_1

    goto :goto_5

    .line 578
    :cond_1
    if-eqz p3, :cond_5

    .line 580
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v0

    if-nez v0, :cond_6

    .line 582
    iget v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationBase:I

    mul-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationBase:I

    .line 583
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/BIN;->setExpirationInHours(Z)V

    .line 585
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sleepycat/je/tree/BIN;->nEntries:I

    if-ge v0, v1, :cond_4

    .line 587
    if-ne v0, p1, :cond_2

    .line 588
    goto :goto_1

    .line 591
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/tree/INLongRep;->get(I)J

    move-result-wide v3

    long-to-int v1, v3

    .line 593
    .local v1, "offset":I
    if-nez v1, :cond_3

    .line 594
    goto :goto_1

    .line 597
    :cond_3
    add-int/lit8 v3, v1, -0x1

    mul-int/lit8 v3, v3, 0x18

    add-int/2addr v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/sleepycat/je/tree/BIN;->setExpirationOffset(II)V

    .line 585
    .end local v1    # "offset":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_4
    goto :goto_2

    .line 602
    :cond_5
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isExpirationInHours()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 603
    mul-int/lit8 p2, p2, 0x18

    .line 611
    :cond_6
    :goto_2
    iget v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationBase:I

    if-ge p2, v0, :cond_9

    .line 613
    sub-int/2addr v0, p2

    .line 614
    .local v0, "adjustment":I
    iput p2, p0, Lcom/sleepycat/je/tree/BIN;->expirationBase:I

    .line 616
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v3, p0, Lcom/sleepycat/je/tree/BIN;->nEntries:I

    if-ge v1, v3, :cond_9

    .line 618
    if-ne v1, p1, :cond_7

    .line 619
    goto :goto_4

    .line 622
    :cond_7
    iget-object v3, p0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v3, v1}, Lcom/sleepycat/je/tree/INLongRep;->get(I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 624
    .local v3, "offset":I
    if-nez v3, :cond_8

    .line 625
    goto :goto_4

    .line 628
    :cond_8
    add-int v4, v3, v0

    invoke-virtual {p0, v1, v4}, Lcom/sleepycat/je/tree/BIN;->setExpirationOffset(II)V

    .line 616
    .end local v3    # "offset":I
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 632
    .end local v0    # "adjustment":I
    .end local v1    # "i":I
    :cond_9
    iget v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationBase:I

    sub-int v0, p2, v0

    add-int/2addr v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/tree/BIN;->setExpirationOffset(II)V

    .line 633
    return-void

    .line 572
    :cond_a
    :goto_5
    iput p2, p0, Lcom/sleepycat/je/tree/BIN;->expirationBase:I

    .line 573
    invoke-virtual {p0, p1, v2}, Lcom/sleepycat/je/tree/BIN;->setExpirationOffset(II)V

    .line 574
    invoke-virtual {p0, p3}, Lcom/sleepycat/je/tree/BIN;->setExpirationInHours(Z)V

    .line 575
    return-void
.end method

.method setExpirationBase(I)V
    .locals 0
    .param p1, "base"    # I

    .line 664
    iput p1, p0, Lcom/sleepycat/je/tree/BIN;->expirationBase:I

    .line 665
    return-void
.end method

.method setExpirationOffset(II)V
    .locals 3
    .param p1, "idx"    # I
    .param p2, "offset"    # I

    .line 668
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/sleepycat/je/tree/INLongRep;->set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->expirationValues:Lcom/sleepycat/je/tree/INLongRep;

    .line 669
    return-void
.end method

.method public setFullBinMaxEntries(I)V
    .locals 1
    .param p1, "n"    # I

    .line 1723
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/BIN;->isBINDelta(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1724
    iput p1, p0, Lcom/sleepycat/je/tree/BIN;->fullBinMaxEntries:I

    .line 1725
    return-void

    .line 1723
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setFullBinNEntries(I)V
    .locals 1
    .param p1, "n"    # I

    .line 1705
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/BIN;->isBINDelta(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1706
    iput p1, p0, Lcom/sleepycat/je/tree/BIN;->fullBinNEntries:I

    .line 1707
    return-void

    .line 1705
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setLastDeltaLsn(J)V
    .locals 0
    .param p1, "lsn"    # J

    .line 1689
    iput-wide p1, p0, Lcom/sleepycat/je/tree/BIN;->lastDeltaVersion:J

    .line 1690
    return-void
.end method

.method public setLastLoggedSize(II)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "lastLoggedSize"    # I

    .line 515
    if-ltz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/BIN;->isLastLoggedSizeStored(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 519
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/tree/BIN;->setLastLoggedSizeUnconditional(II)V

    .line 520
    return-void

    .line 516
    :cond_1
    :goto_0
    return-void
.end method

.method setLastLoggedSizeUnconditional(II)V
    .locals 3
    .param p1, "idx"    # I
    .param p2, "lastLoggedSize"    # I

    .line 540
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->lastLoggedSizes:Lcom/sleepycat/je/tree/INLongRep;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/sleepycat/je/tree/INLongRep;->set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->lastLoggedSizes:Lcom/sleepycat/je/tree/INLongRep;

    .line 541
    return-void
.end method

.method public setOffHeapLNId(IJ)V
    .locals 2
    .param p1, "idx"    # I
    .param p2, "memId"    # J

    .line 705
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/INLongRep;->get(I)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    .line 706
    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sleepycat/je/tree/INLongRep;->set(IJLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INLongRep;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLNIds:Lcom/sleepycat/je/tree/INLongRep;

    .line 710
    return-void
.end method

.method public setOffHeapLruId(I)V
    .locals 1
    .param p1, "id"    # I

    .line 732
    if-gez p1, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->hasOffHeapLNs()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 734
    :cond_1
    :goto_0
    iput p1, p0, Lcom/sleepycat/je/tree/BIN;->offHeapLruId:I

    .line 735
    return-void
.end method

.method setTarget(ILcom/sleepycat/je/tree/Node;)V
    .locals 3
    .param p1, "idx"    # I
    .param p2, "target"    # Lcom/sleepycat/je/tree/Node;

    .line 751
    if-nez p2, :cond_0

    .line 752
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/BIN;->getTarget(I)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    .line 753
    .local v0, "oldTarget":Lcom/sleepycat/je/tree/Node;
    instance-of v1, v0, Lcom/sleepycat/je/tree/LN;

    if-eqz v1, :cond_0

    .line 754
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/tree/LN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/LN;->getVLSNSequence()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/sleepycat/je/tree/BIN;->setCachedVLSN(IJ)V

    .line 757
    .end local v0    # "oldTarget":Lcom/sleepycat/je/tree/Node;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/tree/IN;->setTarget(ILcom/sleepycat/je/tree/Node;)V

    .line 758
    return-void
.end method

.method public shortClassName()Ljava/lang/String;
    .locals 1

    .line 370
    const-string v0, "BIN"

    return-object v0
.end method

.method public shouldLogDelta()Z
    .locals 6

    .line 1880
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1885
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getProhibitNextDelta()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1886
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getLastFullLsn()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 1887
    return v1

    .line 1886
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1885
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1891
    :cond_2
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isDeltaProhibited()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1892
    return v2

    .line 1896
    :cond_3
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNDeltas()I

    move-result v0

    .line 1899
    .local v0, "numDeltas":I
    if-gtz v0, :cond_4

    .line 1900
    return v2

    .line 1904
    :cond_4
    nop

    .line 1905
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v3

    iget-object v4, p0, Lcom/sleepycat/je/tree/BIN;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getBinDeltaPercent()I

    move-result v4

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    .line 1907
    .local v3, "deltaLimit":I
    if-gt v0, v3, :cond_5

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_0
    return v1
.end method

.method splitSpecial(Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/tree/IN;I[BZ)Lcom/sleepycat/je/tree/IN;
    .locals 11
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "parentIndex"    # I
    .param p3, "grandParent"    # Lcom/sleepycat/je/tree/IN;
    .param p4, "maxEntriesPerNode"    # I
    .param p5, "key"    # [B
    .param p6, "leftSide"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1029
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v0

    .line 1031
    .local v0, "nEntries":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v9, p0

    move-object/from16 v10, p5

    invoke-virtual {p0, v10, v1, v2}, Lcom/sleepycat/je/tree/BIN;->findEntry([BZZ)I

    move-result v3

    .line 1033
    .local v3, "index":I
    const/high16 v4, 0x10000

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1034
    .local v1, "exact":Z
    :goto_0
    const v2, -0x10001

    and-int/2addr v2, v3

    .line 1036
    .end local v3    # "index":I
    .local v2, "index":I
    if-eqz p6, :cond_1

    if-gez v2, :cond_1

    .line 1037
    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/je/tree/BIN;->splitInternal(Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/tree/IN;II)Lcom/sleepycat/je/tree/IN;

    move-result-object v3

    return-object v3

    .line 1040
    :cond_1
    if-nez p6, :cond_2

    if-nez v1, :cond_2

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_2

    .line 1041
    add-int/lit8 v8, v0, -0x1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/je/tree/BIN;->splitInternal(Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/tree/IN;II)Lcom/sleepycat/je/tree/IN;

    move-result-object v3

    return-object v3

    .line 1046
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/tree/BIN;->split(Lcom/sleepycat/je/tree/IN;ILcom/sleepycat/je/tree/IN;I)Lcom/sleepycat/je/tree/IN;

    move-result-object v3

    return-object v3
.end method

.method validateSubtreeBeforeDelete(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 1301
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->isBINDelta()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1303
    const/4 v0, 0x1

    return v0

    .line 1301
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public verifyCursors()V
    .locals 2

    .line 984
    iget-object v0, p0, Lcom/sleepycat/je/tree/BIN;->cursorSet:Lcom/sleepycat/je/utilint/TinyHashSet;

    if-nez v0, :cond_0

    .line 985
    return-void

    .line 987
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/TinyHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/dbi/CursorImpl;

    .line 988
    .local v1, "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    invoke-virtual {v1, p0}, Lcom/sleepycat/je/dbi/CursorImpl;->assertBIN(Lcom/sleepycat/je/tree/BIN;)V

    .line 989
    .end local v1    # "cursor":Lcom/sleepycat/je/dbi/CursorImpl;
    goto :goto_0

    .line 990
    :cond_1
    return-void
.end method
