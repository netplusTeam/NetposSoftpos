.class public Lcom/sleepycat/je/rep/stream/Protocol$ReplicaJEVersions;
.super Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReplicaJEVersions"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/Protocol;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/JEVersion;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "version"    # Lcom/sleepycat/je/JEVersion;
    .param p3, "logVersion"    # I

    .line 784
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$ReplicaJEVersions;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 785
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;-><init>(Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/JEVersion;I)V

    .line 786
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 788
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$ReplicaJEVersions;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 789
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;-><init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/nio/ByteBuffer;)V

    .line 790
    return-void
.end method


# virtual methods
.method public bridge synthetic getLogVersion()B
    .locals 1

    .line 782
    invoke-super {p0}, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->getLogVersion()B

    move-result v0

    return v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 794
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->REPLICA_JE_VERSIONS:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public bridge synthetic getVersion()Lcom/sleepycat/je/JEVersion;
    .locals 1

    .line 782
    invoke-super {p0}, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->getVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic wireFormat()Ljava/nio/ByteBuffer;
    .locals 1

    .line 782
    invoke-super {p0}, Lcom/sleepycat/je/rep/stream/Protocol$JEVersions;->wireFormat()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
