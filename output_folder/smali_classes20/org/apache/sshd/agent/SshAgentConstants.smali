.class public final Lorg/apache/sshd/agent/SshAgentConstants;
.super Ljava/lang/Object;
.source "SshAgentConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/agent/SshAgentConstants$LazyMessagesMapHolder;
    }
.end annotation


# static fields
.field public static final SSH2_AGENTC_ADD_IDENTITY:B = 0x11t

.field public static final SSH2_AGENTC_ADD_ID_CONSTRAINED:B = 0x19t

.field public static final SSH2_AGENTC_REMOVE_ALL_IDENTITIES:B = 0x13t

.field public static final SSH2_AGENTC_REMOVE_IDENTITY:B = 0x12t

.field public static final SSH2_AGENTC_REQUEST_IDENTITIES:B = 0xbt

.field public static final SSH2_AGENTC_SIGN_REQUEST:B = 0xdt

.field public static final SSH2_AGENT_FAILURE:B = 0x1et

.field public static final SSH2_AGENT_IDENTITIES_ANSWER:B = 0xct

.field public static final SSH2_AGENT_SIGN_RESPONSE:B = 0xet

.field public static final SSH_AGENTC_ADD_RSA_IDENTITY:B = 0x7t

.field public static final SSH_AGENTC_ADD_RSA_ID_CONSTRAINED:B = 0x18t

.field public static final SSH_AGENTC_ADD_SMARTCARD_KEY:B = 0x14t

.field public static final SSH_AGENTC_ADD_SMARTCARD_KEY_CONSTRAINED:B = 0x1at

.field public static final SSH_AGENTC_LOCK:B = 0x16t

.field public static final SSH_AGENTC_REMOVE_ALL_RSA_IDENTITIES:B = 0x9t

.field public static final SSH_AGENTC_REMOVE_RSA_IDENTITY:B = 0x8t

.field public static final SSH_AGENTC_REMOVE_SMARTCARD_KEY:B = 0x15t

.field public static final SSH_AGENTC_REQUEST_RSA_IDENTITIES:B = 0x1t

.field public static final SSH_AGENTC_RSA_CHALLENGE:B = 0x3t

.field public static final SSH_AGENTC_UNLOCK:B = 0x17t

.field public static final SSH_AGENT_CONSTRAIN_CONFIRM:B = 0x2t

.field public static final SSH_AGENT_CONSTRAIN_LIFETIME:B = 0x1t

.field public static final SSH_AGENT_FAILURE:B = 0x5t

.field public static final SSH_AGENT_KEY_LIST:B = 0x68t

.field public static final SSH_AGENT_LIST_KEYS:I = 0xcc

.field public static final SSH_AGENT_OPERATION_COMPLETE:B = 0x69t

.field public static final SSH_AGENT_PRIVATE_KEY_OP:I = 0xcd

.field public static final SSH_AGENT_RSA_IDENTITIES_ANSWER:B = 0x2t

.field public static final SSH_AGENT_RSA_RESPONSE:B = 0x4t

.field public static final SSH_AGENT_SUCCESS:B = 0x6t


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "N/A instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCommandMessageName(I)Ljava/lang/String;
    .locals 2
    .param p0, "cmd"    # I

    .line 107
    invoke-static {}, Lorg/apache/sshd/agent/SshAgentConstants$LazyMessagesMapHolder;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 111
    :cond_0
    return-object v0
.end method
