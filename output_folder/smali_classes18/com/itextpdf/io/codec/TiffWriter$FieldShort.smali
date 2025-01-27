.class public Lcom/itextpdf/io/codec/TiffWriter$FieldShort;
.super Lcom/itextpdf/io/codec/TiffWriter$FieldBase;
.source "TiffWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/codec/TiffWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldShort"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .line 144
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/io/codec/TiffWriter$FieldBase;-><init>(III)V

    .line 145
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;->data:[B

    .line 146
    iget-object v0, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;->data:[B

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 147
    iget-object v0, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;->data:[B

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 148
    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 7
    .param p1, "tag"    # I
    .param p2, "values"    # [I

    .line 151
    array-length v0, p2

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v0}, Lcom/itextpdf/io/codec/TiffWriter$FieldBase;-><init>(III)V

    .line 152
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;->data:[B

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "ptr":I
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p2, v2

    .line 155
    .local v3, "value":I
    iget-object v4, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;->data:[B

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "ptr":I
    .local v5, "ptr":I
    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    .line 156
    iget-object v0, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldShort;->data:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .local v4, "ptr":I
    int-to-byte v6, v3

    aput-byte v6, v0, v5

    .line 154
    .end local v3    # "value":I
    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_0

    .line 158
    .end local v4    # "ptr":I
    .restart local v0    # "ptr":I
    :cond_0
    return-void
.end method
