.class public abstract enum Lorg/apache/sshd/common/compression/BuiltinCompressions;
.super Ljava/lang/Enum;
.source "BuiltinCompressions.java"

# interfaces
.implements Lorg/apache/sshd/common/compression/CompressionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/compression/BuiltinCompressions$Constants;,
        Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/compression/BuiltinCompressions;",
        ">;",
        "Lorg/apache/sshd/common/compression/CompressionFactory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/compression/BuiltinCompressions;

.field private static final EXTENSIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/compression/CompressionFactory;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/compression/BuiltinCompressions;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum delayedZlib:Lorg/apache/sshd/common/compression/BuiltinCompressions;

.field public static final enum none:Lorg/apache/sshd/common/compression/BuiltinCompressions;

.field public static final enum zlib:Lorg/apache/sshd/common/compression/BuiltinCompressions;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 44
    new-instance v0, Lorg/apache/sshd/common/compression/BuiltinCompressions$1;

    const-string v1, "none"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lorg/apache/sshd/common/compression/BuiltinCompressions$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sshd/common/compression/BuiltinCompressions;->none:Lorg/apache/sshd/common/compression/BuiltinCompressions;

    .line 55
    new-instance v1, Lorg/apache/sshd/common/compression/BuiltinCompressions$2;

    const-string/jumbo v3, "zlib"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lorg/apache/sshd/common/compression/BuiltinCompressions$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/sshd/common/compression/BuiltinCompressions;->zlib:Lorg/apache/sshd/common/compression/BuiltinCompressions;

    .line 61
    new-instance v3, Lorg/apache/sshd/common/compression/BuiltinCompressions$3;

    const-string v5, "delayedZlib"

    const/4 v6, 0x2

    const-string/jumbo v7, "zlib@openssh.com"

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/sshd/common/compression/BuiltinCompressions$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/sshd/common/compression/BuiltinCompressions;->delayedZlib:Lorg/apache/sshd/common/compression/BuiltinCompressions;

    .line 43
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/sshd/common/compression/BuiltinCompressions;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/apache/sshd/common/compression/BuiltinCompressions;->$VALUES:[Lorg/apache/sshd/common/compression/BuiltinCompressions;

    .line 73
    const-class v0, Lorg/apache/sshd/common/compression/BuiltinCompressions;

    .line 74
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/compression/BuiltinCompressions;->VALUES:Ljava/util/Set;

    .line 76
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/sshd/common/compression/BuiltinCompressions;->EXTENSIONS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "n"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput-object p3, p0, Lorg/apache/sshd/common/compression/BuiltinCompressions;->name:Ljava/lang/String;

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/sshd/common/compression/BuiltinCompressions$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lorg/apache/sshd/common/compression/BuiltinCompressions$1;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sshd/common/compression/BuiltinCompressions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/compression/BuiltinCompressions;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 156
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    sget-object v1, Lorg/apache/sshd/common/compression/BuiltinCompressions;->VALUES:Ljava/util/Set;

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/compression/BuiltinCompressions;

    return-object v0
.end method

.method public static getRegisteredExtensions()Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Lorg/apache/sshd/common/compression/CompressionFactory;",
            ">;"
        }
    .end annotation

    .line 134
    sget-object v0, Lorg/apache/sshd/common/compression/BuiltinCompressions;->EXTENSIONS:Ljava/util/Map;

    monitor-enter v0

    .line 135
    :try_start_0
    sget-object v1, Lorg/apache/sshd/common/NamedResource;->BY_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Comparator;Ljava/util/Collection;)Ljava/util/NavigableSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static parseCompressionsList(Ljava/lang/String;)Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;
    .locals 1
    .param p0, "compressions"    # Ljava/lang/String;

    .line 167
    const/16 v0, 0x2c

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/compression/BuiltinCompressions;->parseCompressionsList([Ljava/lang/String;)Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseCompressionsList(Ljava/util/Collection;)Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;"
        }
    .end annotation

    .line 175
    .local p0, "compressions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;->EMPTY:Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;

    return-object v0

    .line 179
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/compression/CompressionFactory;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 181
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

    .line 182
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/sshd/common/compression/BuiltinCompressions;->resolveFactory(Ljava/lang/String;)Lorg/apache/sshd/common/compression/CompressionFactory;

    move-result-object v4

    .line 183
    .local v4, "c":Lorg/apache/sshd/common/compression/CompressionFactory;
    if-eqz v4, :cond_1

    .line 184
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 187
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 188
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 190
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "c":Lorg/apache/sshd/common/compression/CompressionFactory;
    :goto_1
    goto :goto_0

    .line 194
    :cond_3
    new-instance v2, Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;

    invoke-direct {v2, v0, v1}, Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method public static varargs parseCompressionsList([Ljava/lang/String;)Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;
    .locals 1
    .param p0, "compressions"    # [Ljava/lang/String;

    .line 171
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
    invoke-static {v0}, Lorg/apache/sshd/common/compression/BuiltinCompressions;->parseCompressionsList(Ljava/util/Collection;)Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static registerExtension(Lorg/apache/sshd/common/compression/CompressionFactory;)V
    .locals 5
    .param p0, "extension"    # Lorg/apache/sshd/common/compression/CompressionFactory;

    .line 120
    const-string v0, "No extension provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/compression/CompressionFactory;

    invoke-interface {v0}, Lorg/apache/sshd/common/compression/CompressionFactory;->getName()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/compression/BuiltinCompressions;->fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/compression/BuiltinCompressions;

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

    .line 123
    sget-object v1, Lorg/apache/sshd/common/compression/BuiltinCompressions;->EXTENSIONS:Ljava/util/Map;

    monitor-enter v1

    .line 124
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

    .line 125
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    monitor-exit v1

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static resolveFactory(Ljava/lang/String;)Lorg/apache/sshd/common/compression/CompressionFactory;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 203
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x0

    return-object v0

    .line 207
    :cond_0
    invoke-static {p0}, Lorg/apache/sshd/common/compression/BuiltinCompressions;->fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/compression/BuiltinCompressions;

    move-result-object v0

    .line 208
    .local v0, "c":Lorg/apache/sshd/common/compression/CompressionFactory;
    if-eqz v0, :cond_1

    .line 209
    return-object v0

    .line 212
    :cond_1
    sget-object v1, Lorg/apache/sshd/common/compression/BuiltinCompressions;->EXTENSIONS:Ljava/util/Map;

    monitor-enter v1

    .line 213
    :try_start_0
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/compression/CompressionFactory;

    monitor-exit v1

    return-object v2

    .line 214
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static unregisterExtension(Ljava/lang/String;)Lorg/apache/sshd/common/compression/CompressionFactory;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 146
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/compression/BuiltinCompressions;->EXTENSIONS:Ljava/util/Map;

    monitor-enter v0

    .line 151
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/compression/CompressionFactory;

    monitor-exit v0

    return-object v1

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/compression/BuiltinCompressions;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 43
    const-class v0, Lorg/apache/sshd/common/compression/BuiltinCompressions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/compression/BuiltinCompressions;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/compression/BuiltinCompressions;
    .locals 1

    .line 43
    sget-object v0, Lorg/apache/sshd/common/compression/BuiltinCompressions;->$VALUES:[Lorg/apache/sshd/common/compression/BuiltinCompressions;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/compression/BuiltinCompressions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/compression/BuiltinCompressions;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/sshd/common/compression/BuiltinCompressions;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isCompressionExecuted()Z
    .locals 1

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public isDelayed()Z
    .locals 1

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public final isSupported()Z
    .locals 1

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lorg/apache/sshd/common/compression/BuiltinCompressions;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
