.class public Lorg/apache/sshd/common/util/buffer/keys/RSABufferPublicKeyParser;
.super Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;
.source "RSABufferPublicKeyParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser<",
        "Ljava/security/interfaces/RSAPublicKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/common/util/buffer/keys/RSABufferPublicKeyParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/apache/sshd/common/util/buffer/keys/RSABufferPublicKeyParser;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/buffer/keys/RSABufferPublicKeyParser;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/buffer/keys/RSABufferPublicKeyParser;->INSTANCE:Lorg/apache/sshd/common/util/buffer/keys/RSABufferPublicKeyParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    const-class v0, Ljava/security/interfaces/RSAPublicKey;

    const-string v1, "ssh-rsa"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic getRawPublicKey(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/util/buffer/keys/RSABufferPublicKeyParser;->getRawPublicKey(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public getRawPublicKey(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/security/interfaces/RSAPublicKey;
    .locals 4
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/buffer/keys/RSABufferPublicKeyParser;->isKeyTypeSupported(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Unsupported key type: %s"

    invoke-static {v0, v1, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPInt()Ljava/math/BigInteger;

    move-result-object v0

    .line 46
    .local v0, "e":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPInt()Ljava/math/BigInteger;

    move-result-object v1

    .line 47
    .local v1, "n":Ljava/math/BigInteger;
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v2, v1, v0}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v3, "RSA"

    invoke-virtual {p0, v3, v2}, Lorg/apache/sshd/common/util/buffer/keys/RSABufferPublicKeyParser;->generatePublicKey(Ljava/lang/String;Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    return-object v2
.end method
