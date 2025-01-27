.class public Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolError;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;
.source "BinaryProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProtocolError"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 1011
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolError;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    .line 1012
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/lang/String;)V

    .line 1013
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1015
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolError;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    .line 1016
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/nio/ByteBuffer;)V

    .line 1017
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolError;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->PROTOCOL_ERROR:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method
