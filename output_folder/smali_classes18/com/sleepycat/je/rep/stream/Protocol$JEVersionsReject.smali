.class public Lcom/sleepycat/je/rep/stream/Protocol$JEVersionsReject;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JEVersionsReject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 847
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$JEVersionsReject;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 848
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/lang/String;)V

    .line 849
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 851
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$JEVersionsReject;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 852
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/nio/ByteBuffer;)V

    .line 853
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 857
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->JE_VERSIONS_REJECT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method
