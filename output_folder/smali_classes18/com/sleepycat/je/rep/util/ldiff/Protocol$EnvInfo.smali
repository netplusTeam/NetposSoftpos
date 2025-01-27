.class public Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvInfo;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/util/ldiff/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnvInfo"
.end annotation


# instance fields
.field final numDBs:I

.field final synthetic this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    .param p2, "numberOfDbs"    # I

    .line 299
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvInfo;->this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    .line 300
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 301
    iput p2, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvInfo;->numDBs:I

    .line 302
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 304
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvInfo;->this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    .line 305
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 306
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvInfo;->numDBs:I

    .line 307
    return-void
.end method


# virtual methods
.method public getNumberOfDBs()I
    .locals 1

    .line 320
    iget v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvInfo;->numDBs:I

    return v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 316
    sget-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->ENV_INFO:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 3

    .line 311
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvInfo;->numDBs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvInfo;->wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
