.class public Lorg/jpos/iso/ISOMsgFieldPackager;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "ISOMsgFieldPackager.java"


# instance fields
.field protected fieldPackager:Lorg/jpos/iso/ISOFieldPackager;

.field protected msgPackager:Lorg/jpos/iso/ISOPackager;


# direct methods
.method public constructor <init>(Lorg/jpos/iso/ISOFieldPackager;Lorg/jpos/iso/ISOPackager;)V
    .locals 2
    .param p1, "fieldPackager"    # Lorg/jpos/iso/ISOFieldPackager;
    .param p2, "msgPackager"    # Lorg/jpos/iso/ISOPackager;

    .line 46
    invoke-virtual {p1}, Lorg/jpos/iso/ISOFieldPackager;->getLength()I

    move-result v0

    invoke-virtual {p1}, Lorg/jpos/iso/ISOFieldPackager;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 47
    iput-object p2, p0, Lorg/jpos/iso/ISOMsgFieldPackager;->msgPackager:Lorg/jpos/iso/ISOPackager;

    .line 48
    iput-object p1, p0, Lorg/jpos/iso/ISOMsgFieldPackager;->fieldPackager:Lorg/jpos/iso/ISOFieldPackager;

    .line 49
    return-void
.end method


# virtual methods
.method public createComponent(I)Lorg/jpos/iso/ISOComponent;
    .locals 2
    .param p1, "fieldNumber"    # I

    .line 115
    new-instance v0, Lorg/jpos/iso/ISOMsg;

    invoke-direct {v0, p1}, Lorg/jpos/iso/ISOMsg;-><init>(I)V

    .line 116
    .local v0, "m":Lorg/jpos/iso/ISOMsg;
    iget-object v1, p0, Lorg/jpos/iso/ISOMsgFieldPackager;->msgPackager:Lorg/jpos/iso/ISOPackager;

    invoke-virtual {v0, v1}, Lorg/jpos/iso/ISOMsg;->setPackager(Lorg/jpos/iso/ISOPackager;)V

    .line 117
    return-object v0
.end method

.method public getISOFieldPackager()Lorg/jpos/iso/ISOFieldPackager;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/jpos/iso/ISOMsgFieldPackager;->fieldPackager:Lorg/jpos/iso/ISOFieldPackager;

    return-object v0
.end method

.method public getISOMsgPackager()Lorg/jpos/iso/ISOPackager;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/jpos/iso/ISOMsgFieldPackager;->msgPackager:Lorg/jpos/iso/ISOPackager;

    return-object v0
.end method

.method public getMaxPackedLength()I
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/jpos/iso/ISOMsgFieldPackager;->fieldPackager:Lorg/jpos/iso/ISOFieldPackager;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOFieldPackager;->getLength()I

    move-result v0

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 4
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 57
    instance-of v0, p1, Lorg/jpos/iso/ISOMsg;

    if-eqz v0, :cond_1

    .line 58
    move-object v0, p1

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    .line 59
    .local v0, "m":Lorg/jpos/iso/ISOMsg;
    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->recalcBitMap()V

    .line 60
    new-instance v1, Lorg/jpos/iso/ISOBinaryField;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jpos/iso/ISOMsgFieldPackager;->msgPackager:Lorg/jpos/iso/ISOPackager;

    invoke-interface {v3, v0}, Lorg/jpos/iso/ISOPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jpos/iso/ISOBinaryField;-><init>(I[B)V

    .line 61
    .local v1, "f":Lorg/jpos/iso/ISOBinaryField;
    iget-object v2, p0, Lorg/jpos/iso/ISOMsgFieldPackager;->fieldPackager:Lorg/jpos/iso/ISOFieldPackager;

    instance-of v2, v2, Lorg/jpos/iso/TaggedFieldPackagerBase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/jpos/iso/ISOMsgFieldPackager;->msgPackager:Lorg/jpos/iso/ISOPackager;

    instance-of v3, v2, Lorg/jpos/iso/ISOSubFieldPackager;

    if-eqz v3, :cond_0

    .line 63
    check-cast v2, Lorg/jpos/iso/ISOSubFieldPackager;

    .line 64
    .local v2, "sfp":Lorg/jpos/iso/ISOSubFieldPackager;
    invoke-interface {v2}, Lorg/jpos/iso/ISOSubFieldPackager;->getFieldNumber()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/jpos/iso/ISOBinaryField;->setFieldNumber(I)V

    .line 66
    .end local v2    # "sfp":Lorg/jpos/iso/ISOSubFieldPackager;
    :cond_0
    iget-object v2, p0, Lorg/jpos/iso/ISOMsgFieldPackager;->fieldPackager:Lorg/jpos/iso/ISOFieldPackager;

    invoke-virtual {v2, v1}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v2

    return-object v2

    .line 68
    .end local v0    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v1    # "f":Lorg/jpos/iso/ISOBinaryField;
    :cond_1
    iget-object v0, p0, Lorg/jpos/iso/ISOMsgFieldPackager;->fieldPackager:Lorg/jpos/iso/ISOFieldPackager;

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v0

    return-object v0
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[BI)I
    .locals 4
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 82
    new-instance v0, Lorg/jpos/iso/ISOBinaryField;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOBinaryField;-><init>(I)V

    .line 83
    .local v0, "f":Lorg/jpos/iso/ISOBinaryField;
    iget-object v1, p0, Lorg/jpos/iso/ISOMsgFieldPackager;->msgPackager:Lorg/jpos/iso/ISOPackager;

    instance-of v2, v1, Lorg/jpos/iso/ISOSubFieldPackager;

    if-eqz v2, :cond_0

    .line 84
    check-cast v1, Lorg/jpos/iso/ISOSubFieldPackager;

    .line 85
    .local v1, "sfp":Lorg/jpos/iso/ISOSubFieldPackager;
    invoke-interface {v1}, Lorg/jpos/iso/ISOSubFieldPackager;->getFieldNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/jpos/iso/ISOBinaryField;->setFieldNumber(I)V

    .line 87
    .end local v1    # "sfp":Lorg/jpos/iso/ISOSubFieldPackager;
    :cond_0
    iget-object v1, p0, Lorg/jpos/iso/ISOMsgFieldPackager;->fieldPackager:Lorg/jpos/iso/ISOFieldPackager;

    invoke-virtual {v1, v0, p2, p3}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v1

    .line 88
    .local v1, "consumed":I
    invoke-virtual {v0}, Lorg/jpos/iso/ISOBinaryField;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v2, p1, Lorg/jpos/iso/ISOMsg;

    if-eqz v2, :cond_1

    .line 89
    iget-object v2, p0, Lorg/jpos/iso/ISOMsgFieldPackager;->msgPackager:Lorg/jpos/iso/ISOPackager;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOBinaryField;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    invoke-interface {v2, p1, v3}, Lorg/jpos/iso/ISOPackager;->unpack(Lorg/jpos/iso/ISOComponent;[B)I

    .line 90
    :cond_1
    return v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 103
    new-instance v0, Lorg/jpos/iso/ISOBinaryField;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOBinaryField;-><init>(I)V

    .line 104
    .local v0, "f":Lorg/jpos/iso/ISOBinaryField;
    iget-object v1, p0, Lorg/jpos/iso/ISOMsgFieldPackager;->msgPackager:Lorg/jpos/iso/ISOPackager;

    instance-of v2, v1, Lorg/jpos/iso/ISOSubFieldPackager;

    if-eqz v2, :cond_0

    .line 105
    check-cast v1, Lorg/jpos/iso/ISOSubFieldPackager;

    .line 106
    .local v1, "sfp":Lorg/jpos/iso/ISOSubFieldPackager;
    invoke-interface {v1}, Lorg/jpos/iso/ISOSubFieldPackager;->getFieldNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/jpos/iso/ISOBinaryField;->setFieldNumber(I)V

    .line 108
    .end local v1    # "sfp":Lorg/jpos/iso/ISOSubFieldPackager;
    :cond_0
    iget-object v1, p0, Lorg/jpos/iso/ISOMsgFieldPackager;->fieldPackager:Lorg/jpos/iso/ISOFieldPackager;

    invoke-virtual {v1, v0, p2}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V

    .line 109
    invoke-virtual {v0}, Lorg/jpos/iso/ISOBinaryField;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v1, p1, Lorg/jpos/iso/ISOMsg;

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lorg/jpos/iso/ISOMsgFieldPackager;->msgPackager:Lorg/jpos/iso/ISOPackager;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOBinaryField;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    invoke-interface {v1, p1, v2}, Lorg/jpos/iso/ISOPackager;->unpack(Lorg/jpos/iso/ISOComponent;[B)I

    .line 111
    :cond_1
    return-void
.end method
