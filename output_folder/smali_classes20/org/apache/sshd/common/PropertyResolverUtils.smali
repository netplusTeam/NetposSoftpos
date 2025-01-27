.class public final Lorg/apache/sshd/common/PropertyResolverUtils;
.super Ljava/lang/Object;
.source "PropertyResolverUtils.java"


# static fields
.field public static final FALSE_VALUES:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NONE_VALUE:Ljava/lang/String; = "none"

.field public static final TRUE_VALUES:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 44
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "t"

    const-string/jumbo v3, "yes"

    const-string/jumbo v4, "y"

    const-string v5, "on"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    .line 45
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/PropertyResolverUtils;->TRUE_VALUES:Ljava/util/NavigableSet;

    .line 52
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    const-string v1, "false"

    const-string v2, "f"

    const-string v3, "no"

    const-string v4, "n"

    const-string v5, "off"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    .line 53
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/PropertyResolverUtils;->FALSE_VALUES:Ljava/util/NavigableSet;

    .line 52
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBoolean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 313
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->resolvePropertyValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 314
    .local v0, "propValue":Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static getBoolean(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p1, "name"    # Ljava/lang/String;

    .line 308
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->resolvePropertyValue(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 309
    .local v0, "propValue":Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static getBooleanProperty(Ljava/util/Map;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .line 288
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->getObject(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/sshd/common/PropertyResolverUtils;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public static getBooleanProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 284
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->getObject(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/sshd/common/PropertyResolverUtils;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public static getCharset(Ljava/util/Map;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/nio/charset/Charset;"
        }
    .end annotation

    .line 414
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->getObject(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 415
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->toCharset(Ljava/lang/Object;)Ljava/nio/charset/Charset;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getCharset(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 2
    .param p0, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/nio/charset/Charset;

    .line 409
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->getObject(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 410
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->toCharset(Ljava/lang/Object;)Ljava/nio/charset/Charset;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getIntProperty(Ljava/util/Map;Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .line 242
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->resolvePropertyValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/sshd/common/PropertyResolverUtils;->toInteger(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static getIntProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 238
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->resolvePropertyValue(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/sshd/common/PropertyResolverUtils;->toInteger(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static getInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 260
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->resolvePropertyValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getInteger(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p1, "name"    # Ljava/lang/String;

    .line 256
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->resolvePropertyValue(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getLong(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 130
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->resolvePropertyValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getLong(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p1, "name"    # Ljava/lang/String;

    .line 126
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->resolvePropertyValue(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getLongProperty(Ljava/util/Map;Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            "J)J"
        }
    .end annotation

    .line 83
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->resolvePropertyValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lorg/apache/sshd/common/PropertyResolverUtils;->toLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;J)J
    .locals 2
    .param p0, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 79
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->resolvePropertyValue(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lorg/apache/sshd/common/PropertyResolverUtils;->toLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getObject(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 446
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->resolvePropertyValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getObject(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p1, "name"    # Ljava/lang/String;

    .line 441
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->resolvePropertyValue(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 436
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->getObject(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 437
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getString(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p1, "name"    # Ljava/lang/String;

    .line 431
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->getObject(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 432
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStringProperty(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 400
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->resolvePropertyValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 401
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 402
    return-object p2

    .line 404
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStringProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 391
    invoke-static {p0, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->getString(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    return-object p2

    .line 395
    :cond_0
    return-object v0
.end method

.method public static isNoneValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 66
    const-string v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static parseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 364
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const/4 v0, 0x0

    return-object v0

    .line 366
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/PropertyResolverUtils;->TRUE_VALUES:Ljava/util/NavigableSet;

    invoke-interface {v0, p0}, Ljava/util/NavigableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 368
    :cond_1
    sget-object v0, Lorg/apache/sshd/common/PropertyResolverUtils;->FALSE_VALUES:Ljava/util/NavigableSet;

    invoke-interface {v0, p0}, Ljava/util/NavigableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 371
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown boolean value: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resolvePropertiesSource(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p0, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/PropertyResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 506
    const-string v0, "No property name"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "key":Ljava/lang/String;
    move-object v1, p0

    .local v1, "r":Lorg/apache/sshd/common/PropertyResolver;
    :goto_0
    if-eqz v1, :cond_1

    .line 508
    invoke-interface {v1}, Lorg/apache/sshd/common/PropertyResolver;->getProperties()Ljava/util/Map;

    move-result-object v2

    .line 509
    .local v2, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v2, v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->getObject(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 510
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 511
    return-object v2

    .line 507
    .end local v2    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    invoke-interface {v1}, Lorg/apache/sshd/common/PropertyResolver;->getParentPropertyResolver()Lorg/apache/sshd/common/PropertyResolver;

    move-result-object v1

    goto :goto_0

    .line 515
    .end local v1    # "r":Lorg/apache/sshd/common/PropertyResolver;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static resolvePropertyValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 450
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "No property name"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "key":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static resolvePropertyValue(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p1, "name"    # Ljava/lang/String;

    .line 485
    const-string v0, "No property name"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "key":Ljava/lang/String;
    move-object v1, p0

    .local v1, "r":Lorg/apache/sshd/common/PropertyResolver;
    :goto_0
    if-eqz v1, :cond_1

    .line 487
    invoke-interface {v1}, Lorg/apache/sshd/common/PropertyResolver;->getProperties()Ljava/util/Map;

    move-result-object v2

    .line 488
    .local v2, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {v2, v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->getObject(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 489
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 490
    return-object v3

    .line 486
    .end local v2    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    invoke-interface {v1}, Lorg/apache/sshd/common/PropertyResolver;->getParentPropertyResolver()Lorg/apache/sshd/common/PropertyResolver;

    move-result-object v1

    goto :goto_0

    .line 494
    .end local v1    # "r":Lorg/apache/sshd/common/PropertyResolver;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 342
    if-nez p0, :cond_0

    .line 343
    const/4 v0, 0x0

    return-object v0

    .line 344
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 345
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 346
    :cond_1
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->parseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 349
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 350
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] to boolean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBoolean(Ljava/lang/Object;Z)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # Z

    .line 299
    invoke-static {p0}, Lorg/apache/sshd/common/PropertyResolverUtils;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 300
    .local v0, "bool":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 301
    return p1

    .line 303
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static toCharset(Ljava/lang/Object;)Ljava/nio/charset/Charset;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 419
    if-nez p0, :cond_0

    .line 420
    const/4 v0, 0x0

    return-object v0

    .line 421
    :cond_0
    instance-of v0, p0, Ljava/nio/charset/Charset;

    if-eqz v0, :cond_1

    .line 422
    move-object v0, p0

    check-cast v0, Ljava/nio/charset/Charset;

    return-object v0

    .line 423
    :cond_1
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 424
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0

    .line 426
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid charset conversion value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toEnum(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/Collection;)Ljava/lang/Enum;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "failIfNoMatch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/Collection<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 204
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p3, "available":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 205
    return-object v0

    .line 206
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0

    .line 208
    :cond_1
    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    .line 209
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "name":Ljava/lang/String;
    invoke-static {p3}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v2

    if-lez v2, :cond_3

    .line 211
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    .line 212
    .local v3, "v":Ljava/lang/Enum;, "TE;"
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 213
    return-object v3

    .line 215
    .end local v3    # "v":Ljava/lang/Enum;, "TE;"
    :cond_2
    goto :goto_0

    .line 218
    :cond_3
    if-nez p2, :cond_4

    .line 222
    return-object v0

    .line 219
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No match found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    .end local v1    # "name":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad value type for enum conversion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toInteger(Ljava/lang/Object;I)I
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # I

    .line 246
    if-nez p0, :cond_0

    .line 247
    return p1

    .line 248
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 249
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    .line 251
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static toInteger(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 264
    if-nez p0, :cond_0

    .line 265
    const/4 v0, 0x0

    return-object v0

    .line 266
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 267
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 268
    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 269
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 271
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static toLong(Ljava/lang/Object;J)J
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # J

    .line 109
    if-nez p0, :cond_0

    .line 110
    return-wide p1

    .line 111
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 112
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 114
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 161
    if-nez p0, :cond_0

    .line 162
    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 164
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    return-object v0

    .line 165
    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 166
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 168
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static toPropertyResolver(Ljava/util/Map;)Lorg/apache/sshd/common/PropertyResolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/apache/sshd/common/PropertyResolver;"
        }
    .end annotation

    .line 545
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->toPropertyResolver(Ljava/util/Map;Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/common/PropertyResolver;

    move-result-object v0

    return-object v0
.end method

.method public static toPropertyResolver(Ljava/util/Map;Lorg/apache/sshd/common/PropertyResolver;)Lorg/apache/sshd/common/PropertyResolver;
    .locals 1
    .param p1, "parent"    # Lorg/apache/sshd/common/PropertyResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lorg/apache/sshd/common/PropertyResolver;",
            ")",
            "Lorg/apache/sshd/common/PropertyResolver;"
        }
    .end annotation

    .line 549
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Lorg/apache/sshd/common/PropertyResolverUtils$1;

    invoke-direct {v0, p1, p0}, Lorg/apache/sshd/common/PropertyResolverUtils$1;-><init>(Lorg/apache/sshd/common/PropertyResolver;Ljava/util/Map;)V

    return-object v0
.end method

.method public static toPropertyResolver(Ljava/util/Properties;)Lorg/apache/sshd/common/PropertyResolver;
    .locals 5
    .param p0, "props"    # Ljava/util/Properties;

    .line 519
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    sget-object v0, Lorg/apache/sshd/common/PropertyResolver;->EMPTY:Lorg/apache/sshd/common/PropertyResolver;

    return-object v0

    .line 523
    :cond_0
    invoke-virtual {p0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    .line 524
    .local v0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 525
    .local v1, "propsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 526
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 527
    .local v4, "value":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 528
    goto :goto_0

    .line 530
    :cond_1
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 533
    :cond_2
    invoke-static {v1}, Lorg/apache/sshd/common/PropertyResolverUtils;->toPropertyResolver(Ljava/util/Map;)Lorg/apache/sshd/common/PropertyResolver;

    move-result-object v2

    return-object v2
.end method

.method public static updateProperty(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 280
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->updateProperty(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static updateProperty(Ljava/util/Map;Ljava/lang/String;J)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 234
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->updateProperty(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static updateProperty(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 466
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "No property name"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "key":Ljava/lang/String;
    if-eqz p2, :cond_1

    instance-of v1, p2, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 468
    :cond_1
    :goto_0
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static updateProperty(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 380
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->updateProperty(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static updateProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .param p0, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 276
    invoke-interface {p0}, Lorg/apache/sshd/common/PropertyResolver;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/sshd/common/PropertyResolverUtils;->updateProperty(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static updateProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;J)Ljava/lang/Object;
    .locals 1
    .param p0, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 230
    invoke-interface {p0}, Lorg/apache/sshd/common/PropertyResolver;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lorg/apache/sshd/common/PropertyResolverUtils;->updateProperty(Ljava/util/Map;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static updateProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 462
    invoke-interface {p0}, Lorg/apache/sshd/common/PropertyResolver;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/sshd/common/PropertyResolverUtils;->updateProperty(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static updateProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 376
    invoke-interface {p0}, Lorg/apache/sshd/common/PropertyResolver;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/sshd/common/PropertyResolverUtils;->updateProperty(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
