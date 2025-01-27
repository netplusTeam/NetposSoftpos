.class Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;->build(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/operator/PGPContentVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;

.field final synthetic val$publicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

.field final synthetic val$signer:Lorg/bouncycastle/crypto/Signer;


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/crypto/Signer;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder$1;->this$1:Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;

    iput-object p2, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder$1;->val$publicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iput-object p3, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder$1;->val$signer:Lorg/bouncycastle/crypto/Signer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHashAlgorithm()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder$1;->this$1:Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;->access$100(Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;)I

    move-result v0

    return v0
.end method

.method public getKeyAlgorithm()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder$1;->this$1:Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;->access$200(Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;)I

    move-result v0

    return v0
.end method

.method public getKeyID()J
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder$1;->val$publicKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Lorg/bouncycastle/openpgp/operator/bc/SignerOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder$1;->val$signer:Lorg/bouncycastle/crypto/Signer;

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/bc/SignerOutputStream;-><init>(Lorg/bouncycastle/crypto/Signer;)V

    return-object v0
.end method

.method public verify([B)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder$1;->val$signer:Lorg/bouncycastle/crypto/Signer;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result p1

    return p1
.end method
