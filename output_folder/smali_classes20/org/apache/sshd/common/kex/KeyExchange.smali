.class public interface abstract Lorg/apache/sshd/common/kex/KeyExchange;
.super Ljava/lang/Object;
.source "KeyExchange.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedResource;
.implements Lorg/apache/sshd/common/session/SessionHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/NamedResource;",
        "Lorg/apache/sshd/common/session/SessionHolder<",
        "Lorg/apache/sshd/common/session/Session;",
        ">;"
    }
.end annotation


# static fields
.field public static final GROUP_KEX_OPCODES_MAP:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIMPLE_KEX_OPCODES_MAP:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-class v0, Lorg/apache/sshd/common/SshConstants;

    .line 42
    const-string v1, "SSH_MSG_KEX_DH_GEX_"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->generateMnemonicMap(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/NavigableMap;

    move-result-object v0

    .line 41
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/kex/KeyExchange;->GROUP_KEX_OPCODES_MAP:Ljava/util/NavigableMap;

    .line 44
    const-class v0, Lorg/apache/sshd/common/SshConstants;

    .line 46
    const-string v1, "SSH_MSG_KEXDH_"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->generateMnemonicMap(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/NavigableMap;

    move-result-object v0

    .line 45
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/kex/KeyExchange;->SIMPLE_KEX_OPCODES_MAP:Ljava/util/NavigableMap;

    .line 44
    return-void
.end method

.method public static getGroupKexOpcodeName(I)Ljava/lang/String;
    .locals 2
    .param p0, "cmd"    # I

    .line 98
    sget-object v0, Lorg/apache/sshd/common/kex/KeyExchange;->GROUP_KEX_OPCODES_MAP:Ljava/util/NavigableMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-static {p0}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 102
    :cond_0
    return-object v0
.end method

.method public static getSimpleKexOpcodeName(I)Ljava/lang/String;
    .locals 2
    .param p0, "cmd"    # I

    .line 107
    sget-object v0, Lorg/apache/sshd/common/kex/KeyExchange;->SIMPLE_KEX_OPCODES_MAP:Ljava/util/NavigableMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-static {p0}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 111
    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract getH()[B
.end method

.method public abstract getHash()Lorg/apache/sshd/common/digest/Digest;
.end method

.method public abstract getK()[B
.end method

.method public abstract getServerKey()Ljava/security/PublicKey;
.end method

.method public abstract init([B[B[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract next(ILorg/apache/sshd/common/util/buffer/Buffer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
