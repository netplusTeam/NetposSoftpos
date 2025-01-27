.class public final Lorg/apache/sshd/common/kex/extension/KexExtensions;
.super Ljava/lang/Object;
.source "KexExtensions.java"


# static fields
.field public static final CLIENT_KEX_EXTENSION:Ljava/lang/String; = "ext-info-c"

.field private static final EXTENSION_PARSERS:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/kex/extension/KexExtensionParser<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final IS_KEX_EXTENSION_SIGNAL:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVER_KEX_EXTENSION:Ljava/lang/String; = "ext-info-s"

.field public static final SSH_MSG_EXT_INFO:B = 0x7t

.field public static final SSH_MSG_NEWCOMPRESS:B = 0x8t


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 62
    new-instance v0, Lorg/apache/sshd/common/kex/extension/KexExtensions$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/common/kex/extension/KexExtensions$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/kex/extension/KexExtensions;->IS_KEX_EXTENSION_SIGNAL:Ljava/util/function/Predicate;

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/sshd/common/kex/extension/parser/AbstractKexExtensionParser;

    sget-object v1, Lorg/apache/sshd/common/kex/extension/parser/ServerSignatureAlgorithms;->INSTANCE:Lorg/apache/sshd/common/kex/extension/parser/ServerSignatureAlgorithms;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sshd/common/kex/extension/parser/NoFlowControl;->INSTANCE:Lorg/apache/sshd/common/kex/extension/parser/NoFlowControl;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sshd/common/kex/extension/parser/Elevation;->INSTANCE:Lorg/apache/sshd/common/kex/extension/parser/Elevation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/sshd/common/kex/extension/parser/DelayCompression;->INSTANCE:Lorg/apache/sshd/common/kex/extension/parser/DelayCompression;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 70
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/common/kex/extension/KexExtensions$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/sshd/common/kex/extension/KexExtensions$$ExternalSyntheticLambda1;-><init>()V

    .line 76
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    .line 77
    invoke-static {}, Lorg/apache/sshd/common/util/GenericUtils;->throwingMerger()Ljava/util/function/BinaryOperator;

    move-result-object v3

    new-instance v4, Lorg/apache/sshd/common/kex/extension/KexExtensions$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lorg/apache/sshd/common/kex/extension/KexExtensions$$ExternalSyntheticLambda2;-><init>()V

    .line 75
    invoke-static {v1, v2, v3, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    sput-object v0, Lorg/apache/sshd/common/kex/extension/KexExtensions;->EXTENSION_PARSERS:Ljava/util/NavigableMap;

    .line 69
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRegisteredExtensionParser(Ljava/lang/String;)Lorg/apache/sshd/common/kex/extension/KexExtensionParser;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/sshd/common/kex/extension/KexExtensionParser<",
            "*>;"
        }
    .end annotation

    .line 101
    const-string v0, "No extension name provided"

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    sget-object v0, Lorg/apache/sshd/common/kex/extension/KexExtensions;->EXTENSION_PARSERS:Ljava/util/NavigableMap;

    monitor-enter v0

    .line 103
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/kex/extension/KexExtensionParser;

    monitor-exit v0

    return-object v1

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getRegisteredExtensionParserNames()Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    sget-object v0, Lorg/apache/sshd/common/kex/extension/KexExtensions;->EXTENSION_PARSERS:Ljava/util/NavigableMap;

    monitor-enter v0

    .line 89
    :try_start_0
    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-static {}, Ljava/util/Collections;->emptyNavigableSet()Ljava/util/NavigableSet;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 91
    invoke-interface {v0}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Comparator;Ljava/util/Collection;)Ljava/util/NavigableSet;

    move-result-object v1

    :goto_0
    monitor-exit v0

    .line 89
    return-object v1

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "n"    # Ljava/lang/String;

    .line 63
    const-string v0, "ext-info-c"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ext-info-s"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method static synthetic lambda$static$1()Ljava/util/TreeMap;
    .locals 2

    .line 77
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static parseExtensions(Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/util/List;
    .locals 8
    .param p0, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v0

    .line 148
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 152
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;*>;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 154
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v4

    .line 156
    .local v4, "data":[B
    invoke-static {v3}, Lorg/apache/sshd/common/kex/extension/KexExtensions;->getRegisteredExtensionParser(Ljava/lang/String;)Lorg/apache/sshd/common/kex/extension/KexExtensionParser;

    move-result-object v5

    .line 157
    .local v5, "parser":Lorg/apache/sshd/common/kex/extension/KexExtensionParser;, "Lorg/apache/sshd/common/kex/extension/KexExtensionParser<*>;"
    if-nez v5, :cond_1

    move-object v6, v4

    goto :goto_1

    :cond_1
    invoke-interface {v5, v4}, Lorg/apache/sshd/common/kex/extension/KexExtensionParser;->parseExtension([B)Ljava/lang/Object;

    move-result-object v6

    .line 158
    .local v6, "value":Ljava/lang/Object;
    :goto_1
    new-instance v7, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v7, v3, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "data":[B
    .end local v5    # "parser":Lorg/apache/sshd/common/kex/extension/KexExtensionParser;, "Lorg/apache/sshd/common/kex/extension/KexExtensionParser<*>;"
    .end local v6    # "value":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v2    # "index":I
    :cond_2
    return-object v1
.end method

.method public static putExtensions(Ljava/util/Collection;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 6
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "*>;>;",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    .local p0, "exts":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<Ljava/lang/String;*>;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 179
    .local v0, "count":I
    int-to-long v1, v0

    invoke-virtual {p1, v1, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 180
    if-gtz v0, :cond_0

    .line 181
    return-void

    .line 184
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 185
    .local v2, "ee":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 186
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 188
    .local v4, "value":Ljava/lang/Object;
    nop

    .line 189
    invoke-static {v3}, Lorg/apache/sshd/common/kex/extension/KexExtensions;->getRegisteredExtensionParser(Ljava/lang/String;)Lorg/apache/sshd/common/kex/extension/KexExtensionParser;

    move-result-object v5

    .line 190
    .local v5, "parser":Lorg/apache/sshd/common/kex/extension/KexExtensionParser;, "Lorg/apache/sshd/common/kex/extension/KexExtensionParser<Ljava/lang/Object;>;"
    if-eqz v5, :cond_1

    .line 191
    invoke-interface {v5, v4, p1}, Lorg/apache/sshd/common/kex/extension/KexExtensionParser;->putExtension(Ljava/lang/Object;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    goto :goto_1

    .line 193
    :cond_1
    invoke-virtual {p1, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putOptionalBufferedData(Ljava/lang/Object;)V

    .line 195
    .end local v2    # "ee":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "parser":Lorg/apache/sshd/common/kex/extension/KexExtensionParser;, "Lorg/apache/sshd/common/kex/extension/KexExtensionParser<Ljava/lang/Object;>;"
    :goto_1
    goto :goto_0

    .line 196
    :cond_2
    return-void
.end method

.method public static registerExtensionParser(Lorg/apache/sshd/common/kex/extension/KexExtensionParser;)Lorg/apache/sshd/common/kex/extension/KexExtensionParser;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/kex/extension/KexExtensionParser<",
            "*>;)",
            "Lorg/apache/sshd/common/kex/extension/KexExtensionParser<",
            "*>;"
        }
    .end annotation

    .line 115
    .local p0, "parser":Lorg/apache/sshd/common/kex/extension/KexExtensionParser;, "Lorg/apache/sshd/common/kex/extension/KexExtensionParser<*>;"
    const-string v0, "No parser provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    invoke-interface {p0}, Lorg/apache/sshd/common/kex/extension/KexExtensionParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No extension name provided"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lorg/apache/sshd/common/kex/extension/KexExtensions;->EXTENSION_PARSERS:Ljava/util/NavigableMap;

    monitor-enter v1

    .line 118
    :try_start_0
    invoke-interface {v1, v0, p0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/kex/extension/KexExtensionParser;

    monitor-exit v1

    return-object v2

    .line 119
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static unregisterExtensionParser(Ljava/lang/String;)Lorg/apache/sshd/common/kex/extension/KexExtensionParser;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/sshd/common/kex/extension/KexExtensionParser<",
            "*>;"
        }
    .end annotation

    .line 130
    const-string v0, "No extension name provided"

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    sget-object v0, Lorg/apache/sshd/common/kex/extension/KexExtensions;->EXTENSION_PARSERS:Ljava/util/NavigableMap;

    monitor-enter v0

    .line 132
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/kex/extension/KexExtensionParser;

    monitor-exit v0

    return-object v1

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
