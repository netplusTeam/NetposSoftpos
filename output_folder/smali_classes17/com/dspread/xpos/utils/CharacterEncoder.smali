.class public abstract Lcom/dspread/xpos/utils/CharacterEncoder;
.super Ljava/lang/Object;
.source "CharacterEncoder.java"


# instance fields
.field protected a:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;)[B
    .locals 3

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 14
    array-length v1, v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ne v1, v2, :cond_0

    array-length v1, v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 16
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 21
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 22
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(Ljava/io/InputStream;[B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    int-to-byte v1, v1

    .line 8
    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_1
    array-length p1, p2

    return p1
.end method

.method protected a(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/dspread/xpos/utils/CharacterEncoder;->a:Ljava/io/PrintStream;

    return-void
.end method

.method protected a(Ljava/io/OutputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected abstract a(Ljava/io/OutputStream;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract b()I
.end method

.method protected b(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected c(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/dspread/xpos/utils/CharacterEncoder;->a:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public encode(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/dspread/xpos/utils/CharacterEncoder;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/utils/CharacterEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 41
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/dspread/xpos/utils/CharacterEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 42
    const-string p1, "8859_1"

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 45
    new-instance p1, Ljava/lang/Error;

    const-string v0, "CharacterEncoder.encode internal error"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/utils/CharacterEncoder;->b()I

    move-result v0

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p0, p2}, Lcom/dspread/xpos/utils/CharacterEncoder;->a(Ljava/io/OutputStream;)V

    .line 5
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/dspread/xpos/utils/CharacterEncoder;->a(Ljava/io/InputStream;[B)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 10
    :cond_0
    invoke-virtual {p0, p2, v1}, Lcom/dspread/xpos/utils/CharacterEncoder;->a(Ljava/io/OutputStream;I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/dspread/xpos/utils/CharacterEncoder;->a()I

    move-result v3

    add-int/2addr v3, v2

    if-gt v3, v1, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/dspread/xpos/utils/CharacterEncoder;->a()I

    move-result v3

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/dspread/xpos/utils/CharacterEncoder;->a(Ljava/io/OutputStream;[BII)V

    goto :goto_2

    :cond_1
    sub-int v3, v1, v2

    .line 16
    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/dspread/xpos/utils/CharacterEncoder;->a(Ljava/io/OutputStream;[BII)V

    .line 17
    :goto_2
    invoke-virtual {p0}, Lcom/dspread/xpos/utils/CharacterEncoder;->a()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/dspread/xpos/utils/CharacterEncoder;->b()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 32
    :goto_3
    invoke-virtual {p0, p2}, Lcom/dspread/xpos/utils/CharacterEncoder;->b(Ljava/io/OutputStream;)V

    return-void

    .line 33
    :cond_3
    invoke-virtual {p0, p2}, Lcom/dspread/xpos/utils/CharacterEncoder;->c(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method public encode(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lcom/dspread/xpos/utils/CharacterEncoder;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/dspread/xpos/utils/CharacterEncoder;->encode([BLjava/io/OutputStream;)V

    return-void
.end method

.method public encode([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 35
    invoke-virtual {p0, v0, p2}, Lcom/dspread/xpos/utils/CharacterEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public encodeBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/dspread/xpos/utils/CharacterEncoder;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/utils/CharacterEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeBuffer([B)Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 33
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 36
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/dspread/xpos/utils/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 42
    new-instance p1, Ljava/lang/Error;

    const-string v0, "CharacterEncoder.encodeBuffer internal error"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/utils/CharacterEncoder;->b()I

    move-result v0

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p0, p2}, Lcom/dspread/xpos/utils/CharacterEncoder;->a(Ljava/io/OutputStream;)V

    .line 6
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/dspread/xpos/utils/CharacterEncoder;->a(Ljava/io/InputStream;[B)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/dspread/xpos/utils/CharacterEncoder;->a(Ljava/io/OutputStream;I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/dspread/xpos/utils/CharacterEncoder;->a()I

    move-result v3

    add-int/2addr v3, v2

    if-gt v3, v1, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/dspread/xpos/utils/CharacterEncoder;->a()I

    move-result v3

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/dspread/xpos/utils/CharacterEncoder;->a(Ljava/io/OutputStream;[BII)V

    goto :goto_1

    :cond_2
    sub-int v3, v1, v2

    .line 17
    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/dspread/xpos/utils/CharacterEncoder;->a(Ljava/io/OutputStream;[BII)V

    .line 18
    :goto_1
    invoke-virtual {p0}, Lcom/dspread/xpos/utils/CharacterEncoder;->a()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 26
    :cond_3
    invoke-virtual {p0, p2}, Lcom/dspread/xpos/utils/CharacterEncoder;->c(Ljava/io/OutputStream;)V

    .line 27
    invoke-virtual {p0}, Lcom/dspread/xpos/utils/CharacterEncoder;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 29
    :goto_2
    invoke-virtual {p0, p2}, Lcom/dspread/xpos/utils/CharacterEncoder;->b(Ljava/io/OutputStream;)V

    return-void
.end method

.method public encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/dspread/xpos/utils/CharacterEncoder;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/dspread/xpos/utils/CharacterEncoder;->encodeBuffer([BLjava/io/OutputStream;)V

    return-void
.end method

.method public encodeBuffer([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 31
    invoke-virtual {p0, v0, p2}, Lcom/dspread/xpos/utils/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method
