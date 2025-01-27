.class Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;
.super Ljava/lang/Object;
.source "UriEncodeUtil.java"


# static fields
.field private static final caseDiff:I = 0x20

.field private static dfltEncName:Ljava/lang/String;

.field private static unreservedAndReserved:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    const-string v0, "UTF-8"

    sput-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->dfltEncName:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    .line 72
    const/16 v0, 0x61

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_0

    .line 73
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 76
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 79
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 82
    :cond_2
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 83
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 84
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 85
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 87
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 88
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 89
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 90
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 91
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 92
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 93
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 94
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 95
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 96
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 97
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 98
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 99
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 100
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 101
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 102
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 103
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 104
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 105
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 106
    .end local v0    # "i":I
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->dfltEncName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "enc"    # Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "needToChange":Z
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 129
    .local v1, "out":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    .line 131
    .local v2, "charArrayWriter":Ljava/io/CharArrayWriter;
    const-string v3, "Unsupported encoding exception."

    if-eqz p1, :cond_e

    .line 136
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    .local v3, "charset":Ljava/nio/charset/Charset;
    nop

    .line 140
    const/4 v4, 0x0

    .line 141
    .local v4, "i":I
    const/4 v5, 0x1

    .line 142
    .local v5, "firstHash":Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_c

    .line 143
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 144
    .local v6, "c":I
    const/16 v7, 0x5c

    if-ne v7, v6, :cond_0

    .line 145
    const/16 v7, 0x2f

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    const/4 v0, 0x1

    .line 147
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 148
    :cond_0
    const/16 v7, 0x25

    const/16 v8, 0x10

    if-ne v7, v6, :cond_3

    .line 149
    const/4 v7, -0x1

    .line 150
    .local v7, "v":I
    add-int/lit8 v9, v4, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 152
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v4, 0x3

    :try_start_1
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move v7, v8

    .line 155
    goto :goto_1

    .line 153
    :catch_0
    move-exception v8

    .line 154
    .local v8, "e":Ljava/lang/NumberFormatException;
    const/4 v7, -0x1

    .line 156
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    if-ltz v7, :cond_1

    .line 157
    int-to-char v8, v6

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 159
    :cond_1
    if-gez v7, :cond_2

    .line 162
    const/4 v0, 0x1

    .line 163
    const-string v8, "%25"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    :cond_2
    nop

    .end local v7    # "v":I
    add-int/lit8 v4, v4, 0x1

    .line 166
    goto/16 :goto_4

    :cond_3
    const/16 v9, 0x23

    if-ne v9, v6, :cond_5

    .line 168
    if-eqz v5, :cond_4

    .line 169
    int-to-char v7, v6

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 170
    const/4 v5, 0x0

    goto :goto_2

    .line 173
    :cond_4
    const-string v7, "%23"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    const/4 v0, 0x1

    .line 176
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 177
    :cond_5
    sget-object v9, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    invoke-virtual {v9, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 178
    int-to-char v7, v6

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 183
    :cond_6
    invoke-virtual {v2, v6}, Ljava/io/CharArrayWriter;->write(I)V

    .line 192
    const v9, 0xd800

    if-lt v6, v9, :cond_7

    const v9, 0xdbff

    if-gt v6, v9, :cond_7

    .line 197
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 198
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 203
    .local v9, "d":I
    const v10, 0xdc00

    if-lt v9, v10, :cond_7

    const v10, 0xdfff

    if-gt v9, v10, :cond_7

    .line 209
    invoke-virtual {v2, v9}, Ljava/io/CharArrayWriter;->write(I)V

    .line 210
    add-int/lit8 v4, v4, 0x1

    .line 214
    .end local v9    # "d":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 215
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_8

    sget-object v9, Lcom/itextpdf/styledxmlparser/resolver/resource/UriEncodeUtil;->unreservedAndReserved:Ljava/util/BitSet;

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v6, v10

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 217
    :cond_8
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->flush()V

    .line 218
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([C)V

    .line 219
    .local v9, "str":Ljava/lang/String;
    invoke-virtual {v9, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    .line 220
    .local v10, "ba":[B
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    array-length v12, v10

    if-ge v11, v12, :cond_b

    .line 221
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 222
    aget-byte v12, v10, v11

    shr-int/lit8 v12, v12, 0x4

    and-int/lit8 v12, v12, 0xf

    invoke-static {v12, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v12

    .line 225
    .local v12, "ch":C
    invoke-static {v12}, Ljava/lang/Character;->isLetter(C)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 226
    add-int/lit8 v13, v12, -0x20

    int-to-char v12, v13

    .line 228
    :cond_9
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 229
    aget-byte v13, v10, v11

    and-int/lit8 v13, v13, 0xf

    invoke-static {v13, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v12

    .line 230
    invoke-static {v12}, Ljava/lang/Character;->isLetter(C)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 231
    add-int/lit8 v13, v12, -0x20

    int-to-char v12, v13

    .line 233
    :cond_a
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 220
    .end local v12    # "ch":C
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 235
    .end local v11    # "j":I
    :cond_b
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->reset()V

    .line 236
    const/4 v0, 0x1

    .line 238
    .end local v6    # "c":I
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "ba":[B
    :goto_4
    goto/16 :goto_0

    .line 239
    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_d
    move-object v6, p0

    :goto_5
    return-object v6

    .line 137
    .end local v3    # "charset":Ljava/nio/charset/Charset;
    .end local v4    # "i":I
    .end local v5    # "firstHash":Z
    :catch_1
    move-exception v4

    .line 138
    .local v4, "e":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v5, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    invoke-direct {v5, v3}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 132
    .end local v4    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    :cond_e
    new-instance v4, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;

    invoke-direct {v4, v3}, Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
