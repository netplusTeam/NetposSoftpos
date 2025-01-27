.class public Lcom/sleepycat/je/rep/stream/Protocol$FeederProtocolVersion;
.super Lcom/sleepycat/je/rep/stream/BaseProtocol$ProtocolVersion;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FeederProtocolVersion"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "proposedVersion"    # I

    .line 470
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$FeederProtocolVersion;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 471
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$ProtocolVersion;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;I)V

    .line 472
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 474
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$FeederProtocolVersion;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 475
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$ProtocolVersion;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)V

    .line 476
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 480
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->FEEDER_PROTOCOL_VERSION:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public bridge synthetic wireFormat()Ljava/nio/ByteBuffer;
    .locals 1

    .line 468
    invoke-super {p0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$ProtocolVersion;->wireFormat()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
