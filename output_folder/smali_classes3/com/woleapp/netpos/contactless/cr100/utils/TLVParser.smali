.class public final Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;
.super Ljava/lang/Object;
.source "TLVParser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\"\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\nJ\u0010\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0018\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00172\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J\u0018\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00172\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J$\u0010\u0019\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u001a2\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0017J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u001c\u001a\u00020\nH\u0002J\u0016\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00172\u0006\u0010\u001e\u001a\u00020\nJ\u0016\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00172\u0006\u0010\u001e\u001a\u00020\nJ\"\u0010 \u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00172\u0008\u0010!\u001a\u0004\u0018\u00010\nJ\u0015\u0010\"\u001a\u00020\n2\u0006\u0010#\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008$R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;",
        "",
        "()V",
        "tlvList",
        "Ljava/util/ArrayList;",
        "Lcom/woleapp/netpos/contactless/cr100/utils/TLV;",
        "Lkotlin/collections/ArrayList;",
        "VerifyTLV",
        "",
        "emvCfg",
        "",
        "findTagValue",
        "input",
        "tag",
        "lengthAfterTag",
        "",
        "getCardSchemeFromAid",
        "Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;",
        "aid",
        "getLengthInt",
        "data",
        "",
        "getTLVList",
        "",
        "getTLVListWithoutValue",
        "getTlvC0AndC2FromNfcBatch",
        "Lkotlin/Pair;",
        "hexToByteArray",
        "hexStr",
        "parse",
        "tlv",
        "parseWithoutValue",
        "searchTLV",
        "targetTag",
        "toHexString",
        "b",
        "toHexString$app_fcmbeasypayDebug",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;

.field private static final tlvList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/woleapp/netpos/contactless/cr100/utils/TLV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->INSTANCE:Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->tlvList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic findTagValue$default(Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 90
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const-string p2, "9F0607"

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/16 p3, 0xe

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->findTagValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getLengthInt([B)I
    .locals 5
    .param p1, "data"    # [B

    .line 172
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/16 v2, -0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 173
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x7f

    .line 174
    .local v0, "n":I
    const/4 v1, 0x0

    .line 175
    .local v1, "length":I
    const/4 v2, 0x1

    .local v2, "i":I
    add-int/lit8 v3, v0, 0x1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 176
    shl-int/lit8 v1, v1, 0x8

    .line 177
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .end local v2    # "i":I
    :cond_0
    nop

    .end local v0    # "n":I
    .end local v1    # "length":I
    goto :goto_1

    .line 181
    :cond_1
    aget-byte v0, p1, v0

    and-int/lit16 v1, v0, 0xff

    .line 172
    :goto_1
    return v1
.end method

.method private final getTLVList([B)Ljava/util/List;
    .locals 11
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/cr100/utils/TLV;",
            ">;"
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "tag":[B
    const/4 v2, 0x0

    .local v2, "length":[B
    const/4 v3, 0x0

    .local v3, "value":[B
    const/4 v4, 0x0

    .line 23
    .local v4, "isNested":Z
    const/4 v5, 0x0

    .line 24
    .local v5, "tlv":Lcom/woleapp/netpos/contactless/cr100/utils/TLV;
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v6, p1

    if-ge v0, v6, :cond_6

    .line 25
    const/4 v4, 0x0

    .line 26
    aget-byte v6, p1, v0

    const/16 v7, 0x20

    and-int/2addr v6, v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v6, v7, :cond_0

    .line 27
    move v6, v9

    goto :goto_1

    .line 30
    :cond_0
    move v6, v8

    .line 26
    :goto_1
    move v4, v6

    .line 32
    aget-byte v6, p1, v0

    const/16 v7, 0x1f

    and-int/2addr v6, v7

    const/16 v10, -0x80

    if-ne v6, v7, :cond_2

    .line 33
    add-int/lit8 v6, v0, 0x1

    .line 34
    .local v6, "lastByte":I
    :goto_2
    aget-byte v7, p1, v6

    and-int/2addr v7, v10

    if-ne v7, v10, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 35
    goto :goto_2

    .line 37
    :cond_1
    sub-int v7, v6, v0

    add-int/2addr v7, v9

    new-array v1, v7, [B

    .line 38
    array-length v7, v1

    invoke-static {p1, v0, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    array-length v7, v1

    add-int/2addr v0, v7

    .end local v6    # "lastByte":I
    goto :goto_3

    .line 41
    :cond_2
    new-array v1, v9, [B

    .line 42
    aget-byte v6, p1, v0

    aput-byte v6, v1, v8

    add-int/lit8 v0, v0, 0x1

    .line 43
    nop

    .line 44
    aget-byte v6, v1, v8

    if-nez v6, :cond_3

    .line 45
    goto :goto_5

    .line 48
    :cond_3
    :goto_3
    aget-byte v6, p1, v0

    and-int/2addr v6, v10

    if-ne v6, v10, :cond_4

    .line 49
    aget-byte v6, p1, v0

    and-int/lit8 v6, v6, 0x7f

    add-int/2addr v6, v9

    .line 50
    .local v6, "n":I
    new-array v2, v6, [B

    .line 51
    array-length v7, v2

    invoke-static {p1, v0, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    array-length v7, v2

    add-int/2addr v0, v7

    .end local v6    # "n":I
    goto :goto_4

    .line 54
    :cond_4
    new-array v2, v9, [B

    .line 55
    aget-byte v6, p1, v0

    aput-byte v6, v2, v8

    add-int/lit8 v0, v0, 0x1

    .line 56
    nop

    .line 58
    :goto_4
    invoke-direct {p0, v2}, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->getLengthInt([B)I

    move-result v6

    .line 59
    .restart local v6    # "n":I
    new-array v3, v6, [B

    .line 60
    array-length v7, v3

    invoke-static {p1, v0, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    array-length v7, v3

    add-int/2addr v0, v7

    .line 62
    if-eqz v4, :cond_5

    .line 63
    invoke-direct {p0, v3}, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->getTLVList([B)Ljava/util/List;

    goto :goto_0

    .line 65
    :cond_5
    new-instance v7, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;

    invoke-direct {v7}, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;-><init>()V

    move-object v5, v7

    .line 66
    invoke-virtual {p0, v1}, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->toHexString$app_fcmbeasypayDebug([B)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;->tag:Ljava/lang/String;

    .line 67
    invoke-virtual {p0, v2}, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->toHexString$app_fcmbeasypayDebug([B)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;->length:Ljava/lang/String;

    .line 68
    invoke-virtual {p0, v3}, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->toHexString$app_fcmbeasypayDebug([B)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;->value:Ljava/lang/String;

    .line 69
    iput-boolean v4, v5, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;->isNested:Z

    .line 70
    sget-object v7, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 73
    .end local v6    # "n":I
    :cond_6
    :goto_5
    sget-object v6, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->tlvList:Ljava/util/ArrayList;

    check-cast v6, Ljava/util/List;

    return-object v6
.end method

.method private final getTLVListWithoutValue([B)Ljava/util/List;
    .locals 10
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/cr100/utils/TLV;",
            ">;"
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "index":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v1, "tlvList":Ljava/util/ArrayList;
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v2, p1

    if-ge v0, v2, :cond_5

    const/4 v2, 0x0

    .local v2, "tag":[B
    const/4 v3, 0x0

    .local v3, "length":[B
    const/4 v4, 0x0

    .line 131
    .local v4, "isNested":Z
    aget-byte v5, p1, v0

    const/16 v6, 0x20

    and-int/2addr v5, v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_0

    .line 132
    move v5, v8

    goto :goto_1

    .line 134
    :cond_0
    move v5, v7

    .line 131
    :goto_1
    move v4, v5

    .line 136
    aget-byte v5, p1, v0

    const/16 v6, 0x1f

    and-int/2addr v5, v6

    const/16 v9, -0x80

    if-ne v5, v6, :cond_2

    .line 137
    add-int/lit8 v5, v0, 0x1

    .line 138
    .local v5, "lastByte":I
    :goto_2
    aget-byte v6, p1, v5

    and-int/2addr v6, v9

    if-ne v6, v9, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 139
    goto :goto_2

    .line 141
    :cond_1
    sub-int v6, v5, v0

    add-int/2addr v6, v8

    new-array v2, v6, [B

    .line 142
    array-length v6, v2

    invoke-static {p1, v0, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    array-length v6, v2

    add-int/2addr v0, v6

    .end local v5    # "lastByte":I
    goto :goto_3

    .line 145
    :cond_2
    new-array v2, v8, [B

    .line 146
    aget-byte v5, p1, v0

    aput-byte v5, v2, v7

    add-int/lit8 v0, v0, 0x1

    .line 147
    nop

    .line 148
    aget-byte v5, v2, v7

    if-nez v5, :cond_3

    .line 149
    goto :goto_5

    .line 152
    :cond_3
    :goto_3
    aget-byte v5, p1, v0

    and-int/2addr v5, v9

    if-ne v5, v9, :cond_4

    .line 153
    aget-byte v5, p1, v0

    and-int/lit8 v5, v5, 0x7f

    add-int/2addr v5, v8

    .line 154
    .local v5, "n":I
    new-array v3, v5, [B

    .line 155
    array-length v6, v3

    invoke-static {p1, v0, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    array-length v6, v3

    add-int/2addr v0, v6

    .end local v5    # "n":I
    goto :goto_4

    .line 158
    :cond_4
    new-array v3, v8, [B

    .line 159
    aget-byte v5, p1, v0

    aput-byte v5, v3, v7

    add-int/lit8 v0, v0, 0x1

    .line 160
    nop

    .line 162
    :goto_4
    new-instance v5, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;

    invoke-direct {v5}, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;-><init>()V

    .line 163
    .local v5, "tlv":Lcom/woleapp/netpos/contactless/cr100/utils/TLV;
    invoke-virtual {p0, v2}, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->toHexString$app_fcmbeasypayDebug([B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;->tag:Ljava/lang/String;

    .line 164
    invoke-virtual {p0, v3}, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->toHexString$app_fcmbeasypayDebug([B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;->length:Ljava/lang/String;

    .line 165
    iput-boolean v4, v5, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;->isNested:Z

    .line 166
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    .end local v2    # "tag":[B
    .end local v3    # "length":[B
    .end local v4    # "isNested":Z
    .end local v5    # "tlv":Lcom/woleapp/netpos/contactless/cr100/utils/TLV;
    :cond_5
    :goto_5
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    return-object v2
.end method

.method private final hexToByteArray(Ljava/lang/String;)[B
    .locals 9
    .param p1, "hexStr"    # Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 190
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 191
    .local v0, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    :goto_0
    if-ge v2, v3, :cond_1

    .line 192
    mul-int/lit8 v4, v2, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x10

    invoke-static {v6}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 193
    .local v4, "high":I
    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v1

    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-static {v6}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 193
    nop

    .line 196
    .local v5, "low":I
    mul-int/lit8 v6, v4, 0x10

    add-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 191
    .end local v4    # "high":I
    .end local v5    # "low":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final VerifyTLV(Ljava/lang/String;)Z
    .locals 8
    .param p1, "emvCfg"    # Ljava/lang/String;

    const-string v0, "emvCfg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    const-string v0, "9F06"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    return v4

    .line 233
    :cond_0
    const-string v0, "00"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 234
    :cond_1
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 235
    .local v0, "data":[B
    const/4 v2, 0x0

    .local v2, "index":I
    const/4 v3, 0x0

    .line 237
    .local v3, "length":[B
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-byte v5, v0, v2

    const/16 v6, 0x20

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2

    .line 238
    return v1

    .line 240
    :cond_2
    aget-byte v5, v0, v2

    const/16 v6, 0x1f

    and-int/2addr v5, v6

    const/16 v7, -0x80

    if-ne v5, v6, :cond_4

    .line 241
    add-int/lit8 v5, v2, 0x1

    .line 242
    .local v5, "lastByte":I
    :goto_0
    aget-byte v6, v0, v5

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 243
    goto :goto_0

    .line 245
    :cond_3
    sub-int v6, v5, v2

    add-int/2addr v6, v4

    add-int/2addr v2, v6

    .line 246
    array-length v6, v0

    if-lt v2, v6, :cond_6

    return v1

    .line 248
    .end local v5    # "lastByte":I
    :cond_4
    aget-byte v5, v0, v2

    if-nez v5, :cond_5

    .line 249
    return v1

    :cond_5
    add-int/2addr v2, v4

    .line 251
    nop

    .line 253
    :cond_6
    aget-byte v5, v0, v2

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_7

    .line 254
    aget-byte v5, v0, v2

    and-int/lit8 v5, v5, 0x7f

    add-int/2addr v5, v4

    .line 255
    .local v5, "n":I
    new-array v3, v5, [B

    .line 256
    array-length v6, v3

    add-int/2addr v2, v6

    .end local v5    # "n":I
    goto :goto_1

    .line 258
    :cond_7
    new-array v3, v4, [B

    .line 259
    aget-byte v5, v0, v2

    aput-byte v5, v3, v1

    add-int/2addr v2, v4

    .line 260
    nop

    .line 262
    :goto_1
    invoke-direct {p0, v3}, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->getLengthInt([B)I

    move-result v5

    .line 263
    .restart local v5    # "n":I
    add-int v6, v5, v2

    array-length v7, v0

    if-le v6, v7, :cond_8

    goto :goto_2

    :cond_8
    move v1, v4

    :goto_2
    return v1
.end method

.method public final findTagValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "lengthAfterTag"    # I

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    .line 93
    .local v0, "tagIndex":I
    const-string v1, ""

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 94
    return-object v1

    .line 97
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    .line 99
    .local v2, "startIndex":I
    add-int v3, v2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 100
    return-object v1

    .line 103
    :cond_1
    add-int v1, v2, p3

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getCardSchemeFromAid(Ljava/lang/String;)Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;
    .locals 1
    .param p1, "aid"    # Ljava/lang/String;

    const-string v0, "aid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    goto :goto_1

    :sswitch_0
    const-string v0, "A0000003710001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->VERVE:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    goto :goto_2

    .line 108
    :sswitch_1
    const-string v0, "A0000000041010"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->MASTERCARD:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    goto :goto_2

    .line 108
    :sswitch_2
    const-string v0, "A0000000031010"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 111
    :cond_2
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->VISA:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    goto :goto_2

    .line 112
    :goto_1
    const/4 v0, 0x0

    .line 108
    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3d223770 -> :sswitch_2
        -0x3d141fef -> :sswitch_1
        0x6d65c32d -> :sswitch_0
    .end sparse-switch
.end method

.method public final getTlvC0AndC2FromNfcBatch(Ljava/util/List;)Lkotlin/Pair;
    .locals 6
    .param p1, "tlvList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/cr100/utils/TLV;",
            ">;)",
            "Lkotlin/Pair<",
            "Lcom/woleapp/netpos/contactless/cr100/utils/TLV;",
            "Lcom/woleapp/netpos/contactless/cr100/utils/TLV;",
            ">;"
        }
    .end annotation

    const-string v0, "tlvList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "tlvC0":Lcom/woleapp/netpos/contactless/cr100/utils/TLV;
    const/4 v1, 0x0

    .line 80
    .local v1, "tlvC2":Lcom/woleapp/netpos/contactless/cr100/utils/TLV;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;

    .line 81
    .local v3, "tlv":Lcom/woleapp/netpos/contactless/cr100/utils/TLV;
    iget-object v4, v3, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;->tag:Ljava/lang/String;

    .line 82
    const-string v5, "c0"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v3

    goto :goto_0

    .line 83
    :cond_1
    const-string v5, "c2"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .end local v3    # "tlv":Lcom/woleapp/netpos/contactless/cr100/utils/TLV;
    goto :goto_0

    .line 87
    :cond_2
    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final parse(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "tlv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/cr100/utils/TLV;",
            ">;"
        }
    .end annotation

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    nop

    .line 10
    :try_start_0
    sget-object v0, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->getTLVList([B)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 12
    :catch_0
    move-exception v0

    .line 13
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->tlvList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Ljava/util/List;

    move-object v0, v1

    .line 9
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public final parseWithoutValue(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "tlv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/cr100/utils/TLV;",
            ">;"
        }
    .end annotation

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    nop

    .line 118
    :try_start_0
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->getTLVListWithoutValue([B)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    move-object v0, v1

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public final searchTLV(Ljava/util/List;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/cr100/utils/TLV;
    .locals 5
    .param p1, "tlvList"    # Ljava/util/List;
    .param p2, "targetTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/cr100/utils/TLV;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/woleapp/netpos/contactless/cr100/utils/TLV;"
        }
    .end annotation

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 211
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;

    .line 212
    .local v2, "tlv":Lcom/woleapp/netpos/contactless/cr100/utils/TLV;
    iget-object v3, v2, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;->tag:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, p2, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    return-object v2

    .line 214
    :cond_0
    iget-boolean v3, v2, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;->isNested:Z

    if-eqz v3, :cond_1

    .line 215
    iget-object v3, v2, Lcom/woleapp/netpos/contactless/cr100/utils/TLV;->tlvList:Ljava/util/List;

    invoke-virtual {p0, v3, p2}, Lcom/woleapp/netpos/contactless/cr100/utils/TLVParser;->searchTLV(Ljava/util/List;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/cr100/utils/TLV;

    move-result-object v3

    .line 216
    .local v3, "searchChild":Lcom/woleapp/netpos/contactless/cr100/utils/TLV;
    if-eqz v3, :cond_1

    .line 217
    return-object v3

    .line 210
    .end local v2    # "tlv":Lcom/woleapp/netpos/contactless/cr100/utils/TLV;
    .end local v3    # "searchChild":Lcom/woleapp/netpos/contactless/cr100/utils/TLV;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final toHexString$app_fcmbeasypayDebug([B)Ljava/lang/String;
    .locals 6
    .param p1, "b"    # [B

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    const-string v0, ""

    .line 203
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit16 v4, v4, 0x100

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "toString((b[i].toInt() and 0xFF) + 0x100, 16)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "this as java.lang.String).substring(startIndex)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
