.class final Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator$LazyKeyLengthsHolder;
.super Ljava/lang/Object;
.source "AESPrivateKeyObfuscator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyKeyLengthsHolder"
.end annotation


# static fields
.field private static final KEY_LENGTHS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    invoke-static {}, Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator$LazyKeyLengthsHolder;->detectSupportedKeySizes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator$LazyKeyLengthsHolder;->KEY_LENGTHS:Ljava/util/List;

    .line 89
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 88
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/AESPrivateKeyObfuscator$LazyKeyLengthsHolder;->KEY_LENGTHS:Ljava/util/List;

    return-object v0
.end method

.method private static detectSupportedKeySizes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 98
    const-string v0, "AES"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v1, "sizes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v2, 0x80

    .local v2, "keyLength":I
    :goto_0
    const/16 v3, 0x7fff

    if-ge v2, v3, :cond_0

    .line 101
    :try_start_0
    div-int/lit8 v3, v2, 0x8

    new-array v3, v3, [B

    .line 102
    .local v3, "keyAsBytes":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, v3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 103
    .local v4, "key":Ljava/security/Key;
    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 104
    .local v5, "c":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v5, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    nop

    .line 99
    .end local v3    # "keyAsBytes":[B
    .end local v4    # "key":Ljava/security/Key;
    .end local v5    # "c":Ljavax/crypto/Cipher;
    add-int/lit8 v2, v2, 0x40

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/security/GeneralSecurityException;
    return-object v1

    .line 111
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v2    # "keyLength":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No limit encountered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
