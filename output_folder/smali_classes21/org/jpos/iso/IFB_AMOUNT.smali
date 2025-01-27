.class public Lorg/jpos/iso/IFB_AMOUNT;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "IFB_AMOUNT.java"


# instance fields
.field private interpreter:Lorg/jpos/iso/BCDInterpreter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 33
    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->LEFT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    iput-object v0, p0, Lorg/jpos/iso/IFB_AMOUNT;->interpreter:Lorg/jpos/iso/BCDInterpreter;

    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "pad"    # Z

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 41
    iput-boolean p3, p0, Lorg/jpos/iso/IFB_AMOUNT;->pad:Z

    .line 42
    if-eqz p3, :cond_0

    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->LEFT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->RIGHT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    :goto_0
    iput-object v0, p0, Lorg/jpos/iso/IFB_AMOUNT;->interpreter:Lorg/jpos/iso/BCDInterpreter;

    .line 43
    return-void
.end method


# virtual methods
.method public getMaxPackedLength()I
    .locals 1

    .line 80
    invoke-virtual {p0}, Lorg/jpos/iso/IFB_AMOUNT;->getLength()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 6
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jpos/iso/IFB_AMOUNT;->getLength()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "amount":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jpos/iso/IFB_AMOUNT;->getLength()I

    move-result v3

    shr-int/2addr v3, v1

    add-int/2addr v3, v1

    new-array v3, v3, [B

    .line 60
    .local v3, "b":[B
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 61
    iget-object v4, p0, Lorg/jpos/iso/IFB_AMOUNT;->interpreter:Lorg/jpos/iso/BCDInterpreter;

    invoke-virtual {v4, v2, v3, v1}, Lorg/jpos/iso/BCDInterpreter;->interpret(Ljava/lang/String;[BI)V

    .line 62
    return-object v3
.end method

.method public setPad(Z)V
    .locals 1
    .param p1, "pad"    # Z

    .line 47
    iput-boolean p1, p0, Lorg/jpos/iso/IFB_AMOUNT;->pad:Z

    .line 48
    if-eqz p1, :cond_0

    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->LEFT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->RIGHT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    :goto_0
    iput-object v0, p0, Lorg/jpos/iso/IFB_AMOUNT;->interpreter:Lorg/jpos/iso/BCDInterpreter;

    .line 49
    return-void
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[BI)I
    .locals 5
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v1, p2, p3, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/iso/IFB_AMOUNT;->interpreter:Lorg/jpos/iso/BCDInterpreter;

    add-int/lit8 v3, p3, 0x1

    .line 75
    invoke-virtual {p0}, Lorg/jpos/iso/IFB_AMOUNT;->getLength()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v1, p2, v3, v4}, Lorg/jpos/iso/BCDInterpreter;->uninterpret([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "d":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0}, Lorg/jpos/iso/IFB_AMOUNT;->getLength()I

    move-result v1

    shr-int/2addr v1, v2

    add-int/2addr v1, v2

    return v1
.end method
