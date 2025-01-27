.class public enum Lorg/apache/sshd/common/mac/BuiltinMacs;
.super Ljava/lang/Enum;
.source "BuiltinMacs.java"

# interfaces
.implements Lorg/apache/sshd/common/mac/MacFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/mac/BuiltinMacs$Constants;,
        Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/mac/BuiltinMacs;",
        ">;",
        "Lorg/apache/sshd/common/mac/MacFactory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/mac/BuiltinMacs;

.field private static final EXTENSIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/mac/MacFactory;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/mac/BuiltinMacs;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum hmacmd5:Lorg/apache/sshd/common/mac/BuiltinMacs;

.field public static final enum hmacmd596:Lorg/apache/sshd/common/mac/BuiltinMacs;

.field public static final enum hmacsha1:Lorg/apache/sshd/common/mac/BuiltinMacs;

.field public static final enum hmacsha196:Lorg/apache/sshd/common/mac/BuiltinMacs;

.field public static final enum hmacsha1etm:Lorg/apache/sshd/common/mac/BuiltinMacs;

.field public static final enum hmacsha256:Lorg/apache/sshd/common/mac/BuiltinMacs;

.field public static final enum hmacsha256etm:Lorg/apache/sshd/common/mac/BuiltinMacs;

.field public static final enum hmacsha512:Lorg/apache/sshd/common/mac/BuiltinMacs;

.field public static final enum hmacsha512etm:Lorg/apache/sshd/common/mac/BuiltinMacs;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final bsize:I

.field private final defbsize:I

.field private final factoryName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 46
    new-instance v7, Lorg/apache/sshd/common/mac/BuiltinMacs;

    const-string v1, "hmacmd5"

    const/4 v2, 0x0

    const-string v3, "hmac-md5"

    const-string v4, "HmacMD5"

    const/16 v5, 0x10

    const/16 v6, 0x10

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/sshd/common/mac/BuiltinMacs;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/sshd/common/mac/BuiltinMacs;->hmacmd5:Lorg/apache/sshd/common/mac/BuiltinMacs;

    .line 47
    new-instance v0, Lorg/apache/sshd/common/mac/BuiltinMacs;

    const-string v9, "hmacmd596"

    const/4 v10, 0x1

    const-string v11, "hmac-md5-96"

    const-string v12, "HmacMD5"

    const/16 v13, 0xc

    const/16 v14, 0x10

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/sshd/common/mac/BuiltinMacs;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/sshd/common/mac/BuiltinMacs;->hmacmd596:Lorg/apache/sshd/common/mac/BuiltinMacs;

    .line 48
    new-instance v1, Lorg/apache/sshd/common/mac/BuiltinMacs;

    const-string v16, "hmacsha1"

    const/16 v17, 0x2

    const-string v18, "hmac-sha1"

    const-string v19, "HmacSHA1"

    const/16 v20, 0x14

    const/16 v21, 0x14

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lorg/apache/sshd/common/mac/BuiltinMacs;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/sshd/common/mac/BuiltinMacs;->hmacsha1:Lorg/apache/sshd/common/mac/BuiltinMacs;

    .line 49
    new-instance v2, Lorg/apache/sshd/common/mac/BuiltinMacs$1;

    const-string v9, "hmacsha1etm"

    const/4 v10, 0x3

    const-string v11, "hmac-sha1-etm@openssh.com"

    const-string v12, "HmacSHA1"

    const/16 v13, 0x14

    const/16 v14, 0x14

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lorg/apache/sshd/common/mac/BuiltinMacs$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/common/mac/BuiltinMacs;->hmacsha1etm:Lorg/apache/sshd/common/mac/BuiltinMacs;

    .line 55
    new-instance v3, Lorg/apache/sshd/common/mac/BuiltinMacs;

    const-string v16, "hmacsha196"

    const/16 v17, 0x4

    const-string v18, "hmac-sha1-96"

    const-string v19, "HmacSHA1"

    const/16 v20, 0xc

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lorg/apache/sshd/common/mac/BuiltinMacs;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/common/mac/BuiltinMacs;->hmacsha196:Lorg/apache/sshd/common/mac/BuiltinMacs;

    .line 57
    new-instance v4, Lorg/apache/sshd/common/mac/BuiltinMacs;

    const-string v9, "hmacsha256"

    const/4 v10, 0x5

    const-string v11, "hmac-sha2-256"

    const-string v12, "HmacSHA256"

    const/16 v13, 0x20

    const/16 v14, 0x20

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lorg/apache/sshd/common/mac/BuiltinMacs;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/sshd/common/mac/BuiltinMacs;->hmacsha256:Lorg/apache/sshd/common/mac/BuiltinMacs;

    .line 58
    new-instance v5, Lorg/apache/sshd/common/mac/BuiltinMacs$2;

    const-string v16, "hmacsha256etm"

    const/16 v17, 0x6

    const-string v18, "hmac-sha2-256-etm@openssh.com"

    const-string v19, "HmacSHA256"

    const/16 v20, 0x20

    const/16 v21, 0x20

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lorg/apache/sshd/common/mac/BuiltinMacs$2;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/sshd/common/mac/BuiltinMacs;->hmacsha256etm:Lorg/apache/sshd/common/mac/BuiltinMacs;

    .line 65
    new-instance v6, Lorg/apache/sshd/common/mac/BuiltinMacs;

    const-string v9, "hmacsha512"

    const/4 v10, 0x7

    const-string v11, "hmac-sha2-512"

    const-string v12, "HmacSHA512"

    const/16 v13, 0x40

    const/16 v14, 0x40

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lorg/apache/sshd/common/mac/BuiltinMacs;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/sshd/common/mac/BuiltinMacs;->hmacsha512:Lorg/apache/sshd/common/mac/BuiltinMacs;

    .line 66
    new-instance v8, Lorg/apache/sshd/common/mac/BuiltinMacs$3;

    const-string v16, "hmacsha512etm"

    const/16 v17, 0x8

    const-string v18, "hmac-sha2-512-etm@openssh.com"

    const-string v19, "HmacSHA512"

    const/16 v20, 0x40

    const/16 v21, 0x40

    move-object v15, v8

    invoke-direct/range {v15 .. v21}, Lorg/apache/sshd/common/mac/BuiltinMacs$3;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/sshd/common/mac/BuiltinMacs;->hmacsha512etm:Lorg/apache/sshd/common/mac/BuiltinMacs;

    .line 45
    const/16 v9, 0x9

    new-array v9, v9, [Lorg/apache/sshd/common/mac/BuiltinMacs;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v7, 0x1

    aput-object v0, v9, v7

    const/4 v0, 0x2

    aput-object v1, v9, v0

    const/4 v0, 0x3

    aput-object v2, v9, v0

    const/4 v0, 0x4

    aput-object v3, v9, v0

    const/4 v0, 0x5

    aput-object v4, v9, v0

    const/4 v0, 0x6

    aput-object v5, v9, v0

    const/4 v0, 0x7

    aput-object v6, v9, v0

    const/16 v0, 0x8

    aput-object v8, v9, v0

    sput-object v9, Lorg/apache/sshd/common/mac/BuiltinMacs;->$VALUES:[Lorg/apache/sshd/common/mac/BuiltinMacs;

    .line 73
    const-class v0, Lorg/apache/sshd/common/mac/BuiltinMacs;

    .line 74
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/mac/BuiltinMacs;->VALUES:Ljava/util/Set;

    .line 76
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/sshd/common/mac/BuiltinMacs;->EXTENSIONS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p3, "factoryName"    # Ljava/lang/String;
    .param p4, "algorithm"    # Ljava/lang/String;
    .param p5, "bsize"    # I
    .param p6, "defbsize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput-object p3, p0, Lorg/apache/sshd/common/mac/BuiltinMacs;->factoryName:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lorg/apache/sshd/common/mac/BuiltinMacs;->algorithm:Ljava/lang/String;

    .line 87
    iput p5, p0, Lorg/apache/sshd/common/mac/BuiltinMacs;->bsize:I

    .line 88
    iput p6, p0, Lorg/apache/sshd/common/mac/BuiltinMacs;->defbsize:I

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILorg/apache/sshd/common/mac/BuiltinMacs$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lorg/apache/sshd/common/mac/BuiltinMacs$1;

    .line 45
    invoke-direct/range {p0 .. p6}, Lorg/apache/sshd/common/mac/BuiltinMacs;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static fromFactory(Lorg/apache/sshd/common/NamedFactory;)Lorg/apache/sshd/common/mac/BuiltinMacs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/mac/Mac;",
            ">;)",
            "Lorg/apache/sshd/common/mac/BuiltinMacs;"
        }
    .end annotation

    .line 201
    .local p0, "factory":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/mac/Mac;>;"
    if-nez p0, :cond_0

    .line 202
    const/4 v0, 0x0

    return-object v0

    .line 204
    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/common/NamedFactory;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/mac/BuiltinMacs;->fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/mac/BuiltinMacs;

    move-result-object v0

    return-object v0
.end method

.method public static fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/mac/BuiltinMacs;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 214
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    sget-object v1, Lorg/apache/sshd/common/mac/BuiltinMacs;->VALUES:Ljava/util/Set;

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/mac/BuiltinMacs;

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/apache/sshd/common/mac/BuiltinMacs;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 181
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 182
    return-object v1

    .line 185
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/mac/BuiltinMacs;->VALUES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/mac/BuiltinMacs;

    .line 186
    .local v2, "c":Lorg/apache/sshd/common/mac/BuiltinMacs;
    invoke-virtual {v2}, Lorg/apache/sshd/common/mac/BuiltinMacs;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    return-object v2

    .line 189
    .end local v2    # "c":Lorg/apache/sshd/common/mac/BuiltinMacs;
    :cond_1
    goto :goto_0

    .line 191
    :cond_2
    return-object v1
.end method

.method public static getRegisteredExtensions()Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Lorg/apache/sshd/common/mac/MacFactory;",
            ">;"
        }
    .end annotation

    .line 152
    sget-object v0, Lorg/apache/sshd/common/mac/BuiltinMacs;->EXTENSIONS:Ljava/util/Map;

    monitor-enter v0

    .line 153
    :try_start_0
    sget-object v1, Lorg/apache/sshd/common/NamedResource;->BY_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 154
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 153
    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Comparator;Ljava/util/Collection;)Ljava/util/NavigableSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static parseMacsList(Ljava/lang/String;)Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;
    .locals 1
    .param p0, "macs"    # Ljava/lang/String;

    .line 224
    const/16 v0, 0x2c

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/mac/BuiltinMacs;->parseMacsList([Ljava/lang/String;)Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseMacsList(Ljava/util/Collection;)Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;"
        }
    .end annotation

    .line 234
    .local p0, "macs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;->EMPTY:Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;

    return-object v0

    .line 238
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/mac/MacFactory;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 240
    .local v1, "unknown":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 241
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/sshd/common/mac/BuiltinMacs;->resolveFactory(Ljava/lang/String;)Lorg/apache/sshd/common/mac/MacFactory;

    move-result-object v4

    .line 242
    .local v4, "m":Lorg/apache/sshd/common/mac/MacFactory;
    if-eqz v4, :cond_1

    .line 243
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 247
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 249
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "m":Lorg/apache/sshd/common/mac/MacFactory;
    :goto_1
    goto :goto_0

    .line 253
    :cond_3
    new-instance v2, Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;

    invoke-direct {v2, v0, v1}, Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method public static varargs parseMacsList([Ljava/lang/String;)Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;
    .locals 1
    .param p0, "macs"    # [Ljava/lang/String;

    .line 228
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 228
    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/mac/BuiltinMacs;->parseMacsList(Ljava/util/Collection;)Lorg/apache/sshd/common/mac/BuiltinMacs$ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static registerExtension(Lorg/apache/sshd/common/mac/MacFactory;)V
    .locals 5
    .param p0, "extension"    # Lorg/apache/sshd/common/mac/MacFactory;

    .line 136
    const-string v0, "No extension provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/mac/MacFactory;

    invoke-interface {v0}, Lorg/apache/sshd/common/mac/MacFactory;->getName()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "name":Ljava/lang/String;
    nop

    .line 138
    invoke-static {v0}, Lorg/apache/sshd/common/mac/BuiltinMacs;->fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/mac/BuiltinMacs;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "Extension overrides built-in: %s"

    .line 137
    invoke-static {v1, v4, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 140
    sget-object v1, Lorg/apache/sshd/common/mac/BuiltinMacs;->EXTENSIONS:Ljava/util/Map;

    monitor-enter v1

    .line 141
    nop

    .line 142
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v3, "Extension overrides existing: %s"

    .line 141
    invoke-static {v2, v3, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 143
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static resolveFactory(Ljava/lang/String;)Lorg/apache/sshd/common/mac/MacFactory;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 262
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x0

    return-object v0

    .line 266
    :cond_0
    invoke-static {p0}, Lorg/apache/sshd/common/mac/BuiltinMacs;->fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/mac/BuiltinMacs;

    move-result-object v0

    .line 267
    .local v0, "m":Lorg/apache/sshd/common/mac/MacFactory;
    if-eqz v0, :cond_1

    .line 268
    return-object v0

    .line 271
    :cond_1
    sget-object v1, Lorg/apache/sshd/common/mac/BuiltinMacs;->EXTENSIONS:Ljava/util/Map;

    monitor-enter v1

    .line 272
    :try_start_0
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/mac/MacFactory;

    monitor-exit v1

    return-object v2

    .line 273
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static unregisterExtension(Ljava/lang/String;)Lorg/apache/sshd/common/mac/MacFactory;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 165
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/mac/BuiltinMacs;->EXTENSIONS:Ljava/util/Map;

    monitor-enter v0

    .line 170
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/mac/MacFactory;

    monitor-exit v0

    return-object v1

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/mac/BuiltinMacs;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lorg/apache/sshd/common/mac/BuiltinMacs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/mac/BuiltinMacs;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/mac/BuiltinMacs;
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/sshd/common/mac/BuiltinMacs;->$VALUES:[Lorg/apache/sshd/common/mac/BuiltinMacs;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/mac/BuiltinMacs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/mac/BuiltinMacs;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/apache/sshd/common/mac/BuiltinMacs;->create()Lorg/apache/sshd/common/mac/Mac;

    move-result-object v0

    return-object v0
.end method

.method public create()Lorg/apache/sshd/common/mac/Mac;
    .locals 5

    .line 93
    new-instance v0, Lorg/apache/sshd/common/mac/BaseMac;

    invoke-virtual {p0}, Lorg/apache/sshd/common/mac/BuiltinMacs;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/mac/BuiltinMacs;->getBlockSize()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/sshd/common/mac/BuiltinMacs;->getDefaultBlockSize()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/sshd/common/mac/BuiltinMacs;->isEncryptThenMac()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/sshd/common/mac/BaseMac;-><init>(Ljava/lang/String;IIZ)V

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/sshd/common/mac/BuiltinMacs;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getBlockSize()I
    .locals 1

    .line 108
    iget v0, p0, Lorg/apache/sshd/common/mac/BuiltinMacs;->bsize:I

    return v0
.end method

.method public final getDefaultBlockSize()I
    .locals 1

    .line 113
    iget v0, p0, Lorg/apache/sshd/common/mac/BuiltinMacs;->defbsize:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/sshd/common/mac/BuiltinMacs;->factoryName:Ljava/lang/String;

    return-object v0
.end method

.method public final isSupported()Z
    .locals 1

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lorg/apache/sshd/common/mac/BuiltinMacs;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
