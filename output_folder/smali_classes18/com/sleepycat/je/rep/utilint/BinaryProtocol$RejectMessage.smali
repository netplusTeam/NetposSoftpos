.class public abstract Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "BinaryProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "RejectMessage"
.end annotation


# instance fields
.field protected errorMessage:Ljava/lang/String;

.field final synthetic this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;


# direct methods
.method protected constructor <init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 975
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    .line 976
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 982
    if-nez p2, :cond_0

    .line 983
    const-string v0, " "

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;->errorMessage:Ljava/lang/String;

    goto :goto_0

    .line 985
    :cond_0
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;->errorMessage:Ljava/lang/String;

    .line 987
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 995
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 996
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;->errorMessage:Ljava/lang/String;

    .line 997
    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1005
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 991
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;->errorMessage:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$RejectMessage;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
