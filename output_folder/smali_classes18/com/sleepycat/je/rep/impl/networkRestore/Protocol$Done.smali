.class public Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$Done;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Done"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    .line 411
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$Done;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    .line 412
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 413
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 416
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$Done;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    .line 417
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 418
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$Done;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->DONE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method
