.class public Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;
.super Lcom/sleepycat/je/rep/stream/BaseProtocol$HandshakeMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeGroupInfoOK"
.end annotation


# instance fields
.field private final nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/Protocol;

.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1002
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$HandshakeMessage;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;)V

    .line 1003
    new-instance v0, Ljava/util/UUID;

    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 1004
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;->uuid:Ljava/util/UUID;

    .line 1005
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;->getNameIdPair(Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 1006
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/util/UUID;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 996
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 997
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$HandshakeMessage;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;)V

    .line 998
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;->uuid:Ljava/util/UUID;

    .line 999
    iput-object p3, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 1000
    return-void
.end method


# virtual methods
.method public getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 1017
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->MEMBERSHIP_INFO_OK:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1010
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;->uuid:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;->uuid:Ljava/util/UUID;

    .line 1011
    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1010
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoOK;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
