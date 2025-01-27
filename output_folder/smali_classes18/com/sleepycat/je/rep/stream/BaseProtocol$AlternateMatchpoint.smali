.class public Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
.source "BaseProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/BaseProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlternateMatchpoint"
.end annotation


# instance fields
.field private final alternateInput:Lcom/sleepycat/je/rep/stream/InputWireRecord;

.field private alternateOutput:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/rep/stream/OutputWireRecord;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "alternate"    # Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    .line 889
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 887
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;->alternateOutput:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    .line 890
    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;->alternateInput:Lcom/sleepycat/je/rep/stream/InputWireRecord;

    .line 891
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;->alternateOutput:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    .line 892
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 910
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 887
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;->alternateOutput:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    .line 911
    new-instance v0, Lcom/sleepycat/je/rep/stream/InputWireRecord;

    iget-object v1, p1, Lcom/sleepycat/je/rep/stream/BaseProtocol;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-direct {v0, v1, p2, p1}, Lcom/sleepycat/je/rep/stream/InputWireRecord;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/nio/ByteBuffer;Lcom/sleepycat/je/rep/stream/BaseProtocol;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;->alternateInput:Lcom/sleepycat/je/rep/stream/InputWireRecord;

    .line 913
    return-void
.end method


# virtual methods
.method public getAlternateWireRecord()Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;->alternateInput:Lcom/sleepycat/je/rep/stream/InputWireRecord;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 896
    sget-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->ALT_MATCHPOINT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public match(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)Z
    .locals 3
    .param p1, "other"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    .line 927
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;->alternateOutput:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    if-nez v0, :cond_0

    .line 928
    new-instance v0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    iget-object v1, v1, Lcom/sleepycat/je/rep/stream/BaseProtocol;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;->alternateInput:Lcom/sleepycat/je/rep/stream/InputWireRecord;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/stream/InputWireRecord;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;->alternateOutput:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    .line 931
    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->match(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)Z

    move-result v0

    return v0
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 4

    .line 901
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;->alternateOutput:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    iget v1, v1, Lcom/sleepycat/je/rep/stream/BaseProtocol;->streamLogVersion:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getWireSize(I)I

    move-result v0

    .line 902
    .local v0, "bodySize":I
    nop

    .line 903
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;->allocateInitializedBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 904
    .local v1, "messageBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;->alternateOutput:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    invoke-virtual {v2, v3, v1}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->writeOutputWireRecord(Lcom/sleepycat/je/rep/stream/OutputWireRecord;Ljava/nio/ByteBuffer;)V

    .line 905
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 906
    return-object v1
.end method
