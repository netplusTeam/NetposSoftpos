.class public Lcom/sleepycat/je/rep/stream/Protocol$DBIdRequest;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DBIdRequest"
.end annotation


# instance fields
.field final dbName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "dbName"    # Ljava/lang/String;

    .line 691
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$DBIdRequest;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 692
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 693
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/Protocol$DBIdRequest;->dbName:Ljava/lang/String;

    .line 694
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 696
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/Protocol$DBIdRequest;->this$0:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 697
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 698
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/rep/stream/Protocol;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$DBIdRequest;->dbName:Ljava/lang/String;

    .line 699
    return-void
.end method


# virtual methods
.method public getDbName()Ljava/lang/String;
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/Protocol$DBIdRequest;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 712
    sget-object v0, Lcom/sleepycat/je/rep/stream/Protocol;->DBID_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 707
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/Protocol$DBIdRequest;->dbName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/stream/Protocol$DBIdRequest;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
