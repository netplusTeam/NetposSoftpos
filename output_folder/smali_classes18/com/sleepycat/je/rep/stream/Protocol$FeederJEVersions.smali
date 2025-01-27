.class public Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;
.super Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FeederJEVersions"
.end annotation


# instance fields
.field private minJEVersion:Lcom/sleepycat/je/JEVersion;

.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/Protocol;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/JEVersion;ILcom/sleepycat/je/JEVersion;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "version"    # Lcom/sleepycat/je/JEVersion;
    .param p3, "logVersion"    # I
    .param p4, "minJEVersion"    # Lcom/sleepycat/je/JEVersion;

    .line 806
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 807
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;-><init>(Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/JEVersion;I)V

    .line 808
    iput-object p4, p0, Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;->minJEVersion:Lcom/sleepycat/je/JEVersion;

    .line 809
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 822
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 823
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;-><init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/nio/ByteBuffer;)V

    .line 824
    invoke-static {p1}, Lcom/sleepycat/je/rep/stream/Protocol;->access$500(Lcom/sleepycat/je/rep/stream/Protocol;)I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 825
    return-void

    .line 827
    :cond_0
    new-instance v0, Lcom/sleepycat/je/JEVersion;

    invoke-virtual {p1, p2}, Lcom/sleepycat/je/rep/stream/Protocol;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/JEVersion;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;->minJEVersion:Lcom/sleepycat/je/JEVersion;

    .line 828
    return-void
.end method


# virtual methods
.method public bridge synthetic getLogVersion()B
    .locals 1

    .line 799
    invoke-super {p0}, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->getLogVersion()B

    move-result v0

    return v0
.end method

.method public getMinJEVersion()Lcom/sleepycat/je/JEVersion;
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;->minJEVersion:Lcom/sleepycat/je/JEVersion;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 832
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->FEEDER_JE_VERSIONS:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public bridge synthetic getVersion()Lcom/sleepycat/je/JEVersion;
    .locals 1

    .line 799
    invoke-super {p0}, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->getVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v0

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 813
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-static {v0}, Lcom/sleepycat/je/rep/stream/Protocol;->access$400(Lcom/sleepycat/je/rep/stream/Protocol;)I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 814
    invoke-super {p0}, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->wireFormat()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 816
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 817
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;->getVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/JEVersion;->getVersionString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 818
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;->getLogVersion()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;->minJEVersion:Lcom/sleepycat/je/JEVersion;

    .line 819
    invoke-virtual {v2}, Lcom/sleepycat/je/JEVersion;->getVersionString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 816
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/stream/Protocol$FeederJEVersions;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
