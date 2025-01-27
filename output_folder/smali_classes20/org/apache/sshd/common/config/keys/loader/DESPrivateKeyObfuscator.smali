.class public Lorg/apache/sshd/common/config/keys/loader/DESPrivateKeyObfuscator;
.super Lorg/apache/sshd/common/config/keys/loader/AbstractPrivateKeyObfuscator;
.source "DESPrivateKeyObfuscator.java"


# static fields
.field public static final AVAILABLE_KEY_LENGTHS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_KEY_LENGTH:I = 0x18

.field public static final INSTANCE:Lorg/apache/sshd/common/config/keys/loader/DESPrivateKeyObfuscator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    nop

    .line 34
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/DESPrivateKeyObfuscator;->AVAILABLE_KEY_LENGTHS:Ljava/util/List;

    .line 35
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/DESPrivateKeyObfuscator;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/loader/DESPrivateKeyObfuscator;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/DESPrivateKeyObfuscator;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/DESPrivateKeyObfuscator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    const-string v0, "DES"

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/config/keys/loader/AbstractPrivateKeyObfuscator;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static final resolveEffectiveContext(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;)Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .locals 5
    .param p0, "encContext"    # Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;

    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherName()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "cipherName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherType()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "cipherType":Ljava/lang/String;
    move-object v2, p0

    .line 73
    .local v2, "effContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    const-string v3, "EDE3"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ede"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->clone()Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;

    move-result-object v2

    .line 76
    invoke-virtual {v2, v0}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->setCipherName(Ljava/lang/String;)V

    .line 79
    :cond_1
    return-object v2
.end method


# virtual methods
.method public applyPrivateKeyCipher([BLorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;Z)[B
    .locals 8
    .param p1, "bytes"    # [B
    .param p2, "encContext"    # Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .param p3, "encryptIt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-static {p2}, Lorg/apache/sshd/common/config/keys/loader/DESPrivateKeyObfuscator;->resolveEffectiveContext(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;)Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;

    move-result-object v6

    .line 46
    .local v6, "effContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    const/16 v0, 0x18

    invoke-virtual {p0, v6, v0}, Lorg/apache/sshd/common/config/keys/loader/DESPrivateKeyObfuscator;->deriveEncryptionKey(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;I)[B

    move-result-object v7

    .line 47
    .local v7, "keyValue":[B
    array-length v0, v7

    mul-int/lit8 v3, v0, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v4, v7

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sshd/common/config/keys/loader/DESPrivateKeyObfuscator;->applyPrivateKeyCipher([BLorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;I[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method protected generateInitializationVector(I)[B
    .locals 1
    .param p1, "keyLength"    # I

    .line 62
    const/16 v0, 0x40

    invoke-super {p0, v0}, Lorg/apache/sshd/common/config/keys/loader/AbstractPrivateKeyObfuscator;->generateInitializationVector(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getSupportedKeySizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 52
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/DESPrivateKeyObfuscator;->AVAILABLE_KEY_LENGTHS:Ljava/util/List;

    return-object v0
.end method

.method protected resolveKeyLength(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;)I
    .locals 1
    .param p1, "encContext"    # Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 57
    const/16 v0, 0x18

    return v0
.end method
