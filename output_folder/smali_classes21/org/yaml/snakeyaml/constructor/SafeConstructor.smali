.class public Lorg/yaml/snakeyaml/constructor/SafeConstructor;
.super Lorg/yaml/snakeyaml/constructor/BaseConstructor;
.source "SafeConstructor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructUndefined;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlMap;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlSeq;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlStr;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlSet;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlPairs;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlOmap;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlBinary;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlFloat;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlInt;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlBool;,
        Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlNull;
    }
.end annotation


# static fields
.field private static final BOOL_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final RADIX_MAX:[[I

.field private static final TIMESTAMP_REGEXP:Ljava/util/regex/Pattern;

.field private static final YMD_REGEXP:Ljava/util/regex/Pattern;

.field public static final undefinedConstructor:Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructUndefined;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 48
    new-instance v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructUndefined;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructUndefined;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->undefinedConstructor:Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructUndefined;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->BOOL_VALUES:Ljava/util/Map;

    .line 209
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "yes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "no"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "true"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "false"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "on"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "off"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    sput-object v1, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->RADIX_MAX:[[I

    .line 267
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    .line 268
    .local v1, "radixList":[I
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    .line 269
    .local v5, "radix":I
    sget-object v6, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->RADIX_MAX:[[I

    new-array v7, v0, [I

    const v8, 0x7fffffff

    invoke-static {v8, v5}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->maxLen(II)I

    move-result v8

    aput v8, v7, v3

    const-wide v8, 0x7fffffffffffffffL

    invoke-static {v8, v9, v5}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->maxLen(JI)I

    move-result v8

    const/4 v9, 0x1

    aput v8, v7, v9

    aput-object v7, v6, v5

    .line 268
    .end local v5    # "radix":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 356
    .end local v1    # "radixList":[I
    :cond_0
    const-string v0, "^([0-9][0-9][0-9][0-9])-([0-9][0-9]?)-([0-9][0-9]?)(?:(?:[Tt]|[ \t]+)([0-9][0-9]?):([0-9][0-9]):([0-9][0-9])(?:\\.([0-9]*))?(?:[ \t]*(?:Z|([-+][0-9][0-9]?)(?::([0-9][0-9])?)?))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->TIMESTAMP_REGEXP:Ljava/util/regex/Pattern;

    .line 358
    nop

    .line 359
    const-string v0, "^([0-9][0-9][0-9][0-9])-([0-9][0-9]?)-([0-9][0-9]?)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->YMD_REGEXP:Ljava/util/regex/Pattern;

    .line 358
    return-void

    nop

    :array_0
    .array-data 4
        0x11
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x8
        0xa
        0x10
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    new-instance v0, Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/LoaderOptions;-><init>()V

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;-><init>(Lorg/yaml/snakeyaml/LoaderOptions;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/LoaderOptions;)V
    .locals 3
    .param p1, "loadingConfig"    # Lorg/yaml/snakeyaml/LoaderOptions;

    .line 55
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;-><init>(Lorg/yaml/snakeyaml/LoaderOptions;)V

    .line 56
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->NULL:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlNull;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlNull;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->BOOL:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlBool;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlBool;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->INT:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlInt;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlInt;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->FLOAT:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlFloat;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlFloat;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->BINARY:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlBinary;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlBinary;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->TIMESTAMP:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;

    invoke-direct {v2}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->OMAP:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlOmap;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlOmap;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->PAIRS:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlPairs;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlPairs;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->SET:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlSet;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlSet;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->STR:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlStr;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlStr;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->SEQ:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlSeq;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlSeq;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->MAP:Lorg/yaml/snakeyaml/nodes/Tag;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlMap;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlMap;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->undefinedConstructor:Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructUndefined;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlClassConstructors:Ljava/util/Map;

    sget-object v2, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlClassConstructors:Ljava/util/Map;

    sget-object v2, Lorg/yaml/snakeyaml/nodes/NodeId;->sequence:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlClassConstructors:Ljava/util/Map;

    sget-object v2, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 46
    sget-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->BOOL_VALUES:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lorg/yaml/snakeyaml/constructor/SafeConstructor;ILjava/lang/String;I)Ljava/lang/Number;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/constructor/SafeConstructor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->createNumber(ILjava/lang/String;I)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/regex/Pattern;
    .locals 1

    .line 46
    sget-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->YMD_REGEXP:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/regex/Pattern;
    .locals 1

    .line 46
    sget-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->TIMESTAMP_REGEXP:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method protected static createLongOrBigInteger(Ljava/lang/String;I)Ljava/lang/Number;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "radix"    # I

    .line 305
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e1":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method private createNumber(ILjava/lang/String;I)Ljava/lang/Number;
    .locals 5
    .param p1, "sign"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "radix"    # I

    .line 280
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 281
    .local v1, "len":I
    :goto_0
    if-gez p1, :cond_1

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 284
    :cond_1
    sget-object v2, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->RADIX_MAX:[[I

    array-length v3, v2

    if-ge p3, v3, :cond_2

    aget-object v2, v2, p3

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 285
    .local v2, "maxArr":[I
    :goto_1
    if-eqz v2, :cond_5

    .line 286
    aget v3, v2, v0

    const/4 v4, 0x1

    if-le v1, v3, :cond_3

    move v0, v4

    .line 287
    .local v0, "gtInt":Z
    :cond_3
    if-eqz v0, :cond_5

    .line 288
    aget v3, v2, v4

    if-le v1, v3, :cond_4

    .line 289
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, p2, p3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v3

    .line 291
    :cond_4
    invoke-static {p2, p3}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->createLongOrBigInteger(Ljava/lang/String;I)Ljava/lang/Number;

    move-result-object v3

    return-object v3

    .line 296
    .end local v0    # "gtInt":Z
    :cond_5
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .local v0, "result":Ljava/lang/Number;
    goto :goto_2

    .line 297
    .end local v0    # "result":Ljava/lang/Number;
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {p2, p3}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->createLongOrBigInteger(Ljava/lang/String;I)Ljava/lang/Number;

    move-result-object v3

    move-object v0, v3

    .line 300
    .local v0, "result":Ljava/lang/Number;
    :goto_2
    return-object v0
.end method

.method private static maxLen(II)I
    .locals 1
    .param p0, "max"    # I
    .param p1, "radix"    # I

    .line 274
    invoke-static {p0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method private static maxLen(JI)I
    .locals 1
    .param p0, "max"    # J
    .param p2, "radix"    # I

    .line 277
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method private mergeNode(Lorg/yaml/snakeyaml/nodes/MappingNode;ZLjava/util/Map;Ljava/util/List;)Ljava/util/List;
    .locals 15
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;
    .param p2, "isPreffered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/MappingNode;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/nodes/NodeTuple;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/nodes/NodeTuple;",
            ">;"
        }
    .end annotation

    .line 136
    .local p3, "key2index":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .local p4, "values":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 137
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 138
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 139
    .local v4, "nodeTuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v4}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v5

    .line 140
    .local v5, "keyNode":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v4}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getValueNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v6

    .line 141
    .local v6, "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v7

    sget-object v8, Lorg/yaml/snakeyaml/nodes/Tag;->MERGE:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v7, v8}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 142
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 143
    sget-object v7, Lorg/yaml/snakeyaml/constructor/SafeConstructor$1;->$SwitchMap$org$yaml$snakeyaml$nodes$NodeId:[I

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v8

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/NodeId;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const-string v8, "while constructing a mapping"

    const/4 v9, 0x0

    packed-switch v7, :pswitch_data_0

    .line 164
    new-instance v7, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    .line 165
    invoke-virtual/range {p1 .. p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "expected a mapping or list of mappings for merging, but found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 167
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 168
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v7

    .line 149
    :pswitch_0
    move-object v7, v6

    check-cast v7, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 150
    .local v7, "sn":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v10

    .line 151
    .local v10, "vals":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/yaml/snakeyaml/nodes/Node;

    .line 152
    .local v12, "subnode":Lorg/yaml/snakeyaml/nodes/Node;
    instance-of v13, v12, Lorg/yaml/snakeyaml/nodes/MappingNode;

    if-eqz v13, :cond_0

    .line 159
    move-object v13, v12

    check-cast v13, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 160
    .local v13, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-direct {p0, v13, v9, v1, v2}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->mergeNode(Lorg/yaml/snakeyaml/nodes/MappingNode;ZLjava/util/Map;Ljava/util/List;)Ljava/util/List;

    .line 161
    .end local v12    # "subnode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v13    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    goto :goto_1

    .line 153
    .restart local v12    # "subnode":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_0
    new-instance v9, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    .line 154
    invoke-virtual/range {p1 .. p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "expected a mapping for merging, but found "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 156
    invoke-virtual {v12}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 157
    invoke-virtual {v12}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v14

    invoke-direct {v9, v8, v11, v13, v14}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v9

    .line 162
    .end local v12    # "subnode":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_1
    goto :goto_2

    .line 145
    .end local v7    # "sn":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .end local v10    # "vals":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    :pswitch_1
    move-object v7, v6

    check-cast v7, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 146
    .local v7, "mn":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-direct {p0, v7, v9, v1, v2}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->mergeNode(Lorg/yaml/snakeyaml/nodes/MappingNode;ZLjava/util/Map;Ljava/util/List;)Ljava/util/List;

    .line 147
    goto :goto_2

    .line 172
    .end local v7    # "mn":Lorg/yaml/snakeyaml/nodes/MappingNode;
    :cond_2
    invoke-virtual {p0, v5}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v7

    .line 173
    .local v7, "key":Ljava/lang/Object;
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 174
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 177
    :cond_3
    if-eqz p2, :cond_4

    .line 180
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v2, v8, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 183
    .end local v4    # "nodeTuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v5    # "keyNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v6    # "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v7    # "key":Ljava/lang/Object;
    :cond_4
    :goto_2
    goto/16 :goto_0

    .line 184
    :cond_5
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected constructMapping2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Map;)V
    .locals 0
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/MappingNode;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 189
    .local p2, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->flattenMapping(Lorg/yaml/snakeyaml/nodes/MappingNode;)V

    .line 190
    invoke-super {p0, p1, p2}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructMapping2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Map;)V

    .line 191
    return-void
.end method

.method protected constructSet2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Set;)V
    .locals 0
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/MappingNode;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 195
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->flattenMapping(Lorg/yaml/snakeyaml/nodes/MappingNode;)V

    .line 196
    invoke-super {p0, p1, p2}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->constructSet2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Set;)V

    .line 197
    return-void
.end method

.method protected flattenMapping(Lorg/yaml/snakeyaml/nodes/MappingNode;)V
    .locals 3
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 76
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->processDuplicateKeys(Lorg/yaml/snakeyaml/nodes/MappingNode;)V

    .line 77
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->isMerged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->mergeNode(Lorg/yaml/snakeyaml/nodes/MappingNode;ZLjava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setValue(Ljava/util/List;)V

    .line 81
    :cond_0
    return-void
.end method

.method protected processDuplicateKeys(Lorg/yaml/snakeyaml/nodes/MappingNode;)V
    .locals 14
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 84
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 86
    .local v1, "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 87
    .local v2, "toRemove":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 88
    .local v3, "i":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 89
    .local v5, "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v6

    .line 90
    .local v6, "keyNode":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v7

    sget-object v8, Lorg/yaml/snakeyaml/nodes/Tag;->MERGE:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v7, v8}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 91
    invoke-virtual {p0, v6}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v7

    .line 92
    .local v7, "key":Ljava/lang/Object;
    if-eqz v7, :cond_0

    .line 94
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_1

    .line 95
    :catch_0
    move-exception v13

    .line 96
    .local v13, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    .line 97
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found unacceptable key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 98
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v8

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v12

    const-string v9, "while constructing a mapping"

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Throwable;)V

    throw v4

    .line 102
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 103
    .local v8, "prevIndex":Ljava/lang/Integer;
    if-eqz v8, :cond_2

    .line 104
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->isAllowDuplicateKeys()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 108
    invoke-virtual {v2, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 105
    :cond_1
    new-instance v4, Lorg/yaml/snakeyaml/constructor/DuplicateKeyException;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v9

    .line 106
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v10

    invoke-virtual {v10}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v10

    invoke-direct {v4, v9, v7, v10}, Lorg/yaml/snakeyaml/constructor/DuplicateKeyException;-><init>(Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Object;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4

    .line 111
    .end local v7    # "key":Ljava/lang/Object;
    .end local v8    # "prevIndex":Ljava/lang/Integer;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 112
    .end local v5    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v6    # "keyNode":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {v2}, Ljava/util/TreeSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 115
    .local v4, "indicies2remove":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 116
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 118
    :cond_4
    return-void
.end method
