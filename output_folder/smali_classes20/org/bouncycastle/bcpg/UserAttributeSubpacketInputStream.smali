.class public Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;
.super Ljava/io/InputStream;

# interfaces
.implements Lorg/bouncycastle/bcpg/UserAttributeSubpacketTags;


# instance fields
.field in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method private readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p3, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-lez p3, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public readPacket()Lorg/bouncycastle/bcpg/UserAttributeSubpacket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc0

    if-ge v0, v3, :cond_1

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_1
    const/16 v4, 0xdf

    if-gt v0, v4, :cond_2

    add-int/lit16 v0, v0, -0xc0

    shl-int/lit8 v0, v0, 0x8

    iget-object v4, p0, Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    add-int/2addr v0, v4

    add-int/2addr v0, v3

    goto :goto_0

    :cond_2
    const/16 v3, 0xff

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    iget-object v3, p0, Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    iget-object v3, p0, Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    iget-object v3, p0, Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    or-int/2addr v0, v3

    move v3, v1

    :goto_1
    iget-object v4, p0, Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ltz v4, :cond_3

    sub-int/2addr v0, v1

    new-array v1, v0, [B

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/bcpg/UserAttributeSubpacketInputStream;->readFully([BII)V

    packed-switch v4, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    invoke-direct {v0, v4, v3, v1}, Lorg/bouncycastle/bcpg/UserAttributeSubpacket;-><init>(IZ[B)V

    return-object v0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/bcpg/attr/ImageAttribute;

    invoke-direct {v0, v3, v1}, Lorg/bouncycastle/bcpg/attr/ImageAttribute;-><init>(Z[B)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "unexpected EOF reading user attribute sub packet"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unrecognised length reading user attribute sub packet"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
