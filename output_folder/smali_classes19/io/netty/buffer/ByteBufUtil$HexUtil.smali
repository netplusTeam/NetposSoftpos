.class final Lio/netty/buffer/ByteBufUtil$HexUtil;
.super Ljava/lang/Object;
.source "ByteBufUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/ByteBufUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HexUtil"
.end annotation


# static fields
.field private static final BYTE2CHAR:[C

.field private static final BYTE2HEX:[Ljava/lang/String;

.field private static final BYTEPADDING:[Ljava/lang/String;

.field private static final HEXDUMP_ROWPREFIXES:[Ljava/lang/String;

.field private static final HEXDUMP_TABLE:[C

.field private static final HEXPADDING:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 985
    const/16 v0, 0x100

    new-array v1, v0, [C

    sput-object v1, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTE2CHAR:[C

    .line 986
    const/16 v1, 0x400

    new-array v1, v1, [C

    sput-object v1, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXDUMP_TABLE:[C

    .line 987
    const/16 v1, 0x10

    new-array v2, v1, [Ljava/lang/String;

    sput-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXPADDING:[Ljava/lang/String;

    .line 988
    const/16 v2, 0x1000

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXDUMP_ROWPREFIXES:[Ljava/lang/String;

    .line 989
    new-array v2, v0, [Ljava/lang/String;

    sput-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTE2HEX:[Ljava/lang/String;

    .line 990
    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTEPADDING:[Ljava/lang/String;

    .line 993
    const-string v1, "0123456789abcdef"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 994
    .local v1, "DIGITS":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 995
    sget-object v3, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXDUMP_TABLE:[C

    shl-int/lit8 v4, v2, 0x1

    ushr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    aput-char v5, v3, v4

    .line 996
    shl-int/lit8 v4, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v2, 0xf

    aget-char v5, v1, v5

    aput-char v5, v3, v4

    .line 994
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1002
    .end local v2    # "i":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXPADDING:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1003
    array-length v2, v2

    sub-int/2addr v2, v0

    .line 1004
    .local v2, "padding":I
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v2, 0x3

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1005
    .local v3, "buf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v2, :cond_1

    .line 1006
    const-string v5, "   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1008
    .end local v4    # "j":I
    :cond_1
    sget-object v4, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXPADDING:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 1002
    .end local v2    # "padding":I
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1012
    :cond_2
    const/4 v0, 0x0

    :goto_3
    sget-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXDUMP_ROWPREFIXES:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 1013
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1014
    .restart local v3    # "buf":Ljava/lang/StringBuilder;
    sget-object v4, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    shl-int/lit8 v4, v0, 0x4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const-wide v6, 0x100000000L

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x9

    const/16 v5, 0x7c

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1017
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1018
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 1012
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1022
    :cond_3
    const/4 v0, 0x0

    :goto_4
    sget-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTE2HEX:[Ljava/lang/String;

    array-length v3, v2

    const/16 v4, 0x20

    if-ge v0, v3, :cond_4

    .line 1023
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lio/netty/util/internal/StringUtil;->byteToHexStringPadded(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1022
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1027
    :cond_4
    const/4 v0, 0x0

    :goto_5
    sget-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTEPADDING:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 1028
    array-length v2, v2

    sub-int/2addr v2, v0

    .line 1029
    .restart local v2    # "padding":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1030
    .restart local v3    # "buf":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_6
    if-ge v5, v2, :cond_5

    .line 1031
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1030
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1033
    .end local v5    # "j":I
    :cond_5
    sget-object v5, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTEPADDING:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 1027
    .end local v2    # "padding":I
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1037
    :cond_6
    const/4 v0, 0x0

    :goto_7
    sget-object v2, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTE2CHAR:[C

    array-length v3, v2

    if-ge v0, v3, :cond_9

    .line 1038
    const/16 v3, 0x1f

    if-le v0, v3, :cond_8

    const/16 v3, 0x7f

    if-lt v0, v3, :cond_7

    goto :goto_8

    .line 1041
    :cond_7
    int-to-char v3, v0

    aput-char v3, v2, v0

    goto :goto_9

    .line 1039
    :cond_8
    :goto_8
    const/16 v3, 0x2e

    aput-char v3, v2, v0

    .line 1037
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1044
    .end local v0    # "i":I
    .end local v1    # "DIGITS":[C
    :cond_9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/ByteBuf;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 983
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil$HexUtil;->hexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100([BII)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 983
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil$HexUtil;->hexDump([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/ByteBuf;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 983
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil$HexUtil;->prettyHexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;II)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/StringBuilder;
    .param p1, "x1"    # Lio/netty/buffer/ByteBuf;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 983
    invoke-static {p0, p1, p2, p3}, Lio/netty/buffer/ByteBufUtil$HexUtil;->appendPrettyHexDump(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;II)V

    return-void
.end method

.method private static appendHexDumpRowPrefix(Ljava/lang/StringBuilder;II)V
    .locals 4
    .param p0, "dump"    # Ljava/lang/StringBuilder;
    .param p1, "row"    # I
    .param p2, "rowStartIndex"    # I

    .line 1162
    sget-object v0, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXDUMP_ROWPREFIXES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 1163
    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1165
    :cond_0
    sget-object v0, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide v2, 0x100000000L

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x9

    const/16 v1, 0x7c

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1168
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1170
    :goto_0
    return-void
.end method

.method private static appendPrettyHexDump(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;II)V
    .locals 12
    .param p0, "dump"    # Ljava/lang/StringBuilder;
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1098
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-static {p2, p3, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1103
    if-nez p3, :cond_0

    .line 1104
    return-void

    .line 1106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "         +-------------------------------------------------+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "         |  0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+--------+-------------------------------------------------+----------------+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    move v0, p2

    .line 1112
    .local v0, "startIndex":I
    ushr-int/lit8 v2, p3, 0x4

    .line 1113
    .local v2, "fullRows":I
    and-int/lit8 v3, p3, 0xf

    .line 1116
    .local v3, "remainder":I
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_0
    const/16 v5, 0x7c

    const-string v6, " |"

    if-ge v4, v2, :cond_3

    .line 1117
    shl-int/lit8 v7, v4, 0x4

    add-int/2addr v7, v0

    .line 1120
    .local v7, "rowStartIndex":I
    invoke-static {p0, v4, v7}, Lio/netty/buffer/ByteBufUtil$HexUtil;->appendHexDumpRowPrefix(Ljava/lang/StringBuilder;II)V

    .line 1123
    add-int/lit8 v8, v7, 0x10

    .line 1124
    .local v8, "rowEndIndex":I
    move v9, v7

    .local v9, "j":I
    :goto_1
    if-ge v9, v8, :cond_1

    .line 1125
    sget-object v10, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTE2HEX:[Ljava/lang/String;

    invoke-virtual {p1, v9}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1127
    .end local v9    # "j":I
    :cond_1
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    move v6, v7

    .local v6, "j":I
    :goto_2
    if-ge v6, v8, :cond_2

    .line 1131
    sget-object v9, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTE2CHAR:[C

    invoke-virtual {p1, v6}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v10

    aget-char v9, v9, v10

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1130
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1133
    .end local v6    # "j":I
    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1116
    .end local v7    # "rowStartIndex":I
    .end local v8    # "rowEndIndex":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1137
    .end local v4    # "row":I
    :cond_3
    if-eqz v3, :cond_6

    .line 1138
    shl-int/lit8 v4, v2, 0x4

    add-int/2addr v4, v0

    .line 1139
    .local v4, "rowStartIndex":I
    invoke-static {p0, v2, v4}, Lio/netty/buffer/ByteBufUtil$HexUtil;->appendHexDumpRowPrefix(Ljava/lang/StringBuilder;II)V

    .line 1142
    add-int v7, v4, v3

    .line 1143
    .local v7, "rowEndIndex":I
    move v8, v4

    .local v8, "j":I
    :goto_3
    if-ge v8, v7, :cond_4

    .line 1144
    sget-object v9, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTE2HEX:[Ljava/lang/String;

    invoke-virtual {p1, v8}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1146
    .end local v8    # "j":I
    :cond_4
    sget-object v8, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXPADDING:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    move v6, v4

    .restart local v6    # "j":I
    :goto_4
    if-ge v6, v7, :cond_5

    .line 1151
    sget-object v8, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTE2CHAR:[C

    invoke-virtual {p1, v6}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v9

    aget-char v8, v8, v9

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1150
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1153
    .end local v6    # "j":I
    :cond_5
    sget-object v6, Lio/netty/buffer/ByteBufUtil$HexUtil;->BYTEPADDING:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1157
    .end local v4    # "rowStartIndex":I
    .end local v7    # "rowEndIndex":I
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    return-void

    .line 1099
    .end local v0    # "startIndex":I
    .end local v2    # "fullRows":I
    .end local v3    # "remainder":I
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: 0 <= offset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= offset + length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= buf.capacity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1101
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static hexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;
    .locals 7
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "fromIndex"    # I
    .param p2, "length"    # I

    .line 1047
    const-string v0, "length"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 1048
    if-nez p2, :cond_0

    .line 1049
    const-string v0, ""

    return-object v0

    .line 1052
    :cond_0
    add-int v0, p1, p2

    .line 1053
    .local v0, "endIndex":I
    shl-int/lit8 v1, p2, 0x1

    new-array v1, v1, [C

    .line 1055
    .local v1, "buf":[C
    move v2, p1

    .line 1056
    .local v2, "srcIdx":I
    const/4 v3, 0x0

    .line 1057
    .local v3, "dstIdx":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1058
    sget-object v4, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXDUMP_TABLE:[C

    .line 1059
    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v5

    shl-int/lit8 v5, v5, 0x1

    .line 1058
    const/4 v6, 0x2

    invoke-static {v4, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1057
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1063
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method

.method private static hexDump([BII)Ljava/lang/String;
    .locals 7
    .param p0, "array"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "length"    # I

    .line 1067
    const-string v0, "length"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 1068
    if-nez p2, :cond_0

    .line 1069
    const-string v0, ""

    return-object v0

    .line 1072
    :cond_0
    add-int v0, p1, p2

    .line 1073
    .local v0, "endIndex":I
    shl-int/lit8 v1, p2, 0x1

    new-array v1, v1, [C

    .line 1075
    .local v1, "buf":[C
    move v2, p1

    .line 1076
    .local v2, "srcIdx":I
    const/4 v3, 0x0

    .line 1077
    .local v3, "dstIdx":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1078
    sget-object v4, Lio/netty/buffer/ByteBufUtil$HexUtil;->HEXDUMP_TABLE:[C

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    invoke-static {v4, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1077
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1083
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method

.method private static prettyHexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;
    .locals 3
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 1087
    if-nez p2, :cond_0

    .line 1088
    const-string v0, ""

    return-object v0

    .line 1090
    :cond_0
    div-int/lit8 v0, p2, 0x10

    and-int/lit8 v1, p2, 0xf

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    .line 1091
    .local v0, "rows":I
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x50

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1092
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-static {v1, p0, p1, p2}, Lio/netty/buffer/ByteBufUtil$HexUtil;->appendPrettyHexDump(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;II)V

    .line 1093
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
