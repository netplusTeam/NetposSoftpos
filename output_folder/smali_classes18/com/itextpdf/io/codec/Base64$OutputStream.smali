.class public Lcom/itextpdf/io/codec/Base64$OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/codec/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStream"
.end annotation


# instance fields
.field private alphabet:[B

.field private b4:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private options:I

.field private position:I

.field private suspendEncoding:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 1511
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/codec/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 1512
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "options"    # I

    .line 1536
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1537
    and-int/lit8 v0, p2, 0x8

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->breakLines:Z

    .line 1538
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->encode:Z

    .line 1539
    const/4 v0, 0x4

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput v1, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->bufferLength:I

    .line 1540
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->buffer:[B

    .line 1541
    iput v3, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->position:I

    .line 1542
    iput v3, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->lineLength:I

    .line 1543
    iput-boolean v3, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->suspendEncoding:Z

    .line 1544
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->b4:[B

    .line 1545
    iput p2, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->options:I

    .line 1546
    invoke-static {p2}, Lcom/itextpdf/io/codec/Base64;->access$000(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->alphabet:[B

    .line 1547
    invoke-static {p2}, Lcom/itextpdf/io/codec/Base64;->access$100(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->decodabet:[B

    .line 1548
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1656
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/Base64$OutputStream;->flushBase64()V

    .line 1660
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 1662
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->buffer:[B

    .line 1663
    iput-object v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->out:Ljava/io/OutputStream;

    .line 1664
    return-void
.end method

.method public flushBase64()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1636
    iget v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->position:I

    if-lez v0, :cond_1

    .line 1637
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->encode:Z

    if-eqz v0, :cond_0

    .line 1638
    iget-object v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->b4:[B

    iget-object v2, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->buffer:[B

    iget v3, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->position:I

    iget v4, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->options:I

    invoke-static {v1, v2, v3, v4}, Lcom/itextpdf/io/codec/Base64;->access$400([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1639
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->position:I

    goto :goto_0

    .line 1642
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "base64.input.not.properly.padded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1646
    :cond_1
    :goto_0
    return-void
.end method

.method public resumeEncoding()V
    .locals 1

    .line 1690
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->suspendEncoding:Z

    .line 1691
    return-void
.end method

.method public suspendEncoding()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1677
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/Base64$OutputStream;->flushBase64()V

    .line 1678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->suspendEncoding:Z

    .line 1679
    return-void
.end method

.method public write(I)V
    .locals 6
    .param p1, "theByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1565
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->suspendEncoding:Z

    if-eqz v0, :cond_0

    .line 1566
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1567
    return-void

    .line 1571
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->encode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1572
    iget-object v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->position:I

    int-to-byte v4, p1

    aput-byte v4, v0, v2

    .line 1573
    iget v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->bufferLength:I

    if-lt v3, v0, :cond_4

    .line 1575
    iget-object v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->b4:[B

    iget-object v3, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->buffer:[B

    iget v4, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->bufferLength:I

    iget v5, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->options:I

    invoke-static {v2, v3, v4, v5}, Lcom/itextpdf/io/codec/Base64;->access$400([B[BII)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1577
    iget v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->lineLength:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->lineLength:I

    .line 1578
    iget-boolean v2, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->breakLines:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x4c

    if-lt v0, v2, :cond_1

    .line 1579
    iget-object v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1580
    iput v1, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->lineLength:I

    .line 1583
    :cond_1
    iput v1, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->position:I

    goto :goto_0

    .line 1590
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v2, v0, v2

    const/4 v3, -0x5

    if-le v2, v3, :cond_3

    .line 1591
    iget-object v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->position:I

    int-to-byte v4, p1

    aput-byte v4, v0, v2

    .line 1592
    iget v2, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->bufferLength:I

    if-lt v3, v2, :cond_4

    .line 1594
    iget-object v2, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->b4:[B

    iget v3, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->options:I

    invoke-static {v0, v1, v2, v1, v3}, Lcom/itextpdf/io/codec/Base64;->access$300([BI[BII)I

    move-result v0

    .line 1595
    .local v0, "len":I
    iget-object v2, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->b4:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1597
    iput v1, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->position:I

    .line 1598
    .end local v0    # "len":I
    goto :goto_0

    .line 1600
    :cond_3
    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_5

    .line 1604
    :cond_4
    :goto_0
    return-void

    .line 1601
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid.character.in.base64.data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .locals 2
    .param p1, "theBytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1618
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/Base64$OutputStream;->suspendEncoding:Z

    if-eqz v0, :cond_0

    .line 1619
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1620
    return-void

    .line 1623
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 1624
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/codec/Base64$OutputStream;->write(I)V

    .line 1623
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1627
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
