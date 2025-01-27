.class public Lorg/bouncycastle/gpg/keybox/jcajce/JcaBlobVerifier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/gpg/keybox/BlobVerifier;


# instance fields
.field private final md5Digest:Ljava/security/MessageDigest;

.field private final sha1Digest:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SHA-1"

    invoke-interface {p1, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/gpg/keybox/jcajce/JcaBlobVerifier;->sha1Digest:Ljava/security/MessageDigest;

    :try_start_0
    const-string v0, "MD5"

    invoke-interface {p1, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/gpg/keybox/jcajce/JcaBlobVerifier;->md5Digest:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public isMatched([B[B)Z
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/jcajce/JcaBlobVerifier;->sha1Digest:Ljava/security/MessageDigest;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/jcajce/JcaBlobVerifier;->sha1Digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    aget-byte v1, p2, v2

    if-nez v1, :cond_0

    aget-byte v1, p2, v3

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aget-byte v1, p2, v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    aget-byte v1, p2, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/gpg/keybox/jcajce/JcaBlobVerifier;->md5Digest:Ljava/security/MessageDigest;

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/gpg/keybox/jcajce/JcaBlobVerifier;->md5Digest:Ljava/security/MessageDigest;

    const/4 v1, 0x4

    invoke-virtual {p1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, p2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internal buffer to small: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/DigestException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    return v2

    :cond_1
    return v3
.end method
