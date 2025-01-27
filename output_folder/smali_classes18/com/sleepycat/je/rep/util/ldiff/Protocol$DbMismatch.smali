.class public Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbMismatch;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/util/ldiff/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DbMismatch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    .param p2, "message"    # Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbMismatch;->this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 185
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbMismatch;->this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/nio/ByteBuffer;)V

    .line 187
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 191
    sget-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->DB_MISMATCH:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method
