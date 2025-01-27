.class public abstract Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
.source "BaseProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/BaseProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "VLSNMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

.field protected final vlsn:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 1162
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 1163
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 1164
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 1165
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1167
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 1168
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 1169
    .local v0, "vlsnSequence":J
    new-instance v2, Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v2, v0, v1}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 1170
    return-void
.end method


# virtual methods
.method getVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 4

    .line 1174
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;->wireFormatSize()I

    move-result v0

    .line 1175
    .local v0, "bodySize":I
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;->allocateInitializedBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1176
    .local v1, "messageBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/log/LogUtils;->writeLong(Ljava/nio/ByteBuffer;J)V

    .line 1177
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1178
    return-object v1
.end method

.method wireFormatSize()I
    .locals 1

    .line 1182
    const/16 v0, 0x8

    return v0
.end method
