.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
.source "MqttTopicFilterImpl.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;


# static fields
.field static final WILDCARD_CHECK_FAILURE:I = -0x1

.field private static final WILDCARD_CHECK_STATE_BEFORE:I = 0x1

.field private static final WILDCARD_CHECK_STATE_MULTI_LEVEL:I = 0x2

.field private static final WILDCARD_CHECK_STATE_NOT_BEFORE:I = 0x0

.field private static final WILDCARD_CHECK_STATE_SINGLE_LEVEL:I = 0x3

.field private static final WILDCARD_FLAG_MULTI_LEVEL:I = 0x1

.field private static final WILDCARD_FLAG_SINGLE_LEVEL:I = 0x2


# instance fields
.field final wildcardFlags:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "wildcardFlags"    # I

    .line 248
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;-><init>(Ljava/lang/String;)V

    .line 249
    iput p2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->wildcardFlags:I

    .line 250
    return-void
.end method

.method constructor <init>([BI)V
    .locals 0
    .param p1, "binary"    # [B
    .param p2, "wildcardFlags"    # I

    .line 243
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;-><init>([B)V

    .line 244
    iput p2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->wildcardFlags:I

    .line 245
    return-void
.end method

.method public static decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    .locals 2
    .param p0, "byteBuf"    # Lio/netty/buffer/ByteBuf;

    .line 117
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->decode(Lio/netty/buffer/ByteBuf;)[B

    move-result-object v0

    .line 118
    .local v0, "binary":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->of([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static matches([BI[B)Z
    .locals 8
    .param p0, "filter"    # [B
    .param p1, "offset"    # I
    .param p2, "topic"    # [B

    .line 305
    move v0, p1

    .line 306
    .local v0, "fi":I
    const/4 v1, 0x0

    .line 307
    .local v1, "ti":I
    :goto_0
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v2, :cond_7

    .line 308
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "fi":I
    .local v2, "fi":I
    aget-byte v0, p0, v0

    .line 309
    .local v0, "fb":B
    const/16 v5, 0x23

    if-ne v0, v5, :cond_0

    .line 310
    return v4

    .line 311
    :cond_0
    const/16 v6, 0x2b

    const/16 v7, 0x2f

    if-ne v0, v6, :cond_2

    .line 312
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_6

    .line 313
    aget-byte v3, p2, v1

    if-ne v3, v7, :cond_1

    .line 314
    goto :goto_2

    .line 316
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 319
    :cond_2
    array-length v6, p2

    if-ne v1, v6, :cond_4

    .line 321
    if-ne v0, v7, :cond_3

    add-int/lit8 v6, v2, 0x1

    array-length v7, p0

    if-ne v6, v7, :cond_3

    aget-byte v6, p0, v2

    if-ne v6, v5, :cond_3

    move v3, v4

    :cond_3
    return v3

    .line 324
    :cond_4
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "ti":I
    .local v4, "ti":I
    aget-byte v1, p2, v1

    if-eq v1, v0, :cond_5

    .line 325
    return v3

    .line 324
    :cond_5
    move v1, v4

    .line 328
    .end local v0    # "fb":B
    .end local v4    # "ti":I
    .restart local v1    # "ti":I
    :cond_6
    :goto_2
    move v0, v2

    goto :goto_0

    .line 329
    .end local v2    # "fi":I
    .local v0, "fi":I
    :cond_7
    array-length v2, p0

    if-ne v0, v2, :cond_8

    array-length v2, p2

    if-ne v1, v2, :cond_8

    move v3, v4

    :cond_8
    return v3
.end method

.method private static matches([BI[BI)Z
    .locals 8
    .param p0, "filter1"    # [B
    .param p1, "offset1"    # I
    .param p2, "filter2"    # [B
    .param p3, "offset2"    # I

    .line 344
    move v0, p1

    .line 345
    .local v0, "i1":I
    move v1, p3

    .line 346
    .local v1, "i2":I
    :goto_0
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v2, :cond_8

    .line 347
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i1":I
    .local v2, "i1":I
    aget-byte v0, p0, v0

    .line 348
    .local v0, "b1":B
    const/16 v5, 0x23

    if-ne v0, v5, :cond_0

    .line 349
    return v4

    .line 350
    :cond_0
    const/16 v6, 0x2b

    const/16 v7, 0x2f

    if-ne v0, v6, :cond_3

    .line 351
    aget-byte v4, p2, v1

    if-ne v4, v5, :cond_1

    .line 352
    return v3

    .line 354
    :cond_1
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_7

    .line 355
    aget-byte v3, p2, v1

    if-ne v3, v7, :cond_2

    .line 356
    goto :goto_2

    .line 358
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 361
    :cond_3
    array-length v6, p2

    if-ne v1, v6, :cond_5

    .line 363
    if-ne v0, v7, :cond_4

    add-int/lit8 v6, v2, 0x1

    array-length v7, p0

    if-ne v6, v7, :cond_4

    aget-byte v6, p0, v2

    if-ne v6, v5, :cond_4

    move v3, v4

    :cond_4
    return v3

    .line 366
    :cond_5
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i2":I
    .local v4, "i2":I
    aget-byte v1, p2, v1

    if-eq v1, v0, :cond_6

    .line 367
    return v3

    .line 366
    :cond_6
    move v1, v4

    .line 370
    .end local v0    # "b1":B
    .end local v4    # "i2":I
    .restart local v1    # "i2":I
    :cond_7
    :goto_2
    move v0, v2

    goto :goto_0

    .line 371
    .end local v2    # "i1":I
    .local v0, "i1":I
    :cond_8
    array-length v2, p0

    if-ne v0, v2, :cond_9

    array-length v2, p2

    if-ne v1, v2, :cond_9

    move v3, v4

    :cond_9
    return v3
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    .locals 3
    .param p0, "sharedTopicFilter"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;

    .line 84
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->getTopicFilterString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->wildcardFlags:I

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    .locals 3
    .param p0, "topic"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 74
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .line 57
    const-string v0, "Topic filter"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/util/Checks;->notEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->checkLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->checkWellFormed(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->isShared(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->ofInternal(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->validateWildcards(Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, "wildcardFlags":I
    new-instance v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    invoke-direct {v1, p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public static of([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    .locals 3
    .param p0, "binary"    # [B

    .line 94
    array-length v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->isInRange([B)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->isWellFormed([B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->isShared([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->ofInternal([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;

    move-result-object v0

    return-object v0

    .line 100
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->validateWildcards([BI)I

    move-result v0

    .line 101
    .local v0, "wildcardFlags":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 102
    return-object v1

    .line 104
    :cond_2
    new-instance v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    invoke-direct {v1, p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;-><init>([BI)V

    return-object v1

    .line 95
    .end local v0    # "wildcardFlags":I
    :cond_3
    :goto_0
    return-object v1
.end method

.method static validateWildcards(Ljava/lang/String;I)I
    .locals 9
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "start"    # I

    .line 187
    const/4 v0, 0x0

    .line 189
    .local v0, "wildcardFlags":I
    const/4 v1, 0x1

    .line 191
    .local v1, "state":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 192
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 193
    .local v3, "c":C
    const-string v4, ") at index "

    const/16 v5, 0x2f

    const/16 v6, 0x23

    const/16 v7, 0x2b

    const-string v8, "Topic filter ["

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 226
    :pswitch_0
    if-ne v3, v5, :cond_0

    .line 232
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 227
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "] contains misplaced wildcard characters. Single level wildcard ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-int v6, v2, p1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " must be followed by a topic level separator."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 222
    :pswitch_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] contains misplaced wildcard characters. Multi level wildcard ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") must be the last character."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 205
    :pswitch_2
    sparse-switch v3, :sswitch_data_0

    .line 218
    const/4 v1, 0x0

    .line 220
    goto :goto_1

    .line 215
    :sswitch_0
    const/4 v1, 0x1

    .line 216
    goto :goto_1

    .line 211
    :sswitch_1
    or-int/lit8 v0, v0, 0x2

    .line 212
    const/4 v1, 0x3

    .line 213
    goto :goto_1

    .line 207
    :sswitch_2
    or-int/lit8 v0, v0, 0x1

    .line 208
    const/4 v1, 0x2

    .line 209
    goto :goto_1

    .line 195
    :pswitch_3
    if-eq v3, v7, :cond_1

    if-eq v3, v6, :cond_1

    .line 200
    if-ne v3, v5, :cond_2

    .line 201
    const/4 v1, 0x1

    goto :goto_1

    .line 196
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] contains misplaced wildcard characters. Wildcard ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-int v6, v2, p1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " must follow a topic level separator."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 191
    .end local v3    # "c":C
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 237
    .end local v2    # "i":I
    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_2
        0x2b -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method static validateWildcards([BI)I
    .locals 7
    .param p0, "binary"    # [B
    .param p1, "start"    # I

    .line 131
    const/4 v0, 0x0

    .line 133
    .local v0, "wildcardFlags":I
    const/4 v1, 0x1

    .line 135
    .local v1, "state":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_4

    .line 136
    aget-byte v3, p0, v2

    .line 137
    .local v3, "b":B
    const/16 v4, 0x2f

    const/4 v5, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 166
    :pswitch_0
    if-eq v3, v4, :cond_0

    .line 167
    return v5

    .line 169
    :cond_0
    const/4 v1, 0x1

    goto :goto_2

    .line 164
    :pswitch_1
    return v5

    .line 147
    :pswitch_2
    sparse-switch v3, :sswitch_data_0

    .line 160
    const/4 v1, 0x0

    .line 162
    goto :goto_2

    .line 157
    :sswitch_0
    const/4 v1, 0x1

    .line 158
    goto :goto_2

    .line 153
    :sswitch_1
    or-int/lit8 v0, v0, 0x2

    .line 154
    const/4 v1, 0x3

    .line 155
    goto :goto_2

    .line 149
    :sswitch_2
    or-int/lit8 v0, v0, 0x1

    .line 150
    const/4 v1, 0x2

    .line 151
    goto :goto_2

    .line 139
    :pswitch_3
    const/16 v6, 0x2b

    if-eq v3, v6, :cond_2

    const/16 v6, 0x23

    if-ne v3, v6, :cond_1

    goto :goto_1

    .line 142
    :cond_1
    if-ne v3, v4, :cond_3

    .line 143
    const/4 v1, 0x1

    goto :goto_2

    .line 140
    :cond_2
    :goto_1
    return v5

    .line 135
    .end local v3    # "b":B
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    :cond_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_2
        0x2b -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public containsMultiLevelWildcard()Z
    .locals 2

    .line 264
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->wildcardFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public containsSingleLevelWildcard()Z
    .locals 1

    .line 269
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->wildcardFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsWildcards()Z
    .locals 1

    .line 259
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->wildcardFlags:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public extend()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;
    .locals 1

    .line 376
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)V

    return-object v0
.end method

.method public bridge synthetic extend()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Complete;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->extend()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;

    move-result-object v0

    return-object v0
.end method

.method getFilterByteStart()I
    .locals 1

    .line 283
    const/4 v0, 0x0

    return v0
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

    .line 254
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->getTopicFilterString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->splitLevels(Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLevels()Ljava/util/List;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->getLevels()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()[B
    .locals 4

    .line 291
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->getFilterByteStart()I

    move-result v0

    .line 292
    .local v0, "filterByteStart":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->toBinary()[B

    move-result-object v1

    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getTopicFilterString()Ljava/lang/String;
    .locals 1

    .line 287
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isShared()Z
    .locals 1

    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public matches(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)Z
    .locals 4
    .param p1, "topicFilter"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    .line 338
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->toBinary()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->getFilterByteStart()I

    move-result v1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->toBinary()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->getFilterByteStart()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->matches([BI[BI)Z

    move-result v0

    return v0
.end method

.method public matches(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;)Z
    .locals 3
    .param p1, "topic"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    .line 301
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->toBinary()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->getFilterByteStart()I

    move-result v1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->toBinary()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->matches([BI[B)Z

    move-result v0

    return v0
.end method

.method public matches(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Z
    .locals 1
    .param p1, "topic"    # Lcom/hivemq/client/mqtt/datatypes/MqttTopic;

    .line 297
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->topic(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->matches(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;)Z

    move-result v0

    return v0
.end method

.method public matches(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Z
    .locals 1
    .param p1, "topicFilter"    # Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;

    .line 334
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->topicFilter(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->matches(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)Z

    move-result v0

    return v0
.end method

.method public share(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;
    .locals 1
    .param p1, "shareName"    # Ljava/lang/String;

    .line 279
    invoke-static {p1, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->of(Ljava/lang/String;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic share(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttSharedTopicFilter;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->share(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;

    move-result-object p1

    return-object p1
.end method
