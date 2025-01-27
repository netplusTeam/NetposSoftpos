.class Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PGPContentSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->build(IJLjava/security/PrivateKey;)Lorg/bouncycastle/openpgp/operator/PGPContentSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

.field final synthetic val$digestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

.field final synthetic val$edDigestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

.field final synthetic val$keyID:J

.field final synthetic val$signature:Ljava/security/Signature;

.field final synthetic val$signatureType:I


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;IJLorg/bouncycastle/openpgp/operator/PGPDigestCalculator;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;Ljava/security/Signature;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    iput p2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signatureType:I

    iput-wide p3, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$keyID:J

    iput-object p5, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$edDigestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    iput-object p6, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    iput-object p7, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signature:Ljava/security/Signature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDigest()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object v0

    return-object v0
.end method

.method public getHashAlgorithm()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->access$000(Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;)I

    move-result v0

    return v0
.end method

.method public getKeyAlgorithm()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->access$100(Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;)I

    move-result v0

    return v0
.end method

.method public getKeyID()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$keyID:J

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->access$100(Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;)I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/util/io/TeeOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$edDigestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v2}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/util/io/TeeOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signature:Ljava/security/Signature;

    invoke-static {v1}, Lorg/bouncycastle/jcajce/io/OutputStreamFactory;->createStream(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v2}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public getSignature()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->this$0:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->access$100(Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;)I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signature:Ljava/security/Signature;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$edDigestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signature:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signatureType:I

    return v0
.end method
