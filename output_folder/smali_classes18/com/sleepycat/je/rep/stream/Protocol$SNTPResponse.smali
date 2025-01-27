.class public Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;
.super Lcom/sleepycat/je/rep/stream/BaseProtocol$HandshakeMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SNTPResponse"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private destinationTimestamp:J

.field private final originateTimestamp:J

.field private final receiveTimestamp:J

.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/Protocol;

.field private transmitTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 549
    const-class v0, Lcom/sleepycat/je/rep/stream/Protocol;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "request"    # Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;

    .line 564
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$HandshakeMessage;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;)V

    .line 559
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->transmitTimestamp:J

    .line 562
    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->destinationTimestamp:J

    .line 565
    invoke-static {p2}, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->access$200(Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->originateTimestamp:J

    .line 566
    invoke-static {p2}, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->access$300(Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->receiveTimestamp:J

    .line 567
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 577
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$HandshakeMessage;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;)V

    .line 559
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->transmitTimestamp:J

    .line 562
    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->destinationTimestamp:J

    .line 578
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->originateTimestamp:J

    .line 579
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->receiveTimestamp:J

    .line 580
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->transmitTimestamp:J

    .line 581
    invoke-static {p1}, Lcom/sleepycat/je/rep/stream/Protocol;->access$100(Lcom/sleepycat/je/rep/stream/Protocol;)Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->destinationTimestamp:J

    .line 582
    return-void
.end method


# virtual methods
.method public getDelay()J
    .locals 6

    .line 606
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->destinationTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 607
    iget-wide v2, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->originateTimestamp:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->transmitTimestamp:J

    iget-wide v4, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->receiveTimestamp:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0

    .line 606
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getDelta()J
    .locals 6

    .line 612
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->destinationTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 613
    iget-wide v2, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->receiveTimestamp:J

    iget-wide v4, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->originateTimestamp:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->transmitTimestamp:J

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    const-wide/16 v0, 0x2

    div-long/2addr v2, v0

    return-wide v2

    .line 612
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getDestinationTimestamp()J
    .locals 2

    .line 602
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->destinationTimestamp:J

    return-wide v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 586
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->SNTP_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public getOriginateTimestamp()J
    .locals 2

    .line 590
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->originateTimestamp:J

    return-wide v0
.end method

.method public getReceiveTimestamp()J
    .locals 2

    .line 594
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->receiveTimestamp:J

    return-wide v0
.end method

.method public getTransmitTimestamp()J
    .locals 2

    .line 598
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->transmitTimestamp:J

    return-wide v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-static {v0}, Lcom/sleepycat/je/rep/stream/Protocol;->access$100(Lcom/sleepycat/je/rep/stream/Protocol;)Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->transmitTimestamp:J

    .line 572
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->originateTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->receiveTimestamp:J

    .line 573
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->transmitTimestamp:J

    .line 574
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 572
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/stream/Protocol$SNTPResponse;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
