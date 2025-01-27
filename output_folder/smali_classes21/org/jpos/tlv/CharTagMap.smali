.class public Lorg/jpos/tlv/CharTagMap;
.super Ljava/util/HashMap;
.source "CharTagMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lorg/jpos/tlv/CharTag;",
        ">;"
    }
.end annotation


# static fields
.field static final EXCEPTION_PREFIX:Ljava/lang/String; = "BAD TLV FORMAT:"


# instance fields
.field private lenLen:I

.field private swapTagWithLength:Z

.field private tagLen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lorg/jpos/tlv/CharTagMap;->tagLen:I

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lorg/jpos/tlv/CharTagMap;->lenLen:I

    return-void
.end method

.method public static getInstance()Lorg/jpos/tlv/CharTagMap;
    .locals 1

    .line 65
    new-instance v0, Lorg/jpos/tlv/CharTagMap;

    invoke-direct {v0}, Lorg/jpos/tlv/CharTagMap;-><init>()V

    return-object v0
.end method

.method private getStr(Ljava/nio/CharBuffer;I)Ljava/lang/String;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/CharBuffer;
    .param p2, "len"    # I

    .line 256
    new-array v0, p2, [C

    .line 257
    .local v0, "ca":[C
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 258
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTLVMsg(Ljava/nio/CharBuffer;)Lorg/jpos/tlv/CharTag;
    .locals 6
    .param p1, "buffer"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 236
    iget-boolean v0, p0, Lorg/jpos/tlv/CharTagMap;->swapTagWithLength:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0, p1}, Lorg/jpos/tlv/CharTagMap;->stripLength(Ljava/nio/CharBuffer;)I

    move-result v0

    .line 238
    .local v0, "len":I
    invoke-direct {p0, p1}, Lorg/jpos/tlv/CharTagMap;->stripTagId(Ljava/nio/CharBuffer;)Ljava/lang/String;

    move-result-object v1

    .local v1, "tagId":Ljava/lang/String;
    goto :goto_0

    .line 240
    .end local v0    # "len":I
    .end local v1    # "tagId":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lorg/jpos/tlv/CharTagMap;->stripTagId(Ljava/nio/CharBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .restart local v1    # "tagId":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/jpos/tlv/CharTagMap;->stripLength(Ljava/nio/CharBuffer;)I

    move-result v0

    .line 244
    .restart local v0    # "len":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    if-lt v2, v0, :cond_1

    .line 251
    invoke-direct {p0, p1, v0}, Lorg/jpos/tlv/CharTagMap;->getStr(Ljava/nio/CharBuffer;I)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lorg/jpos/tlv/CharTagMap;->createTLV(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/tlv/CharTag;

    move-result-object v3

    return-object v3

    .line 245
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "BAD TLV FORMAT:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    .line 248
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 246
    const-string v4, "%s tag \'%s\' length \'%03d\' exceeds available data length \'%03d\'."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private stripLength(Ljava/nio/CharBuffer;)I
    .locals 4
    .param p1, "buffer"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 223
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lorg/jpos/tlv/CharTagMap;->lenLen:I

    if-lt v0, v1, :cond_0

    .line 230
    invoke-direct {p0, p1, v1}, Lorg/jpos/tlv/CharTagMap;->getStr(Ljava/nio/CharBuffer;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "BAD TLV FORMAT:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/jpos/tlv/CharTagMap;->lenLen:I

    .line 226
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 225
    const-string v2, "%s tag length requires %d digits"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private stripTagId(Ljava/nio/CharBuffer;)Ljava/lang/String;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 212
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lorg/jpos/tlv/CharTagMap;->tagLen:I

    if-lt v0, v1, :cond_0

    .line 219
    invoke-direct {p0, p1, v1}, Lorg/jpos/tlv/CharTagMap;->getStr(Ljava/nio/CharBuffer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "BAD TLV FORMAT:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/jpos/tlv/CharTagMap;->tagLen:I

    .line 215
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 214
    const-string v2, "%s tag id requires %d characters"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addTag(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/tlv/CharTagMap;
    .locals 1
    .param p1, "tagId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0, p1, p2}, Lorg/jpos/tlv/CharTagMap;->createTLV(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/tlv/CharTag;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jpos/tlv/CharTagMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-object p0
.end method

.method public createTLV(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/tlv/CharTag;
    .locals 6
    .param p1, "tagId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p1}, Lorg/jpos/tlv/CharTagMap;->validateTag(Ljava/lang/String;)V

    .line 163
    sget-object v0, Ljava/math/BigDecimal;->TEN:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iget v2, p0, Lorg/jpos/tlv/CharTagMap;->lenLen:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 164
    .local v0, "maxValueLength":I
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 168
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object p1, v3, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 166
    const-string v1, "The value size %d of the tag \'%s\' has exceeded the maximum allowable value %d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_1
    :goto_0
    new-instance v1, Lorg/jpos/tlv/CharTag;

    invoke-direct {v1, p1, p2}, Lorg/jpos/tlv/CharTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v1, "tag":Lorg/jpos/tlv/CharTag;
    iget v2, p0, Lorg/jpos/tlv/CharTagMap;->lenLen:I

    invoke-virtual {v1, v2}, Lorg/jpos/tlv/CharTag;->setLengthSize(I)V

    .line 174
    iget-boolean v2, p0, Lorg/jpos/tlv/CharTagMap;->swapTagWithLength:Z

    invoke-virtual {v1, v2}, Lorg/jpos/tlv/CharTag;->withTagLengthSwap(Z)V

    .line 175
    return-object v1
.end method

.method public getTagValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tagId"    # Ljava/lang/String;

    .line 197
    invoke-virtual {p0, p1}, Lorg/jpos/tlv/CharTagMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/tlv/CharTag;

    .line 198
    .local v0, "t":Lorg/jpos/tlv/CharTag;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/jpos/tlv/CharTag;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public hasTag(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tagId"    # Ljava/lang/String;

    .line 208
    invoke-virtual {p0, p1}, Lorg/jpos/tlv/CharTagMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public pack()Ljava/lang/String;
    .locals 4

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jpos/tlv/CharTagMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/tlv/CharTag;

    .line 133
    .local v2, "tag":Lorg/jpos/tlv/CharTag;
    invoke-virtual {v2}, Lorg/jpos/tlv/CharTag;->getTLV()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 134
    .end local v2    # "tag":Lorg/jpos/tlv/CharTag;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected setLengthSize(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 92
    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 95
    iput p1, p0, Lorg/jpos/tlv/CharTagMap;->lenLen:I

    .line 96
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size of the length should be less than 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size of the length should be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setTagSize(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 77
    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 80
    iput p1, p0, Lorg/jpos/tlv/CharTagMap;->tagLen:I

    .line 81
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size of the tag should not be greater than 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size of the tag should be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unpack(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 114
    if-eqz p1, :cond_1

    .line 117
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 119
    .local v0, "buffer":Ljava/nio/CharBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-direct {p0, v0}, Lorg/jpos/tlv/CharTagMap;->getTLVMsg(Ljava/nio/CharBuffer;)Lorg/jpos/tlv/CharTag;

    move-result-object v1

    .line 121
    .local v1, "currentTag":Lorg/jpos/tlv/CharTag;
    invoke-virtual {v1}, Lorg/jpos/tlv/CharTag;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/jpos/tlv/CharTagMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 123
    .end local v1    # "currentTag":Lorg/jpos/tlv/CharTag;
    :cond_0
    return-void

    .line 115
    .end local v0    # "buffer":Ljava/nio/CharBuffer;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TLV data are required to unpack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected validateTag(Ljava/lang/String;)V
    .locals 4
    .param p1, "tagId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 179
    if-eqz p1, :cond_1

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/jpos/tlv/CharTagMap;->tagLen:I

    if-ne v0, v1, :cond_0

    .line 188
    return-void

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/jpos/tlv/CharTagMap;->tagLen:I

    .line 185
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 184
    const-string v2, "Invalid tag \'%s\' size: expected %d, but got %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tag identifier have to be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected withTagLengthSwap(Z)V
    .locals 0
    .param p1, "swap"    # Z

    .line 104
    iput-boolean p1, p0, Lorg/jpos/tlv/CharTagMap;->swapTagWithLength:Z

    .line 105
    return-void
.end method
