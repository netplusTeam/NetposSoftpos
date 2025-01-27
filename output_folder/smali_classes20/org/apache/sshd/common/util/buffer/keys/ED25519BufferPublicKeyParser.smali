.class public Lorg/apache/sshd/common/util/buffer/keys/ED25519BufferPublicKeyParser;
.super Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;
.source "ED25519BufferPublicKeyParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser<",
        "Ljava/security/PublicKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/common/util/buffer/keys/ED25519BufferPublicKeyParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lorg/apache/sshd/common/util/buffer/keys/ED25519BufferPublicKeyParser;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/buffer/keys/ED25519BufferPublicKeyParser;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/buffer/keys/ED25519BufferPublicKeyParser;->INSTANCE:Lorg/apache/sshd/common/util/buffer/keys/ED25519BufferPublicKeyParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    const-class v0, Ljava/security/PublicKey;

    const-string v1, "ssh-ed25519"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getRawPublicKey(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/security/PublicKey;
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/buffer/keys/ED25519BufferPublicKeyParser;->isKeyTypeSupported(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Unsupported key type: %s"

    invoke-static {v0, v1, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v0

    .line 45
    .local v0, "seed":[B
    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->generateEDDSAPublicKey(Ljava/lang/String;[B)Ljava/security/PublicKey;

    move-result-object v1

    return-object v1
.end method
