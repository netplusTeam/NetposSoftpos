.class public Lcom/itextpdf/io/codec/TiffWriter$FieldRational;
.super Lcom/itextpdf/io/codec/TiffWriter$FieldBase;
.source "TiffWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/codec/TiffWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldRational"
.end annotation


# direct methods
.method public constructor <init>(I[I)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # [I

    .line 192
    const/4 v0, 0x1

    new-array v0, v0, [[I

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;-><init>(I[[I)V

    .line 193
    return-void
.end method

.method public constructor <init>(I[[I)V
    .locals 9
    .param p1, "tag"    # I
    .param p2, "values"    # [[I

    .line 196
    array-length v0, p2

    const/4 v1, 0x5

    invoke-direct {p0, p1, v1, v0}, Lcom/itextpdf/io/codec/TiffWriter$FieldBase;-><init>(III)V

    .line 197
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;->data:[B

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "ptr":I
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p2, v3

    .line 200
    .local v4, "value":[I
    iget-object v5, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "ptr":I
    .local v6, "ptr":I
    aget v7, v4, v2

    shr-int/lit8 v7, v7, 0x18

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    .line 201
    iget-object v0, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .local v5, "ptr":I
    aget v7, v4, v2

    shr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 202
    iget-object v0, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v6    # "ptr":I
    aget v7, v4, v2

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    .line 203
    iget-object v0, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    aget v7, v4, v2

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 204
    iget-object v0, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v6    # "ptr":I
    const/4 v7, 0x1

    aget v8, v4, v7

    shr-int/lit8 v8, v8, 0x18

    int-to-byte v8, v8

    aput-byte v8, v0, v5

    .line 205
    iget-object v0, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    aget v8, v4, v7

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    .line 206
    iget-object v0, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v6    # "ptr":I
    aget v8, v4, v7

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v0, v5

    .line 207
    iget-object v0, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldRational;->data:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    aget v7, v4, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 199
    .end local v4    # "value":[I
    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_0

    .line 209
    .end local v5    # "ptr":I
    .restart local v0    # "ptr":I
    :cond_0
    return-void
.end method
