.class public abstract Lcom/sleepycat/je/rep/stream/BaseProtocol$ProtocolVersion;
.super Lcom/sleepycat/je/rep/stream/BaseProtocol$HandshakeMessage;
.source "BaseProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/BaseProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ProtocolVersion"
.end annotation


# instance fields
.field private final nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

.field private final version:I


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "version"    # I

    .line 1210
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$ProtocolVersion;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 1211
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$HandshakeMessage;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;)V

    .line 1212
    iput p2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$ProtocolVersion;->version:I

    .line 1213
    invoke-static {p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->access$800(Lcom/sleepycat/je/rep/stream/BaseProtocol;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$ProtocolVersion;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 1214
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1221
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$ProtocolVersion;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$HandshakeMessage;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;)V

    .line 1222
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$ProtocolVersion;->version:I

    .line 1223
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$ProtocolVersion;->getNameIdPair(Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$ProtocolVersion;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 1224
    return-void
.end method


# virtual methods
.method protected getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 1239
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$ProtocolVersion;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method protected getVersion()I
    .locals 1

    .line 1230
    iget v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$ProtocolVersion;->version:I

    return v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1218
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$ProtocolVersion;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$ProtocolVersion;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$ProtocolVersion;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
