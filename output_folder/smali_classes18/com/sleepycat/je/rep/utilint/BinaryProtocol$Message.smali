.class public abstract Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
.super Ljava/lang/Object;
.source "BinaryProtocol.java"

# interfaces
.implements Lcom/sleepycat/je/rep/utilint/BinaryProtocol$WireFormatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Message"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    .line 719
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allocateInitializedBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "size"    # I

    .line 757
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    add-int/lit8 v1, p1, 0x6

    .line 758
    invoke-static {v0, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->access$100(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 759
    .local v0, "messageBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;->getOpId()S

    move-result v1

    invoke-static {v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writeShort(Ljava/nio/ByteBuffer;S)V

    .line 760
    invoke-static {v0, p1}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 761
    return-object v0
.end method

.method public abstract getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
.end method

.method public match(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)Z
    .locals 2
    .param p1, "other"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    .line 745
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->wireFormat()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 746
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->wireFormat()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 745
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 736
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 1

    .line 729
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->allocateInitializedBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 730
    .local v0, "messageBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 731
    return-object v0
.end method
