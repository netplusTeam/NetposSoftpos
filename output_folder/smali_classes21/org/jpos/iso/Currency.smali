.class public Lorg/jpos/iso/Currency;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field alphacode:Ljava/lang/String;

.field isocode:I

.field numdecimals:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "alphacode"    # Ljava/lang/String;
    .param p2, "isocode"    # I
    .param p3, "numdecimals"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/jpos/iso/Currency;->alphacode:Ljava/lang/String;

    .line 39
    iput p2, p0, Lorg/jpos/iso/Currency;->isocode:I

    .line 40
    iput p3, p0, Lorg/jpos/iso/Currency;->numdecimals:I

    .line 41
    return-void
.end method


# virtual methods
.method public formatAmountForISOMsg(D)Ljava/lang/String;
    .locals 4
    .param p1, "amount"    # D

    .line 62
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/iso/Currency;->getDecimals()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, p1

    .line 63
    .local v0, "m":D
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 65
    .end local v0    # "m":D
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lorg/jpos/iso/ISOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to convert amount"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAlphaCode()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/jpos/iso/Currency;->alphacode:Ljava/lang/String;

    return-object v0
.end method

.method public getDecimals()I
    .locals 1

    .line 45
    iget v0, p0, Lorg/jpos/iso/Currency;->numdecimals:I

    return v0
.end method

.method public getIsoCode()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/jpos/iso/Currency;->isocode:I

    return v0
.end method

.method public parseAmountFromISOMsg(Ljava/lang/String;)D
    .locals 6
    .param p1, "isoamount"    # Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/jpos/iso/Currency;->getDecimals()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currency{alphacode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/iso/Currency;->alphacode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isocode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jpos/iso/Currency;->isocode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numdecimals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jpos/iso/Currency;->numdecimals:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
