.class public Lorg/jdom2/input/stax/DTDParser;
.super Ljava/lang/Object;
.source "DTDParser.java"


# static fields
.field private static final metapattern:Ljava/lang/String; = " os <!DOCTYPE ms ( name )( ms ((SYSTEM ms  id )|(PUBLIC ms  id ( ms  id )?)))?( os \\[( internal )\\])? os > os "

.field private static final pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 220
    invoke-static {}, Lorg/jdom2/input/stax/DTDParser;->populatePatterns()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, " os <!DOCTYPE ms ( name )( ms ((SYSTEM ms  id )|(PUBLIC ms  id ( ms  id )?)))?( os \\[( internal )\\])? os > os "

    invoke-static {v0, v1}, Lorg/jdom2/input/stax/DTDParser;->buildPattern(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jdom2/input/stax/DTDParser;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    return-void
.end method

.method private static final buildPattern(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 6
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/regex/Pattern;"
        }
    .end annotation

    .line 194
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, " (\\w+) "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 195
    .local v0, "search":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 196
    .local v1, "mat":Ljava/util/regex/Matcher;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 198
    .local v3, "pos":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 208
    .local v4, "rep":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 211
    .end local v4    # "rep":Ljava/lang/String;
    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x20

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    return-object v4
.end method

.method private static formatInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "internal"    # Ljava/lang/String;

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 318
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    .line 319
    .local v1, "quote":C
    const/4 v2, 0x1

    .line 320
    .local v2, "white":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .local v3, "arr$":[C
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_9

    aget-char v6, v3, v5

    .line 321
    .local v6, "ch":C
    const/16 v7, 0x20

    if-ne v1, v7, :cond_6

    .line 323
    invoke-static {v6}, Lorg/jdom2/input/stax/DTDParser;->isWhite(C)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 324
    if-nez v2, :cond_8

    .line 327
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    const/4 v2, 0x1

    goto :goto_4

    .line 332
    :cond_0
    const/16 v7, 0x27

    if-eq v6, v7, :cond_2

    const/16 v7, 0x22

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 335
    :cond_1
    const/16 v7, 0x3c

    if-ne v6, v7, :cond_3

    .line 337
    const-string v7, "  "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 334
    :cond_2
    :goto_1
    move v1, v6

    .line 340
    :cond_3
    :goto_2
    const/16 v7, 0x3e

    if-ne v6, v7, :cond_5

    .line 342
    if-eqz v2, :cond_4

    .line 345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_3

    .line 348
    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    :goto_3
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    const/4 v2, 0x1

    goto :goto_4

    .line 355
    :cond_5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    const/4 v2, 0x0

    goto :goto_4

    .line 361
    :cond_6
    if-ne v6, v1, :cond_7

    .line 363
    const/16 v1, 0x20

    .line 365
    :cond_7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    .end local v6    # "ch":C
    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 368
    .end local v3    # "arr$":[C
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static final varargs getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;
    .locals 5
    .param p0, "mat"    # Ljava/util/regex/Matcher;
    .param p1, "groups"    # [I

    .line 291
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 292
    .local v3, "g":I
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 294
    return-object v4

    .line 291
    .end local v3    # "g":I
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    .end local v0    # "arr$":[I
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final isWhite(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 307
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static parse(Ljava/lang/String;Lorg/jdom2/JDOMFactory;)Lorg/jdom2/DocType;
    .locals 7
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "factory"    # Lorg/jdom2/JDOMFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 390
    sget-object v0, Lorg/jdom2/input/stax/DTDParser;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 391
    .local v0, "mat":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 396
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "docemt":Ljava/lang/String;
    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v0, v3}, Lorg/jdom2/input/stax/DTDParser;->getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "sysid":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    invoke-static {v0, v4}, Lorg/jdom2/input/stax/DTDParser;->getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v4

    .line 399
    .local v4, "pubid":Ljava/lang/String;
    new-array v1, v1, [I

    const/4 v5, 0x0

    const/16 v6, 0x17

    aput v6, v1, v5

    invoke-static {v0, v1}, Lorg/jdom2/input/stax/DTDParser;->getGroup(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "internal":Ljava/lang/String;
    const/4 v5, 0x0

    .line 403
    .local v5, "dt":Lorg/jdom2/DocType;
    if-eqz v4, :cond_0

    .line 404
    invoke-interface {p1, v2, v4, v3}, Lorg/jdom2/JDOMFactory;->docType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v5

    goto :goto_0

    .line 405
    :cond_0
    if-eqz v3, :cond_1

    .line 406
    invoke-interface {p1, v2, v3}, Lorg/jdom2/JDOMFactory;->docType(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v5

    goto :goto_0

    .line 408
    :cond_1
    invoke-interface {p1, v2}, Lorg/jdom2/JDOMFactory;->docType(Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v5

    .line 411
    :goto_0
    if-eqz v1, :cond_2

    .line 412
    invoke-static {v1}, Lorg/jdom2/input/stax/DTDParser;->formatInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jdom2/DocType;->setInternalSubset(Ljava/lang/String;)V

    .line 414
    :cond_2
    return-object v5

    .line 392
    .end local v1    # "internal":Ljava/lang/String;
    .end local v2    # "docemt":Ljava/lang/String;
    .end local v3    # "sysid":Ljava/lang/String;
    .end local v4    # "pubid":Ljava/lang/String;
    .end local v5    # "dt":Lorg/jdom2/DocType;
    :cond_3
    new-instance v1, Lorg/jdom2/JDOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Doctype input does not appear to be valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 4
        0x7
        0x9
        0x13
        0x15
    .end array-data

    :array_1
    .array-data 4
        0xd
        0xf
    .end array-data
.end method

.method private static final populatePatterns()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 166
    .local v0, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    const-string v2, "[^ \\n\\r\\t\\[>]+"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "ms"

    const-string v2, "[ \\n\\r\\t]+"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "os"

    const-string v2, "[ \\n\\r\\t]*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "id"

    const-string v2, "((\'([^\']*)\')|(\"([^\"]*)\"))"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "internal"

    const-string v2, ".*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-object v0
.end method
