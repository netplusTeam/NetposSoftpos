.class public Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "BaseProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/BaseProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShutdownRequest"
.end annotation


# instance fields
.field private final shutdownTimeMs:J

.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "shutdownTimeMs"    # J

    .line 1070
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 1071
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 1072
    iput-wide p2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;->shutdownTimeMs:J

    .line 1073
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1080
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 1081
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;->shutdownTimeMs:J

    .line 1082
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 1077
    sget-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->SHUTDOWN_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public getShutdownTimeMs()J
    .locals 2

    .line 1090
    iget-wide v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;->shutdownTimeMs:J

    return-wide v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1086
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;->shutdownTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
