.class public Lcom/sleepycat/je/rep/stream/Protocol$DuplicateNodeReject;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DuplicateNodeReject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/Protocol;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 487
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$DuplicateNodeReject;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 488
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 491
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$DuplicateNodeReject;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 492
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/nio/ByteBuffer;)V

    .line 493
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 497
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->DUP_NODE_REJECT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method
