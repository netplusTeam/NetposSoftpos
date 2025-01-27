.class Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;
.super Ljava/lang/Object;
.source "Woff2MemoryOut.java"

# interfaces
.implements Lcom/itextpdf/io/font/woff2/Woff2Out;


# instance fields
.field private buf_:[B

.field private buf_size_:I

.field private offset_:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1
    .param p1, "buf_"    # [B
    .param p2, "buf_size_"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;->buf_:[B

    .line 28
    iput p2, p0, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;->buf_size_:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;->offset_:I

    .line 30
    return-void
.end method


# virtual methods
.method public size()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;->offset_:I

    return v0
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "buff_offset"    # I
    .param p3, "n"    # I

    .line 34
    iget v0, p0, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;->offset_:I

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;->write([BIII)V

    .line 35
    return-void
.end method

.method public write([BIII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "buff_offset"    # I
    .param p3, "offset"    # I
    .param p4, "n"    # I

    .line 39
    iget v0, p0, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;->buf_size_:I

    if-gt p3, v0, :cond_0

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;->buf_:[B

    invoke-static {p1, p2, v0, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget v0, p0, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;->offset_:I

    add-int v1, p3, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/woff2/Woff2MemoryOut;->offset_:I

    .line 44
    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    const-string v1, "Writing woff2 exception"

    invoke-direct {v0, v1}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
