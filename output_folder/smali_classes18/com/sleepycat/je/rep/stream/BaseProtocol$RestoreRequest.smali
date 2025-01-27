.class public Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreRequest;
.super Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;
.source "BaseProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/BaseProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestoreRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "failedMatchpoint"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 941
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreRequest;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 942
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;)V

    .line 943
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 945
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreRequest;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 946
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)V

    .line 947
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 951
    sget-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->RESTORE_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 939
    invoke-super {p0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic wireFormat()Ljava/nio/ByteBuffer;
    .locals 1

    .line 939
    invoke-super {p0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;->wireFormat()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
