.class public Lorg/bouncycastle/bcpg/sig/PrimaryUserID;
.super Lorg/bouncycastle/bcpg/SignatureSubpacket;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 2

    invoke-static {p2}, Lorg/bouncycastle/bcpg/sig/PrimaryUserID;->booleanToByteArray(Z)[B

    move-result-object p2

    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .locals 1

    const/16 v0, 0x19

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method private static booleanToByteArray(Z)[B
    .locals 2

    const/4 v0, 0x1

    new-array v1, v0, [B

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    aput-byte v0, v1, p0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public isPrimaryUserID()Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/bcpg/sig/PrimaryUserID;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
