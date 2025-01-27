.class public Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;
.super Lcom/sleepycat/je/rep/stream/BaseProtocol$HandshakeMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SNTPRequest"
.end annotation


# instance fields
.field private isLast:Z

.field private final originateTimestamp:J

.field private receiveTimestamp:J

.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 525
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$HandshakeMessage;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;)V

    .line 506
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->receiveTimestamp:J

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->isLast:Z

    .line 526
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->originateTimestamp:J

    .line 527
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->getBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->isLast:Z

    .line 528
    invoke-static {p1}, Lcom/sleepycat/je/rep/stream/Protocol;->access$100(Lcom/sleepycat/je/rep/stream/Protocol;)Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->receiveTimestamp:J

    .line 529
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Z)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "isLast"    # Z

    .line 514
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 515
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$HandshakeMessage;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;)V

    .line 506
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->receiveTimestamp:J

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->isLast:Z

    .line 516
    iput-boolean p2, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->isLast:Z

    .line 517
    invoke-static {p1}, Lcom/sleepycat/je/rep/stream/Protocol;->access$100(Lcom/sleepycat/je/rep/stream/Protocol;)Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->originateTimestamp:J

    .line 518
    return-void
.end method

.method static synthetic access$200(Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;)J
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;

    .line 501
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->originateTimestamp:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;)J
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;

    .line 501
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->receiveTimestamp:J

    return-wide v0
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 533
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->SNTP_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public getOriginateTimestamp()J
    .locals 2

    .line 537
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->originateTimestamp:J

    return-wide v0
.end method

.method public getReceiveTimestamp()J
    .locals 2

    .line 541
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->receiveTimestamp:J

    return-wide v0
.end method

.method public isLast()Z
    .locals 1

    .line 545
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->isLast:Z

    return v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 522
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->originateTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->isLast:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/stream/Protocol$SNTPRequest;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
