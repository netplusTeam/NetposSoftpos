.class public Lcom/sleepycat/je/rep/utilint/BinaryProtocol$IncompatibleVersion;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;
.source "BinaryProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IncompatibleVersion"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
    .param p2, "message"    # Ljava/lang/String;

    .line 1100
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$IncompatibleVersion;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    .line 1101
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/lang/String;)V

    .line 1102
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1104
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$IncompatibleVersion;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    .line 1105
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/nio/ByteBuffer;)V

    .line 1106
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$IncompatibleVersion;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->INCOMPATIBLE_VERSION:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method
