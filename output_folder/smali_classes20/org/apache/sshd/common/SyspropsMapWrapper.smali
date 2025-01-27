.class public final Lorg/apache/sshd/common/SyspropsMapWrapper;
.super Ljava/lang/Object;
.source "SyspropsMapWrapper.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/common/SyspropsMapWrapper;

.field public static final RAW_PROPS_RESOLVER:Lorg/apache/sshd/common/PropertyResolver;

.field public static final SYSPROPS_MAPPED_PREFIX:Ljava/lang/String; = "org.apache.sshd.config"

.field public static final SYSPROPS_RESOLVER:Lorg/apache/sshd/common/PropertyResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/PropertyResolverUtils;->toPropertyResolver(Ljava/util/Properties;)Lorg/apache/sshd/common/PropertyResolver;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/SyspropsMapWrapper;->RAW_PROPS_RESOLVER:Lorg/apache/sshd/common/PropertyResolver;

    .line 58
    new-instance v0, Lorg/apache/sshd/common/SyspropsMapWrapper;

    invoke-direct {v0}, Lorg/apache/sshd/common/SyspropsMapWrapper;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/SyspropsMapWrapper;->INSTANCE:Lorg/apache/sshd/common/SyspropsMapWrapper;

    .line 63
    new-instance v0, Lorg/apache/sshd/common/SyspropsMapWrapper$1;

    invoke-direct {v0}, Lorg/apache/sshd/common/SyspropsMapWrapper$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/SyspropsMapWrapper;->SYSPROPS_RESOLVER:Lorg/apache/sshd/common/PropertyResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static getMappedSyspropKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/Object;

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.apache.sshd.config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUnmappedSyspropKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/Object;

    .line 208
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/SyspropsMapWrapper;->isMappedSyspropKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "org.apache.sshd.config"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static isMappedSyspropKey(Ljava/lang/String;)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .line 197
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    const-string v1, "org.apache.sshd.config"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-le v0, v2, :cond_0

    .line 198
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 197
    :goto_0
    return v3
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "sysprops#clear() N/A"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 91
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/SyspropsMapWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .line 97
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 98
    .local v0, "props":Ljava/util/Properties;
    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 99
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/sshd/common/SyspropsMapWrapper;->isMappedSyspropKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "v":Ljava/lang/Object;
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    const/4 v1, 0x1

    return v1

    .line 107
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 109
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 114
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 116
    .local v0, "props":Ljava/util/Properties;
    new-instance v1, Ljava/util/TreeSet;

    invoke-static {}, Lorg/apache/sshd/common/util/MapEntryUtils;->byKeyEntryComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 117
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 118
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/sshd/common/SyspropsMapWrapper;->isMappedSyspropKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 119
    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "v":Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 124
    invoke-static {v3}, Lorg/apache/sshd/common/SyspropsMapWrapper;->getUnmappedSyspropKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "unmappedKey":Ljava/lang/String;
    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v6, v5, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "v":Ljava/lang/Object;
    .end local v5    # "unmappedKey":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 129
    :cond_2
    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 134
    invoke-static {p1}, Lorg/apache/sshd/common/SyspropsMapWrapper;->getMappedSyspropKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "propName":Ljava/lang/String;
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 140
    invoke-virtual {p0}, Lorg/apache/sshd/common/SyspropsMapWrapper;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/common/SyspropsMapWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/sshd/common/SyspropsMapWrapper$$ExternalSyntheticLambda0;-><init>()V

    .line 149
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/common/SyspropsMapWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/sshd/common/SyspropsMapWrapper$$ExternalSyntheticLambda2;-><init>()V

    .line 150
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 151
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 145
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/SyspropsMapWrapper;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sysprops#put("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] N/A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 161
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sysprops#putAll("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") N/A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sysprops#remove("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") N/A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 171
    invoke-virtual {p0}, Lorg/apache/sshd/common/SyspropsMapWrapper;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 188
    invoke-virtual {p0}, Lorg/apache/sshd/common/SyspropsMapWrapper;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 176
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 178
    .local v0, "props":Ljava/util/Properties;
    nop

    .line 179
    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    .line 180
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/common/SyspropsMapWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/apache/sshd/common/SyspropsMapWrapper$$ExternalSyntheticLambda0;-><init>()V

    .line 181
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/sshd/common/SyspropsMapWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/apache/sshd/common/SyspropsMapWrapper$$ExternalSyntheticLambda1;-><init>(Ljava/util/Properties;)V

    .line 182
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 183
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 178
    return-object v1
.end method
