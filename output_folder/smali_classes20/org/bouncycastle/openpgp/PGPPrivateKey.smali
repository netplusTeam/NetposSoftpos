.class public Lorg/bouncycastle/openpgp/PGPPrivateKey;
.super Ljava/lang/Object;


# instance fields
.field private keyID:J

.field private privateKeyDataPacket:Lorg/bouncycastle/bcpg/BCPGKey;

.field private publicKeyPacket:Lorg/bouncycastle/bcpg/PublicKeyPacket;


# direct methods
.method public constructor <init>(JLorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/bcpg/BCPGKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/bouncycastle/openpgp/PGPPrivateKey;->keyID:J

    iput-object p3, p0, Lorg/bouncycastle/openpgp/PGPPrivateKey;->publicKeyPacket:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    iput-object p4, p0, Lorg/bouncycastle/openpgp/PGPPrivateKey;->privateKeyDataPacket:Lorg/bouncycastle/bcpg/BCPGKey;

    return-void
.end method


# virtual methods
.method public getKeyID()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/openpgp/PGPPrivateKey;->keyID:J

    return-wide v0
.end method

.method public getPrivateKeyDataPacket()Lorg/bouncycastle/bcpg/BCPGKey;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPrivateKey;->privateKeyDataPacket:Lorg/bouncycastle/bcpg/BCPGKey;

    return-object v0
.end method

.method public getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPrivateKey;->publicKeyPacket:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    return-object v0
.end method
