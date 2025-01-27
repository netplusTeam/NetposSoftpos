.class public Lcom/solab/iso8583/codecs/LongBcdCodec;
.super Ljava/lang/Object;
.source "LongBcdCodec.java"

# interfaces
.implements Lcom/solab/iso8583/CustomBinaryField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/solab/iso8583/CustomBinaryField<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final rightPadded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/solab/iso8583/codecs/LongBcdCodec;-><init>(Z)V

    .line 37
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "rightPadding"    # Z

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean p1, p0, Lcom/solab/iso8583/codecs/LongBcdCodec;->rightPadded:Z

    .line 40
    return-void
.end method


# virtual methods
.method public decodeBinaryField([BII)Ljava/lang/Long;
    .locals 2
    .param p1, "value"    # [B
    .param p2, "pos"    # I
    .param p3, "length"    # I

    .line 44
    iget-boolean v0, p0, Lcom/solab/iso8583/codecs/LongBcdCodec;->rightPadded:Z

    if-eqz v0, :cond_0

    mul-int/lit8 v0, p3, 0x2

    invoke-static {p1, p2, v0}, Lcom/solab/iso8583/util/Bcd;->decodeRightPaddedToLong([BII)J

    move-result-wide v0

    goto :goto_0

    .line 45
    :cond_0
    mul-int/lit8 v0, p3, 0x2

    invoke-static {p1, p2, v0}, Lcom/solab/iso8583/util/Bcd;->decodeToLong([BII)J

    move-result-wide v0

    .line 44
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic decodeBinaryField([BII)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/solab/iso8583/codecs/LongBcdCodec;->decodeBinaryField([BII)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public decodeField(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 62
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic decodeField(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/solab/iso8583/codecs/LongBcdCodec;->decodeField(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public encodeBinaryField(Ljava/lang/Long;)[B
    .locals 3
    .param p1, "value"    # Ljava/lang/Long;

    .line 50
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 52
    .local v1, "buf":[B
    iget-boolean v2, p0, Lcom/solab/iso8583/codecs/LongBcdCodec;->rightPadded:Z

    if-eqz v2, :cond_0

    .line 53
    invoke-static {v0, v1}, Lcom/solab/iso8583/util/Bcd;->encodeRightPadded(Ljava/lang/String;[B)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {v0, v1}, Lcom/solab/iso8583/util/Bcd;->encode(Ljava/lang/String;[B)V

    .line 57
    :goto_0
    return-object v1
.end method

.method public bridge synthetic encodeBinaryField(Ljava/lang/Object;)[B
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/solab/iso8583/codecs/LongBcdCodec;->encodeBinaryField(Ljava/lang/Long;)[B

    move-result-object p1

    return-object p1
.end method

.method public encodeField(Ljava/lang/Long;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Long;

    .line 67
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic encodeField(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/solab/iso8583/codecs/LongBcdCodec;->encodeField(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
