.class public Lcom/sleepycat/je/rep/util/ldiff/Protocol;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/util/ldiff/Protocol$Error;,
        Lcom/sleepycat/je/rep/util/ldiff/Protocol$Done;,
        Lcom/sleepycat/je/rep/util/ldiff/Protocol$DiffAreaEnd;,
        Lcom/sleepycat/je/rep/util/ldiff/Protocol$DiffAreaStart;,
        Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;,
        Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;,
        Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvInfo;,
        Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvDiff;,
        Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;,
        Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockListEnd;,
        Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockListStart;,
        Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbMismatch;,
        Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;
    }
.end annotation


# static fields
.field public static final BLOCK_INFO:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final BLOCK_LIST_END:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final BLOCK_LIST_START:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final DB_BLOCKS:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final DB_MISMATCH:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final DIFF_AREA_END:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final DIFF_AREA_START:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final DONE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final ENV_DIFF:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final ENV_INFO:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final ERROR:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final REMOTE_DIFF_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final REMOTE_RECORD:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public static final VERSION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 79
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->DB_BLOCKS:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 82
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbMismatch;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->DB_MISMATCH:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 85
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockListStart;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->BLOCK_LIST_START:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 88
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->BLOCK_INFO:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 91
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockListEnd;

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->BLOCK_LIST_END:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 94
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvDiff;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->ENV_DIFF:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 97
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvInfo;

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->ENV_INFO:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 100
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->REMOTE_DIFF_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 103
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->REMOTE_RECORD:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 106
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DiffAreaStart;

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->DIFF_AREA_START:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 109
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DiffAreaEnd;

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->DIFF_AREA_END:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 112
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/util/ldiff/Protocol$Done;

    const/16 v2, 0xc

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->DONE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 114
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/util/ldiff/Protocol$Error;

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->ERROR:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 4
    .param p1, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p2, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 123
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;IILcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 125
    const/16 v1, 0xd

    new-array v1, v1, [Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    sget-object v2, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->DB_BLOCKS:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->DB_MISMATCH:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->BLOCK_LIST_START:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    aput-object v2, v1, v0

    sget-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->BLOCK_INFO:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sget-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->BLOCK_LIST_END:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sget-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->ENV_DIFF:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sget-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->ENV_INFO:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sget-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->REMOTE_DIFF_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sget-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->REMOTE_RECORD:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sget-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->DIFF_AREA_START:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    sget-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->DIFF_AREA_END:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/16 v2, 0xa

    aput-object v0, v1, v2

    sget-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->DONE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/16 v2, 0xb

    aput-object v0, v1, v2

    sget-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->ERROR:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->initializeMessageOps([Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;)V

    .line 130
    return-void
.end method
