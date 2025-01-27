.class public Lorg/jpos/util/FSDMsg;
.super Ljava/lang/Object;
.source "FSDMsg.java"

# interfaces
.implements Lorg/jpos/util/Loggeable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DUMMY_SEPARATORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static EOF:C = '\u0000'

.field public static EOM:C = '\u0000'

.field private static final EOM_SEPARATOR:Ljava/lang/String; = "EOM"

.field public static FS:C = '\u0000'

.field public static GS:C = '\u0000'

.field public static PIPE:C = '\u0000'

.field private static final READ_BUFFER:I = 0x2000

.field public static RS:C

.field public static US:C


# instance fields
.field basePath:Ljava/lang/String;

.field baseSchema:Ljava/lang/String;

.field charset:Ljava/nio/charset/Charset;

.field fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field header:[B

.field private readCount:I

.field separators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 99
    const/16 v0, 0x1c

    sput-char v0, Lorg/jpos/util/FSDMsg;->FS:C

    .line 100
    const/16 v0, 0x1f

    sput-char v0, Lorg/jpos/util/FSDMsg;->US:C

    .line 101
    const/16 v0, 0x1d

    sput-char v0, Lorg/jpos/util/FSDMsg;->GS:C

    .line 102
    const/16 v0, 0x1e

    sput-char v0, Lorg/jpos/util/FSDMsg;->RS:C

    .line 103
    const/4 v0, 0x0

    sput-char v0, Lorg/jpos/util/FSDMsg;->EOF:C

    .line 104
    const/16 v1, 0x7c

    sput-char v1, Lorg/jpos/util/FSDMsg;->PIPE:C

    .line 105
    sput-char v0, Lorg/jpos/util/FSDMsg;->EOM:C

    .line 107
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "DS"

    const-string v2, "EOM"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/jpos/util/FSDMsg;->DUMMY_SEPARATORS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "basePath"    # Ljava/lang/String;

    .line 125
    const-string v0, "base"

    invoke-direct {p0, p1, v0}, Lorg/jpos/util/FSDMsg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "basePath"    # Ljava/lang/String;
    .param p2, "baseSchema"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    .line 137
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/FSDMsg;->separators:Ljava/util/Map;

    .line 138
    iput-object p1, p0, Lorg/jpos/util/FSDMsg;->basePath:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lorg/jpos/util/FSDMsg;->baseSchema:Ljava/lang/String;

    .line 140
    sget-object v0, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/jpos/util/FSDMsg;->charset:Ljava/nio/charset/Charset;

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/util/FSDMsg;->readCount:I

    .line 143
    sget-char v0, Lorg/jpos/util/FSDMsg;->FS:C

    const-string v1, "FS"

    invoke-virtual {p0, v1, v0}, Lorg/jpos/util/FSDMsg;->setSeparator(Ljava/lang/String;C)V

    .line 144
    sget-char v0, Lorg/jpos/util/FSDMsg;->US:C

    const-string v1, "US"

    invoke-virtual {p0, v1, v0}, Lorg/jpos/util/FSDMsg;->setSeparator(Ljava/lang/String;C)V

    .line 145
    sget-char v0, Lorg/jpos/util/FSDMsg;->GS:C

    const-string v1, "GS"

    invoke-virtual {p0, v1, v0}, Lorg/jpos/util/FSDMsg;->setSeparator(Ljava/lang/String;C)V

    .line 146
    sget-char v0, Lorg/jpos/util/FSDMsg;->RS:C

    const-string v1, "RS"

    invoke-virtual {p0, v1, v0}, Lorg/jpos/util/FSDMsg;->setSeparator(Ljava/lang/String;C)V

    .line 147
    sget-char v0, Lorg/jpos/util/FSDMsg;->EOF:C

    const-string v1, "EOF"

    invoke-virtual {p0, v1, v0}, Lorg/jpos/util/FSDMsg;->setSeparator(Ljava/lang/String;C)V

    .line 148
    sget-char v0, Lorg/jpos/util/FSDMsg;->PIPE:C

    const-string v1, "PIPE"

    invoke-virtual {p0, v1, v0}, Lorg/jpos/util/FSDMsg;->setSeparator(Ljava/lang/String;C)V

    .line 149
    return-void
.end method

.method private append(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "f"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/String;
    .param p4, "indent"    # Ljava/lang/String;

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method private getId(Lorg/jdom2/Element;)Ljava/lang/String;
    .locals 2
    .param p1, "e"    # Lorg/jdom2/Element;

    .line 455
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private getSeparator(Ljava/lang/String;)C
    .locals 3
    .param p1, "separator"    # Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->separators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->separators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0

    .line 353
    :cond_0
    invoke-direct {p0, p1}, Lorg/jpos/util/FSDMsg;->isDummySeparator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    const/4 v0, 0x0

    return v0

    .line 358
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSeparator called on separator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " which was not previously defined."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSeparatorType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_0

    .line 345
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 347
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isBinary(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 336
    const-string v0, "B"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDummySeparator(Ljava/lang/String;)Z
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;

    .line 329
    sget-object v0, Lorg/jpos/util/FSDMsg;->DUMMY_SEPARATORS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSeparated(Ljava/lang/String;)Z
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;

    .line 309
    if-nez p1, :cond_0

    .line 310
    const/4 v0, 0x0

    return v0

    .line 311
    :cond_0
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->separators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 312
    return v1

    .line 313
    :cond_1
    invoke-direct {p0, p1}, Lorg/jpos/util/FSDMsg;->isDummySeparator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    return v1

    .line 317
    :cond_2
    const/16 v0, 0x10

    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDefined(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 318
    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v0, v2

    int-to-char v0, v0

    invoke-virtual {p0, p1, v0}, Lorg/jpos/util/FSDMsg;->setSeparator(Ljava/lang/String;C)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    return v1

    .line 323
    :cond_3
    nop

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSeparated called on separator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " which was not previously defined."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid separator \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadProperties(Lorg/jdom2/Element;)Ljava/util/Map;
    .locals 5
    .param p1, "elem"    # Lorg/jdom2/Element;

    .line 402
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 403
    .local v0, "props":Ljava/util/Map;
    const-string v1, "property"

    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Element;

    .line 404
    .local v2, "prop":Lorg/jdom2/Element;
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "name":Ljava/lang/String;
    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .end local v2    # "prop":Lorg/jdom2/Element;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 408
    :cond_0
    return-object v0
.end method

.method private normalizeKeyValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "*",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 412
    .local p2, "properties":Ljava/util/Map;, "Ljava/util/Map<*Ljava/lang/String;>;"
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 415
    :cond_0
    invoke-static {p1}, Lorg/jpos/iso/ISOUtil;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 708
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/util/FSDMsg;

    .line 709
    .local v0, "m":Lorg/jpos/util/FSDMsg;
    iget-object v1, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    return-object v0

    .line 711
    .end local v0    # "m":Lorg/jpos/util/FSDMsg;
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public copy(Ljava/lang/String;Lorg/jpos/util/FSDMsg;)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "msg"    # Lorg/jpos/util/FSDMsg;

    .line 573
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    invoke-virtual {p2, p1}, Lorg/jpos/util/FSDMsg;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    return-void
.end method

.method public copy(Ljava/lang/String;Lorg/jpos/util/FSDMsg;Ljava/lang/String;)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "msg"    # Lorg/jpos/util/FSDMsg;
    .param p3, "def"    # Ljava/lang/String;

    .line 576
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    invoke-virtual {p2, p1, p3}, Lorg/jpos/util/FSDMsg;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    return-void
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 4
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, "inner":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<fsdmsg schema=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/util/FSDMsg;->basePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/util/FSDMsg;->baseSchema:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 691
    iget-object v1, p0, Lorg/jpos/util/FSDMsg;->header:[B

    if-eqz v1, :cond_0

    .line 692
    invoke-virtual {p0}, Lorg/jpos/util/FSDMsg;->getHexHeader()Ljava/lang/String;

    move-result-object v1

    const-string v2, "header"

    invoke-direct {p0, p1, v2, v1, v0}, Lorg/jpos/util/FSDMsg;->append(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :cond_0
    iget-object v1, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 695
    .local v2, "f":Ljava/lang/String;
    iget-object v3, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3, v0}, Lorg/jpos/util/FSDMsg;->append(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "f":Ljava/lang/String;
    goto :goto_0

    .line 696
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</fsdmsg>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 722
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 723
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 724
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/jpos/util/FSDMsg;

    .line 725
    .local v2, "fsdMsg":Lorg/jpos/util/FSDMsg;
    iget-object v3, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    iget-object v4, v2, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jpos/util/FSDMsg;->separators:Ljava/util/Map;

    iget-object v4, v2, Lorg/jpos/util/FSDMsg;->separators:Ljava/util/Map;

    .line 726
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jpos/util/FSDMsg;->baseSchema:Ljava/lang/String;

    iget-object v4, v2, Lorg/jpos/util/FSDMsg;->baseSchema:Ljava/lang/String;

    .line 727
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jpos/util/FSDMsg;->basePath:Ljava/lang/String;

    iget-object v4, v2, Lorg/jpos/util/FSDMsg;->basePath:Ljava/lang/String;

    .line 728
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jpos/util/FSDMsg;->header:[B

    iget-object v4, v2, Lorg/jpos/util/FSDMsg;->header:[B

    .line 729
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jpos/util/FSDMsg;->charset:Ljava/nio/charset/Charset;

    iget-object v4, v2, Lorg/jpos/util/FSDMsg;->charset:Ljava/nio/charset/Charset;

    .line 730
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 725
    :goto_0
    return v0

    .line 723
    .end local v2    # "fsdMsg":Lorg/jpos/util/FSDMsg;
    :cond_3
    :goto_1
    return v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 566
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 569
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 570
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method protected get(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "length"    # I
    .param p4, "defValue"    # Ljava/lang/String;
    .param p5, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 248
    if-nez p4, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p4

    :goto_0
    move-object v0, v1

    .line 250
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 251
    const/4 v1, 0x0

    .line 252
    .local v1, "lengthLength":I
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x4c

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    .line 253
    add-int/lit8 v1, v1, 0x1

    .line 254
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 257
    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_2

    .line 259
    :sswitch_0
    invoke-direct {p0, p5}, Lorg/jpos/util/FSDMsg;->isSeparated(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 260
    invoke-static {v0, p3}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 271
    :sswitch_1
    if-eqz p4, :cond_6

    .line 272
    move-object v0, p4

    goto/16 :goto_2

    .line 275
    :sswitch_2
    shl-int/lit8 v3, p3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 280
    invoke-direct {p0, p5}, Lorg/jpos/util/FSDMsg;->isSeparated(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 283
    new-instance v3, Ljava/lang/String;

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v6, p0, Lorg/jpos/util/FSDMsg;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v3

    goto :goto_2

    .line 285
    :cond_3
    new-instance v3, Ljava/lang/String;

    shl-int/lit8 v4, p3, 0x1

    invoke-static {v0, v4}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    shl-int/lit8 v6, p3, 0x1

    .line 286
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-static {v4}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v6, p0, Lorg/jpos/util/FSDMsg;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v3

    goto :goto_2

    .line 276
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "field content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too long to fit in field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " whose length is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 264
    :sswitch_3
    invoke-direct {p0, p5}, Lorg/jpos/util/FSDMsg;->isSeparated(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v1, :cond_5

    .line 265
    invoke-static {v0, p3}, Lorg/jpos/iso/ISOUtil;->strpad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p3, :cond_6

    .line 268
    invoke-virtual {v0, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 291
    :cond_6
    :goto_2
    if-nez v1, :cond_8

    invoke-direct {p0, p5}, Lorg/jpos/util/FSDMsg;->isSeparated(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0, p2}, Lorg/jpos/util/FSDMsg;->isBinary(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "EOM"

    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 292
    :cond_7
    return-object v0

    .line 294
    :cond_8
    if-lez v1, :cond_9

    .line 295
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "%%0%dd%%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "format":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .end local v3    # "format":Ljava/lang/String;
    goto :goto_3

    .line 298
    :cond_9
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->blankUnPad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    :goto_3
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_3
        0x42 -> :sswitch_2
        0x4b -> :sswitch_1
        0x4e -> :sswitch_0
    .end sparse-switch
.end method

.method public getBasePath()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->basePath:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseSchema()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->baseSchema:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()[B
    .locals 1

    .line 560
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->header:[B

    return-object v0
.end method

.method public getHexBytes(Ljava/lang/String;)[B
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 579
    invoke-virtual {p0, p1}, Lorg/jpos/util/FSDMsg;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getHexHeader()Ljava/lang/String;
    .locals 2

    .line 563
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->header:[B

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 584
    const/4 v0, 0x0

    .line 586
    .local v0, "i":I
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/util/FSDMsg;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    .line 587
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 588
    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 592
    move v0, p2

    .line 594
    .local v0, "i":I
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jpos/util/FSDMsg;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    .line 595
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 596
    return v0
.end method

.method public getMap()Ljava/util/Map;
    .locals 1

    .line 681
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    return-object v0
.end method

.method protected getSchema()Lorg/jdom2/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 615
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->baseSchema:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jpos/util/FSDMsg;->getSchema(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method protected getSchema(Ljava/lang/String;)Lorg/jdom2/Element;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jpos/util/FSDMsg;->getSchema(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method protected getSchema(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "defSuffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->basePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 626
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 628
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 632
    .local v2, "uri":Ljava/lang/String;
    invoke-static {}, Lorg/jpos/space/SpaceFactory;->getSpace()Lorg/jpos/space/Space;

    move-result-object v3

    .line 633
    .local v3, "sp":Lorg/jpos/space/Space;
    invoke-interface {v3, v2}, Lorg/jpos/space/Space;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom2/Element;

    .line 634
    .local v4, "schema":Lorg/jdom2/Element;
    if-nez v4, :cond_2

    .line 635
    const/4 v5, 0x1

    if-nez p3, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p0, v2, v6}, Lorg/jpos/util/FSDMsg;->loadSchema(Ljava/lang/String;Z)Lorg/jdom2/Element;

    move-result-object v4

    .line 636
    if-nez v4, :cond_1

    if-eqz p3, :cond_1

    .line 637
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    .line 638
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lorg/jpos/util/FSDMsg;->loadSchema(Ljava/lang/String;Z)Lorg/jdom2/Element;

    move-result-object v1

    move-object v4, v1

    .line 642
    :cond_1
    invoke-interface {v3, v2, v4}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 644
    :cond_2
    return-object v4

    .line 624
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "uri":Ljava/lang/String;
    .end local v3    # "sp":Lorg/jpos/space/Space;
    .end local v4    # "schema":Lorg/jdom2/Element;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "basePath can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 702
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 735
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/util/FSDMsg;->separators:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/util/FSDMsg;->baseSchema:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/util/FSDMsg;->basePath:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/util/FSDMsg;->charset:Ljava/nio/charset/Charset;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 736
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/jpos/util/FSDMsg;->header:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 737
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public isSeparator(B)Z
    .locals 2
    .param p1, "b"    # B

    .line 340
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->separators:Ljava/util/Map;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected loadSchema(Ljava/lang/String;Z)Lorg/jdom2/Element;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "throwex"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 649
    new-instance v0, Lorg/jdom2/input/SAXBuilder;

    invoke-direct {v0}, Lorg/jdom2/input/SAXBuilder;-><init>()V

    .line 650
    .local v0, "builder":Lorg/jdom2/input/SAXBuilder;
    const-string v1, "jar:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-le v1, v3, :cond_3

    .line 651
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jpos/util/FSDMsg;->schemaResouceInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 652
    .local v1, "is":Ljava/io/InputStream;
    if-nez v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 653
    :cond_0
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 654
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 655
    invoke-virtual {v0, v1}, Lorg/jdom2/input/SAXBuilder;->build(Ljava/io/InputStream;)Lorg/jdom2/Document;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object v2

    return-object v2

    .line 657
    :cond_2
    return-object v2

    .line 660
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_3
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 662
    .local v1, "url":Ljava/net/URL;
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/jdom2/input/SAXBuilder;->build(Ljava/net/URL;)Lorg/jdom2/Document;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 663
    :catch_0
    move-exception v3

    .line 664
    .local v3, "ex":Ljava/io/FileNotFoundException;
    if-nez p2, :cond_4

    .line 666
    return-object v2

    .line 665
    :cond_4
    throw v3
.end method

.method public merge(Lorg/jpos/util/FSDMsg;)V
    .locals 4
    .param p1, "m"    # Lorg/jpos/util/FSDMsg;

    .line 716
    iget-object v0, p1, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 717
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lorg/jpos/util/FSDMsg;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 718
    :cond_0
    return-void
.end method

.method public pack()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jpos/util/FSDMsg;->baseSchema:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/jpos/util/FSDMsg;->getSchema(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/jpos/util/FSDMsg;->pack(Lorg/jdom2/Element;Ljava/lang/StringBuilder;)V

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected pack(Lorg/jdom2/Element;Ljava/lang/StringBuilder;)V
    .locals 19
    .param p1, "schema"    # Lorg/jdom2/Element;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 365
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    const-string v0, ""

    .line 366
    .local v0, "keyOff":Ljava/lang/String;
    const-string v1, ""

    .line 367
    .local v1, "defaultKey":Ljava/lang/String;
    const-string v2, "field"

    move-object/from16 v8, p1

    invoke-virtual {v8, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v0

    move-object v11, v1

    .end local v0    # "keyOff":Ljava/lang/String;
    .end local v1    # "defaultKey":Ljava/lang/String;
    .local v10, "keyOff":Ljava/lang/String;
    .local v11, "defaultKey":Ljava/lang/String;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lorg/jdom2/Element;

    .line 368
    .local v12, "elem":Lorg/jdom2/Element;
    const-string v0, "id"

    invoke-virtual {v12, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 369
    .local v13, "id":Ljava/lang/String;
    const-string v0, "length"

    invoke-virtual {v12, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 370
    .local v14, "length":I
    const-string v0, "type"

    invoke-virtual {v12, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 372
    .local v15, "type":Ljava/lang/String;
    const-string v0, "separator"

    invoke-virtual {v12, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "separator":Ljava/lang/String;
    if-eqz v15, :cond_0

    if-nez v0, :cond_0

    .line 374
    invoke-direct {v6, v15}, Lorg/jpos/util/FSDMsg;->getSeparatorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    .line 376
    :cond_0
    move-object v4, v0

    .end local v0    # "separator":Ljava/lang/String;
    .local v4, "separator":Ljava/lang/String;
    :goto_1
    const-string v0, "key"

    invoke-virtual {v12, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 377
    .local v16, "key":Z
    if-eqz v16, :cond_1

    invoke-direct {v6, v12}, Lorg/jpos/util/FSDMsg;->loadProperties(Lorg/jdom2/Element;)Ljava/util/Map;

    move-result-object v0

    goto :goto_2

    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :goto_2
    move-object v5, v0

    .line 378
    .local v5, "properties":Ljava/util/Map;
    invoke-virtual {v12}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "defValue":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 381
    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\t"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\r"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_3

    .line 380
    :cond_2
    move-object/from16 v17, v0

    .line 383
    .end local v0    # "defValue":Ljava/lang/String;
    .local v17, "defValue":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v15

    move v3, v14

    move-object/from16 v18, v4

    .end local v4    # "separator":Ljava/lang/String;
    .local v18, "separator":Ljava/lang/String;
    move-object/from16 v4, v17

    move-object v8, v5

    .end local v5    # "properties":Ljava/util/Map;
    .local v8, "properties":Ljava/util/Map;
    move-object/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lorg/jpos/util/FSDMsg;->get(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    move-object/from16 v1, v18

    .end local v18    # "separator":Ljava/lang/String;
    .local v1, "separator":Ljava/lang/String;
    invoke-direct {v6, v1}, Lorg/jpos/util/FSDMsg;->isSeparated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 387
    invoke-direct {v6, v1}, Lorg/jpos/util/FSDMsg;->getSeparator(Ljava/lang/String;)C

    move-result v2

    .line 388
    .local v2, "c":C
    if-lez v2, :cond_3

    .line 389
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    .end local v2    # "c":C
    :cond_3
    if-eqz v16, :cond_5

    .line 392
    invoke-direct {v6, v15}, Lorg/jpos/util/FSDMsg;->isBinary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v6, Lorg/jpos/util/FSDMsg;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v0

    .line 393
    .local v2, "v":Ljava/lang/String;
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {v6, v2, v8}, Lorg/jpos/util/FSDMsg;->normalizeKeyValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 394
    .end local v10    # "keyOff":Ljava/lang/String;
    .local v3, "keyOff":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "default-key"

    invoke-virtual {v12, v5}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v10, v3

    move-object v11, v4

    .line 396
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "separator":Ljava/lang/String;
    .end local v2    # "v":Ljava/lang/String;
    .end local v3    # "keyOff":Ljava/lang/String;
    .end local v8    # "properties":Ljava/util/Map;
    .end local v12    # "elem":Lorg/jdom2/Element;
    .end local v13    # "id":Ljava/lang/String;
    .end local v14    # "length":I
    .end local v15    # "type":Ljava/lang/String;
    .end local v16    # "key":Z
    .end local v17    # "defValue":Ljava/lang/String;
    .restart local v10    # "keyOff":Ljava/lang/String;
    :cond_5
    move-object/from16 v8, p1

    goto/16 :goto_0

    .line 397
    :cond_6
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 398
    invoke-direct/range {p0 .. p1}, Lorg/jpos/util/FSDMsg;->getId(Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v10, v11}, Lorg/jpos/util/FSDMsg;->getSchema(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Lorg/jpos/util/FSDMsg;->pack(Lorg/jdom2/Element;Ljava/lang/StringBuilder;)V

    .line 399
    :cond_7
    return-void
.end method

.method public packToBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lorg/jpos/util/FSDMsg;->pack()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/util/FSDMsg;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method protected read(Ljava/io/InputStreamReader;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "r"    # Ljava/io/InputStreamReader;
    .param p2, "len"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    new-array v2, v1, [C

    .line 463
    .local v2, "c":[C
    invoke-direct {p0, p4}, Lorg/jpos/util/FSDMsg;->isSeparated(Ljava/lang/String;)Z

    move-result v3

    .line 464
    .local v3, "expectSeparator":Z
    move v4, v3

    .line 465
    .local v4, "separated":Z
    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-direct {p0, p4}, Lorg/jpos/util/FSDMsg;->getSeparator(Ljava/lang/String;)C

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v5

    .line 467
    .local v6, "separatorChar":C
    :goto_0
    const-string v7, "EOM"

    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 469
    const/16 v1, 0x20

    new-array v1, v1, [C

    .line 471
    .local v1, "rest":[C
    :goto_1
    array-length v7, v1

    invoke-virtual {p1, v1, v5, v7}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v7

    move v8, v7

    .local v8, "con":I
    if-ltz v7, :cond_2

    .line 472
    iget v7, p0, Lorg/jpos/util/FSDMsg;->readCount:I

    add-int/2addr v7, v8

    iput v7, p0, Lorg/jpos/util/FSDMsg;->readCount:I

    .line 473
    array-length v7, v1

    if-ne v7, v8, :cond_1

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 476
    :cond_1
    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 478
    .end local v1    # "rest":[C
    .end local v8    # "con":I
    :cond_2
    goto/16 :goto_8

    :cond_3
    invoke-direct {p0, p4}, Lorg/jpos/util/FSDMsg;->isDummySeparator(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 483
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, p2, :cond_5

    .line 484
    invoke-virtual {p1, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v8

    if-gez v8, :cond_4

    .line 485
    goto :goto_3

    .line 487
    :cond_4
    iget v8, p0, Lorg/jpos/util/FSDMsg;->readCount:I

    add-int/2addr v8, v1

    iput v8, p0, Lorg/jpos/util/FSDMsg;->readCount:I

    .line 488
    aget-char v8, v2, v5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v7    # "i":I
    :cond_5
    :goto_3
    goto/16 :goto_8

    .line 491
    :cond_6
    const/4 v7, 0x0

    .line 492
    .local v7, "lengthLength":I
    if-eqz p3, :cond_9

    const-string v8, "L"

    invoke-virtual {p3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 493
    :goto_4
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x4c

    if-ne v8, v9, :cond_7

    .line 494
    add-int/lit8 v7, v7, 0x1

    .line 495
    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    .line 497
    :cond_7
    if-lez v7, :cond_9

    .line 498
    new-array v8, v7, [C

    .line 499
    .local v8, "ll":[C
    invoke-virtual {p1, v8}, Ljava/io/InputStreamReader;->read([C)I

    move-result v9

    if-ne v9, v7, :cond_8

    .line 501
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([C)V

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_5

    .line 500
    :cond_8
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 504
    .end local v8    # "ll":[C
    :cond_9
    :goto_5
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    const-string v9, "EOF"

    if-ge v8, p2, :cond_d

    .line 505
    invoke-virtual {p1, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v10

    if-gez v10, :cond_b

    .line 506
    invoke-virtual {v9, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 509
    const/4 v4, 0x0

    .line 510
    goto :goto_7

    .line 507
    :cond_a
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 513
    :cond_b
    iget v10, p0, Lorg/jpos/util/FSDMsg;->readCount:I

    add-int/2addr v10, v1

    iput v10, p0, Lorg/jpos/util/FSDMsg;->readCount:I

    .line 514
    if-eqz v3, :cond_c

    aget-char v10, v2, v5

    if-ne v10, v6, :cond_c

    .line 515
    const/4 v4, 0x0

    .line 516
    goto :goto_7

    .line 518
    :cond_c
    aget-char v9, v2, v5

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 504
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 521
    .end local v8    # "i":I
    :cond_d
    :goto_7
    if-eqz v4, :cond_f

    invoke-virtual {v9, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 523
    invoke-virtual {p1, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    if-ltz v5, :cond_e

    .line 526
    iget v5, p0, Lorg/jpos/util/FSDMsg;->readCount:I

    add-int/2addr v5, v1

    iput v5, p0, Lorg/jpos/util/FSDMsg;->readCount:I

    goto :goto_8

    .line 524
    :cond_e
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 535
    .end local v7    # "lengthLength":I
    :cond_f
    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected readField(Ljava/io/InputStreamReader;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "r"    # Ljava/io/InputStreamReader;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "len"    # I
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    invoke-virtual {p0, p1, p3, p4, p5}, Lorg/jpos/util/FSDMsg;->read(Ljava/io/InputStreamReader;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "fieldValue":Ljava/lang/String;
    invoke-direct {p0, p4}, Lorg/jpos/util/FSDMsg;->isBinary(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lorg/jpos/util/FSDMsg;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v0

    .line 545
    :cond_0
    iget-object v1, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    return-object v0
.end method

.method protected schemaResouceInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 672
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 673
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    move-object v0, v1

    .line 674
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 551
    if-eqz p2, :cond_0

    .line 552
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 554
    :cond_0
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    :goto_0
    return-void
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 158
    iput-object p1, p0, Lorg/jpos/util/FSDMsg;->charset:Ljava/nio/charset/Charset;

    .line 159
    return-void
.end method

.method public setHeader([B)V
    .locals 0
    .param p1, "h"    # [B

    .line 557
    iput-object p1, p0, Lorg/jpos/util/FSDMsg;->header:[B

    .line 558
    return-void
.end method

.method public setMap(Ljava/util/Map;)V
    .locals 0
    .param p1, "fields"    # Ljava/util/Map;

    .line 684
    iput-object p1, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    .line 685
    return-void
.end method

.method public setSeparator(Ljava/lang/String;C)V
    .locals 2
    .param p1, "separatorName"    # Ljava/lang/String;
    .param p2, "separator"    # C

    .line 168
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->separators:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public toXML()Lorg/jdom2/Element;
    .locals 5

    .line 599
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "message"

    invoke-direct {v0, v1}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;)V

    .line 600
    .local v0, "e":Lorg/jdom2/Element;
    iget-object v1, p0, Lorg/jpos/util/FSDMsg;->header:[B

    if-eqz v1, :cond_0

    .line 601
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "header"

    invoke-direct {v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Lorg/jpos/util/FSDMsg;->getHexHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->setText(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    .line 601
    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 606
    :cond_0
    iget-object v1, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 607
    .local v2, "fieldName":Ljava/lang/String;
    new-instance v3, Lorg/jdom2/Element;

    invoke-direct {v3, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;)V

    .line 608
    .local v3, "inner":Lorg/jdom2/Element;
    iget-object v4, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/jpos/iso/ISOUtil;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 609
    invoke-virtual {v0, v3}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 610
    .end local v2    # "fieldName":Ljava/lang/String;
    .end local v3    # "inner":Lorg/jdom2/Element;
    goto :goto_0

    .line 611
    :cond_1
    return-object v0
.end method

.method public unpack(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 196
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 198
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lorg/jpos/util/FSDMsg;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iget-object v1, p0, Lorg/jpos/util/FSDMsg;->baseSchema:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/jpos/util/FSDMsg;->getSchema(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jpos/util/FSDMsg;->unpack(Ljava/io/InputStreamReader;Lorg/jdom2/Element;)V

    .line 199
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 201
    iget v0, p0, Lorg/jpos/util/FSDMsg;->readCount:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/util/FSDMsg;->readCount:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_1
    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/EOFException;
    iget-object v1, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 206
    iget-object v1, p0, Lorg/jpos/util/FSDMsg;->fields:Ljava/util/Map;

    const-string v2, "EOF"

    const-string v3, "true"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .end local v0    # "e":Ljava/io/EOFException;
    :goto_0
    return-void

    .line 208
    .restart local v0    # "e":Ljava/io/EOFException;
    :cond_2
    throw v0
.end method

.method protected unpack(Ljava/io/InputStreamReader;Lorg/jdom2/Element;)V
    .locals 18
    .param p1, "r"    # Ljava/io/InputStreamReader;
    .param p2, "schema"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 421
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    const-string v0, ""

    .line 422
    .local v0, "keyOff":Ljava/lang/String;
    const-string v1, ""

    .line 423
    .local v1, "defaultKey":Ljava/lang/String;
    const-string v2, "field"

    invoke-virtual {v7, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v0

    move-object v10, v1

    .end local v0    # "keyOff":Ljava/lang/String;
    .end local v1    # "defaultKey":Ljava/lang/String;
    .local v9, "keyOff":Ljava/lang/String;
    .local v10, "defaultKey":Ljava/lang/String;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/jdom2/Element;

    .line 424
    .local v11, "elem":Lorg/jdom2/Element;
    const-string v0, "id"

    invoke-virtual {v11, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 425
    .local v12, "id":Ljava/lang/String;
    const-string v0, "length"

    invoke-virtual {v11, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 426
    .local v13, "length":I
    const-string v0, "type"

    invoke-virtual {v11, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    .line 427
    .local v14, "type":Ljava/lang/String;
    const-string v0, "separator"

    invoke-virtual {v11, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "separator":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 430
    invoke-direct {v6, v14}, Lorg/jpos/util/FSDMsg;->getSeparatorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    goto :goto_1

    .line 428
    :cond_0
    move-object v15, v0

    .line 432
    .end local v0    # "separator":Ljava/lang/String;
    .local v15, "separator":Ljava/lang/String;
    :goto_1
    const-string v0, "key"

    invoke-virtual {v11, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 433
    .local v16, "key":Z
    if-eqz v16, :cond_1

    invoke-direct {v6, v11}, Lorg/jpos/util/FSDMsg;->loadProperties(Lorg/jdom2/Element;)Ljava/util/Map;

    move-result-object v0

    goto :goto_2

    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :goto_2
    move-object v5, v0

    .line 435
    .local v5, "properties":Ljava/util/Map;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move v3, v13

    move-object v4, v14

    move-object/from16 v17, v8

    move-object v8, v5

    .end local v5    # "properties":Ljava/util/Map;
    .local v8, "properties":Ljava/util/Map;
    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lorg/jpos/util/FSDMsg;->readField(Ljava/io/InputStreamReader;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "value":Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {v6, v0, v8}, Lorg/jpos/util/FSDMsg;->normalizeKeyValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    .end local v9    # "keyOff":Ljava/lang/String;
    .local v1, "keyOff":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "default-key"

    invoke-virtual {v11, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v9, v1

    move-object v10, v2

    .line 443
    .end local v1    # "keyOff":Ljava/lang/String;
    .restart local v9    # "keyOff":Ljava/lang/String;
    :cond_2
    const-string v1, "K"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v11}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 444
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' expected=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 447
    invoke-virtual {v11}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 449
    .end local v0    # "value":Ljava/lang/String;
    .end local v8    # "properties":Ljava/util/Map;
    .end local v11    # "elem":Lorg/jdom2/Element;
    .end local v12    # "id":Ljava/lang/String;
    .end local v13    # "length":I
    .end local v14    # "type":Ljava/lang/String;
    .end local v15    # "separator":Ljava/lang/String;
    .end local v16    # "key":Z
    :cond_4
    :goto_3
    move-object/from16 v8, v17

    goto/16 :goto_0

    .line 450
    :cond_5
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 451
    invoke-direct {v6, v7}, Lorg/jpos/util/FSDMsg;->getId(Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v9, v10}, Lorg/jpos/util/FSDMsg;->getSchema(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v6, v1, v0}, Lorg/jpos/util/FSDMsg;->unpack(Ljava/io/InputStreamReader;Lorg/jdom2/Element;)V

    goto :goto_4

    .line 450
    :cond_6
    move-object/from16 v1, p1

    .line 453
    :goto_4
    return-void
.end method

.method public unpack([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/jpos/util/FSDMsg;->unpack(Ljava/io/InputStream;)V

    .line 222
    return-void
.end method

.method public unsetSeparator(Ljava/lang/String;)V
    .locals 3
    .param p1, "separatorName"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->separators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lorg/jpos/util/FSDMsg;->separators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsetSeparator was attempted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " which was not previously defined."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
