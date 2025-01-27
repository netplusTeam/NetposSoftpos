.class public Lorg/bouncycastle/bcpg/attr/ImageAttribute;
.super Lorg/bouncycastle/bcpg/UserAttributeSubpacket;


# static fields
.field public static final JPEG:I = 0x1

.field private static final ZEROES:[B


# instance fields
.field private encoding:I

.field private hdrLength:I

.field private imageData:[B

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/bcpg/attr/ImageAttribute;->ZEROES:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    invoke-static {p1, p2}, Lorg/bouncycastle/bcpg/attr/ImageAttribute;->toByteArray(I[B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/bcpg/attr/ImageAttribute;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Z[B)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/bcpg/UserAttributeSubpacket;-><init>(IZ[B)V

    aget-byte p1, p2, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    const/4 v0, 0x0

    aget-byte v1, p2, v0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bouncycastle/bcpg/attr/ImageAttribute;->hdrLength:I

    const/4 v1, 0x2

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/bouncycastle/bcpg/attr/ImageAttribute;->version:I

    const/4 v1, 0x3

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/bouncycastle/bcpg/attr/ImageAttribute;->encoding:I

    array-length v1, p2

    sub-int/2addr v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/bcpg/attr/ImageAttribute;->imageData:[B

    array-length v2, v1

    invoke-static {p2, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/bcpg/attr/ImageAttribute;-><init>(Z[B)V

    return-void
.end method

.method private static toByteArray(I[B)[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x10

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object p0, Lorg/bouncycastle/bcpg/attr/ImageAttribute;->ZEROES:[B

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unable to encode to byte array!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getEncoding()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/bcpg/attr/ImageAttribute;->encoding:I

    return v0
.end method

.method public getImageData()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/attr/ImageAttribute;->imageData:[B

    return-object v0
.end method

.method public version()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/bcpg/attr/ImageAttribute;->version:I

    return v0
.end method
