.class public final Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/xmss/XMSSKeyParameters;
.source "XMSSPublicKeyParameters.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;
.implements Lorg/bouncycastle/util/Encodable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;
    }
.end annotation


# instance fields
.field private final oid:I

.field private final params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

.field private final publicSeed:[B

.field private final root:[B


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)V
    .locals 5

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->access$000(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSKeyParameters;-><init>(ZLjava/lang/String;)V

    .line 3
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->access$000(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    if-eqz v0, :cond_8

    .line 8
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v2

    .line 9
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->access$100(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)[B

    move-result-object v3

    if-eqz v3, :cond_2

    .line 19
    array-length p1, v3

    add-int v0, v2, v2

    if-ne p1, v0, :cond_0

    .line 21
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->oid:I

    .line 22
    invoke-static {v3, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    add-int/lit8 p1, v2, 0x0

    .line 24
    invoke-static {v3, p1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->publicSeed:[B

    goto :goto_2

    .line 26
    :cond_0
    array-length p1, v3

    add-int/lit8 v0, v2, 0x4

    add-int v4, v0, v2

    if-ne p1, v4, :cond_1

    .line 28
    invoke-static {v3, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->oid:I

    .line 30
    const/4 p1, 0x4

    invoke-static {v3, p1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    .line 32
    invoke-static {v3, v0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->publicSeed:[B

    goto :goto_2

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "public key has wrong size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getOid()Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 44
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getOid()Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;->getOid()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->oid:I

    goto :goto_0

    :cond_3
    nop

    .line 48
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->oid:I

    .line 50
    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->access$200(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 53
    array-length v1, v0

    if-ne v1, v2, :cond_4

    .line 57
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    goto :goto_1

    .line 58
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "length of root must be equal to length of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_5
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    .line 66
    :goto_1
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->access$300(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)[B

    move-result-object p1

    if-eqz p1, :cond_7

    .line 69
    array-length v0, p1

    if-ne v0, v2, :cond_6

    .line 73
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->publicSeed:[B

    goto :goto_2

    .line 74
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "length of publicSeed must be equal to length of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_7
    new-array p1, v2, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->publicSeed:[B

    :goto_2
    return-void

    .line 81
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "params == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    return-object v0
.end method

.method public getPublicSeed()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->publicSeed:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getRoot()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v0

    .line 9
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->oid:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    add-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v0

    .line 11
    new-array v3, v3, [B

    .line 12
    invoke-static {v1, v3, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    add-int v1, v0, v0

    .line 17
    new-array v3, v1, [B

    .line 20
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    invoke-static {v3, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    add-int/2addr v2, v0

    .line 23
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->publicSeed:[B

    invoke-static {v3, v0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    return-object v3
.end method
