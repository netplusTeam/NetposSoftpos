.class public Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryNotFound;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
.source "BaseProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/BaseProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntryNotFound"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 871
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryNotFound;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 872
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 874
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryNotFound;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 875
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 876
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 880
    sget-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->ENTRY_NOTFOUND:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method
