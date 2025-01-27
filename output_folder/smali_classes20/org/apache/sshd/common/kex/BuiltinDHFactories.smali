.class public abstract enum Lorg/apache/sshd/common/kex/BuiltinDHFactories;
.super Ljava/lang/Enum;
.source "BuiltinDHFactories.java"

# interfaces
.implements Lorg/apache/sshd/common/kex/DHFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/kex/BuiltinDHFactories$Constants;,
        Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/kex/BuiltinDHFactories;",
        ">;",
        "Lorg/apache/sshd/common/kex/DHFactory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/kex/BuiltinDHFactories;

.field private static final EXTENSIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/kex/DHFactory;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/kex/BuiltinDHFactories;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum dhg1:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

.field public static final enum dhg14:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

.field public static final enum dhg14_256:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

.field public static final enum dhg15_512:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

.field public static final enum dhg16_512:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

.field public static final enum dhg17_512:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

.field public static final enum dhg18_512:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

.field public static final enum dhgex:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

.field public static final enum dhgex256:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

.field public static final enum ecdhp256:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

.field public static final enum ecdhp384:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

.field public static final enum ecdhp521:Lorg/apache/sshd/common/kex/BuiltinDHFactories;


# instance fields
.field private final factoryName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 47
    new-instance v0, Lorg/apache/sshd/common/kex/BuiltinDHFactories$1;

    const-string v1, "dhg1"

    const/4 v2, 0x0

    const-string v3, "diffie-hellman-group1-sha1"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->dhg1:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    .line 61
    new-instance v1, Lorg/apache/sshd/common/kex/BuiltinDHFactories$2;

    const-string v3, "dhg14"

    const/4 v4, 0x1

    const-string v5, "diffie-hellman-group14-sha1"

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->dhg14:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    .line 75
    new-instance v3, Lorg/apache/sshd/common/kex/BuiltinDHFactories$3;

    const-string v5, "dhg14_256"

    const/4 v6, 0x2

    const-string v7, "diffie-hellman-group14-sha256"

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->dhg14_256:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    .line 89
    new-instance v5, Lorg/apache/sshd/common/kex/BuiltinDHFactories$4;

    const-string v7, "dhg15_512"

    const/4 v8, 0x3

    const-string v9, "diffie-hellman-group15-sha512"

    invoke-direct {v5, v7, v8, v9}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->dhg15_512:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    .line 103
    new-instance v7, Lorg/apache/sshd/common/kex/BuiltinDHFactories$5;

    const-string v9, "dhg16_512"

    const/4 v10, 0x4

    const-string v11, "diffie-hellman-group16-sha512"

    invoke-direct {v7, v9, v10, v11}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->dhg16_512:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    .line 117
    new-instance v9, Lorg/apache/sshd/common/kex/BuiltinDHFactories$6;

    const-string v11, "dhg17_512"

    const/4 v12, 0x5

    const-string v13, "diffie-hellman-group17-sha512"

    invoke-direct {v9, v11, v12, v13}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->dhg17_512:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    .line 131
    new-instance v11, Lorg/apache/sshd/common/kex/BuiltinDHFactories$7;

    const-string v13, "dhg18_512"

    const/4 v14, 0x6

    const-string v15, "diffie-hellman-group18-sha512"

    invoke-direct {v11, v13, v14, v15}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->dhg18_512:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    .line 145
    new-instance v13, Lorg/apache/sshd/common/kex/BuiltinDHFactories$8;

    const-string v15, "dhgex"

    const/4 v14, 0x7

    const-string v12, "diffie-hellman-group-exchange-sha1"

    invoke-direct {v13, v15, v14, v12}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->dhgex:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    .line 166
    new-instance v12, Lorg/apache/sshd/common/kex/BuiltinDHFactories$9;

    const-string v15, "dhgex256"

    const/16 v14, 0x8

    const-string v10, "diffie-hellman-group-exchange-sha256"

    invoke-direct {v12, v15, v14, v10}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$9;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->dhgex256:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    .line 187
    new-instance v10, Lorg/apache/sshd/common/kex/BuiltinDHFactories$10;

    const-string v15, "ecdhp256"

    const/16 v14, 0x9

    const-string v8, "ecdh-sha2-nistp256"

    invoke-direct {v10, v15, v14, v8}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$10;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->ecdhp256:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    .line 201
    new-instance v8, Lorg/apache/sshd/common/kex/BuiltinDHFactories$11;

    const-string v15, "ecdhp384"

    const/16 v14, 0xa

    const-string v6, "ecdh-sha2-nistp384"

    invoke-direct {v8, v15, v14, v6}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$11;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->ecdhp384:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    .line 215
    new-instance v6, Lorg/apache/sshd/common/kex/BuiltinDHFactories$12;

    const-string v15, "ecdhp521"

    const/16 v14, 0xb

    const-string v4, "ecdh-sha2-nistp521"

    invoke-direct {v6, v15, v14, v4}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$12;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->ecdhp521:Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    .line 46
    const/16 v4, 0xc

    new-array v4, v4, [Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    aput-object v6, v4, v14

    sput-object v4, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->$VALUES:[Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    .line 230
    const-class v0, Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    .line 231
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->VALUES:Ljava/util/Set;

    .line 233
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->EXTENSIONS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 238
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 239
    iput-object p3, p0, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->factoryName:Ljava/lang/String;

    .line 240
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/sshd/common/kex/BuiltinDHFactories$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lorg/apache/sshd/common/kex/BuiltinDHFactories$1;

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sshd/common/kex/BuiltinDHFactories;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/kex/BuiltinDHFactories;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 308
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    sget-object v1, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->VALUES:Ljava/util/Set;

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    return-object v0
.end method

.method public static getRegisteredExtensions()Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Lorg/apache/sshd/common/kex/DHFactory;",
            ">;"
        }
    .end annotation

    .line 281
    sget-object v0, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->EXTENSIONS:Ljava/util/Map;

    monitor-enter v0

    .line 282
    :try_start_0
    sget-object v1, Lorg/apache/sshd/common/NamedResource;->BY_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Comparator;Ljava/util/Collection;)Ljava/util/NavigableSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 283
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static parseDHFactoriesList(Ljava/lang/String;)Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;
    .locals 1
    .param p0, "dhList"    # Ljava/lang/String;

    .line 327
    const/16 v0, 0x2c

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->parseDHFactoriesList([Ljava/lang/String;)Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseDHFactoriesList(Ljava/util/Collection;)Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;"
        }
    .end annotation

    .line 335
    .local p0, "dhList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    sget-object v0, Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;->EMPTY:Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;

    return-object v0

    .line 339
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/kex/DHFactory;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 341
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

    .line 342
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->resolveFactory(Ljava/lang/String;)Lorg/apache/sshd/common/kex/DHFactory;

    move-result-object v4

    .line 343
    .local v4, "f":Lorg/apache/sshd/common/kex/DHFactory;
    if-eqz v4, :cond_1

    .line 344
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 347
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 348
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 350
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "f":Lorg/apache/sshd/common/kex/DHFactory;
    :goto_1
    goto :goto_0

    .line 354
    :cond_3
    new-instance v2, Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;

    invoke-direct {v2, v0, v1}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method public static varargs parseDHFactoriesList([Ljava/lang/String;)Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;
    .locals 1
    .param p0, "dhList"    # [Ljava/lang/String;

    .line 331
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->parseDHFactoriesList(Ljava/util/Collection;)Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static registerExtension(Lorg/apache/sshd/common/kex/DHFactory;)V
    .locals 5
    .param p0, "extension"    # Lorg/apache/sshd/common/kex/DHFactory;

    .line 267
    const-string v0, "No extension provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/kex/DHFactory;

    invoke-interface {v0}, Lorg/apache/sshd/common/kex/DHFactory;->getName()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/kex/BuiltinDHFactories;

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

    invoke-static {v1, v4, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 270
    sget-object v1, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->EXTENSIONS:Ljava/util/Map;

    monitor-enter v1

    .line 271
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v3, "Extension overrides existing: %s"

    invoke-static {v2, v3, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 272
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    monitor-exit v1

    .line 274
    return-void

    .line 273
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static resolveFactory(Ljava/lang/String;)Lorg/apache/sshd/common/kex/DHFactory;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 363
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x0

    return-object v0

    .line 367
    :cond_0
    invoke-static {p0}, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    move-result-object v0

    .line 368
    .local v0, "s":Lorg/apache/sshd/common/kex/DHFactory;
    if-eqz v0, :cond_1

    .line 369
    return-object v0

    .line 372
    :cond_1
    sget-object v1, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->EXTENSIONS:Ljava/util/Map;

    monitor-enter v1

    .line 373
    :try_start_0
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/kex/DHFactory;

    monitor-exit v1

    return-object v2

    .line 374
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static unregisterExtension(Ljava/lang/String;)Lorg/apache/sshd/common/kex/DHFactory;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 293
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const/4 v0, 0x0

    return-object v0

    .line 297
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->EXTENSIONS:Ljava/util/Map;

    monitor-enter v0

    .line 298
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/kex/DHFactory;

    monitor-exit v0

    return-object v1

    .line 299
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/kex/BuiltinDHFactories;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 46
    const-class v0, Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/kex/BuiltinDHFactories;
    .locals 1

    .line 46
    sget-object v0, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->$VALUES:[Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/kex/BuiltinDHFactories;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/kex/BuiltinDHFactories;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->factoryName:Ljava/lang/String;

    return-object v0
.end method

.method public isGroupExchange()Z
    .locals 1

    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 254
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/BuiltinDHFactories;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
