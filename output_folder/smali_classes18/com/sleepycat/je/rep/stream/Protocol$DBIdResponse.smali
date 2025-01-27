.class public Lcom/sleepycat/je/rep/stream/Protocol$DBIdResponse;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DBIdResponse"
.end annotation


# instance fields
.field private final dbId:Lcom/sleepycat/je/dbi/DatabaseId;

.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/dbi/DatabaseId;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;

    .line 724
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$DBIdResponse;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 725
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/Protocol$DBIdResponse;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 726
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 728
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$DBIdResponse;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 729
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 730
    new-instance v0, Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/dbi/DatabaseId;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$DBIdResponse;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 731
    return-void
.end method


# virtual methods
.method public getDbId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$DBIdResponse;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 744
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->DBID_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 739
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/Protocol$DBIdResponse;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseId;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/stream/Protocol$DBIdResponse;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
