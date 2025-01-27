.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
.super Lcom/hivemq/client/internal/util/ByteArray;
.source "MqttTopicLevel.java"


# static fields
.field private static final SINGLE_LEVEL_WILDCARD:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x2b

    aput-byte v3, v1, v2

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;-><init>([B)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->SINGLE_LEVEL_WILDCARD:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "array"    # [B

    .line 48
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/util/ByteArray;-><init>([B)V

    .line 49
    return-void
.end method

.method private static isSingleLevelWildcard([BII)Z
    .locals 3
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 44
    sub-int v0, p2, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    aget-byte v0, p0, p1

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static of([BII)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .locals 2
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 37
    invoke-static {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->isSingleLevelWildcard([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->SINGLE_LEVEL_WILDCARD:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;-><init>([B)V

    return-object v0
.end method

.method public static toFilter([BLcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;Z)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    .locals 7
    .param p0, "prefix"    # [B
    .param p1, "topicLevel"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .param p2, "multiLevelWildcard"    # Z

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "length":I
    if-eqz p0, :cond_0

    .line 70
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 72
    :cond_0
    if-eqz p1, :cond_1

    .line 73
    iget-object v1, p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->array:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 75
    :cond_1
    if-eqz p2, :cond_3

    .line 76
    if-eqz p1, :cond_2

    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 79
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 81
    :cond_3
    new-array v1, v0, [B

    .line 82
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .line 83
    .local v2, "cursor":I
    const/16 v3, 0x2f

    const/4 v4, 0x0

    if-eqz p0, :cond_4

    .line 84
    array-length v5, p0

    invoke-static {p0, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    array-length v5, p0

    add-int/2addr v2, v5

    .line 86
    aput-byte v3, v1, v2

    .line 87
    add-int/lit8 v2, v2, 0x1

    .line 89
    :cond_4
    if-eqz p1, :cond_5

    .line 90
    iget-object v5, p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->array:[B

    iget-object v6, p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->array:[B

    array-length v6, v6

    invoke-static {v5, v4, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget-object v4, p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->array:[B

    array-length v4, v4

    add-int/2addr v2, v4

    .line 93
    :cond_5
    if-eqz p2, :cond_7

    .line 94
    if-eqz p1, :cond_6

    .line 95
    aput-byte v3, v1, v2

    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 98
    :cond_6
    const/16 v3, 0x23

    aput-byte v3, v1, v2

    .line 100
    :cond_7
    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->of([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method getArray()[B
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->array:[B

    return-object v0
.end method

.method public isSingleLevelWildcard()Z
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->array:[B

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->getStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->getEnd()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->isSingleLevelWildcard([BII)Z

    move-result v0

    return v0
.end method

.method public trim()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .locals 0

    .line 60
    return-object p0
.end method
