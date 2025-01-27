.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
.source "MqttSharedTopicFilterImpl.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttSharedTopicFilter;


# static fields
.field private static final SHARE_PREFIX_LENGTH:I


# instance fields
.field private filterByteStart:I

.field private filterCharStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-string v0, "$share/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->SHARE_PREFIX_LENGTH:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "shareNameCharEnd"    # I
    .param p3, "wildcardFlags"    # I

    .line 237
    invoke-direct {p0, p1, p3}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;-><init>(Ljava/lang/String;I)V

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->filterByteStart:I

    .line 239
    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->filterCharStart:I

    .line 240
    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1
    .param p1, "binary"    # [B
    .param p2, "shareNameByteEnd"    # I
    .param p3, "wildcardFlags"    # I

    .line 229
    invoke-direct {p0, p1, p3}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;-><init>([BI)V

    .line 230
    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->filterByteStart:I

    .line 231
    const/4 v0, -0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->filterCharStart:I

    .line 232
    return-void
.end method

.method private static checkShareName(Ljava/lang/String;)V
    .locals 6
    .param p0, "shareName"    # Ljava/lang/String;

    .line 181
    const-string v0, "Share name"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/util/Checks;->notEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->checkWellFormed(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 184
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 185
    .local v1, "c":C
    const/16 v2, 0x23

    if-eq v1, v2, :cond_2

    .line 187
    const/16 v2, 0x2b

    if-eq v1, v2, :cond_1

    .line 189
    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    .line 183
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .restart local v1    # "c":C
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Share name ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] must not contain topic level separator ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "), found at index: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 188
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->shareNameNoSingleLevelWildcard(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->shareNameNoMultiLevelWildcard(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_3
    return-void
.end method

.method private getFilterCharStart()I
    .locals 3

    .line 272
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->filterCharStart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    sget v2, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->SHARE_PREFIX_LENGTH:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->filterCharStart:I

    .line 275
    :cond_0
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->filterCharStart:I

    return v0
.end method

.method private static getShareName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "sharedTopicFilter"    # Ljava/lang/String;

    .line 198
    sget v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->SHARE_PREFIX_LENGTH:I

    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 199
    .local v1, "shareNameEnd":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 199
    :goto_0
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isShared(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 45
    const-string v0, "$share/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isShared([B)Z
    .locals 4
    .param p0, "binary"    # [B

    .line 57
    array-length v0, p0

    sget v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->SHARE_PREFIX_LENGTH:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 58
    return v2

    .line 60
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->SHARE_PREFIX_LENGTH:I

    if-ge v0, v1, :cond_2

    .line 61
    aget-byte v1, p0, v0

    const-string v3, "$share/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_1

    .line 62
    return v2

    .line 60
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static of(Ljava/lang/String;Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;
    .locals 4
    .param p0, "shareName"    # Ljava/lang/String;
    .param p1, "topicFilter"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    .line 167
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->checkShareName(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->getTopicFilterString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->sharedTopicFilter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "sharedTopicFilter":Ljava/lang/String;
    const-string v1, "Shared topic filter"

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->checkLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->shareNameCharEnd(Ljava/lang/String;)I

    move-result v2

    iget v3, p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->wildcardFlags:I

    invoke-direct {v1, v0, v2, v3}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;-><init>(Ljava/lang/String;II)V

    return-object v1
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;
    .locals 4
    .param p0, "shareName"    # Ljava/lang/String;
    .param p1, "topicFilter"    # Ljava/lang/String;

    .line 146
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->checkShareName(Ljava/lang/String;)V

    .line 147
    const-string v0, "Topic filter"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->checkWellFormed(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->sharedTopicFilter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "sharedTopicFilter":Ljava/lang/String;
    const-string v1, "Shared topic filter"

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->checkLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->validateWildcards(Ljava/lang/String;I)I

    move-result v1

    .line 152
    .local v1, "wildcardFlags":I
    new-instance v2, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->shareNameCharEnd(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v0, v3, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;-><init>(Ljava/lang/String;II)V

    return-object v2
.end method

.method static ofInternal(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .line 79
    sget v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->SHARE_PREFIX_LENGTH:I

    .line 80
    .local v0, "shareNameEnd":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 82
    .local v1, "c":C
    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 83
    goto :goto_1

    .line 85
    :cond_0
    const/16 v2, 0x23

    if-eq v1, v2, :cond_2

    .line 87
    const/16 v2, 0x2b

    if-eq v1, v2, :cond_1

    .line 90
    nop

    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 91
    goto :goto_0

    .line 88
    .restart local v1    # "c":C
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->getShareName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->shareNameNoSingleLevelWildcard(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->getShareName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->shareNameNoMultiLevelWildcard(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    .end local v1    # "c":C
    :cond_3
    :goto_1
    sget v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->SHARE_PREFIX_LENGTH:I

    if-eq v0, v1, :cond_5

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    .line 97
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->validateWildcards(Ljava/lang/String;I)I

    move-result v1

    .line 98
    .local v1, "wildcardFlags":I
    new-instance v2, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;

    invoke-direct {v2, p0, v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;-><init>(Ljava/lang/String;II)V

    return-object v2

    .line 95
    .end local v1    # "wildcardFlags":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Topic filter must be at least one character long."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Share name must be at least one character long."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static ofInternal([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;
    .locals 4
    .param p0, "binary"    # [B

    .line 112
    sget v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->SHARE_PREFIX_LENGTH:I

    .line 113
    .local v0, "shareNameEnd":I
    :goto_0
    array-length v1, p0

    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    .line 114
    aget-byte v1, p0, v0

    .line 115
    .local v1, "b":B
    const/16 v3, 0x2f

    if-ne v1, v3, :cond_0

    .line 116
    goto :goto_2

    .line 118
    :cond_0
    const/16 v3, 0x23

    if-eq v1, v3, :cond_2

    const/16 v3, 0x2b

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 121
    :cond_1
    nop

    .end local v1    # "b":B
    add-int/lit8 v0, v0, 0x1

    .line 122
    goto :goto_0

    .line 119
    .restart local v1    # "b":B
    :cond_2
    :goto_1
    return-object v2

    .line 123
    .end local v1    # "b":B
    :cond_3
    :goto_2
    sget v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->SHARE_PREFIX_LENGTH:I

    if-eq v0, v1, :cond_6

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_4

    goto :goto_3

    .line 126
    :cond_4
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->validateWildcards([BI)I

    move-result v1

    .line 127
    .local v1, "wildcardFlags":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    .line 128
    return-object v2

    .line 130
    :cond_5
    new-instance v2, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;

    invoke-direct {v2, p0, v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;-><init>([BII)V

    return-object v2

    .line 124
    .end local v1    # "wildcardFlags":I
    :cond_6
    :goto_3
    return-object v2
.end method

.method private static shareNameCharEnd(Ljava/lang/String;)I
    .locals 2
    .param p0, "shareName"    # Ljava/lang/String;

    .line 220
    sget v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->SHARE_PREFIX_LENGTH:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static shareNameNoMultiLevelWildcard(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "shareName"    # Ljava/lang/String;
    .param p1, "index"    # I

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Share name ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] must not contain multi level wildcard ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), found at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static shareNameNoSingleLevelWildcard(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "shareName"    # Ljava/lang/String;
    .param p1, "index"    # I

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Share name ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] must not contain single level wildcard ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), found at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sharedTopicFilter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "shareName"    # Ljava/lang/String;
    .param p1, "topicFilter"    # Ljava/lang/String;

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$share/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public extendShared()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;
    .locals 1

    .line 280
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;)V

    return-object v0
.end method

.method public bridge synthetic extendShared()Lcom/hivemq/client/mqtt/datatypes/MqttSharedTopicFilterBuilder$Complete;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->extendShared()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;

    move-result-object v0

    return-object v0
.end method

.method getFilterByteStart()I
    .locals 3

    .line 264
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->filterByteStart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->toBinary()[B

    move-result-object v0

    sget v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->SHARE_PREFIX_LENGTH:I

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x2f

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/util/ByteArrayUtil;->indexOf([BIB)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->filterByteStart:I

    .line 268
    :cond_0
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->filterByteStart:I

    return v0
.end method

.method public getShareName()Ljava/lang/String;
    .locals 3

    .line 249
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->SHARE_PREFIX_LENGTH:I

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->getFilterCharStart()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    .locals 1

    .line 259
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->of(Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTopicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->getTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v0

    return-object v0
.end method

.method public getTopicFilterString()Ljava/lang/String;
    .locals 2

    .line 254
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->getFilterCharStart()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isShared()Z
    .locals 1

    .line 244
    const/4 v0, 0x1

    return v0
.end method
