.class public Lcom/sleepycat/je/rep/stream/Protocol$ReAuthenticate;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReAuthenticate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/Protocol;

.field private final tokenBytes:[B


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 631
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$ReAuthenticate;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 632
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/stream/Protocol$ReAuthenticate;->getByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$ReAuthenticate;->tokenBytes:[B

    .line 633
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "tokenBytes"    # [B

    .line 622
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$ReAuthenticate;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 623
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/Protocol$ReAuthenticate;->tokenBytes:[B

    .line 624
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 645
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->REAUTHENTICATE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public getTokenBytes()[B
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$ReAuthenticate;->tokenBytes:[B

    array-length v1, v0

    if-nez v1, :cond_0

    .line 637
    const/4 v0, 0x0

    return-object v0

    .line 640
    :cond_0
    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 628
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/Protocol$ReAuthenticate;->tokenBytes:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/stream/Protocol$ReAuthenticate;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
