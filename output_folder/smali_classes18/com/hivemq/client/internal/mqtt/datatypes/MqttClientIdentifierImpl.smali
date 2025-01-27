.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
.source "MqttClientIdentifierImpl.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttClientIdentifier;


# static fields
.field private static final MUST_BE_ALLOWED_BY_SERVER_MAX_BYTES:I = 0x17

.field private static final MUST_BE_ALLOWED_BY_SERVER_MIN_BYTES:I = 0x1

.field public static final REQUEST_CLIENT_IDENTIFIER_FROM_SERVER:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;-><init>([B)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->REQUEST_CLIENT_IDENTIFIER_FROM_SERVER:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .line 90
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;-><init>(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private constructor <init>([B)V
    .locals 0
    .param p1, "binary"    # [B

    .line 86
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;-><init>([B)V

    .line 87
    return-void
.end method

.method public static decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    .locals 2
    .param p0, "byteBuf"    # Lio/netty/buffer/ByteBuf;

    .line 81
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->decode(Lio/netty/buffer/ByteBuf;)[B

    move-result-object v0

    .line 82
    .local v0, "binary":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->of([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 52
    const-string v0, "Client identifier"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->checkLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->checkWellFormed(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static of([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    .locals 1
    .param p0, "binary"    # [B

    .line 66
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->isInRange([B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->isWellFormed([B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;-><init>([B)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public mustBeAllowedByServer()Z
    .locals 8

    .line 95
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->toBinary()[B

    move-result-object v0

    .line 96
    .local v0, "binary":[B
    array-length v1, v0

    .line 97
    .local v1, "length":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_6

    const/16 v4, 0x17

    if-le v1, v4, :cond_0

    goto :goto_2

    .line 100
    :cond_0
    array-length v4, v0

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_5

    aget-byte v6, v0, v5

    .line 101
    .local v6, "b":B
    const/16 v7, 0x61

    if-lt v6, v7, :cond_1

    const/16 v7, 0x7a

    if-le v6, v7, :cond_3

    :cond_1
    const/16 v7, 0x41

    if-lt v6, v7, :cond_2

    const/16 v7, 0x5a

    if-le v6, v7, :cond_3

    :cond_2
    const/16 v7, 0x30

    if-lt v6, v7, :cond_4

    const/16 v7, 0x39

    if-le v6, v7, :cond_3

    goto :goto_1

    .line 100
    .end local v6    # "b":B
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 102
    .restart local v6    # "b":B
    :cond_4
    :goto_1
    return v2

    .line 105
    .end local v6    # "b":B
    :cond_5
    return v3

    .line 98
    :cond_6
    :goto_2
    return v2
.end method
