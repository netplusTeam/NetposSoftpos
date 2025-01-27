.class public Lcom/sleepycat/bind/serial/SerialBase;
.super Ljava/lang/Object;
.source "SerialBase.java"


# instance fields
.field private outputBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/bind/serial/SerialBase;->outputBufferSize:I

    .line 46
    return-void
.end method


# virtual methods
.method public getSerialBufferSize()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/sleepycat/bind/serial/SerialBase;->outputBufferSize:I

    return v0
.end method

.method protected getSerialOutput(Ljava/lang/Object;)Lcom/sleepycat/util/FastOutputStream;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 94
    invoke-virtual {p0}, Lcom/sleepycat/bind/serial/SerialBase;->getSerialBufferSize()I

    move-result v0

    .line 95
    .local v0, "byteSize":I
    if-eqz v0, :cond_0

    .line 96
    new-instance v1, Lcom/sleepycat/util/FastOutputStream;

    invoke-direct {v1, v0}, Lcom/sleepycat/util/FastOutputStream;-><init>(I)V

    return-object v1

    .line 98
    :cond_0
    new-instance v1, Lcom/sleepycat/util/FastOutputStream;

    invoke-direct {v1}, Lcom/sleepycat/util/FastOutputStream;-><init>()V

    return-object v1
.end method

.method public setSerialBufferSize(I)V
    .locals 0
    .param p1, "byteSize"    # I

    .line 59
    iput p1, p0, Lcom/sleepycat/bind/serial/SerialBase;->outputBufferSize:I

    .line 60
    return-void
.end method
