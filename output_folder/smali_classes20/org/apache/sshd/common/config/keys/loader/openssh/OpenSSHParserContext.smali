.class public Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;
.super Ljava/lang/Object;
.source "OpenSSHParserContext.java"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKeyDecryptor;


# static fields
.field public static final IS_NONE_CIPHER:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NONE_CIPHER:Ljava/lang/String; = "none"


# instance fields
.field private cipherName:Ljava/lang/String;

.field private kdfOptions:Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;->IS_NONE_CIPHER:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;)V
    .locals 0
    .param p1, "cipherName"    # Ljava/lang/String;
    .param p2, "kdfOptions"    # Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;->setCipherName(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p2}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;->setKdfOptions(Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;)V

    .line 48
    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "c"    # Ljava/lang/String;

    .line 36
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public decodePrivateKeyBytes(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;[BLjava/lang/String;)[B
    .locals 7
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "cipherName"    # Ljava/lang/String;
    .param p4, "privateDataBytes"    # [B
    .param p5, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;->getKdfOptions()Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;

    move-result-object v6

    .line 81
    .local v6, "options":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    if-eqz v6, :cond_0

    .line 85
    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;->decodePrivateKeyBytes(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    new-instance v0, Ljava/io/StreamCorruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No KDF options available for decrypting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCipherName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;->cipherName:Ljava/lang/String;

    return-object v0
.end method

.method public getKdfOptions()Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;->kdfOptions:Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;

    return-object v0
.end method

.method public isEncrypted()Z
    .locals 3

    .line 52
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;->IS_NONE_CIPHER:Ljava/util/function/Predicate;

    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;->getCipherName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 53
    return v1

    .line 56
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;->getKdfOptions()Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;

    move-result-object v0

    .line 57
    .local v0, "options":Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setCipherName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cipherName"    # Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;->cipherName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setKdfOptions(Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;)V
    .locals 0
    .param p1, "kdfOptions"    # Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;

    .line 73
    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;->kdfOptions:Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[cipher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;->getCipherName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", kdfOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHParserContext;->getKdfOptions()Lorg/apache/sshd/common/config/keys/loader/openssh/OpenSSHKdfOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    return-object v0
.end method
