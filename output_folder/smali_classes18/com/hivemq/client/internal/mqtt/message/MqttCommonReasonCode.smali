.class public final enum Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;
.super Ljava/lang/Enum;
.source "MqttCommonReasonCode.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum BAD_AUTHENTICATION_METHOD:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum CONNECTION_RATE_EXCEEDED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum IMPLEMENTATION_SPECIFIC_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum MALFORMED_PACKET:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum NOT_AUTHORIZED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum NO_MATCHING_SUBSCRIBERS:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum PACKET_IDENTIFIER_IN_USE:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum PACKET_IDENTIFIER_NOT_FOUND:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum PACKET_TOO_LARGE:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum PAYLOAD_FORMAT_INVALID:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum PROTOCOL_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum QOS_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum QUOTA_EXCEEDED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum RETAIN_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum SERVER_BUSY:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum SERVER_MOVED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum SHARED_SUBSCRIPTIONS_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum SUBSCRIPTION_IDENTIFIERS_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum SUCCESS:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum TOPIC_FILTER_INVALID:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum TOPIC_NAME_INVALID:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum UNSPECIFIED_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum USE_ANOTHER_SERVER:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum WILDCARD_SUBSCRIPTIONS_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 30
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->SUCCESS:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 31
    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v3, "NO_MATCHING_SUBSCRIBERS"

    const/4 v4, 0x1

    const/16 v5, 0x10

    invoke-direct {v1, v3, v4, v5}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->NO_MATCHING_SUBSCRIBERS:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 32
    new-instance v3, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v6, "UNSPECIFIED_ERROR"

    const/4 v7, 0x2

    const/16 v8, 0x80

    invoke-direct {v3, v6, v7, v8}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->UNSPECIFIED_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 33
    new-instance v6, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v8, "MALFORMED_PACKET"

    const/4 v9, 0x3

    const/16 v10, 0x81

    invoke-direct {v6, v8, v9, v10}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->MALFORMED_PACKET:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 34
    new-instance v8, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v10, "PROTOCOL_ERROR"

    const/4 v11, 0x4

    const/16 v12, 0x82

    invoke-direct {v8, v10, v11, v12}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 35
    new-instance v10, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v12, "IMPLEMENTATION_SPECIFIC_ERROR"

    const/4 v13, 0x5

    const/16 v14, 0x83

    invoke-direct {v10, v12, v13, v14}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->IMPLEMENTATION_SPECIFIC_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 36
    new-instance v12, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v14, "NOT_AUTHORIZED"

    const/4 v15, 0x6

    const/16 v13, 0x87

    invoke-direct {v12, v14, v15, v13}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 37
    new-instance v13, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v14, "SERVER_BUSY"

    const/4 v15, 0x7

    const/16 v11, 0x89

    invoke-direct {v13, v14, v15, v11}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->SERVER_BUSY:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 38
    new-instance v11, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v14, "BAD_AUTHENTICATION_METHOD"

    const/16 v15, 0x8

    const/16 v9, 0x8c

    invoke-direct {v11, v14, v15, v9}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->BAD_AUTHENTICATION_METHOD:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 39
    new-instance v9, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v14, "TOPIC_FILTER_INVALID"

    const/16 v15, 0x9

    const/16 v7, 0x8f

    invoke-direct {v9, v14, v15, v7}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->TOPIC_FILTER_INVALID:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 40
    new-instance v7, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v14, "TOPIC_NAME_INVALID"

    const/16 v15, 0xa

    const/16 v4, 0x90

    invoke-direct {v7, v14, v15, v4}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->TOPIC_NAME_INVALID:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 41
    new-instance v4, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v14, "PACKET_IDENTIFIER_IN_USE"

    const/16 v15, 0xb

    const/16 v2, 0x91

    invoke-direct {v4, v14, v15, v2}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->PACKET_IDENTIFIER_IN_USE:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 42
    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v14, "PACKET_IDENTIFIER_NOT_FOUND"

    const/16 v15, 0xc

    const/16 v5, 0x92

    invoke-direct {v2, v14, v15, v5}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->PACKET_IDENTIFIER_NOT_FOUND:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 43
    new-instance v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v14, "PACKET_TOO_LARGE"

    const/16 v15, 0xd

    move-object/from16 v16, v2

    const/16 v2, 0x95

    invoke-direct {v5, v14, v15, v2}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->PACKET_TOO_LARGE:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 44
    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v14, "QUOTA_EXCEEDED"

    const/16 v15, 0xe

    move-object/from16 v17, v5

    const/16 v5, 0x97

    invoke-direct {v2, v14, v15, v5}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->QUOTA_EXCEEDED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 45
    new-instance v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v14, "PAYLOAD_FORMAT_INVALID"

    const/16 v15, 0xf

    move-object/from16 v18, v2

    const/16 v2, 0x99

    invoke-direct {v5, v14, v15, v2}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->PAYLOAD_FORMAT_INVALID:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 46
    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v14, "RETAIN_NOT_SUPPORTED"

    const/16 v15, 0x9a

    move-object/from16 v19, v5

    const/16 v5, 0x10

    invoke-direct {v2, v14, v5, v15}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->RETAIN_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 47
    new-instance v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v14, "QOS_NOT_SUPPORTED"

    const/16 v15, 0x11

    move-object/from16 v20, v2

    const/16 v2, 0x9b

    invoke-direct {v5, v14, v15, v2}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->QOS_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 48
    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v14, "USE_ANOTHER_SERVER"

    const/16 v15, 0x12

    move-object/from16 v21, v5

    const/16 v5, 0x9c

    invoke-direct {v2, v14, v15, v5}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->USE_ANOTHER_SERVER:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 49
    new-instance v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v14, "SERVER_MOVED"

    const/16 v15, 0x13

    move-object/from16 v22, v2

    const/16 v2, 0x9d

    invoke-direct {v5, v14, v15, v2}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->SERVER_MOVED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 50
    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v14, "SHARED_SUBSCRIPTIONS_NOT_SUPPORTED"

    const/16 v15, 0x14

    move-object/from16 v23, v5

    const/16 v5, 0x9e

    invoke-direct {v2, v14, v15, v5}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->SHARED_SUBSCRIPTIONS_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 51
    new-instance v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v14, "CONNECTION_RATE_EXCEEDED"

    const/16 v15, 0x15

    move-object/from16 v24, v2

    const/16 v2, 0x9f

    invoke-direct {v5, v14, v15, v2}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->CONNECTION_RATE_EXCEEDED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 52
    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v14, "SUBSCRIPTION_IDENTIFIERS_NOT_SUPPORTED"

    const/16 v15, 0x16

    move-object/from16 v25, v5

    const/16 v5, 0xa1

    invoke-direct {v2, v14, v15, v5}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->SUBSCRIPTION_IDENTIFIERS_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 53
    new-instance v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v14, "WILDCARD_SUBSCRIPTIONS_NOT_SUPPORTED"

    const/16 v15, 0x17

    move-object/from16 v26, v2

    const/16 v2, 0xa2

    invoke-direct {v5, v14, v15, v2}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->WILDCARD_SUBSCRIPTIONS_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    .line 28
    const/16 v2, 0x18

    new-array v2, v2, [Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v11, v2, v0

    const/16 v0, 0x9

    aput-object v9, v2, v0

    const/16 v0, 0xa

    aput-object v7, v2, v0

    const/16 v0, 0xb

    aput-object v4, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v5, v2, v0

    sput-object v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->$VALUES:[Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->code:I

    .line 59
    return-void
.end method

.method public static allErrors(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;",
            ">;)Z"
        }
    .end annotation

    .line 68
    .local p0, "reasonCodes":Lcom/hivemq/client/internal/util/collections/ImmutableList;, "Lcom/hivemq/client/internal/util/collections/ImmutableList<+Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 69
    invoke-interface {p0, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    invoke-interface {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;->isError()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const/4 v1, 0x0

    return v1

    .line 68
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    return-object v0
.end method

.method public static values()[Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;
    .locals 1

    .line 28
    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->$VALUES:[Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    invoke-virtual {v0}, [Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->code:I

    return v0
.end method
