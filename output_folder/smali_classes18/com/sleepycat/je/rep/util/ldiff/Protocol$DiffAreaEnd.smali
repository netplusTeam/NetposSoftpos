.class public Lcom/sleepycat/je/rep/util/ldiff/Protocol$DiffAreaEnd;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/util/ldiff/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DiffAreaEnd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    .line 440
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DiffAreaEnd;->this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    .line 441
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 442
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 445
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DiffAreaEnd;->this$0:Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    .line 446
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 447
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 451
    sget-object v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->DIFF_AREA_END:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method
