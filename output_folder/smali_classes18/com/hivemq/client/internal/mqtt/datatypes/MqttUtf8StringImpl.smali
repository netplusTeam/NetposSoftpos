.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
.super Ljava/lang/Object;
.source "MqttUtf8StringImpl.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;


# static fields
.field public static final PROTOCOL_NAME:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;


# instance fields
.field private binary:[B

.field private conversions:I

.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 45
    const-string v2, "MQTT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;-><init>([B)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->PROTOCOL_NAME:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->string:Ljava/lang/String;

    .line 226
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "binary"    # [B

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->binary:[B

    .line 222
    return-void
.end method

.method static checkLength(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 206
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    const v1, 0xffff

    if-le v0, v1, :cond_1

    .line 207
    invoke-static {p0}, Lcom/hivemq/client/internal/util/Utf8Util;->encodedLength(Ljava/lang/String;)I

    move-result v0

    .line 208
    .local v0, "utf8Length":I
    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0xa

    .line 210
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "...] must not be longer than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes, but was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    .end local v0    # "utf8Length":I
    :cond_1
    :goto_0
    return-void
.end method

.method static checkWellFormed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "previousCharIsHighSurrogate":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "] must not contain unmatched UTF-16 surrogate, found at index "

    const-string v4, "."

    const-string v5, " ["

    if-ge v1, v2, :cond_2

    .line 167
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 168
    .local v2, "c":C
    if-eqz v2, :cond_1

    .line 172
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-ne v0, v6, :cond_0

    .line 177
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    .line 166
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .restart local v2    # "c":C
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 169
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] must not contain null character (U+0000), found at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 179
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_2
    if-nez v0, :cond_3

    .line 184
    return-void

    .line 180
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 2
    .param p0, "byteBuf"    # Lio/netty/buffer/ByteBuf;

    .line 120
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->decode(Lio/netty/buffer/ByteBuf;)[B

    move-result-object v0

    .line 121
    .local v0, "binary":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->of([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method static isWellFormed([B)Z
    .locals 5
    .param p0, "binary"    # [B

    .line 141
    invoke-static {p0}, Lcom/hivemq/client/internal/util/Utf8Util;->isWellFormed([B)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 142
    return v1

    .line 144
    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-byte v4, p0, v3

    .line 145
    .local v4, "b":B
    if-nez v4, :cond_1

    .line 146
    return v1

    .line 144
    .end local v4    # "b":B
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    :cond_2
    return v2
.end method

.method public static of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 63
    const-string v0, "UTF-8 encoded string"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 77
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->checkLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->checkWellFormed(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static of([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1
    .param p0, "binary"    # [B

    .line 103
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->isInRange([B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->isWellFormed([B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;-><init>([B)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)I
    .locals 2
    .param p1, "that"    # Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;

    .line 378
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p1, Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->compareTo(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)I

    move-result p1

    return p1
.end method

.method public containsShouldNotCharacters()Z
    .locals 8

    .line 230
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 232
    .local v1, "highSurrogate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 233
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 234
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 235
    return v5

    .line 237
    :cond_0
    if-nez v1, :cond_4

    .line 238
    const v4, 0xd83f

    if-lt v3, v4, :cond_6

    .line 239
    const v6, 0xfdd0

    if-lt v3, v6, :cond_1

    const v6, 0xfdef

    if-gt v3, v6, :cond_1

    .line 240
    return v5

    .line 242
    :cond_1
    const v6, 0xfffe

    and-int v7, v3, v6

    if-ne v7, v6, :cond_2

    .line 243
    return v5

    .line 245
    :cond_2
    if-eq v3, v4, :cond_3

    const v4, 0xd87f

    if-eq v3, v4, :cond_3

    const v4, 0xd8bf

    if-eq v3, v4, :cond_3

    const v4, 0xd8ff

    if-eq v3, v4, :cond_3

    const v4, 0xd93f

    if-eq v3, v4, :cond_3

    const v4, 0xd97f

    if-eq v3, v4, :cond_3

    const v4, 0xd9bf

    if-eq v3, v4, :cond_3

    const v4, 0xd9ff

    if-eq v3, v4, :cond_3

    const v4, 0xda3f

    if-eq v3, v4, :cond_3

    const v4, 0xda7f

    if-eq v3, v4, :cond_3

    const v4, 0xdabf

    if-eq v3, v4, :cond_3

    const v4, 0xdaff

    if-eq v3, v4, :cond_3

    const v4, 0xdb3f

    if-eq v3, v4, :cond_3

    const v4, 0xdb7f

    if-eq v3, v4, :cond_3

    const v4, 0xdbbf

    if-eq v3, v4, :cond_3

    const v4, 0xdbff

    if-ne v3, v4, :cond_6

    .line 261
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 265
    :cond_4
    const v4, 0xdffe

    and-int v6, v3, v4

    if-ne v6, v4, :cond_5

    .line 266
    return v5

    .line 268
    :cond_5
    const/4 v1, 0x0

    .line 232
    .end local v3    # "c":C
    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 271
    .end local v2    # "i":I
    :cond_7
    const/4 v2, 0x0

    return v2
.end method

.method public encode(Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "byteBuf"    # Lio/netty/buffer/ByteBuf;

    .line 335
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toBinary()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->encode([BLio/netty/buffer/ByteBuf;)V

    .line 336
    return-void
.end method

.method public encodedLength()I
    .locals 1

    .line 346
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toBinary()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->encodedLength([B)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 351
    if-ne p0, p1, :cond_0

    .line 352
    const/4 v0, 0x1

    return v0

    .line 354
    :cond_0
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    if-nez v0, :cond_1

    .line 355
    const/4 v0, 0x0

    return v0

    .line 357
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 358
    .local v0, "that":Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->string:Ljava/lang/String;

    .line 359
    .local v1, "string":Ljava/lang/String;
    iget-object v2, v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->string:Ljava/lang/String;

    .line 360
    .local v2, "thatString":Ljava/lang/String;
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 363
    :cond_2
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->binary:[B

    .line 364
    .local v3, "binary":[B
    iget-object v4, v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->binary:[B

    .line 365
    .local v4, "thatBinary":[B
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 366
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    return v5

    .line 368
    :cond_3
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method public hashCode()I
    .locals 1

    .line 373
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method toBinary()[B
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->binary:[B

    .line 287
    .local v0, "binary":[B
    if-nez v0, :cond_1

    .line 288
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->string:Ljava/lang/String;

    .line 289
    .local v1, "string":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toBinary()[B

    move-result-object v2

    return-object v2

    .line 292
    :cond_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 293
    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->binary:[B

    .line 294
    iget v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->conversions:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->conversions:I

    .line 295
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 296
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->string:Ljava/lang/String;

    .line 299
    .end local v1    # "string":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public toByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toBinary()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->string:Ljava/lang/String;

    .line 311
    .local v0, "string":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 312
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->binary:[B

    .line 313
    .local v1, "binary":[B
    if-nez v1, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 316
    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v2

    .line 317
    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->string:Ljava/lang/String;

    .line 318
    iget v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->conversions:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->conversions:I

    .line 319
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 320
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->binary:[B

    .line 323
    .end local v1    # "binary":[B
    :cond_1
    return-object v0
.end method
