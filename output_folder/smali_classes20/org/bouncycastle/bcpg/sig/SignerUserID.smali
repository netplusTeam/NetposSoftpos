.class public Lorg/bouncycastle/bcpg/sig/SignerUserID;
.super Lorg/bouncycastle/bcpg/SignatureSubpacket;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v0, 0x1c

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .locals 1

    const/16 v0, 0x1c

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/sig/SignerUserID;->data:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawID()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/sig/SignerUserID;->data:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
