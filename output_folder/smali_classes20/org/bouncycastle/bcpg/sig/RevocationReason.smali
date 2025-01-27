.class public Lorg/bouncycastle/bcpg/sig/RevocationReason;
.super Lorg/bouncycastle/bcpg/SignatureSubpacket;


# direct methods
.method public constructor <init>(ZBLjava/lang/String;)V
    .locals 1

    invoke-static {p2, p3}, Lorg/bouncycastle/bcpg/sig/RevocationReason;->createData(BLjava/lang/String;)[B

    move-result-object p2

    const/16 p3, 0x1d

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, v0, p2}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .locals 1

    const/16 v0, 0x1d

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method private static createData(BLjava/lang/String;)[B
    .locals 3

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    aput-byte p0, v0, v2

    array-length p0, p1

    invoke-static {p1, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public getRevocationDescription()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/sig/RevocationReason;->getData()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    array-length v1, v0

    sub-int/2addr v1, v2

    new-array v3, v1, [B

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lorg/bouncycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRevocationReason()B
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/sig/RevocationReason;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method
