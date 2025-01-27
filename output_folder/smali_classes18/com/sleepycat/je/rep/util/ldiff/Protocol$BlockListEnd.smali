.class public Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockListEnd;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/util/ldiff/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlockListEnd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    .line 220
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockListEnd;->this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    .line 221
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 225
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockListEnd;->this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    .line 226
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 227
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 231
    sget-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->BLOCK_LIST_END:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method
