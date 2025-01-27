.class public Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$Done;,
        Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileEnd;,
        Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;,
        Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;,
        Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoReq;,
        Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;,
        Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListResp;,
        Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListReq;,
        Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;,
        Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoReq;
    }
.end annotation


# static fields
.field public static final VERSION:I = 0x2


# instance fields
.field public final DONE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public final FEEDER_INFO_REQ:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public final FEEDER_INFO_RESP:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public final FILE_END:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public final FILE_INFO_REQ:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public final FILE_INFO_RESP:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public final FILE_LIST_REQ:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public final FILE_LIST_RESP:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public final FILE_REQ:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

.field public final FILE_START:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;ILcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 16
    .param p1, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p2, "configuredVersion"    # I
    .param p3, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 100
    move-object/from16 v0, p0

    const/4 v1, 0x2

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;IILcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 66
    new-instance v5, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v6, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoReq;

    const/4 v7, 0x1

    invoke-direct {v5, v7, v6}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    iput-object v5, v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->FEEDER_INFO_REQ:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 69
    new-instance v6, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v8, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;

    invoke-direct {v6, v1, v8}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    iput-object v6, v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->FEEDER_INFO_RESP:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 72
    new-instance v8, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v9, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListReq;

    const/4 v10, 0x3

    invoke-direct {v8, v10, v9}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    iput-object v8, v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->FILE_LIST_REQ:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 75
    new-instance v9, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v11, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListResp;

    const/4 v12, 0x4

    invoke-direct {v9, v12, v11}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    iput-object v9, v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->FILE_LIST_RESP:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 78
    new-instance v11, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v13, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;

    const/4 v14, 0x5

    invoke-direct {v11, v14, v13}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    iput-object v11, v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->FILE_REQ:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 81
    new-instance v13, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v15, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;

    const/4 v14, 0x6

    invoke-direct {v13, v14, v15}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    iput-object v13, v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->FILE_START:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 84
    new-instance v15, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v14, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileEnd;

    const/4 v12, 0x7

    invoke-direct {v15, v12, v14}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    iput-object v15, v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->FILE_END:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 87
    new-instance v14, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v12, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoReq;

    const/16 v10, 0x8

    invoke-direct {v14, v10, v12}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    iput-object v14, v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->FILE_INFO_REQ:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 90
    new-instance v12, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v10, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;

    const/16 v1, 0x9

    invoke-direct {v12, v1, v10}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    iput-object v12, v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->FILE_INFO_RESP:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 93
    new-instance v10, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$Done;

    const/16 v7, 0xa

    invoke-direct {v10, v7, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;-><init>(SLjava/lang/Class;)V

    iput-object v10, v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->DONE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 102
    new-array v1, v7, [Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    const/4 v7, 0x0

    aput-object v5, v1, v7

    const/4 v5, 0x1

    aput-object v6, v1, v5

    const/4 v5, 0x2

    aput-object v8, v1, v5

    const/4 v5, 0x3

    aput-object v9, v1, v5

    const/4 v5, 0x4

    aput-object v14, v1, v5

    const/4 v5, 0x5

    aput-object v12, v1, v5

    const/4 v5, 0x6

    aput-object v11, v1, v5

    const/4 v5, 0x7

    aput-object v13, v1, v5

    const/16 v5, 0x8

    aput-object v15, v1, v5

    const/16 v5, 0x9

    aput-object v10, v1, v5

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->initializeMessageOps([Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;)V

    .line 113
    return-void
.end method
