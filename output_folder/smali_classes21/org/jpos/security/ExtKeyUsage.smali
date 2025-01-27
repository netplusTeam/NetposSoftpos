.class public Lorg/jpos/security/ExtKeyUsage;
.super Lorg/jpos/security/KeyUsage;
.source "ExtKeyUsage.java"


# static fields
.field public static final DEK:Lorg/jpos/security/KeyUsage;

.field private static final EXTERNAL_KEY_USAGES:Ljava/lang/String; = "META-INF/org/jpos/security/proprietary-hsm.properties"

.field private static final EXT_DEF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jpos/security/KeyUsage;",
            ">;"
        }
    .end annotation
.end field

.field public static final HMACSHA1:Lorg/jpos/security/KeyUsage;

.field public static final HMACSHA224:Lorg/jpos/security/KeyUsage;

.field public static final HMACSHA256:Lorg/jpos/security/KeyUsage;

.field public static final HMACSHA384:Lorg/jpos/security/KeyUsage;

.field public static final HMACSHA512:Lorg/jpos/security/KeyUsage;

.field private static final KEY_USAGE_PREFIX:Ljava/lang/String; = "ku."

.field private static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jpos/security/KeyUsage;",
            ">;"
        }
    .end annotation
.end field

.field public static final RSAPK:Lorg/jpos/security/KeyUsage;

.field public static final RSASK:Lorg/jpos/security/KeyUsage;

.field public static final RSASKICC:Lorg/jpos/security/KeyUsage;

.field public static final RSASKPIN:Lorg/jpos/security/KeyUsage;

.field public static final RSASKTLS:Lorg/jpos/security/KeyUsage;

.field public static final TEK:Lorg/jpos/security/KeyUsage;

.field public static final TMK:Lorg/jpos/security/KeyUsage;

.field public static final TPK:Lorg/jpos/security/KeyUsage;

.field public static final ZEK:Lorg/jpos/security/KeyUsage;

.field public static final ZMK:Lorg/jpos/security/KeyUsage;

.field public static final ZPK:Lorg/jpos/security/KeyUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lorg/jpos/security/ExtKeyUsage;->MAP:Ljava/util/Map;

    .line 63
    const-string v0, "META-INF/org/jpos/security/proprietary-hsm.properties"

    invoke-static {v0}, Lorg/jpos/security/ExtKeyUsage;->loadKeyUsagesFromClasspath(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/ExtKeyUsage;->EXT_DEF:Ljava/util/Map;

    .line 70
    const-string v0, "DEK"

    invoke-static {v0}, Lorg/jpos/security/ExtKeyUsage;->getKeyUsage(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/ExtKeyUsage;->DEK:Lorg/jpos/security/KeyUsage;

    .line 77
    const-string v0, "ZEK"

    invoke-static {v0}, Lorg/jpos/security/ExtKeyUsage;->getKeyUsage(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/ExtKeyUsage;->ZEK:Lorg/jpos/security/KeyUsage;

    .line 84
    const-string v0, "TEK"

    invoke-static {v0}, Lorg/jpos/security/ExtKeyUsage;->getKeyUsage(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/ExtKeyUsage;->TEK:Lorg/jpos/security/KeyUsage;

    .line 91
    const-string v0, "RSAPK"

    invoke-static {v0}, Lorg/jpos/security/ExtKeyUsage;->getKeyUsage(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/ExtKeyUsage;->RSAPK:Lorg/jpos/security/KeyUsage;

    .line 98
    const-string v0, "RSASK"

    invoke-static {v0}, Lorg/jpos/security/ExtKeyUsage;->getKeyUsage(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/ExtKeyUsage;->RSASK:Lorg/jpos/security/KeyUsage;

    .line 105
    const-string v0, "RSASKICC"

    invoke-static {v0}, Lorg/jpos/security/ExtKeyUsage;->getKeyUsage(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/ExtKeyUsage;->RSASKICC:Lorg/jpos/security/KeyUsage;

    .line 112
    const-string v0, "RSASKPIN"

    invoke-static {v0}, Lorg/jpos/security/ExtKeyUsage;->getKeyUsage(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/ExtKeyUsage;->RSASKPIN:Lorg/jpos/security/KeyUsage;

    .line 119
    const-string v0, "RSASKTLS"

    invoke-static {v0}, Lorg/jpos/security/ExtKeyUsage;->getKeyUsage(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/ExtKeyUsage;->RSASKTLS:Lorg/jpos/security/KeyUsage;

    .line 126
    const-string v0, "TMK"

    invoke-static {v0}, Lorg/jpos/security/ExtKeyUsage;->getKeyUsage(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/ExtKeyUsage;->TMK:Lorg/jpos/security/KeyUsage;

    .line 133
    const-string v0, "ZMK"

    invoke-static {v0}, Lorg/jpos/security/ExtKeyUsage;->getKeyUsage(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/ExtKeyUsage;->ZMK:Lorg/jpos/security/KeyUsage;

    .line 140
    const-string v0, "HMACSHA1"

    invoke-static {v0}, Lorg/jpos/security/ExtKeyUsage;->getKeyUsage(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/ExtKeyUsage;->HMACSHA1:Lorg/jpos/security/KeyUsage;

    .line 147
    const-string v0, "HMACSHA224"

    invoke-static {v0}, Lorg/jpos/security/ExtKeyUsage;->getKeyUsage(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/ExtKeyUsage;->HMACSHA224:Lorg/jpos/security/KeyUsage;

    .line 154
    const-string v0, "HMACSHA256"

    invoke-static {v0}, Lorg/jpos/security/ExtKeyUsage;->getKeyUsage(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/ExtKeyUsage;->HMACSHA256:Lorg/jpos/security/KeyUsage;

    .line 161
    const-string v0, "HMACSHA384"

    invoke-static {v0}, Lorg/jpos/security/ExtKeyUsage;->getKeyUsage(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/ExtKeyUsage;->HMACSHA384:Lorg/jpos/security/KeyUsage;

    .line 168
    const-string v0, "HMACSHA512"

    invoke-static {v0}, Lorg/jpos/security/ExtKeyUsage;->getKeyUsage(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/ExtKeyUsage;->HMACSHA512:Lorg/jpos/security/KeyUsage;

    .line 175
    const-string v0, "TPK"

    invoke-static {v0}, Lorg/jpos/security/ExtKeyUsage;->getKeyUsage(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/ExtKeyUsage;->TPK:Lorg/jpos/security/KeyUsage;

    .line 182
    const-string v0, "ZPK"

    invoke-static {v0}, Lorg/jpos/security/ExtKeyUsage;->getKeyUsage(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v0

    sput-object v0, Lorg/jpos/security/ExtKeyUsage;->ZPK:Lorg/jpos/security/KeyUsage;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 196
    invoke-direct {p0, p1, p2}, Lorg/jpos/security/KeyUsage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public static entries()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jpos/security/KeyUsage;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/LinkedHashMap;

    sget-object v1, Lorg/jpos/security/ExtKeyUsage;->TR31MAP:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 223
    .local v0, "ret":Ljava/util/Map;
    sget-object v1, Lorg/jpos/security/ExtKeyUsage;->MAP:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 224
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private static getKeyUsage(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;
    .locals 1
    .param p0, "entry"    # Ljava/lang/String;

    .line 200
    sget-object v0, Lorg/jpos/security/ExtKeyUsage;->EXT_DEF:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x0

    return-object v0

    .line 203
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/security/KeyUsage;

    return-object v0
.end method

.method static loadKeyUsagesFromClasspath(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p0, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jpos/security/KeyUsage;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 242
    .local v0, "props":Ljava/util/Properties;
    :try_start_0
    invoke-static {p0}, Lorg/jpos/security/ExtKeyUsage;->loadResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 244
    invoke-static {v0}, Lorg/jpos/security/ExtKeyUsage;->registerKeyUsages(Ljava/util/Properties;)Ljava/util/Map;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 244
    :cond_0
    return-object v2

    .line 242
    :catchall_0
    move-exception v2

    .end local v0    # "props":Ljava/util/Properties;
    .end local v1    # "in":Ljava/io/InputStream;
    .end local p0    # "resource":Ljava/lang/String;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 245
    .restart local v0    # "props":Ljava/util/Properties;
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "resource":Ljava/lang/String;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "props":Ljava/util/Properties;
    .end local p0    # "resource":Ljava/lang/String;
    :cond_1
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v0    # "props":Ljava/util/Properties;
    .restart local p0    # "resource":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 246
    .local v1, "ex":Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static loadResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 231
    .local v1, "contextClassLoader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 234
    :cond_0
    if-nez v0, :cond_1

    .line 235
    const-class v2, Lorg/jpos/security/ExtKeyUsage;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 237
    :cond_1
    return-object v0
.end method

.method private static registerKeyUsages(Ljava/util/Properties;)Ljava/util/Map;
    .locals 9
    .param p0, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jpos/security/KeyUsage;",
            ">;"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 252
    .local v0, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jpos/security/KeyUsage;>;"
    invoke-virtual {p0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 253
    .local v2, "key":Ljava/lang/String;
    const-string v3, "ku."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 254
    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 258
    goto :goto_0

    .line 260
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "k":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 262
    .local v5, "entry":[Ljava/lang/String;
    new-instance v6, Lorg/jpos/security/KeyUsage;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-direct {v6, v7, v8}, Lorg/jpos/security/KeyUsage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .local v6, "ku":Lorg/jpos/security/KeyUsage;
    sget-object v7, Lorg/jpos/security/ExtKeyUsage;->MAP:Ljava/util/Map;

    invoke-virtual {v6}, Lorg/jpos/security/KeyUsage;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 265
    goto :goto_0

    .line 267
    :cond_3
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-virtual {v6}, Lorg/jpos/security/KeyUsage;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "k":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "entry":[Ljava/lang/String;
    .end local v6    # "ku":Lorg/jpos/security/KeyUsage;
    goto :goto_0

    .line 271
    :cond_4
    return-object v0
.end method

.method public static valueOfByCode(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;
    .locals 2
    .param p0, "code"    # Ljava/lang/String;

    .line 214
    sget-object v0, Lorg/jpos/security/ExtKeyUsage;->MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/security/KeyUsage;

    .line 215
    .local v0, "ku":Lorg/jpos/security/KeyUsage;
    if-eqz v0, :cond_0

    .line 216
    return-object v0

    .line 218
    :cond_0
    sget-object v1, Lorg/jpos/security/ExtKeyUsage;->TR31MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/security/KeyUsage;

    return-object v1
.end method
