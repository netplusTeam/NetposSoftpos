.class public Lcom/itextpdf/io/codec/Base64$InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/codec/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStream"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private alphabet:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private numSigBytes:I

.field private options:I

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1285
    const-class v0, Lcom/itextpdf/io/codec/Base64;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .line 1305
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/codec/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1306
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "options"    # I

    .line 1330
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1331
    and-int/lit8 v0, p2, 0x8

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->breakLines:Z

    .line 1332
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->encode:Z

    .line 1333
    if-eqz v3, :cond_2

    const/4 v0, 0x4

    goto :goto_2

    :cond_2
    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->bufferLength:I

    .line 1334
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->buffer:[B

    .line 1335
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->position:I

    .line 1336
    iput v2, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->lineLength:I

    .line 1337
    iput p2, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->options:I

    .line 1338
    invoke-static {p2}, Lcom/itextpdf/io/codec/Base64;->access$000(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->alphabet:[B

    .line 1339
    invoke-static {p2}, Lcom/itextpdf/io/codec/Base64;->access$100(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->decodabet:[B

    .line 1340
    return-void
.end method


# virtual methods
.method public read()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1351
    iget v0, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->position:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-gez v0, :cond_b

    .line 1352
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->encode:Z

    const/4 v3, 0x4

    if-eqz v0, :cond_4

    .line 1353
    const/4 v0, 0x3

    new-array v10, v0, [B

    .line 1354
    .local v10, "b3":[B
    const/4 v4, 0x0

    .line 1355
    .local v4, "numBinaryBytes":I
    const/4 v5, 0x0

    move v11, v4

    .end local v4    # "numBinaryBytes":I
    .local v5, "i":I
    .local v11, "numBinaryBytes":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 1357
    :try_start_0
    iget-object v4, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 1360
    .local v4, "b":I
    if-ltz v4, :cond_0

    .line 1361
    int-to-byte v6, v4

    aput-byte v6, v10, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1362
    add-int/lit8 v11, v11, 0x1

    .line 1371
    .end local v4    # "b":I
    :cond_0
    goto :goto_1

    .line 1366
    :catch_0
    move-exception v4

    .line 1368
    .local v4, "e":Ljava/io/IOException;
    if-eqz v5, :cond_1

    .line 1355
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1369
    .restart local v4    # "e":Ljava/io/IOException;
    :cond_1
    throw v4

    .line 1374
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "i":I
    :cond_2
    if-lez v11, :cond_3

    .line 1375
    const/4 v5, 0x0

    iget-object v7, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->buffer:[B

    const/4 v8, 0x0

    iget v9, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->options:I

    move-object v4, v10

    move v6, v11

    invoke-static/range {v4 .. v9}, Lcom/itextpdf/io/codec/Base64;->access$200([BII[BII)[B

    .line 1376
    iput v2, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->position:I

    .line 1377
    iput v3, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->numSigBytes:I

    .line 1382
    .end local v10    # "b3":[B
    .end local v11    # "numBinaryBytes":I
    goto :goto_4

    .line 1380
    .restart local v10    # "b3":[B
    .restart local v11    # "numBinaryBytes":I
    :cond_3
    return v1

    .line 1386
    .end local v10    # "b3":[B
    .end local v11    # "numBinaryBytes":I
    :cond_4
    new-array v0, v3, [B

    .line 1387
    .local v0, "b4":[B
    const/4 v4, 0x0

    .line 1388
    .local v4, "i":I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_8

    .line 1390
    const/4 v5, 0x0

    .line 1392
    .local v5, "b":I
    :cond_5
    iget-object v6, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 1394
    if-ltz v5, :cond_6

    iget-object v6, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->decodabet:[B

    and-int/lit8 v7, v5, 0x7f

    aget-byte v6, v6, v7

    const/4 v7, -0x5

    if-le v6, v7, :cond_5

    .line 1396
    :cond_6
    if-gez v5, :cond_7

    .line 1397
    goto :goto_3

    .line 1399
    :cond_7
    int-to-byte v6, v5

    aput-byte v6, v0, v4

    .line 1388
    .end local v5    # "b":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1402
    :cond_8
    :goto_3
    if-ne v4, v3, :cond_9

    .line 1403
    iget-object v3, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->buffer:[B

    iget v5, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->options:I

    invoke-static {v0, v2, v3, v2, v5}, Lcom/itextpdf/io/codec/Base64;->access$300([BI[BII)I

    move-result v3

    iput v3, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->numSigBytes:I

    .line 1404
    iput v2, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->position:I

    goto :goto_4

    .line 1406
    :cond_9
    if-nez v4, :cond_a

    .line 1407
    return v1

    .line 1411
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "improperly.padded.base64.input"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1417
    .end local v0    # "b4":[B
    .end local v4    # "i":I
    :cond_b
    :goto_4
    iget v0, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->position:I

    if-ltz v0, :cond_f

    .line 1419
    iget v3, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->numSigBytes:I

    if-lt v0, v3, :cond_c

    .line 1420
    return v1

    .line 1422
    :cond_c
    iget-boolean v3, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->encode:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->breakLines:Z

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->lineLength:I

    const/16 v4, 0x4c

    if-lt v3, v4, :cond_d

    .line 1423
    iput v2, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->lineLength:I

    .line 1424
    const/16 v0, 0xa

    return v0

    .line 1427
    :cond_d
    iget v2, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->lineLength:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->lineLength:I

    .line 1431
    iget-object v2, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->position:I

    aget-byte v0, v2, v0

    .line 1433
    .local v0, "b":I
    iget v2, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->bufferLength:I

    if-lt v3, v2, :cond_e

    .line 1434
    iput v1, p0, Lcom/itextpdf/io/codec/Base64$InputStream;->position:I

    .line 1436
    :cond_e
    and-int/lit16 v1, v0, 0xff

    return v1

    .line 1417
    .end local v0    # "b":I
    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "dest"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1457
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 1458
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/Base64$InputStream;->read()I

    move-result v1

    .line 1463
    .local v1, "b":I
    if-ltz v1, :cond_0

    .line 1464
    add-int v2, p2, v0

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    .line 1457
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1465
    :cond_0
    if-nez v0, :cond_1

    .line 1466
    const/4 v2, -0x1

    return v2

    .line 1470
    .end local v1    # "b":I
    :cond_1
    return v0
.end method
