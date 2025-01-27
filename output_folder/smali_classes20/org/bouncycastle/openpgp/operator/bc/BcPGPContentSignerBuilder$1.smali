.class Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PGPContentSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->build(ILorg/bouncycastle/openpgp/PGPPrivateKey;)Lorg/bouncycastle/openpgp/operator/PGPContentSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;

.field final synthetic val$digestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

.field final synthetic val$privateKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

.field final synthetic val$signatureType:I

.field final synthetic val$signer:Lorg/bouncycastle/crypto/Signer;


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;ILorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/crypto/Signer;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;

    iput p2, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->val$signatureType:I

    iput-object p3, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->val$privateKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    iput-object p4, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->val$signer:Lorg/bouncycastle/crypto/Signer;

    iput-object p5, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDigest()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object v0

    return-object v0
.end method

.method public getHashAlgorithm()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->access$000(Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;)I

    move-result v0

    return v0
.end method

.method public getKeyAlgorithm()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->access$100(Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;)I

    move-result v0

    return v0
.end method

.method public getKeyID()J
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->val$privateKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getKeyID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3

    new-instance v0, Lorg/bouncycastle/util/io/TeeOutputStream;

    new-instance v1, Lorg/bouncycastle/openpgp/operator/bc/SignerOutputStream;

    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->val$signer:Lorg/bouncycastle/crypto/Signer;

    invoke-direct {v1, v2}, Lorg/bouncycastle/openpgp/operator/bc/SignerOutputStream;-><init>(Lorg/bouncycastle/crypto/Signer;)V

    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v2}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public getSignature()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->val$signer:Lorg/bouncycastle/crypto/Signer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Signer;->generateSignature()[B

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unable to create signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->val$signatureType:I

    return v0
.end method
