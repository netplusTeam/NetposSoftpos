.class public Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator;
.super Lorg/apache/sshd/common/config/keys/loader/AbstractPrivateKeyObfuscator;
.source "AESPrivateKeyObfuscator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator$LazyKeyLengthsHolder;
    }
.end annotation


# static fields
.field public static final CIPHER_NAME:Ljava/lang/String; = "AES"

.field public static final INSTANCE:Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    const-string v0, "AES"

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/config/keys/loader/AbstractPrivateKeyObfuscator;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static getAvailableKeyLengths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-static {}, Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator$LazyKeyLengthsHolder;->access$000()Ljava/util/List;

    move-result-object v0

    return-object v0
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

    .line 54
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator;->resolveKeyLength(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;)I

    move-result v6

    .line 55
    .local v6, "keyLength":I
    div-int/lit8 v0, v6, 0x8

    invoke-virtual {p0, p2, v0}, Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator;->deriveEncryptionKey(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;I)[B

    move-result-object v7

    .line 56
    .local v7, "keyValue":[B
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v6

    move-object v4, v7

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator;->applyPrivateKeyCipher([BLorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;I[BZ)[B

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

    .line 47
    invoke-static {}, Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator;->getAvailableKeyLengths()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected resolveKeyLength(Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;)I
    .locals 6
    .param p1, "encContext"    # Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;->getCipherType()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "cipherType":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 64
    .local v1, "keyLength":I
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator;->getSupportedKeySizes()Ljava/util/List;

    move-result-object v2

    .line 65
    .local v2, "sizes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 66
    .local v4, "s":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v1, :cond_0

    .line 67
    return v1

    .line 69
    .end local v4    # "s":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 71
    :cond_1
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator;->getCipherName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " key length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .end local v0    # "cipherType":Ljava/lang/String;
    .end local p1    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1    # "keyLength":I
    .end local v2    # "sizes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v0    # "cipherType":Ljava/lang/String;
    .restart local p1    # "encContext":Lorg/apache/sshd/common/config/keys/loader/PrivateKeyEncryptionContext;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator;->getCipherName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
