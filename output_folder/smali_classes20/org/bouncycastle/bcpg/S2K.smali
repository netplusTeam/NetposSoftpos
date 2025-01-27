.class public Lorg/bouncycastle/bcpg/S2K;
.super Lorg/bouncycastle/bcpg/BCPGObject;


# static fields
.field private static final EXPBIAS:I = 0x6

.field public static final GNU_DUMMY_S2K:I = 0x65

.field public static final GNU_PROTECTION_MODE_DIVERT_TO_CARD:I = 0x2

.field public static final GNU_PROTECTION_MODE_NO_PRIVATE_KEY:I = 0x1

.field public static final SALTED:I = 0x1

.field public static final SALTED_AND_ITERATED:I = 0x3

.field public static final SIMPLE:I


# instance fields
.field algorithm:I

.field itCount:I

.field iv:[B

.field protectionMode:I

.field type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGObject;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->itCount:I

    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->protectionMode:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    iput p1, p0, Lorg/bouncycastle/bcpg/S2K;->algorithm:I

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGObject;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->itCount:I

    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->protectionMode:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    iput p1, p0, Lorg/bouncycastle/bcpg/S2K;->algorithm:I

    iput-object p2, p0, Lorg/bouncycastle/bcpg/S2K;->iv:[B

    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGObject;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->itCount:I

    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->protectionMode:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    iput p1, p0, Lorg/bouncycastle/bcpg/S2K;->algorithm:I

    iput-object p2, p0, Lorg/bouncycastle/bcpg/S2K;->iv:[B

    iput p3, p0, Lorg/bouncycastle/bcpg/S2K;->itCount:I

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGObject;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->itCount:I

    iput v0, p0, Lorg/bouncycastle/bcpg/S2K;->protectionMode:I

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/bcpg/S2K;->algorithm:I

    iget p1, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    const/16 v1, 0x65

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/bcpg/S2K;->iv:[B

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    iget p1, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/bcpg/S2K;->itCount:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/bcpg/S2K;->protectionMode:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->algorithm:I

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/bcpg/S2K;->iv:[B

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write([B)V

    :cond_0
    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->itCount:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x47

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    const/16 v0, 0x4e

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    const/16 v0, 0x55

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->protectionMode:I

    :goto_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    :cond_2
    return-void
.end method

.method public getHashAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->algorithm:I

    return v0
.end method

.method public getIV()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/S2K;->iv:[B

    return-object v0
.end method

.method public getIterationCount()J
    .locals 2

    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->itCount:I

    and-int/lit8 v1, v0, 0xf

    add-int/lit8 v1, v1, 0x10

    shr-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x6

    shl-int v0, v1, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getProtectionMode()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->protectionMode:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/bcpg/S2K;->type:I

    return v0
.end method
