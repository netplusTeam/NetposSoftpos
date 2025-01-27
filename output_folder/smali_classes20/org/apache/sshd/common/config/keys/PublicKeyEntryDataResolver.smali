.class public interface abstract Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;
.super Ljava/lang/Object;
.source "PublicKeyEntryDataResolver.java"


# static fields
.field public static final DEFAULT:Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver$1;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;->DEFAULT:Lorg/apache/sshd/common/config/keys/PublicKeyEntryDataResolver;

    return-void
.end method


# virtual methods
.method public decodeEntryKeyData(Ljava/lang/String;)[B
    .locals 2
    .param p1, "encData"    # Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 52
    :cond_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    .line 53
    .local v0, "decoder":Ljava/util/Base64$Decoder;
    invoke-virtual {v0, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public encodeEntryKeyData([B)Ljava/lang/String;
    .locals 2
    .param p1, "keyData"    # [B

    .line 64
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, ""

    return-object v0

    .line 68
    :cond_0
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    .line 69
    .local v0, "encoder":Ljava/util/Base64$Encoder;
    invoke-virtual {v0, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
