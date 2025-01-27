.class abstract Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;
.super Lcom/sleepycat/je/rep/stream/BaseProtocol$HandshakeMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "JEVersions"
.end annotation


# instance fields
.field private final logVersion:I

.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/Protocol;

.field private final version:Lcom/sleepycat/je/JEVersion;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/JEVersion;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "version"    # Lcom/sleepycat/je/JEVersion;
    .param p3, "logVersion"    # I

    .line 758
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$HandshakeMessage;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;)V

    .line 759
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->version:Lcom/sleepycat/je/JEVersion;

    .line 760
    iput p3, p0, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->logVersion:I

    .line 761
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 768
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$HandshakeMessage;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;)V

    .line 769
    new-instance v0, Lcom/sleepycat/je/JEVersion;

    invoke-virtual {p1, p2}, Lcom/sleepycat/je/rep/stream/Protocol;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/JEVersion;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->version:Lcom/sleepycat/je/JEVersion;

    .line 770
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->logVersion:I

    .line 771
    return-void
.end method


# virtual methods
.method public getLogVersion()B
    .locals 1

    .line 778
    iget v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->logVersion:I

    int-to-byte v0, v0

    return v0
.end method

.method public getVersion()Lcom/sleepycat/je/JEVersion;
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->version:Lcom/sleepycat/je/JEVersion;

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 765
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->version:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {v1}, Lcom/sleepycat/je/JEVersion;->getVersionString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->logVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
