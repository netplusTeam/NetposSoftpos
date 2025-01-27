.class final Lcom/itextpdf/io/image/Jpeg2000ImageHelper;
.super Ljava/lang/Object;
.source "Jpeg2000ImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/image/Jpeg2000ImageHelper$ZeroBoxSizeException;,
        Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;
    }
.end annotation


# static fields
.field private static final JP2_BPCC:I = 0x62706363

.field private static final JP2_COLR:I = 0x636f6c72

.field private static final JP2_DBTL:I = 0x6474626c

.field private static final JP2_FTYP:I = 0x66747970

.field private static final JP2_IHDR:I = 0x69686472

.field private static final JP2_JP:I = 0x6a502020

.field private static final JP2_JP2:I = 0x6a703220

.field private static final JP2_JP2C:I = 0x6a703263

.field private static final JP2_JP2H:I = 0x6a703268

.field private static final JP2_URL:I = 0x75726c20

.field private static final JPIP_JPIP:I = 0x6a706970

.field private static final JPX_JPXB:I = 0x6a707862


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cio_read(ILjava/io/InputStream;)I
    .locals 4
    .param p0, "n"    # I
    .param p1, "jpeg2000Stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "v":I
    add-int/lit8 v1, p0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 215
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v3, v1, 0x3

    shl-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 214
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 217
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private static jp2_read_boxhdr(Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;Ljava/io/InputStream;)V
    .locals 3
    .param p0, "box"    # Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;
    .param p1, "jpeg2000Stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    const/4 v0, 0x4

    invoke-static {v0, p1}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    .line 199
    invoke-static {v0, p1}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    .line 200
    iget v1, p0, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 201
    invoke-static {v0, p1}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v1

    if-nez v1, :cond_1

    .line 204
    invoke-static {v0, p1}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    .line 205
    iget v0, p0, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "Unsupported box size == 0."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "Cannot handle box sizes higher than 2^32."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_2
    iget v0, p0, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    if-eqz v0, :cond_3

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_3
    new-instance v0, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$ZeroBoxSizeException;

    const-string v1, "Unsupported box size == 0"

    invoke-direct {v0, v1}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$ZeroBoxSizeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static jp2_read_colr(Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;Ljava/io/InputStream;)Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;
    .locals 5
    .param p0, "box"    # Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;
    .param p1, "jpeg2000Stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    const/16 v0, 0x8

    .line 177
    .local v0, "readBytes":I
    new-instance v1, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;

    invoke-direct {v1}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;-><init>()V

    .line 178
    .local v1, "colorSpecBox":Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    .line 179
    invoke-static {v4, p1}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v0, v0, 0x1

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->getMeth()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v4, :cond_1

    .line 183
    const/4 v2, 0x4

    invoke-static {v2, p1}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 186
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->add(Ljava/lang/Object;)Z

    .line 189
    :goto_1
    iget v2, p0, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    sub-int/2addr v2, v0

    if-lez v2, :cond_2

    .line 190
    iget v2, p0, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    sub-int/2addr v2, v0

    new-array v2, v2, [B

    .line 191
    .local v2, "colorProfile":[B
    iget v4, p0, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    sub-int/2addr v4, v0

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    .line 192
    invoke-virtual {v1, v2}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->setColorProfile([B)V

    .line 194
    .end local v2    # "colorProfile":[B
    :cond_2
    return-object v1
.end method

.method public static processImage(Lcom/itextpdf/io/image/ImageData;)V
    .locals 2
    .param p0, "image"    # Lcom/itextpdf/io/image/ImageData;

    .line 82
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->JPEG2000:Lcom/itextpdf/io/image/ImageType;

    if-ne v0, v1, :cond_0

    .line 84
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/io/image/Jpeg2000ImageData;

    invoke-static {v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->processParameters(Lcom/itextpdf/io/image/Jpeg2000ImageData;)V

    .line 85
    const-string v0, "JPXDecode"

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/image/ImageData;->setFilter(Ljava/lang/String;)V

    .line 86
    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JPEG2000 image expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static processParameters(Lcom/itextpdf/io/image/Jpeg2000ImageData;)V
    .locals 10
    .param p0, "jp2"    # Lcom/itextpdf/io/image/Jpeg2000ImageData;

    .line 92
    new-instance v0, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    invoke-direct {v0}, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData;->parameters:Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->getData()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->loadData()V

    .line 97
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 98
    .local v0, "jpeg2000Stream":Ljava/io/InputStream;
    new-instance v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;-><init>(Lcom/itextpdf/io/image/Jpeg2000ImageHelper$1;)V

    .line 99
    .local v1, "box":Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;
    const/4 v2, 0x4

    invoke-static {v2, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v3

    iput v3, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    .line 100
    iget v3, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    const/16 v4, 0xc

    const/4 v5, 0x2

    const/16 v6, 0x8

    if-ne v3, v4, :cond_d

    .line 101
    iget-object v3, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData;->parameters:Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->isJp2:Z

    .line 102
    invoke-static {v2, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v3

    iput v3, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    .line 103
    const v3, 0x6a502020

    iget v7, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    if-ne v3, v7, :cond_c

    .line 106
    const v3, 0xd0a870a

    invoke-static {v2, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v7

    if-ne v3, v7, :cond_b

    .line 110
    invoke-static {v1, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->jp2_read_boxhdr(Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;Ljava/io/InputStream;)V

    .line 111
    const v3, 0x66747970

    iget v7, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    if-ne v3, v7, :cond_a

    .line 114
    const-wide/16 v7, 0x8

    invoke-static {v0, v7, v8}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    .line 115
    const/4 v3, 0x4

    .local v3, "i":I
    :goto_0
    iget v7, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    div-int/2addr v7, v2

    if-ge v3, v7, :cond_2

    .line 116
    invoke-static {v2, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v7

    const v8, 0x6a707862

    if-ne v7, v8, :cond_1

    .line 117
    iget-object v7, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData;->parameters:Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    iput-boolean v4, v7, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->isJpxBaseline:Z

    .line 115
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    .end local v3    # "i":I
    :cond_2
    invoke-static {v1, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->jp2_read_boxhdr(Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;Ljava/io/InputStream;)V

    .line 123
    :cond_3
    iget v3, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    const v7, 0x6a703268

    if-eq v7, v3, :cond_5

    .line 124
    iget v3, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    const v8, 0x6a703263

    if-eq v3, v8, :cond_4

    .line 127
    iget v3, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    sub-int/2addr v3, v6

    int-to-long v8, v3

    invoke-static {v0, v8, v9}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    .line 128
    invoke-static {v1, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->jp2_read_boxhdr(Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;Ljava/io/InputStream;)V

    goto :goto_1

    .line 125
    :cond_4
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "Expected JP2H marker."

    invoke-direct {v2, v3}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "jp2":Lcom/itextpdf/io/image/Jpeg2000ImageData;
    throw v2

    .line 130
    .restart local p0    # "jp2":Lcom/itextpdf/io/image/Jpeg2000ImageData;
    :cond_5
    :goto_1
    iget v3, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    if-ne v7, v3, :cond_3

    .line 131
    invoke-static {v1, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->jp2_read_boxhdr(Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;Ljava/io/InputStream;)V

    .line 132
    const v3, 0x69686472

    iget v7, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    if-ne v3, v7, :cond_9

    .line 135
    invoke-static {v2, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->setHeight(F)V

    .line 136
    invoke-static {v2, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->setWidth(F)V

    .line 137
    iget-object v2, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData;->parameters:Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    invoke-static {v5, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v3

    iput v3, v2, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->numOfComps:I

    .line 138
    invoke-static {v4, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->setBpc(I)V

    .line 139
    const-wide/16 v2, 0x3

    invoke-static {v0, v2, v3}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    .line 140
    invoke-static {v1, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->jp2_read_boxhdr(Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;Ljava/io/InputStream;)V

    .line 141
    iget v2, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    const v3, 0x62706363

    if-ne v2, v3, :cond_6

    .line 142
    iget-object v2, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData;->parameters:Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    iget v3, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    sub-int/2addr v3, v6

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->bpcBoxData:[B

    .line 143
    iget-object v2, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData;->parameters:Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    iget-object v2, v2, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->bpcBoxData:[B

    const/4 v3, 0x0

    iget v4, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    sub-int/2addr v4, v6

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    goto/16 :goto_3

    .line 144
    :cond_6
    iget v2, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    const v3, 0x636f6c72

    if-ne v2, v3, :cond_e

    .line 146
    :cond_7
    iget-object v2, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData;->parameters:Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    iget-object v2, v2, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->colorSpecBoxes:Ljava/util/List;

    if-nez v2, :cond_8

    .line 147
    iget-object v2, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData;->parameters:Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->colorSpecBoxes:Ljava/util/List;

    .line 148
    :cond_8
    iget-object v2, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData;->parameters:Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;

    iget-object v2, v2, Lcom/itextpdf/io/image/Jpeg2000ImageData$Parameters;->colorSpecBoxes:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->jp2_read_colr(Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;Ljava/io/InputStream;)Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    :try_start_1
    invoke-static {v1, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->jp2_read_boxhdr(Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;Ljava/io/InputStream;)V
    :try_end_1
    .catch Lcom/itextpdf/io/image/Jpeg2000ImageHelper$ZeroBoxSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    goto :goto_2

    .line 151
    :catch_0
    move-exception v2

    .line 154
    :goto_2
    :try_start_2
    iget v2, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->type:I

    if-eq v3, v2, :cond_7

    goto :goto_3

    .line 133
    :cond_9
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "Expected IHDR marker."

    invoke-direct {v2, v3}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "jp2":Lcom/itextpdf/io/image/Jpeg2000ImageData;
    throw v2

    .line 112
    .restart local p0    # "jp2":Lcom/itextpdf/io/image/Jpeg2000ImageData;
    :cond_a
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "Expected FTYP marker."

    invoke-direct {v2, v3}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "jp2":Lcom/itextpdf/io/image/Jpeg2000ImageData;
    throw v2

    .line 107
    .restart local p0    # "jp2":Lcom/itextpdf/io/image/Jpeg2000ImageData;
    :cond_b
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "Error with JP marker."

    invoke-direct {v2, v3}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "jp2":Lcom/itextpdf/io/image/Jpeg2000ImageData;
    throw v2

    .line 104
    .restart local p0    # "jp2":Lcom/itextpdf/io/image/Jpeg2000ImageData;
    :cond_c
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "Expected JP marker."

    invoke-direct {v2, v3}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "jp2":Lcom/itextpdf/io/image/Jpeg2000ImageData;
    throw v2

    .line 156
    .restart local p0    # "jp2":Lcom/itextpdf/io/image/Jpeg2000ImageData;
    :cond_d
    iget v3, v1, Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;->length:I

    const v4, -0xb000af

    if-ne v3, v4, :cond_f

    .line 157
    const-wide/16 v3, 0x4

    invoke-static {v0, v3, v4}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    .line 158
    invoke-static {v2, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v3

    .line 159
    .local v3, "x1":I
    invoke-static {v2, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v4

    .line 160
    .local v4, "y1":I
    invoke-static {v2, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v7

    .line 161
    .local v7, "x0":I
    invoke-static {v2, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v2

    .line 162
    .local v2, "y0":I
    const-wide/16 v8, 0x10

    invoke-static {v0, v8, v9}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    .line 163
    invoke-static {v5, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageHelper;->cio_read(ILjava/io/InputStream;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->setColorSpace(I)V

    .line 164
    invoke-virtual {p0, v6}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->setBpc(I)V

    .line 165
    sub-int v5, v4, v2

    int-to-float v5, v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->setHeight(F)V

    .line 166
    sub-int v5, v3, v7

    int-to-float v5, v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/io/image/Jpeg2000ImageData;->setWidth(F)V

    .line 167
    .end local v2    # "y0":I
    .end local v3    # "x1":I
    .end local v4    # "y1":I
    .end local v7    # "x0":I
    nop

    .line 172
    .end local v0    # "jpeg2000Stream":Ljava/io/InputStream;
    .end local v1    # "box":Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;
    :cond_e
    :goto_3
    nop

    .line 173
    return-void

    .line 168
    .restart local v0    # "jpeg2000Stream":Ljava/io/InputStream;
    .restart local v1    # "box":Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;
    :cond_f
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "Invalid JPEG2000 file."

    invoke-direct {v2, v3}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "jp2":Lcom/itextpdf/io/image/Jpeg2000ImageData;
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 170
    .end local v0    # "jpeg2000Stream":Ljava/io/InputStream;
    .end local v1    # "box":Lcom/itextpdf/io/image/Jpeg2000ImageHelper$Jpeg2000Box;
    .restart local p0    # "jp2":Lcom/itextpdf/io/image/Jpeg2000ImageData;
    :catch_1
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "JPEG2000 image exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
