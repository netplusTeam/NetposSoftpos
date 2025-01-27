.class Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/bcpg/BCPGInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PartialInputStream"
.end annotation


# instance fields
.field private dataLength:I

.field private in:Lorg/bouncycastle/bcpg/BCPGInputStream;

.field private partial:Z


# direct methods
.method constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    iput-boolean p2, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->partial:Z

    iput p3, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    return-void
.end method

.method private loadDataLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->partial:Z

    const/16 v1, 0xc0

    if-ge v0, v1, :cond_1

    :goto_0
    iput v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    goto :goto_1

    :cond_1
    const/16 v2, 0xdf

    if-gt v0, v2, :cond_2

    sub-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget-object v2, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0xff

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->partial:Z

    and-int/lit8 v0, v0, 0x1f

    shl-int v0, v1, v0

    goto :goto_0

    :goto_1
    iget v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->available()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    if-le v0, v1, :cond_2

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->partial:Z

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    iget v1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    return v0

    :cond_1
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "premature end of stream in PartialInputStream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->partial:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->loadDataLength()I

    move-result v0

    if-gez v0, :cond_0

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    if-eqz v0, :cond_4

    if-gt v0, p3, :cond_2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move p3, v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_3

    iget p2, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    return p1

    :cond_3
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "premature end of stream in PartialInputStream"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-boolean v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->partial:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;->loadDataLength()I

    move-result v0

    if-gez v0, :cond_0

    :cond_5
    const/4 p1, -0x1

    return p1
.end method
