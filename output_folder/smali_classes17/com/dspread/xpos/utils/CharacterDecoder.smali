.class public abstract Lcom/dspread/xpos/utils/CharacterDecoder;
.super Ljava/lang/Object;
.source "CharacterDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(Ljava/io/InputStream;[BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    move v0, v2

    :cond_0
    return v0

    :cond_1
    add-int v2, v0, p3

    int-to-byte v1, v1

    .line 7
    aput-byte v1, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p4
.end method

.method protected a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/dspread/xpos/utils/CEStreamExhausted;

    invoke-direct {p1}, Lcom/dspread/xpos/utils/CEStreamExhausted;-><init>()V

    throw p1
.end method

.method protected abstract b()I
.end method

.method protected b(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected c(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/utils/CharacterDecoder;->b()I

    move-result p1

    return p1
.end method

.method protected d(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    invoke-virtual {p0, v0, p2}, Lcom/dspread/xpos/utils/CharacterDecoder;->a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/dspread/xpos/utils/CharacterDecoder;->c(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)I

    move-result p1

    const/4 v1, 0x0

    .line 9
    :goto_1
    invoke-virtual {p0}, Lcom/dspread/xpos/utils/CharacterDecoder;->a()I

    move-result v2

    add-int/2addr v2, v1

    if-ge v2, p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/dspread/xpos/utils/CharacterDecoder;->a()I

    move-result v2

    invoke-virtual {p0, v0, p2, v2}, Lcom/dspread/xpos/utils/CharacterDecoder;->a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    .line 11
    invoke-virtual {p0}, Lcom/dspread/xpos/utils/CharacterDecoder;->a()I

    .line 12
    invoke-virtual {p0}, Lcom/dspread/xpos/utils/CharacterDecoder;->a()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/dspread/xpos/utils/CharacterDecoder;->a()I

    move-result v2

    add-int/2addr v2, v1

    if-ne v2, p1, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/dspread/xpos/utils/CharacterDecoder;->a()I

    move-result p1

    invoke-virtual {p0, v0, p2, p1}, Lcom/dspread/xpos/utils/CharacterDecoder;->a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    .line 19
    invoke-virtual {p0}, Lcom/dspread/xpos/utils/CharacterDecoder;->a()I

    goto :goto_2

    :cond_1
    sub-int/2addr p1, v1

    .line 21
    invoke-virtual {p0, v0, p2, p1}, Lcom/dspread/xpos/utils/CharacterDecoder;->a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    .line 25
    :goto_2
    invoke-virtual {p0, v0, p2}, Lcom/dspread/xpos/utils/CharacterDecoder;->d(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lcom/dspread/xpos/utils/CEStreamExhausted; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p0, v0, p2}, Lcom/dspread/xpos/utils/CharacterDecoder;->b(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public decodeBuffer(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/dspread/xpos/utils/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public decodeBuffer(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v0, v2}, Ljava/lang/String;->getBytes(II[BI)V

    .line 30
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 31
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/dspread/xpos/utils/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 33
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public decodeBufferToByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/utils/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public decodeBufferToByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/utils/CharacterDecoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
