.class public Lcom/payneteasy/tlv/BerTlvParser;
.super Ljava/lang/Object;
.source "BerTlvParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payneteasy/tlv/BerTlvParser$ParseResult;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAG_FACTORY:Lcom/payneteasy/tlv/BerTagFactory;

.field private static final EMPTY_LOGGER:Lcom/payneteasy/tlv/IBerTlvLogger;


# instance fields
.field private final log:Lcom/payneteasy/tlv/IBerTlvLogger;

.field private final tagFactory:Lcom/payneteasy/tlv/BerTagFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/payneteasy/tlv/DefaultBerTagFactory;

    invoke-direct {v0}, Lcom/payneteasy/tlv/DefaultBerTagFactory;-><init>()V

    sput-object v0, Lcom/payneteasy/tlv/BerTlvParser;->DEFAULT_TAG_FACTORY:Lcom/payneteasy/tlv/BerTagFactory;

    .line 228
    new-instance v0, Lcom/payneteasy/tlv/BerTlvParser$1;

    invoke-direct {v0}, Lcom/payneteasy/tlv/BerTlvParser$1;-><init>()V

    sput-object v0, Lcom/payneteasy/tlv/BerTlvParser;->EMPTY_LOGGER:Lcom/payneteasy/tlv/IBerTlvLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    sget-object v0, Lcom/payneteasy/tlv/BerTlvParser;->DEFAULT_TAG_FACTORY:Lcom/payneteasy/tlv/BerTagFactory;

    sget-object v1, Lcom/payneteasy/tlv/BerTlvParser;->EMPTY_LOGGER:Lcom/payneteasy/tlv/IBerTlvLogger;

    invoke-direct {p0, v0, v1}, Lcom/payneteasy/tlv/BerTlvParser;-><init>(Lcom/payneteasy/tlv/BerTagFactory;Lcom/payneteasy/tlv/IBerTlvLogger;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/payneteasy/tlv/BerTagFactory;)V
    .locals 1
    .param p1, "aTagFactory"    # Lcom/payneteasy/tlv/BerTagFactory;

    .line 26
    sget-object v0, Lcom/payneteasy/tlv/BerTlvParser;->EMPTY_LOGGER:Lcom/payneteasy/tlv/IBerTlvLogger;

    invoke-direct {p0, p1, v0}, Lcom/payneteasy/tlv/BerTlvParser;-><init>(Lcom/payneteasy/tlv/BerTagFactory;Lcom/payneteasy/tlv/IBerTlvLogger;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/payneteasy/tlv/BerTagFactory;Lcom/payneteasy/tlv/IBerTlvLogger;)V
    .locals 0
    .param p1, "aTagFactory"    # Lcom/payneteasy/tlv/BerTagFactory;
    .param p2, "aLogger"    # Lcom/payneteasy/tlv/IBerTlvLogger;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/payneteasy/tlv/BerTlvParser;->tagFactory:Lcom/payneteasy/tlv/BerTagFactory;

    .line 31
    iput-object p2, p0, Lcom/payneteasy/tlv/BerTlvParser;->log:Lcom/payneteasy/tlv/IBerTlvLogger;

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/payneteasy/tlv/IBerTlvLogger;)V
    .locals 1
    .param p1, "aLogger"    # Lcom/payneteasy/tlv/IBerTlvLogger;

    .line 22
    sget-object v0, Lcom/payneteasy/tlv/BerTlvParser;->DEFAULT_TAG_FACTORY:Lcom/payneteasy/tlv/BerTagFactory;

    invoke-direct {p0, v0, p1}, Lcom/payneteasy/tlv/BerTlvParser;-><init>(Lcom/payneteasy/tlv/BerTagFactory;Lcom/payneteasy/tlv/IBerTlvLogger;)V

    .line 23
    return-void
.end method

.method private addChildren(I[BILjava/lang/String;IILjava/util/ArrayList;)V
    .locals 7
    .param p1, "aLevel"    # I
    .param p2, "aBuf"    # [B
    .param p3, "aOffset"    # I
    .param p4, "levelPadding"    # Ljava/lang/String;
    .param p5, "aDataBytesCount"    # I
    .param p6, "valueLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BI",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/ArrayList<",
            "Lcom/payneteasy/tlv/BerTlv;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payneteasy/tlv/BerTlv;>;"
    move v0, p3

    .line 129
    .local v0, "startPosition":I
    move v1, p6

    .line 130
    .local v1, "len":I
    :goto_0
    add-int v2, p3, p6

    if-ge v0, v2, :cond_1

    .line 131
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2, p2, v0, v1}, Lcom/payneteasy/tlv/BerTlvParser;->parseWithResult(I[BII)Lcom/payneteasy/tlv/BerTlvParser$ParseResult;

    move-result-object v2

    .line 132
    .local v2, "result":Lcom/payneteasy/tlv/BerTlvParser$ParseResult;
    invoke-static {v2}, Lcom/payneteasy/tlv/BerTlvParser$ParseResult;->access$000(Lcom/payneteasy/tlv/BerTlvParser$ParseResult;)Lcom/payneteasy/tlv/BerTlv;

    move-result-object v3

    invoke-virtual {p7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-static {v2}, Lcom/payneteasy/tlv/BerTlvParser$ParseResult;->access$100(Lcom/payneteasy/tlv/BerTlvParser$ParseResult;)I

    move-result v0

    .line 135
    add-int v3, p3, p6

    sub-int v1, v3, v0

    .line 137
    iget-object v3, p0, Lcom/payneteasy/tlv/BerTlvParser;->log:Lcom/payneteasy/tlv/IBerTlvLogger;

    invoke-interface {v3}, Lcom/payneteasy/tlv/IBerTlvLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/payneteasy/tlv/BerTlvParser;->log:Lcom/payneteasy/tlv/IBerTlvLogger;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-static {v2}, Lcom/payneteasy/tlv/BerTlvParser$ParseResult;->access$000(Lcom/payneteasy/tlv/BerTlvParser$ParseResult;)Lcom/payneteasy/tlv/BerTlv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payneteasy/tlv/BerTlv;->getTag()Lcom/payneteasy/tlv/BerTag;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v2}, Lcom/payneteasy/tlv/BerTlvParser$ParseResult;->access$100(Lcom/payneteasy/tlv/BerTlvParser$ParseResult;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 138
    const-string/jumbo v5, "{}level {}: adding {} with offset {}, startPosition={}, aDataBytesCount={}, valueLength={}"

    invoke-interface {v3, v5, v4}, Lcom/payneteasy/tlv/IBerTlvLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    .end local v2    # "result":Lcom/payneteasy/tlv/BerTlvParser$ParseResult;
    :cond_0
    goto :goto_0

    .line 142
    :cond_1
    return-void
.end method

.method private createLevelPadding(I)Ljava/lang/String;
    .locals 3
    .param p1, "aLevel"    # I

    .line 145
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTlvParser;->log:Lcom/payneteasy/tlv/IBerTlvLogger;

    invoke-interface {v0}, Lcom/payneteasy/tlv/IBerTlvLogger;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const-string v0, ""

    return-object v0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    mul-int/lit8 v2, p1, 0x4

    if-ge v1, v2, :cond_1

    .line 151
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createTag(Ljava/lang/String;[BII)Lcom/payneteasy/tlv/BerTag;
    .locals 4
    .param p1, "aLevelPadding"    # Ljava/lang/String;
    .param p2, "aBuf"    # [B
    .param p3, "aOffset"    # I
    .param p4, "aLength"    # I

    .line 176
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTlvParser;->log:Lcom/payneteasy/tlv/IBerTlvLogger;

    invoke-interface {v0}, Lcom/payneteasy/tlv/IBerTlvLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTlvParser;->log:Lcom/payneteasy/tlv/IBerTlvLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3, p4}, Lcom/payneteasy/tlv/HexUtil;->toFormattedHexString([BII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "{}Creating tag {}..."

    invoke-interface {v0, v2, v1}, Lcom/payneteasy/tlv/IBerTlvLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/payneteasy/tlv/BerTlvParser;->tagFactory:Lcom/payneteasy/tlv/BerTagFactory;

    invoke-interface {v0, p2, p3, p4}, Lcom/payneteasy/tlv/BerTagFactory;->createTag([BII)Lcom/payneteasy/tlv/BerTag;

    move-result-object v0

    return-object v0
.end method

.method private getDataLength([BI)I
    .locals 6
    .param p1, "aBuf"    # [B
    .param p2, "aOffset"    # I

    .line 200
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    .line 202
    .local v0, "length":I
    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    .line 203
    and-int/lit8 v1, v0, 0x7f

    .line 204
    .local v1, "numberOfBytes":I
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 209
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, p2, 0x1

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 210
    mul-int/lit16 v3, v0, 0x100

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    add-int v0, v3, v4

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "At position %d the len is more then 3 [%d]"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    .end local v1    # "numberOfBytes":I
    :cond_1
    return v0
.end method

.method private static getLengthBytesCount([BI)I
    .locals 4
    .param p0, "aBuf"    # [B
    .param p1, "aOffset"    # I

    .line 219
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 220
    .local v0, "len":I
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/16 v3, 0x80

    if-ne v1, v3, :cond_0

    .line 221
    and-int/lit8 v1, v0, 0x7f

    add-int/2addr v1, v2

    return v1

    .line 223
    :cond_0
    return v2
.end method

.method private getTagBytesCount([BI)I
    .locals 4
    .param p1, "aBuf"    # [B
    .param p2, "aOffset"    # I

    .line 183
    aget-byte v0, p1, p2

    const/16 v1, 0x1f

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 184
    const/4 v0, 0x2

    .line 185
    .local v0, "len":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, p2, 0xa

    if-ge v1, v2, :cond_1

    .line 186
    aget-byte v2, p1, v1

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_0

    .line 187
    goto :goto_1

    .line 189
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0

    .line 193
    .end local v0    # "len":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private parseWithResult(I[BII)Lcom/payneteasy/tlv/BerTlvParser$ParseResult;
    .locals 21
    .param p1, "aLevel"    # I
    .param p2, "aBuf"    # [B
    .param p3, "aOffset"    # I
    .param p4, "aLen"    # I

    .line 68
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-direct/range {p0 .. p1}, Lcom/payneteasy/tlv/BerTlvParser;->createLevelPadding(I)Ljava/lang/String;

    move-result-object v12

    .line 69
    .local v12, "levelPadding":Ljava/lang/String;
    add-int v0, v10, v11

    array-length v1, v9

    if-gt v0, v1, :cond_6

    .line 72
    iget-object v0, v8, Lcom/payneteasy/tlv/BerTlvParser;->log:Lcom/payneteasy/tlv/IBerTlvLogger;

    invoke-interface {v0}, Lcom/payneteasy/tlv/IBerTlvLogger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, v8, Lcom/payneteasy/tlv/BerTlvParser;->log:Lcom/payneteasy/tlv/IBerTlvLogger;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v12, v3, v15

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static/range {p2 .. p4}, Lcom/payneteasy/tlv/HexUtil;->toFormattedHexString([BII)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string/jumbo v4, "{}parseWithResult(level={}, offset={}, len={}, buf={})"

    invoke-interface {v0, v4, v3}, Lcom/payneteasy/tlv/IBerTlvLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :cond_0
    invoke-direct {v8, v9, v10}, Lcom/payneteasy/tlv/BerTlvParser;->getTagBytesCount([BI)I

    move-result v7

    .line 78
    .local v7, "tagBytesCount":I
    invoke-direct {v8, v12, v9, v10, v7}, Lcom/payneteasy/tlv/BerTlvParser;->createTag(Ljava/lang/String;[BII)Lcom/payneteasy/tlv/BerTag;

    move-result-object v6

    .line 79
    .local v6, "tag":Lcom/payneteasy/tlv/BerTag;
    iget-object v0, v8, Lcom/payneteasy/tlv/BerTlvParser;->log:Lcom/payneteasy/tlv/IBerTlvLogger;

    invoke-interface {v0}, Lcom/payneteasy/tlv/IBerTlvLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, v8, Lcom/payneteasy/tlv/BerTlvParser;->log:Lcom/payneteasy/tlv/IBerTlvLogger;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v12, v3, v15

    aput-object v6, v3, v14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-static {v9, v10, v7}, Lcom/payneteasy/tlv/HexUtil;->toFormattedHexString([BII)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string/jumbo v4, "{}tag = {}, tagBytesCount={}, tagBuf={}"

    invoke-interface {v0, v4, v3}, Lcom/payneteasy/tlv/IBerTlvLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_1
    add-int v0, v10, v7

    invoke-static {v9, v0}, Lcom/payneteasy/tlv/BerTlvParser;->getLengthBytesCount([BI)I

    move-result v5

    .line 85
    .local v5, "lengthBytesCount":I
    add-int v0, v10, v7

    invoke-direct {v8, v9, v0}, Lcom/payneteasy/tlv/BerTlvParser;->getDataLength([BI)I

    move-result v4

    .line 87
    .local v4, "valueLength":I
    iget-object v0, v8, Lcom/payneteasy/tlv/BerTlvParser;->log:Lcom/payneteasy/tlv/IBerTlvLogger;

    invoke-interface {v0}, Lcom/payneteasy/tlv/IBerTlvLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, v8, Lcom/payneteasy/tlv/BerTlvParser;->log:Lcom/payneteasy/tlv/IBerTlvLogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v12, v1, v15

    .line 89
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v13

    add-int v3, v10, v7

    invoke-static {v9, v3, v5}, Lcom/payneteasy/tlv/HexUtil;->toFormattedHexString([BII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 88
    const-string/jumbo v2, "{}lenBytesCount = {}, len = {}, lenBuf = {}"

    invoke-interface {v0, v2, v1}, Lcom/payneteasy/tlv/IBerTlvLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :cond_2
    invoke-virtual {v6}, Lcom/payneteasy/tlv/BerTag;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 96
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payneteasy/tlv/BerTlv;>;"
    add-int v0, v10, v7

    add-int v16, v0, v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v17, v3

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payneteasy/tlv/BerTlv;>;"
    .local v17, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payneteasy/tlv/BerTlv;>;"
    move/from16 v3, v16

    move/from16 v16, v4

    .end local v4    # "valueLength":I
    .local v16, "valueLength":I
    move-object v4, v12

    move/from16 v18, v5

    .end local v5    # "lengthBytesCount":I
    .local v18, "lengthBytesCount":I
    move-object/from16 v19, v6

    .end local v6    # "tag":Lcom/payneteasy/tlv/BerTag;
    .local v19, "tag":Lcom/payneteasy/tlv/BerTag;
    move/from16 v6, v16

    move/from16 v20, v7

    .end local v7    # "tagBytesCount":I
    .local v20, "tagBytesCount":I
    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/payneteasy/tlv/BerTlvParser;->addChildren(I[BILjava/lang/String;IILjava/util/ArrayList;)V

    .line 98
    add-int v0, v10, v20

    add-int v0, v0, v18

    move/from16 v1, v16

    .end local v16    # "valueLength":I
    .local v1, "valueLength":I
    add-int/2addr v0, v1

    .line 99
    .local v0, "resultOffset":I
    iget-object v2, v8, Lcom/payneteasy/tlv/BerTlvParser;->log:Lcom/payneteasy/tlv/IBerTlvLogger;

    invoke-interface {v2}, Lcom/payneteasy/tlv/IBerTlvLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    iget-object v2, v8, Lcom/payneteasy/tlv/BerTlvParser;->log:Lcom/payneteasy/tlv/IBerTlvLogger;

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v12, v3, v15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v14

    const-string/jumbo v4, "{}returning constructed offset = {}"

    invoke-interface {v2, v4, v3}, Lcom/payneteasy/tlv/IBerTlvLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :cond_3
    new-instance v2, Lcom/payneteasy/tlv/BerTlvParser$ParseResult;

    new-instance v3, Lcom/payneteasy/tlv/BerTlv;

    move-object/from16 v5, v17

    move-object/from16 v4, v19

    .end local v17    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payneteasy/tlv/BerTlv;>;"
    .end local v19    # "tag":Lcom/payneteasy/tlv/BerTag;
    .local v4, "tag":Lcom/payneteasy/tlv/BerTag;
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payneteasy/tlv/BerTlv;>;"
    invoke-direct {v3, v4, v5}, Lcom/payneteasy/tlv/BerTlv;-><init>(Lcom/payneteasy/tlv/BerTag;Ljava/util/List;)V

    invoke-direct {v2, v3, v0}, Lcom/payneteasy/tlv/BerTlvParser$ParseResult;-><init>(Lcom/payneteasy/tlv/BerTlv;I)V

    return-object v2

    .line 105
    .end local v0    # "resultOffset":I
    .end local v1    # "valueLength":I
    .end local v18    # "lengthBytesCount":I
    .end local v20    # "tagBytesCount":I
    .local v4, "valueLength":I
    .local v5, "lengthBytesCount":I
    .restart local v6    # "tag":Lcom/payneteasy/tlv/BerTag;
    .restart local v7    # "tagBytesCount":I
    :cond_4
    move v1, v4

    move/from16 v18, v5

    move-object v4, v6

    move/from16 v20, v7

    .end local v5    # "lengthBytesCount":I
    .end local v6    # "tag":Lcom/payneteasy/tlv/BerTag;
    .end local v7    # "tagBytesCount":I
    .restart local v1    # "valueLength":I
    .local v4, "tag":Lcom/payneteasy/tlv/BerTag;
    .restart local v18    # "lengthBytesCount":I
    .restart local v20    # "tagBytesCount":I
    new-array v0, v1, [B

    .line 106
    .local v0, "value":[B
    add-int v2, v10, v20

    add-int v2, v2, v18

    invoke-static {v9, v2, v0, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    add-int v2, v10, v20

    add-int v2, v2, v18

    add-int/2addr v2, v1

    .line 108
    .local v2, "resultOffset":I
    iget-object v3, v8, Lcom/payneteasy/tlv/BerTlvParser;->log:Lcom/payneteasy/tlv/IBerTlvLogger;

    invoke-interface {v3}, Lcom/payneteasy/tlv/IBerTlvLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 109
    iget-object v3, v8, Lcom/payneteasy/tlv/BerTlvParser;->log:Lcom/payneteasy/tlv/IBerTlvLogger;

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v12, v5, v15

    invoke-static {v0}, Lcom/payneteasy/tlv/HexUtil;->toFormattedHexString([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v14

    const-string/jumbo v6, "{}value = {}"

    invoke-interface {v3, v6, v5}, Lcom/payneteasy/tlv/IBerTlvLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v3, v8, Lcom/payneteasy/tlv/BerTlvParser;->log:Lcom/payneteasy/tlv/IBerTlvLogger;

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v12, v5, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v14

    const-string/jumbo v6, "{}returning primitive offset = {}"

    invoke-interface {v3, v6, v5}, Lcom/payneteasy/tlv/IBerTlvLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :cond_5
    new-instance v3, Lcom/payneteasy/tlv/BerTlvParser$ParseResult;

    new-instance v5, Lcom/payneteasy/tlv/BerTlv;

    invoke-direct {v5, v4, v0}, Lcom/payneteasy/tlv/BerTlv;-><init>(Lcom/payneteasy/tlv/BerTag;[B)V

    invoke-direct {v3, v5, v2}, Lcom/payneteasy/tlv/BerTlvParser$ParseResult;-><init>(Lcom/payneteasy/tlv/BerTlv;I)V

    return-object v3

    .line 70
    .end local v0    # "value":[B
    .end local v1    # "valueLength":I
    .end local v2    # "resultOffset":I
    .end local v4    # "tag":Lcom/payneteasy/tlv/BerTag;
    .end local v18    # "lengthBytesCount":I
    .end local v20    # "tagBytesCount":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length is out of the range [offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public parse([B)Lcom/payneteasy/tlv/BerTlvs;
    .locals 2
    .param p1, "aBuf"    # [B

    .line 44
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/payneteasy/tlv/BerTlvParser;->parse([BII)Lcom/payneteasy/tlv/BerTlvs;

    move-result-object v0

    return-object v0
.end method

.method public parse([BII)Lcom/payneteasy/tlv/BerTlvs;
    .locals 6
    .param p1, "aBuf"    # [B
    .param p2, "aOffset"    # I
    .param p3, "aLen"    # I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "tlvs":Ljava/util/List;, "Ljava/util/List<Lcom/payneteasy/tlv/BerTlv;>;"
    if-nez p3, :cond_0

    new-instance v1, Lcom/payneteasy/tlv/BerTlvs;

    invoke-direct {v1, v0}, Lcom/payneteasy/tlv/BerTlvs;-><init>(Ljava/util/List;)V

    return-object v1

    .line 51
    :cond_0
    move v1, p2

    .line 52
    .local v1, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    .line 53
    const/4 v3, 0x0

    sub-int v4, p3, v1

    invoke-direct {p0, v3, p1, v1, v4}, Lcom/payneteasy/tlv/BerTlvParser;->parseWithResult(I[BII)Lcom/payneteasy/tlv/BerTlvParser$ParseResult;

    move-result-object v3

    .line 54
    .local v3, "result":Lcom/payneteasy/tlv/BerTlvParser$ParseResult;
    invoke-static {v3}, Lcom/payneteasy/tlv/BerTlvParser$ParseResult;->access$000(Lcom/payneteasy/tlv/BerTlvParser$ParseResult;)Lcom/payneteasy/tlv/BerTlv;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {v3}, Lcom/payneteasy/tlv/BerTlvParser$ParseResult;->access$100(Lcom/payneteasy/tlv/BerTlvParser$ParseResult;)I

    move-result v4

    add-int v5, p2, p3

    if-lt v4, v5, :cond_1

    .line 57
    goto :goto_1

    .line 60
    :cond_1
    invoke-static {v3}, Lcom/payneteasy/tlv/BerTlvParser$ParseResult;->access$100(Lcom/payneteasy/tlv/BerTlvParser$ParseResult;)I

    move-result v1

    .line 52
    .end local v3    # "result":Lcom/payneteasy/tlv/BerTlvParser$ParseResult;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v2    # "i":I
    :cond_2
    :goto_1
    new-instance v2, Lcom/payneteasy/tlv/BerTlvs;

    invoke-direct {v2, v0}, Lcom/payneteasy/tlv/BerTlvs;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public parseConstructed([B)Lcom/payneteasy/tlv/BerTlv;
    .locals 2
    .param p1, "aBuf"    # [B

    .line 35
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/payneteasy/tlv/BerTlvParser;->parseConstructed([BII)Lcom/payneteasy/tlv/BerTlv;

    move-result-object v0

    return-object v0
.end method

.method public parseConstructed([BII)Lcom/payneteasy/tlv/BerTlv;
    .locals 2
    .param p1, "aBuf"    # [B
    .param p2, "aOffset"    # I
    .param p3, "aLen"    # I

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/payneteasy/tlv/BerTlvParser;->parseWithResult(I[BII)Lcom/payneteasy/tlv/BerTlvParser$ParseResult;

    move-result-object v0

    .line 40
    .local v0, "result":Lcom/payneteasy/tlv/BerTlvParser$ParseResult;
    invoke-static {v0}, Lcom/payneteasy/tlv/BerTlvParser$ParseResult;->access$000(Lcom/payneteasy/tlv/BerTlvParser$ParseResult;)Lcom/payneteasy/tlv/BerTlv;

    move-result-object v1

    return-object v1
.end method
