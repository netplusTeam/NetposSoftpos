.class public Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "NTRUSigningPrivateKeyParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
    }
.end annotation


# instance fields
.field private bases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;",
            ">;"
        }
    .end annotation
.end field

.field private publicKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    .line 4
    :goto_0
    iget v3, p2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    if-gt v2, v3, :cond_1

    .line 7
    new-instance v3, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    if-eqz v2, :cond_0

    move v4, v0

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-direct {v3, p1, p2, v4}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;Z)V

    invoke-direct {p0, v3}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->add(Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->getSigningParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningParameters;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->publicKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;",
            ">;",
            "Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;",
            ")V"
        }
    .end annotation

    .line 10
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    .line 12
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->publicKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;)V

    return-void
.end method

.method private add(Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 5
    :cond_2
    check-cast p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;

    .line 6
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    if-nez v2, :cond_3

    move v3, v0

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    if-nez v4, :cond_4

    move v4, v0

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    if-nez v2, :cond_6

    return v0

    .line 14
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    move v2, v1

    .line 18
    :goto_2
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 20
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    .line 21
    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    .line 22
    iget-object v5, v3, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;

    iget-object v6, v4, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    return v1

    .line 26
    :cond_8
    iget-object v5, v3, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;

    iget-object v6, v4, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/bouncycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    return v1

    :cond_9
    if-eqz v2, :cond_a

    .line 30
    iget-object v5, v3, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v6, v4, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    return v1

    .line 34
    :cond_a
    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    return v1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    return v0
.end method

.method public getBasis(I)Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    return-object p1
.end method

.method public getEncoded()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v0, v4}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->encode(Ljava/io/OutputStream;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->publicKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 10
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->publicKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    const/16 v1, 0x1f

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    .line 5
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
