.class public Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;
.super Ljava/lang/Object;
.source "BerTlvParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;
    }
.end annotation


# static fields
.field private static final EMPTY_LOGGER:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;


# instance fields
.field private final log:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 235
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$1;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$1;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->EMPTY_LOGGER:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->EMPTY_LOGGER:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;

    invoke-direct {p0, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;-><init>(Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;)V
    .locals 0
    .param p1, "aLogger"    # Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aLogger"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->log:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;

    .line 16
    return-void
.end method

.method private addChildren(I[BILjava/lang/String;IIILjava/util/ArrayList;)V
    .locals 7
    .param p1, "aLevel"    # I
    .param p2, "aBuf"    # [B
    .param p3, "aOffset"    # I
    .param p4, "levelPadding"    # Ljava/lang/String;
    .param p5, "aTagBytesCount"    # I
    .param p6, "aDataBytesCount"    # I
    .param p7, "valueLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "aLevel",
            "aBuf",
            "aOffset",
            "levelPadding",
            "aTagBytesCount",
            "aDataBytesCount",
            "valueLength",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BI",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/ArrayList<",
            "Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;>;"
    add-int v0, p3, p5

    add-int/2addr v0, p6

    .line 124
    .local v0, "startPosition":I
    move v1, p7

    .line 125
    .local v1, "len":I
    :goto_0
    add-int v2, p3, p7

    if-ge v0, v2, :cond_1

    .line 126
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2, p2, v0, v1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->parseWithResult(I[BII)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;

    move-result-object v2

    .line 128
    .local v2, "result":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;
    invoke-static {v2}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;->access$000(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;

    move-result-object v3

    invoke-virtual {p8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {v2}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;->access$100(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;)I

    move-result v0

    .line 131
    sub-int v1, p7, v0

    .line 133
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->log:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;

    invoke-interface {v3}, Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->log:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;->access$000(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;->getTag()Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 137
    invoke-static {v2}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;->access$100(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 138
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 134
    const-string v5, "{}level {}: adding {} with offset {}, startPosition={}, aDataBytesCount={}, valueLength={}"

    invoke-interface {v3, v5, v4}, Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    .end local v2    # "result":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;
    :cond_0
    goto :goto_0

    .line 141
    :cond_1
    return-void
.end method

.method private createLevelPadding(I)Ljava/lang/String;
    .locals 3
    .param p1, "aLevel"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aLevel"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->log:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;

    invoke-interface {v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    const-string v0, ""

    return-object v0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    mul-int/lit8 v2, p1, 0x4

    if-ge v1, v2, :cond_1

    .line 150
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createTag(Ljava/lang/String;[BII)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .locals 4
    .param p1, "aLevelPadding"    # Ljava/lang/String;
    .param p2, "aBuf"    # [B
    .param p3, "aOffset"    # I
    .param p4, "aLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "aLevelPadding",
            "aBuf",
            "aOffset",
            "aLength"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->log:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;

    invoke-interface {v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->log:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 174
    invoke-static {p2, p3, p4}, Lcom/woleapp/netpos/contactless/taponphone/tlv/HexUtil;->toFormattedHexString([BII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 173
    const-string v2, "{}Creating tag {}..."

    invoke-interface {v0, v2, v1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_0
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    invoke-direct {v0, p2, p3, p4}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;-><init>([BII)V

    return-object v0
.end method

.method private getDataLength([BI)I
    .locals 6
    .param p1, "aBuf"    # [B
    .param p2, "aOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aBuf",
            "aOffset"
        }
    .end annotation

    .line 196
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    .line 198
    .local v0, "length":I
    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    .line 199
    and-int/lit8 v1, v0, 0x7f

    .line 200
    .local v1, "numberOfBytes":I
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 207
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, p2, 0x1

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 208
    mul-int/lit16 v3, v0, 0x100

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    add-int v0, v3, v4

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 202
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 203
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 201
    const-string v4, "At position %d the len is more then 3 [%d]"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    .end local v1    # "numberOfBytes":I
    :cond_1
    return v0
.end method

.method private static getLengthBytesCount([BI)I
    .locals 4
    .param p0, "aBuf"    # [B
    .param p1, "aOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aBuf",
            "aOffset"
        }
    .end annotation

    .line 216
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 217
    .local v0, "len":I
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/16 v3, 0x80

    if-ne v1, v3, :cond_0

    .line 218
    and-int/lit8 v1, v0, 0x7f

    add-int/2addr v1, v2

    return v1

    .line 220
    :cond_0
    return v2
.end method

.method private getTagBytesCount([BI)I
    .locals 4
    .param p1, "aBuf"    # [B
    .param p2, "aOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aBuf",
            "aOffset"
        }
    .end annotation

    .line 180
    aget-byte v0, p1, p2

    const/16 v1, 0x1f

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 181
    const/4 v0, 0x2

    .line 182
    .local v0, "len":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, p2, 0xa

    if-ge v1, v2, :cond_1

    .line 183
    aget-byte v2, p1, v1

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_0

    .line 184
    goto :goto_1

    .line 186
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0

    .line 190
    .end local v0    # "len":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private parseWithResult(I[BII)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;
    .locals 21
    .param p1, "aLevel"    # I
    .param p2, "aBuf"    # [B
    .param p3, "aOffset"    # I
    .param p4, "aLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "aLevel",
            "aBuf",
            "aOffset",
            "aLen"
        }
    .end annotation

    .line 54
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {p0 .. p1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->createLevelPadding(I)Ljava/lang/String;

    move-result-object v13

    .line 55
    .local v13, "levelPadding":Ljava/lang/String;
    add-int v0, v11, v12

    array-length v1, v10

    if-gt v0, v1, :cond_6

    .line 61
    iget-object v0, v9, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->log:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;

    invoke-interface {v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, v9, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->log:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v13, v3, v8

    .line 63
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v15

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v14

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 64
    invoke-static/range {p2 .. p4}, Lcom/woleapp/netpos/contactless/taponphone/tlv/HexUtil;->toFormattedHexString([BII)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 62
    const-string v4, "{}parseWithResult(level={}, offset={}, len={}, buf={})"

    invoke-interface {v0, v4, v3}, Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_0
    invoke-direct {v9, v10, v11}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->getTagBytesCount([BI)I

    move-result v7

    .line 69
    .local v7, "tagBytesCount":I
    invoke-direct {v9, v13, v10, v11, v7}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->createTag(Ljava/lang/String;[BII)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;

    move-result-object v6

    .line 70
    .local v6, "tag":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    iget-object v0, v9, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->log:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;

    invoke-interface {v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, v9, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->log:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v13, v3, v8

    aput-object v6, v3, v15

    .line 72
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v14

    .line 73
    invoke-static {v10, v11, v7}, Lcom/woleapp/netpos/contactless/taponphone/tlv/HexUtil;->toFormattedHexString([BII)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 71
    const-string v4, "{}tag = {}, tagBytesCount={}, tagBuf={}"

    invoke-interface {v0, v4, v3}, Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :cond_1
    add-int v0, v11, v7

    invoke-static {v10, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->getLengthBytesCount([BI)I

    move-result v5

    .line 79
    .local v5, "lengthBytesCount":I
    add-int v0, v11, v7

    invoke-direct {v9, v10, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->getDataLength([BI)I

    move-result v4

    .line 81
    .local v4, "valueLength":I
    iget-object v0, v9, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->log:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;

    invoke-interface {v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, v9, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->log:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v13, v1, v8

    .line 83
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v14

    add-int v3, v11, v7

    .line 84
    invoke-static {v10, v3, v5}, Lcom/woleapp/netpos/contactless/taponphone/tlv/HexUtil;->toFormattedHexString([BII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 82
    const-string v2, "{}lenBytesCount = {}, len = {}, lenBuf = {}"

    invoke-interface {v0, v2, v1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_2
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 92
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v16, v3

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;>;"
    .local v16, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;>;"
    move/from16 v3, p3

    move/from16 v17, v4

    .end local v4    # "valueLength":I
    .local v17, "valueLength":I
    move-object v4, v13

    move/from16 v18, v5

    .end local v5    # "lengthBytesCount":I
    .local v18, "lengthBytesCount":I
    move v5, v7

    move-object/from16 v19, v6

    .end local v6    # "tag":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .local v19, "tag":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    move/from16 v6, v18

    move/from16 v20, v7

    .end local v7    # "tagBytesCount":I
    .local v20, "tagBytesCount":I
    move/from16 v7, v17

    move v15, v8

    move-object/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->addChildren(I[BILjava/lang/String;IIILjava/util/ArrayList;)V

    .line 95
    add-int v0, v11, v20

    add-int v0, v0, v18

    move/from16 v1, v17

    .end local v17    # "valueLength":I
    .local v1, "valueLength":I
    add-int/2addr v0, v1

    .line 97
    .local v0, "resultOffset":I
    iget-object v2, v9, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->log:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;

    invoke-interface {v2}, Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    iget-object v2, v9, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->log:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;

    new-array v3, v14, [Ljava/lang/Object;

    aput-object v13, v3, v15

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 98
    const-string v4, "{}returning constructed offset = {}"

    invoke-interface {v2, v4, v3}, Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :cond_3
    new-instance v2, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;

    new-instance v3, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;

    move-object/from16 v5, v16

    move-object/from16 v4, v19

    .end local v16    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;>;"
    .end local v19    # "tag":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .local v4, "tag":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;>;"
    invoke-direct {v3, v4, v5}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;-><init>(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;Ljava/util/List;)V

    invoke-direct {v2, v3, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;-><init>(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;I)V

    return-object v2

    .line 104
    .end local v0    # "resultOffset":I
    .end local v1    # "valueLength":I
    .end local v18    # "lengthBytesCount":I
    .end local v20    # "tagBytesCount":I
    .local v4, "valueLength":I
    .local v5, "lengthBytesCount":I
    .restart local v6    # "tag":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .restart local v7    # "tagBytesCount":I
    :cond_4
    move v1, v4

    move/from16 v18, v5

    move-object v4, v6

    move/from16 v20, v7

    move v15, v8

    .end local v5    # "lengthBytesCount":I
    .end local v6    # "tag":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .end local v7    # "tagBytesCount":I
    .restart local v1    # "valueLength":I
    .local v4, "tag":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .restart local v18    # "lengthBytesCount":I
    .restart local v20    # "tagBytesCount":I
    new-array v0, v1, [B

    .line 105
    .local v0, "value":[B
    add-int v2, v11, v20

    add-int v2, v2, v18

    invoke-static {v10, v2, v0, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    add-int v2, v11, v20

    add-int v2, v2, v18

    add-int/2addr v2, v1

    .line 109
    .local v2, "resultOffset":I
    iget-object v3, v9, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->log:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;

    invoke-interface {v3}, Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 110
    iget-object v3, v9, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->log:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v13, v5, v15

    .line 111
    invoke-static {v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/HexUtil;->toFormattedHexString([B)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 110
    const-string v6, "{}value = {}"

    invoke-interface {v3, v6, v5}, Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v3, v9, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->log:Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v13, v5, v15

    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 112
    const-string v6, "{}returning primitive offset = {}"

    invoke-interface {v3, v6, v5}, Lcom/woleapp/netpos/contactless/taponphone/tlv/IBerTlvLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :cond_5
    new-instance v3, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;

    new-instance v5, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;

    invoke-direct {v5, v4, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;-><init>(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;[B)V

    invoke-direct {v3, v5, v2}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;-><init>(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;I)V

    return-object v3

    .line 56
    .end local v0    # "value":[B
    .end local v1    # "valueLength":I
    .end local v2    # "resultOffset":I
    .end local v4    # "tag":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTag;
    .end local v18    # "lengthBytesCount":I
    .end local v20    # "tagBytesCount":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length is out of the range [offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v10

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
.method public getTLValue([B)[B
    .locals 6
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->getTagBytesCount([BI)I

    move-result v1

    .line 226
    .local v1, "tagBytesCount":I
    invoke-static {p1, v1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->getLengthBytesCount([BI)I

    move-result v2

    .line 227
    .local v2, "lengthBytesCount":I
    invoke-direct {p0, p1, v1}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->getDataLength([BI)I

    move-result v3

    .line 229
    .local v3, "valueLength":I
    new-array v4, v3, [B

    .line 230
    .local v4, "value":[B
    add-int v5, v1, v2

    invoke-static {p1, v5, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    return-object v4
.end method

.method public parse([B)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;
    .locals 2
    .param p1, "aBuf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aBuf"
        }
    .end annotation

    .line 28
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->parse([BII)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;

    move-result-object v0

    return-object v0
.end method

.method public parse([BII)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;
    .locals 6
    .param p1, "aBuf"    # [B
    .param p2, "aOffset"    # I
    .param p3, "aLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "aBuf",
            "aOffset",
            "aLen"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v0, "tlvs":Ljava/util/List;, "Ljava/util/List<Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;>;"
    if-nez p3, :cond_0

    .line 34
    new-instance v1, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;

    invoke-direct {v1, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;-><init>(Ljava/util/List;)V

    return-object v1

    .line 36
    :cond_0
    move v1, p2

    .line 37
    .local v1, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xc8

    if-ge v2, v3, :cond_2

    .line 38
    const/4 v3, 0x0

    sub-int v4, p3, v1

    invoke-direct {p0, v3, p1, v1, v4}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->parseWithResult(I[BII)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;

    move-result-object v3

    .line 39
    .local v3, "result":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;
    invoke-static {v3}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;->access$000(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-static {v3}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;->access$100(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;)I

    move-result v4

    add-int v5, p2, p3

    if-lt v4, v5, :cond_1

    .line 42
    goto :goto_1

    .line 45
    :cond_1
    invoke-static {v3}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;->access$100(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;)I

    move-result v1

    .line 37
    .end local v3    # "result":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .end local v2    # "i":I
    :cond_2
    :goto_1
    new-instance v2, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;

    invoke-direct {v2, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvs;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public parseConstructed([B)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    .locals 2
    .param p1, "aBuf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aBuf"
        }
    .end annotation

    .line 19
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->parseConstructed([BII)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;

    move-result-object v0

    return-object v0
.end method

.method public parseConstructed([BII)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;
    .locals 2
    .param p1, "aBuf"    # [B
    .param p2, "aOffset"    # I
    .param p3, "aLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "aBuf",
            "aOffset",
            "aLen"
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser;->parseWithResult(I[BII)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;

    move-result-object v0

    .line 24
    .local v0, "result":Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;
    invoke-static {v0}, Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;->access$000(Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlvParser$ParseResult;)Lcom/woleapp/netpos/contactless/taponphone/tlv/BerTlv;

    move-result-object v1

    return-object v1
.end method
