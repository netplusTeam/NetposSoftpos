.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
.source "MqttTopicLevels.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final firstEnd:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 32
    return-void
.end method

.method constructor <init>([BI)V
    .locals 0
    .param p1, "array"    # [B
    .param p2, "firstEnd"    # I

    .line 49
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;-><init>([B)V

    .line 50
    iput p2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->firstEnd:I

    .line 51
    return-void
.end method

.method public static concat(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;
    .locals 6
    .param p0, "level1"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .param p1, "level2"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    .line 37
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->trim()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->getArray()[B

    move-result-object v0

    .line 38
    .local v0, "array1":[B
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->trim()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->getArray()[B

    move-result-object v1

    .line 39
    .local v1, "array2":[B
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 40
    .local v2, "array":[B
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    array-length v3, v0

    const/16 v5, 0x2f

    aput-byte v5, v2, v3

    .line 42
    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    new-instance v3, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->length()I

    move-result v4

    invoke-direct {v3, v2, v4}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;-><init>([BI)V

    return-object v3
.end method


# virtual methods
.method public after(I)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .locals 5
    .param p1, "index"    # I

    .line 70
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->array:[B

    aget-byte v0, v0, p1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 71
    add-int/lit8 v0, p1, 0x1

    .line 72
    .local v0, "start":I
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->array:[B

    invoke-static {v2, v0, v1}, Lcom/hivemq/client/internal/util/ByteArrayUtil;->indexOf([BIB)I

    move-result v1

    .line 73
    .local v1, "end":I
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->array:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->array:[B

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->array:[B

    array-length v3, v3

    invoke-static {v2, v0, v3}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->of([BII)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object v2

    return-object v2

    .line 76
    :cond_0
    new-instance v2, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->array:[B

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->array:[B

    array-length v4, v4

    invoke-static {v3, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    sub-int v4, v1, v0

    invoke-direct {v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;-><init>([BI)V

    return-object v2

    .line 70
    .end local v0    # "start":I
    .end local v1    # "end":I
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "topic levels must only be split on /"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public before(I)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;
    .locals 3
    .param p1, "index"    # I

    .line 59
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->array:[B

    array-length v0, v0

    if-ne p1, v0, :cond_0

    .line 60
    return-object p0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->array:[B

    aget-byte v0, v0, p1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 63
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->firstEnd:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->array:[B

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->firstEnd:I

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;->of([BII)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevel;

    move-result-object v0

    return-object v0

    .line 66
    :cond_1
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->array:[B

    invoke-static {v2, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->firstEnd:I

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;-><init>([BI)V

    return-object v0

    .line 62
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "topic levels must only be split on /"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected getEnd()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicLevels;->firstEnd:I

    return v0
.end method
