.class public Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoReject;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeGroupInfoReject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/Protocol;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 1031
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoReject;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 1032
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/lang/String;)V

    .line 1033
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1045
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoReject;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 1046
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/nio/ByteBuffer;)V

    .line 1047
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 1037
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->MEMBERSHIP_INFO_REJECT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1042
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoReject;->errorMessage:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/stream/Protocol$NodeGroupInfoReject;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
