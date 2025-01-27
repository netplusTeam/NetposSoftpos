.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
.source "MqttTopicImpl.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttTopic;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .line 176
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;-><init>(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private constructor <init>([B)V
    .locals 0
    .param p1, "binary"    # [B

    .line 172
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;-><init>([B)V

    .line 173
    return-void
.end method

.method private static checkNoWildcardCharacters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 139
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 140
    .local v1, "multiLevelIndex":I
    const-string v2, "."

    const-string v3, "), found at index "

    const-string v4, " ["

    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    .line 144
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 145
    .local v6, "singleLevelIndex":I
    if-ne v6, v5, :cond_0

    .line 149
    return-void

    .line 146
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "] must not contain single level wildcard ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 141
    .end local v6    # "singleLevelIndex":I
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] must not contain multi level wildcard ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method static checkWellFormed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 112
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->checkWellFormed(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->checkNoWildcardCharacters(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private static containsWildcardCharacters([B)Z
    .locals 5
    .param p0, "binary"    # [B

    .line 123
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-byte v3, p0, v2

    .line 124
    .local v3, "b":B
    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 123
    .end local v3    # "b":B
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .restart local v3    # "b":B
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 128
    .end local v3    # "b":B
    :cond_2
    return v1
.end method

.method public static decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .locals 2
    .param p0, "byteBuf"    # Lio/netty/buffer/ByteBuf;

    .line 85
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->decode(Lio/netty/buffer/ByteBuf;)[B

    move-result-object v0

    .line 86
    .local v0, "binary":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->of([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method static isWellFormed([B)Z
    .locals 1
    .param p0, "binary"    # [B

    .line 99
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->isWellFormed([B)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->containsWildcardCharacters([B)Z

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

.method public static of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 45
    const-string v0, "Topic"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 58
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/Checks;->notEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->checkLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->checkWellFormed(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static of([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .locals 1
    .param p0, "binary"    # [B

    .line 71
    array-length v0, p0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->isInRange([B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->isWellFormed([B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;-><init>([B)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method static splitLevels(Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->builder()Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v0

    .line 159
    .local v0, "levelsBuilder":Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;, "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 161
    .local v1, "start":I
    :goto_0
    const/16 v2, 0x2f

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 162
    .local v2, "end":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 163
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 164
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->build()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v3

    return-object v3

    .line 166
    :cond_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    .line 167
    add-int/lit8 v1, v2, 0x1

    .line 168
    .end local v2    # "end":I
    goto :goto_0
.end method


# virtual methods
.method public extend()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Default;
    .locals 1

    .line 191
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Default;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Default;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;)V

    return-object v0
.end method

.method public bridge synthetic extend()Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilder$Complete;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->extend()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method public filter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    .locals 1

    .line 186
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->of(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->filter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v0

    return-object v0
.end method

.method public getLevels()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->splitLevels(Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLevels()Ljava/util/List;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->getLevels()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method
