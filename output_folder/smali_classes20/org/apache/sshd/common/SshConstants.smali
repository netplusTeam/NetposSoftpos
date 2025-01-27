.class public final Lorg/apache/sshd/common/SshConstants;
.super Ljava/lang/Object;
.source "SshConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/SshConstants$LazyOpenCodesMapHolder;,
        Lorg/apache/sshd/common/SshConstants$LazyReasonsMapHolder;,
        Lorg/apache/sshd/common/SshConstants$LazyMessagesMapHolder;,
        Lorg/apache/sshd/common/SshConstants$LazyAmbiguousOpcodesHolder;
    }
.end annotation


# static fields
.field public static final DEFAULT_PORT:I = 0x16

.field public static final MSG_KEX_COOKIE_SIZE:I = 0x10

.field public static final SSH2_DISCONNECT_AUTH_CANCELLED_BY_USER:I = 0xd

.field public static final SSH2_DISCONNECT_BY_APPLICATION:I = 0xb

.field public static final SSH2_DISCONNECT_COMPRESSION_ERROR:I = 0x6

.field public static final SSH2_DISCONNECT_CONNECTION_LOST:I = 0xa

.field public static final SSH2_DISCONNECT_HOST_AUTHENTICATION_FAILED:I = 0x4

.field public static final SSH2_DISCONNECT_HOST_KEY_NOT_VERIFIABLE:I = 0x9

.field public static final SSH2_DISCONNECT_HOST_NOT_ALLOWED_TO_CONNECT:I = 0x1

.field public static final SSH2_DISCONNECT_ILLEGAL_USER_NAME:I = 0xf

.field public static final SSH2_DISCONNECT_KEY_EXCHANGE_FAILED:I = 0x3

.field public static final SSH2_DISCONNECT_MAC_ERROR:I = 0x5

.field public static final SSH2_DISCONNECT_NO_MORE_AUTH_METHODS_AVAILABLE:I = 0xe

.field public static final SSH2_DISCONNECT_PROTOCOL_ERROR:I = 0x2

.field public static final SSH2_DISCONNECT_PROTOCOL_VERSION_NOT_SUPPORTED:I = 0x8

.field public static final SSH2_DISCONNECT_RESERVED:I = 0x4

.field public static final SSH2_DISCONNECT_SERVICE_NOT_AVAILABLE:I = 0x7

.field public static final SSH2_DISCONNECT_TOO_MANY_CONNECTIONS:I = 0xc

.field public static final SSH_EXTENDED_DATA_STDERR:I = 0x1

.field public static final SSH_MSG_CHANNEL_CLOSE:B = 0x61t

.field public static final SSH_MSG_CHANNEL_DATA:B = 0x5et

.field public static final SSH_MSG_CHANNEL_EOF:B = 0x60t

.field public static final SSH_MSG_CHANNEL_EXTENDED_DATA:B = 0x5ft

.field public static final SSH_MSG_CHANNEL_FAILURE:B = 0x64t

.field public static final SSH_MSG_CHANNEL_OPEN:B = 0x5at

.field public static final SSH_MSG_CHANNEL_OPEN_CONFIRMATION:B = 0x5bt

.field public static final SSH_MSG_CHANNEL_OPEN_FAILURE:B = 0x5ct

.field public static final SSH_MSG_CHANNEL_REQUEST:B = 0x62t

.field public static final SSH_MSG_CHANNEL_SUCCESS:B = 0x63t

.field public static final SSH_MSG_CHANNEL_WINDOW_ADJUST:B = 0x5dt

.field public static final SSH_MSG_DEBUG:B = 0x4t

.field public static final SSH_MSG_DISCONNECT:B = 0x1t

.field public static final SSH_MSG_GLOBAL_REQUEST:B = 0x50t

.field public static final SSH_MSG_IGNORE:B = 0x2t

.field public static final SSH_MSG_KEXDH_INIT:B = 0x1et

.field public static final SSH_MSG_KEXDH_REPLY:B = 0x1ft

.field public static final SSH_MSG_KEXINIT:B = 0x14t

.field public static final SSH_MSG_KEX_DH_GEX_GROUP:B = 0x1ft

.field public static final SSH_MSG_KEX_DH_GEX_INIT:B = 0x20t

.field public static final SSH_MSG_KEX_DH_GEX_REPLY:B = 0x21t

.field public static final SSH_MSG_KEX_DH_GEX_REQUEST:B = 0x22t

.field public static final SSH_MSG_KEX_DH_GEX_REQUEST_OLD:B = 0x1et

.field public static final SSH_MSG_KEX_FIRST:B = 0x1et

.field public static final SSH_MSG_KEX_LAST:B = 0x31t

.field public static final SSH_MSG_NEWKEYS:B = 0x15t

.field public static final SSH_MSG_REQUEST_FAILURE:B = 0x52t

.field public static final SSH_MSG_REQUEST_SUCCESS:B = 0x51t

.field public static final SSH_MSG_SERVICE_ACCEPT:B = 0x6t

.field public static final SSH_MSG_SERVICE_REQUEST:B = 0x5t

.field public static final SSH_MSG_UNIMPLEMENTED:B = 0x3t

.field public static final SSH_MSG_USERAUTH_BANNER:B = 0x35t

.field public static final SSH_MSG_USERAUTH_FAILURE:B = 0x33t

.field public static final SSH_MSG_USERAUTH_GSSAPI_MIC:B = 0x42t

.field public static final SSH_MSG_USERAUTH_INFO_REQUEST:B = 0x3ct

.field public static final SSH_MSG_USERAUTH_INFO_RESPONSE:B = 0x3dt

.field public static final SSH_MSG_USERAUTH_PASSWD_CHANGEREQ:B = 0x3ct

.field public static final SSH_MSG_USERAUTH_PK_OK:B = 0x3ct

.field public static final SSH_MSG_USERAUTH_REQUEST:B = 0x32t

.field public static final SSH_MSG_USERAUTH_SUCCESS:B = 0x34t

.field public static final SSH_OPEN_ADMINISTRATIVELY_PROHIBITED:I = 0x1

.field public static final SSH_OPEN_CONNECT_FAILED:I = 0x2

.field public static final SSH_OPEN_RESOURCE_SHORTAGE:I = 0x4

.field public static final SSH_OPEN_UNKNOWN_CHANNEL_TYPE:I = 0x3

.field public static final SSH_PACKET_HEADER_LEN:I = 0x5

.field public static final SSH_REQUIRED_PAYLOAD_PACKET_LENGTH_SUPPORT:I = 0x8000

.field public static final SSH_REQUIRED_TOTAL_PACKET_LENGTH_SUPPORT:I = 0x88b8


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAmbiguousOpcodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 167
    invoke-static {}, Lorg/apache/sshd/common/SshConstants$LazyAmbiguousOpcodesHolder;->access$000()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getCommandMessageName(I)Ljava/lang/String;
    .locals 2
    .param p0, "cmd"    # I

    .line 199
    invoke-static {}, Lorg/apache/sshd/common/SshConstants$LazyMessagesMapHolder;->access$100()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 203
    :cond_0
    return-object v0
.end method

.method public static getDisconnectReasonName(I)Ljava/lang/String;
    .locals 2
    .param p0, "reason"    # I

    .line 225
    invoke-static {}, Lorg/apache/sshd/common/SshConstants$LazyReasonsMapHolder;->access$200()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 229
    :cond_0
    return-object v0
.end method

.method public static getOpenErrorCodeName(I)Ljava/lang/String;
    .locals 2
    .param p0, "code"    # I

    .line 251
    invoke-static {}, Lorg/apache/sshd/common/SshConstants$LazyOpenCodesMapHolder;->access$300()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 252
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 255
    :cond_0
    return-object v0
.end method

.method public static isAmbiguousOpcode(I)Z
    .locals 2
    .param p0, "cmd"    # I

    .line 158
    invoke-static {}, Lorg/apache/sshd/common/SshConstants;->getAmbiguousOpcodes()Ljava/util/Set;

    move-result-object v0

    .line 159
    .local v0, "ambiguousOpcodes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
