.class public Lcom/sleepycat/persist/impl/SimpleCatalog;
.super Ljava/lang/Object;
.source "SimpleCatalog.java"

# interfaces
.implements Lcom/sleepycat/persist/impl/Catalog;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final instance:Lcom/sleepycat/persist/impl/SimpleCatalog;

.field private static final keywordToPrimitive:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final primitiveTypeToWrapper:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final formatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/SimpleFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final formatMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/SimpleFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    nop

    .line 44
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/sleepycat/persist/impl/SimpleCatalog;->keywordToPrimitive:Ljava/util/Map;

    .line 45
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "boolean"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v3, "char"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v3, "byte"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v3, "short"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "int"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v3, "long"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v3, "float"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v3, "double"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/sleepycat/persist/impl/SimpleCatalog;->primitiveTypeToWrapper:Ljava/util/Map;

    .line 58
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v0, Lcom/sleepycat/persist/impl/SimpleCatalog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/persist/impl/SimpleCatalog;-><init>(Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/sleepycat/persist/impl/SimpleCatalog;->instance:Lcom/sleepycat/persist/impl/SimpleCatalog;

    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 16
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 144
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/sleepycat/persist/impl/SimpleCatalog;->classLoader:Ljava/lang/ClassLoader;

    .line 151
    const/16 v2, 0x3c

    .line 152
    .local v2, "initCapacity":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/sleepycat/persist/impl/SimpleCatalog;->formatList:Ljava/util/List;

    .line 153
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, v0, Lcom/sleepycat/persist/impl/SimpleCatalog;->formatMap:Ljava/util/Map;

    .line 155
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x1e

    if-gt v3, v4, :cond_0

    .line 156
    iget-object v4, v0, Lcom/sleepycat/persist/impl/SimpleCatalog;->formatList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Lcom/sleepycat/persist/impl/SimpleFormat$FBool;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/sleepycat/persist/impl/SimpleFormat$FBool;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    const/4 v5, 0x2

    invoke-direct {v0, v5, v3}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 161
    new-instance v3, Lcom/sleepycat/persist/impl/SimpleFormat$FBool;

    const/4 v6, 0x0

    invoke-direct {v3, v0, v6}, Lcom/sleepycat/persist/impl/SimpleFormat$FBool;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    const/4 v7, 0x3

    invoke-direct {v0, v7, v3}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 162
    new-instance v3, Lcom/sleepycat/persist/impl/SimpleFormat$FByte;

    invoke-direct {v3, v0, v4}, Lcom/sleepycat/persist/impl/SimpleFormat$FByte;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    const/4 v8, 0x4

    invoke-direct {v0, v8, v3}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 163
    new-instance v3, Lcom/sleepycat/persist/impl/SimpleFormat$FByte;

    invoke-direct {v3, v0, v6}, Lcom/sleepycat/persist/impl/SimpleFormat$FByte;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    const/4 v9, 0x5

    invoke-direct {v0, v9, v3}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 164
    new-instance v3, Lcom/sleepycat/persist/impl/SimpleFormat$FShort;

    invoke-direct {v3, v0, v4}, Lcom/sleepycat/persist/impl/SimpleFormat$FShort;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    const/4 v10, 0x6

    invoke-direct {v0, v10, v3}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 165
    new-instance v3, Lcom/sleepycat/persist/impl/SimpleFormat$FShort;

    invoke-direct {v3, v0, v6}, Lcom/sleepycat/persist/impl/SimpleFormat$FShort;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    const/4 v11, 0x7

    invoke-direct {v0, v11, v3}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 166
    new-instance v3, Lcom/sleepycat/persist/impl/SimpleFormat$FInt;

    invoke-direct {v3, v0, v4}, Lcom/sleepycat/persist/impl/SimpleFormat$FInt;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    const/16 v12, 0x8

    invoke-direct {v0, v12, v3}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 167
    new-instance v3, Lcom/sleepycat/persist/impl/SimpleFormat$FInt;

    invoke-direct {v3, v0, v6}, Lcom/sleepycat/persist/impl/SimpleFormat$FInt;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    const/16 v13, 0x9

    invoke-direct {v0, v13, v3}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 168
    new-instance v3, Lcom/sleepycat/persist/impl/SimpleFormat$FLong;

    invoke-direct {v3, v0, v4}, Lcom/sleepycat/persist/impl/SimpleFormat$FLong;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    const/16 v14, 0xa

    invoke-direct {v0, v14, v3}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 169
    new-instance v3, Lcom/sleepycat/persist/impl/SimpleFormat$FLong;

    invoke-direct {v3, v0, v6}, Lcom/sleepycat/persist/impl/SimpleFormat$FLong;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    const/16 v15, 0xb

    invoke-direct {v0, v15, v3}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 170
    new-instance v3, Lcom/sleepycat/persist/impl/SimpleFormat$FFloat;

    invoke-direct {v3, v0, v4}, Lcom/sleepycat/persist/impl/SimpleFormat$FFloat;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    const/16 v14, 0xc

    invoke-direct {v0, v14, v3}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 171
    new-instance v3, Lcom/sleepycat/persist/impl/SimpleFormat$FFloat;

    invoke-direct {v3, v0, v6}, Lcom/sleepycat/persist/impl/SimpleFormat$FFloat;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    const/16 v14, 0xd

    invoke-direct {v0, v14, v3}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 172
    new-instance v3, Lcom/sleepycat/persist/impl/SimpleFormat$FDouble;

    invoke-direct {v3, v0, v4}, Lcom/sleepycat/persist/impl/SimpleFormat$FDouble;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    const/16 v14, 0xe

    invoke-direct {v0, v14, v3}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 173
    new-instance v3, Lcom/sleepycat/persist/impl/SimpleFormat$FDouble;

    invoke-direct {v3, v0, v6}, Lcom/sleepycat/persist/impl/SimpleFormat$FDouble;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    const/16 v14, 0xf

    invoke-direct {v0, v14, v3}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 174
    new-instance v3, Lcom/sleepycat/persist/impl/SimpleFormat$FChar;

    invoke-direct {v3, v0, v4}, Lcom/sleepycat/persist/impl/SimpleFormat$FChar;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    const/16 v4, 0x10

    invoke-direct {v0, v4, v3}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 175
    new-instance v3, Lcom/sleepycat/persist/impl/SimpleFormat$FChar;

    invoke-direct {v3, v0, v6}, Lcom/sleepycat/persist/impl/SimpleFormat$FChar;-><init>(Lcom/sleepycat/persist/impl/Catalog;Z)V

    const/16 v6, 0x11

    invoke-direct {v0, v6, v3}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 176
    const/16 v3, 0x12

    new-instance v4, Lcom/sleepycat/persist/impl/SimpleFormat$FString;

    invoke-direct {v4, v0}, Lcom/sleepycat/persist/impl/SimpleFormat$FString;-><init>(Lcom/sleepycat/persist/impl/Catalog;)V

    invoke-direct {v0, v3, v4}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 177
    const/16 v3, 0x13

    new-instance v4, Lcom/sleepycat/persist/impl/SimpleFormat$FBigInt;

    invoke-direct {v4, v0}, Lcom/sleepycat/persist/impl/SimpleFormat$FBigInt;-><init>(Lcom/sleepycat/persist/impl/Catalog;)V

    invoke-direct {v0, v3, v4}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 178
    const/16 v3, 0x14

    new-instance v4, Lcom/sleepycat/persist/impl/SimpleFormat$FBigDec;

    invoke-direct {v4, v0}, Lcom/sleepycat/persist/impl/SimpleFormat$FBigDec;-><init>(Lcom/sleepycat/persist/impl/Catalog;)V

    invoke-direct {v0, v3, v4}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 179
    const/16 v3, 0x15

    new-instance v4, Lcom/sleepycat/persist/impl/SimpleFormat$FDate;

    invoke-direct {v4, v0}, Lcom/sleepycat/persist/impl/SimpleFormat$FDate;-><init>(Lcom/sleepycat/persist/impl/Catalog;)V

    invoke-direct {v0, v3, v4}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 182
    invoke-direct {v0, v5, v7}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setWrapper(II)V

    .line 183
    invoke-direct {v0, v8, v9}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setWrapper(II)V

    .line 184
    invoke-direct {v0, v10, v11}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setWrapper(II)V

    .line 185
    invoke-direct {v0, v12, v13}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setWrapper(II)V

    .line 186
    const/16 v3, 0xa

    invoke-direct {v0, v3, v15}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setWrapper(II)V

    .line 187
    const/16 v3, 0xd

    const/16 v4, 0xc

    invoke-direct {v0, v4, v3}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setWrapper(II)V

    .line 188
    const/16 v3, 0xe

    invoke-direct {v0, v3, v14}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setWrapper(II)V

    .line 189
    const/16 v3, 0x10

    invoke-direct {v0, v3, v6}, Lcom/sleepycat/persist/impl/SimpleCatalog;->setWrapper(II)V

    .line 190
    return-void
.end method

.method static addMissingSimpleFormats(Ljava/lang/ClassLoader;Ljava/util/List;)Z
    .locals 6
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)Z"
        }
    .end annotation

    .line 123
    .local p1, "copyToList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/Format;>;"
    const/4 v0, 0x0

    .line 124
    .local v0, "anyCopied":Z
    const/4 v1, 0x0

    .line 125
    .local v1, "tempCatalog":Lcom/sleepycat/persist/impl/SimpleCatalog;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x1e

    if-gt v2, v3, :cond_3

    .line 126
    sget-object v3, Lcom/sleepycat/persist/impl/SimpleCatalog;->instance:Lcom/sleepycat/persist/impl/SimpleCatalog;

    iget-object v3, v3, Lcom/sleepycat/persist/impl/SimpleCatalog;->formatList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/persist/impl/Format;

    .line 127
    .local v3, "thisFormat":Lcom/sleepycat/persist/impl/Format;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/persist/impl/Format;

    .line 128
    .local v4, "otherFormat":Lcom/sleepycat/persist/impl/Format;
    if-eqz v3, :cond_2

    if-nez v4, :cond_2

    .line 129
    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/Format;->getWrapperFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v5

    if-nez v5, :cond_1

    .line 130
    if-nez v1, :cond_0

    .line 131
    new-instance v5, Lcom/sleepycat/persist/impl/SimpleCatalog;

    invoke-direct {v5, p0}, Lcom/sleepycat/persist/impl/SimpleCatalog;-><init>(Ljava/lang/ClassLoader;)V

    move-object v1, v5

    .line 133
    :cond_0
    iget-object v5, v1, Lcom/sleepycat/persist/impl/SimpleCatalog;->formatList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/4 v0, 0x1

    goto :goto_1

    .line 129
    :cond_1
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 125
    .end local v3    # "thisFormat":Lcom/sleepycat/persist/impl/Format;
    .end local v4    # "otherFormat":Lcom/sleepycat/persist/impl/Format;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v2    # "i":I
    :cond_3
    return v0
.end method

.method public static allowRegisterProxy(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/Class;

    .line 274
    invoke-static {p0}, Lcom/sleepycat/persist/impl/SimpleCatalog;->isSimpleType(Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static getAllSimpleFormats(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 2
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/sleepycat/persist/impl/SimpleCatalog;

    invoke-direct {v1, p0}, Lcom/sleepycat/persist/impl/SimpleCatalog;-><init>(Ljava/lang/ClassLoader;)V

    iget-object v1, v1, Lcom/sleepycat/persist/impl/SimpleCatalog;->formatList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static isSimpleType(Ljava/lang/Class;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/Class;

    .line 71
    sget-object v0, Lcom/sleepycat/persist/impl/SimpleCatalog;->instance:Lcom/sleepycat/persist/impl/SimpleCatalog;

    iget-object v0, v0, Lcom/sleepycat/persist/impl/SimpleCatalog;->formatMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static keyClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/sleepycat/persist/impl/SimpleCatalog;->keywordToPrimitive:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 109
    .local v0, "cls":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 110
    sget-object v1, Lcom/sleepycat/persist/impl/SimpleCatalog;->primitiveTypeToWrapper:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 111
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 113
    :cond_0
    return-object p0
.end method

.method static primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .param p0, "type"    # Ljava/lang/Class;

    .line 75
    sget-object v0, Lcom/sleepycat/persist/impl/SimpleCatalog;->primitiveTypeToWrapper:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 76
    .local v0, "cls":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 79
    return-object v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static resolveClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/sleepycat/persist/impl/SimpleCatalog;->keywordToPrimitive:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 86
    .local v0, "cls":Ljava/lang/Class;
    if-nez v0, :cond_0

    .line 87
    invoke-static {p0, p1}, Lcom/sleepycat/util/ClassResolver;->resolveClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 89
    :cond_0
    return-object v0
.end method

.method public static resolveKeyClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 93
    sget-object v0, Lcom/sleepycat/persist/impl/SimpleCatalog;->keywordToPrimitive:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 94
    .local v0, "cls":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 95
    sget-object v1, Lcom/sleepycat/persist/impl/SimpleCatalog;->primitiveTypeToWrapper:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    goto :goto_0

    .line 98
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/sleepycat/util/ClassResolver;->resolveClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 102
    nop

    .line 104
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key class not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setFormat(ILcom/sleepycat/persist/impl/SimpleFormat;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "format"    # Lcom/sleepycat/persist/impl/SimpleFormat;

    .line 197
    invoke-virtual {p2, p1}, Lcom/sleepycat/persist/impl/SimpleFormat;->setId(I)V

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Lcom/sleepycat/persist/impl/SimpleFormat;->initializeIfNeeded(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;)V

    .line 199
    iget-object v0, p0, Lcom/sleepycat/persist/impl/SimpleCatalog;->formatList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/sleepycat/persist/impl/SimpleCatalog;->formatMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/SimpleFormat;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method private setWrapper(II)V
    .locals 2
    .param p1, "primitiveId"    # I
    .param p2, "wrapperId"    # I

    .line 208
    iget-object v0, p0, Lcom/sleepycat/persist/impl/SimpleCatalog;->formatList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/SimpleFormat;

    .line 209
    .local v0, "primitiveFormat":Lcom/sleepycat/persist/impl/SimpleFormat;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/SimpleCatalog;->formatList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/SimpleFormat;

    .line 210
    .local v1, "wrapperFormat":Lcom/sleepycat/persist/impl/SimpleFormat;
    invoke-virtual {v0, v1}, Lcom/sleepycat/persist/impl/SimpleFormat;->setWrapperFormat(Lcom/sleepycat/persist/impl/SimpleFormat;)V

    .line 211
    return-void
.end method


# virtual methods
.method public convertRawObject(Lcom/sleepycat/persist/raw/RawObject;Ljava/util/IdentityHashMap;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lcom/sleepycat/persist/raw/RawObject;
    .param p2, "converted"    # Ljava/util/IdentityHashMap;

    .line 259
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public createFormat(Ljava/lang/Class;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)",
            "Lcom/sleepycat/persist/impl/Format;"
        }
    .end annotation

    .line 251
    .local p2, "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public createFormat(Ljava/lang/String;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;
    .locals 1
    .param p1, "clsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)",
            "Lcom/sleepycat/persist/impl/Format;"
        }
    .end annotation

    .line 247
    .local p2, "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    invoke-static {}, Lcom/sleepycat/compat/DbCompat;->unexpectedState()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getFormat(IZ)Lcom/sleepycat/persist/impl/Format;
    .locals 3
    .param p1, "formatId"    # I
    .param p2, "expectStored"    # Z

    .line 220
    const-string v0, "Not a simple type: "

    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/SimpleCatalog;->formatList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/Format;

    .line 221
    .local v1, "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v1, :cond_0

    .line 225
    return-object v1

    .line 222
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-static {v2}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p1    # "formatId":I
    .end local p2    # "expectStored":Z
    throw v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v1    # "format":Lcom/sleepycat/persist/impl/Format;
    .restart local p1    # "formatId":I
    .restart local p2    # "expectStored":Z
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/util/NoSuchElementException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getFormat(Ljava/lang/Class;Z)Lcom/sleepycat/persist/impl/Format;
    .locals 4
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "checkEntitySubclassIndexes"    # Z

    .line 233
    iget-object v0, p0, Lcom/sleepycat/persist/impl/SimpleCatalog;->formatMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/Format;

    .line 234
    .local v0, "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v0, :cond_0

    .line 238
    return-object v0

    .line 235
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a simple type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 236
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/sleepycat/persist/impl/SimpleCatalog;->formatMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/Format;

    return-object v0
.end method

.method public getInitVersion(Lcom/sleepycat/persist/impl/Format;Z)I
    .locals 1
    .param p1, "format"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "forReader"    # Z

    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public isRawAccess()Z
    .locals 1

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public resolveClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "clsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/sleepycat/persist/impl/SimpleCatalog;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p1, v0}, Lcom/sleepycat/persist/impl/SimpleCatalog;->resolveClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public resolveKeyClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "clsName"    # Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/sleepycat/persist/impl/SimpleCatalog;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p1, v0}, Lcom/sleepycat/persist/impl/SimpleCatalog;->resolveKeyClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
