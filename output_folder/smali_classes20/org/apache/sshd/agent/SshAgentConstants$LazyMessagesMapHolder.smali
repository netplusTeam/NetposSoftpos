.class final Lorg/apache/sshd/agent/SshAgentConstants$LazyMessagesMapHolder;
.super Ljava/lang/Object;
.source "SshAgentConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/agent/SshAgentConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyMessagesMapHolder"
.end annotation


# static fields
.field private static final MESSAGES_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    const-class v0, Lorg/apache/sshd/agent/SshAgentConstants;

    new-instance v1, Lorg/apache/sshd/agent/SshAgentConstants$LazyMessagesMapHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/sshd/agent/SshAgentConstants$LazyMessagesMapHolder$$ExternalSyntheticLambda0;-><init>()V

    .line 86
    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->generateMnemonicMap(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/agent/SshAgentConstants$LazyMessagesMapHolder;->MESSAGES_MAP:Ljava/util/Map;

    .line 85
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 84
    sget-object v0, Lorg/apache/sshd/agent/SshAgentConstants$LazyMessagesMapHolder;->MESSAGES_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p0, "f"    # Ljava/lang/reflect/Field;

    .line 87
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "name":Ljava/lang/String;
    const-string v1, "SSH_AGENT_CONSTRAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    const-string v1, "SSH_AGENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SSH2_AGENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 88
    :goto_0
    return v1
.end method
