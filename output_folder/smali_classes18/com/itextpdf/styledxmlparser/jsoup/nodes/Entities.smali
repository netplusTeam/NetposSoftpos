.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;
.super Ljava/lang/Object;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;,
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;
    }
.end annotation


# static fields
.field private static final base:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final baseByVal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final full:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final fullByVal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final xhtmlArray:[[Ljava/lang/Object;

.field private static final xhtmlByVal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 290
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "quot"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 291
    const/16 v3, 0x22

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "amp"

    aput-object v3, v2, v4

    .line 292
    const/16 v3, 0x26

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "lt"

    aput-object v3, v2, v4

    .line 293
    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "gt"

    aput-object v2, v1, v4

    .line 294
    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->xhtmlArray:[[Ljava/lang/Object;

    .line 298
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->xhtmlByVal:Ljava/util/Map;

    .line 299
    const-string v1, "entities-base.properties"

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->loadEntities(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->base:Ljava/util/Map;

    .line 300
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->toCharacterKey(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->baseByVal:Ljava/util/Map;

    .line 301
    const-string v1, "entities-full.properties"

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->loadEntities(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->full:Ljava/util/Map;

    .line 302
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->toCharacterKey(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->fullByVal:Ljava/util/Map;

    .line 304
    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 305
    .local v3, "entity":[Ljava/lang/Object;
    aget-object v6, v3, v5

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-char v6, v6

    .line 306
    .local v6, "c":C
    sget-object v7, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->xhtmlByVal:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aget-object v9, v3, v4

    check-cast v9, Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .end local v3    # "entity":[Ljava/lang/Object;
    .end local v6    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 62
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->xhtmlByVal:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 62
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->baseByVal:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .line 62
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->fullByVal:Ljava/util/Map;

    return-object v0
.end method

.method private static canEncode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z
    .locals 2
    .param p0, "charset"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;
    .param p1, "c"    # C
    .param p2, "fallback"    # Ljava/nio/charset/CharsetEncoder;

    .line 266
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$1;->$SwitchMap$com$itextpdf$styledxmlparser$jsoup$nodes$Entities$CoreCharset:[I

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 273
    invoke-virtual {p2, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v0

    return v0

    .line 271
    :pswitch_0
    return v1

    .line 268
    :pswitch_1
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static escape(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "out"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 149
    .local v0, "accum":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->escape(Ljava/lang/Appendable;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;ZZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    nop

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/SerializationException;

    invoke-direct {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static escape(Ljava/lang/Appendable;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;ZZZ)V
    .locals 15
    .param p0, "accum"    # Ljava/lang/Appendable;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "outputSettings"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .param p3, "inAttribute"    # Z
    .param p4, "normaliseWhite"    # Z
    .param p5, "stripLeadingWhite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    move-object v0, p0

    const/4 v1, 0x0

    .line 161
    .local v1, "lastWasWhite":Z
    const/4 v2, 0x0

    .line 162
    .local v2, "reachedNonWhite":Z
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->escapeMode()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    move-result-object v3

    .line 163
    .local v3, "escapeMode":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->encoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    .line 164
    .local v4, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->getCoreCharsetByName(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    move-result-object v5

    .line 165
    .local v5, "coreCharset":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->getMap()Ljava/util/Map;

    move-result-object v6

    .line 166
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 169
    .local v7, "length":I
    const/4 v8, 0x0

    .local v8, "offset":I
    :goto_0
    if-ge v8, v7, :cond_e

    .line 170
    move-object/from16 v9, p1

    invoke-virtual {v9, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    .line 172
    .local v10, "codePoint":I
    if-eqz p4, :cond_3

    .line 173
    invoke-static {v10}, Lcom/itextpdf/styledxmlparser/jsoup/helper/StringUtil;->isWhitespace(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 174
    if-eqz p5, :cond_0

    if-eqz v2, :cond_d

    :cond_0
    if-eqz v1, :cond_1

    .line 175
    goto/16 :goto_3

    .line 176
    :cond_1
    const/16 v11, 0x20

    invoke-interface {p0, v11}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 177
    const/4 v1, 0x1

    .line 178
    goto/16 :goto_3

    .line 180
    :cond_2
    const/4 v1, 0x0

    .line 181
    const/4 v2, 0x1

    .line 185
    :cond_3
    const/high16 v11, 0x10000

    const-string v12, "&#x"

    const/16 v13, 0x3b

    if-ge v10, v11, :cond_b

    .line 186
    int-to-char v11, v10

    .line 188
    .local v11, "c":C
    sparse-switch v11, :sswitch_data_0

    .line 218
    invoke-static {v5, v11, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->canEncode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 219
    invoke-interface {p0, v11}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto/16 :goto_2

    .line 193
    :sswitch_0
    sget-object v12, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->xhtml:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    if-eq v3, v12, :cond_4

    .line 194
    const-string v12, "&nbsp;"

    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto/16 :goto_2

    .line 196
    :cond_4
    const-string v12, "&#xa0;"

    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 197
    goto :goto_2

    .line 206
    :sswitch_1
    if-nez p3, :cond_5

    .line 207
    const-string v12, "&gt;"

    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    .line 209
    :cond_5
    invoke-interface {p0, v11}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 210
    goto :goto_2

    .line 200
    :sswitch_2
    if-eqz p3, :cond_7

    sget-object v12, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->xhtml:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    if-ne v3, v12, :cond_6

    goto :goto_1

    .line 203
    :cond_6
    invoke-interface {p0, v11}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 204
    goto :goto_2

    .line 201
    :cond_7
    :goto_1
    const-string v12, "&lt;"

    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    .line 190
    :sswitch_3
    const-string v12, "&amp;"

    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 191
    goto :goto_2

    .line 212
    :sswitch_4
    if-eqz p3, :cond_8

    .line 213
    const-string v12, "&quot;"

    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    .line 215
    :cond_8
    invoke-interface {p0, v11}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 216
    goto :goto_2

    .line 220
    :cond_9
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 221
    const/16 v12, 0x26

    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-interface {v12, v14}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v12

    invoke-interface {v12, v13}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    .line 223
    :cond_a
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v12

    invoke-interface {v12, v13}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 225
    .end local v11    # "c":C
    :goto_2
    goto :goto_3

    .line 226
    :cond_b
    new-instance v11, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/lang/String;-><init>([C)V

    .line 227
    .local v11, "c":Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 228
    invoke-interface {p0, v11}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_3

    .line 230
    :cond_c
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v12

    invoke-interface {v12, v13}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 169
    .end local v11    # "c":Ljava/lang/String;
    :cond_d
    :goto_3
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v8, v11

    goto/16 :goto_0

    .end local v10    # "codePoint":I
    :cond_e
    move-object/from16 v9, p1

    .line 233
    .end local v8    # "offset":I
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x26 -> :sswitch_3
        0x3c -> :sswitch_2
        0x3e -> :sswitch_1
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getCharacterByName(Ljava/lang/String;)Ljava/lang/Character;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->full:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    return-object v0
.end method

.method private static getCoreCharsetByName(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 282
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;->ascii:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    return-object v0

    .line 284
    :cond_0
    const-string v0, "UTF-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;->utf:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    return-object v0

    .line 286
    :cond_1
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;->fallback:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    return-object v0
.end method

.method public static isBaseNamedEntity(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->base:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNamedEntity(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 122
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->full:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static loadEntities(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 312
    .local v0, "properties":Ljava/util/Properties;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 314
    .local v1, "entities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Character;>;"
    :try_start_0
    const-class v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 315
    .local v2, "in":Ljava/io/InputStream;
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 316
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v2    # "in":Ljava/io/InputStream;
    nop

    .line 321
    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 322
    .local v3, "name":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 323
    .local v4, "val":Ljava/lang/Character;
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .end local v3    # "name":Ljava/lang/Object;
    .end local v4    # "val":Ljava/lang/Character;
    goto :goto_0

    .line 325
    :cond_0
    return-object v1

    .line 317
    :catch_0
    move-exception v2

    .line 318
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/util/MissingResourceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading entities resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Entities"

    invoke-direct {v3, v4, v5, p0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method private static toCharacterKey(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 329
    .local p0, "inMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Character;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 330
    .local v0, "outMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 331
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Character;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 332
    .local v3, "character":C
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 334
    .local v4, "name":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 336
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 337
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 339
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Character;>;"
    .end local v3    # "character":C
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_0

    .line 342
    :cond_2
    return-object v0
.end method

.method static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 236
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->unescape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static unescape(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .line 247
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->unescapeEntities(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
