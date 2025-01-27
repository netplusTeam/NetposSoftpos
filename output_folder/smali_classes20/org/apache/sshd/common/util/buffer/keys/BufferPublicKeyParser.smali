.class public interface abstract Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;
.super Ljava/lang/Object;
.source "BufferPublicKeyParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PUB::",
        "Ljava/security/PublicKey;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser$1;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;->EMPTY:Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;

    sget-object v1, Lorg/apache/sshd/common/util/buffer/keys/RSABufferPublicKeyParser;->INSTANCE:Lorg/apache/sshd/common/util/buffer/keys/RSABufferPublicKeyParser;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sshd/common/util/buffer/keys/DSSBufferPublicKeyParser;->INSTANCE:Lorg/apache/sshd/common/util/buffer/keys/DSSBufferPublicKeyParser;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sshd/common/util/buffer/keys/ECBufferPublicKeyParser;->INSTANCE:Lorg/apache/sshd/common/util/buffer/keys/ECBufferPublicKeyParser;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sshd/common/util/buffer/keys/ED25519BufferPublicKeyParser;->INSTANCE:Lorg/apache/sshd/common/util/buffer/keys/ED25519BufferPublicKeyParser;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 57
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;->aggregate(Ljava/util/Collection;)Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;->DEFAULT:Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;

    return-void
.end method

.method public static aggregate(Ljava/util/Collection;)Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<",
            "+",
            "Ljava/security/PublicKey;",
            ">;>;)",
            "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 78
    .local p0, "parsers":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<+Ljava/security/PublicKey;>;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;->EMPTY:Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;

    return-object v0

    .line 82
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser$2;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser$2;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public abstract getRawPublicKey(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ")TPUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract isKeyTypeSupported(Ljava/lang/String;)Z
.end method
