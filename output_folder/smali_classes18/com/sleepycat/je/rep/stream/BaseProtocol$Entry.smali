.class public Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
.source "BaseProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/BaseProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field protected final inputWireRecord:Lcom/sleepycat/je/rep/stream/InputWireRecord;

.field protected outputWireRecord:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/rep/stream/OutputWireRecord;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "outputWireRecord"    # Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    .line 342
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->inputWireRecord:Lcom/sleepycat/je/rep/stream/InputWireRecord;

    .line 344
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->outputWireRecord:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    .line 345
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

    .line 367
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 369
    new-instance v0, Lcom/sleepycat/je/rep/stream/InputWireRecord;

    iget-object v1, p1, Lcom/sleepycat/je/rep/stream/BaseProtocol;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-direct {v0, v1, p2, p1}, Lcom/sleepycat/je/rep/stream/InputWireRecord;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/nio/ByteBuffer;Lcom/sleepycat/je/rep/stream/BaseProtocol;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->inputWireRecord:Lcom/sleepycat/je/rep/stream/InputWireRecord;

    .line 371
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 349
    sget-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->ENTRY:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public getWireRecord()Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->inputWireRecord:Lcom/sleepycat/je/rep/stream/InputWireRecord;

    return-object v0
.end method

.method protected getWireSize()I
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->outputWireRecord:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    iget v1, v1, Lcom/sleepycat/je/rep/stream/BaseProtocol;->streamLogVersion:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getWireSize(I)I

    move-result v0

    return v0
.end method

.method public isTxnEnd()Z
    .locals 2

    .line 413
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->getWireRecord()Lcom/sleepycat/je/rep/stream/InputWireRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getEntryType()B

    move-result v0

    .line 414
    .local v0, "entryType":B
    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_COMMIT:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_ABORT:Lcom/sleepycat/je/log/LogEntryType;

    .line 415
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 414
    :goto_1
    return v1
.end method

.method public match(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)Z
    .locals 3
    .param p1, "other"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    .line 404
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->outputWireRecord:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    iget-object v1, v1, Lcom/sleepycat/je/rep/stream/BaseProtocol;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->inputWireRecord:Lcom/sleepycat/je/rep/stream/InputWireRecord;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/stream/InputWireRecord;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->outputWireRecord:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    .line 408
    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->match(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->inputWireRecord:Lcom/sleepycat/je/rep/stream/InputWireRecord;

    const-string v2, " "

    if-eqz v1, :cond_0

    .line 384
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->inputWireRecord:Lcom/sleepycat/je/rep/stream/InputWireRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->outputWireRecord:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    if-eqz v1, :cond_1

    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->outputWireRecord:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 393
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 4

    .line 354
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->getWireSize()I

    move-result v0

    .line 355
    .local v0, "bodySize":I
    nop

    .line 356
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->allocateInitializedBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 357
    .local v1, "messageBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->outputWireRecord:Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    invoke-virtual {v2, v3, v1}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->writeOutputWireRecord(Lcom/sleepycat/je/rep/stream/OutputWireRecord;Ljava/nio/ByteBuffer;)V

    .line 358
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 359
    return-object v1
.end method
