.class final Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;
.super Lio/netty/util/DomainNameMapping;
.source "DomainNameMappingBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/DomainNameMappingBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmutableDomainNameMapping"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/DomainNameMapping<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final REPR_CONST_PART_LENGTH:I

.field private static final REPR_HEADER:Ljava/lang/String; = "ImmutableDomainNameMapping(default: "

.field private static final REPR_MAP_CLOSING:Ljava/lang/String; = "})"

.field private static final REPR_MAP_OPENING:Ljava/lang/String; = ", map: {"


# instance fields
.field private final domainNamePatterns:[Ljava/lang/String;

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation
.end field

.field private final values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 95
    nop

    .line 96
    const-string v0, "ImmutableDomainNameMapping(default: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ", map: {"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "})"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->REPR_CONST_PART_LENGTH:I

    .line 95
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 104
    .local p0, "this":Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;, "Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping<TV;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TV;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/util/DomainNameMapping;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 106
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 107
    .local v0, "mappings":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;TV;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 108
    .local v1, "numberOfMappings":I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->domainNamePatterns:[Ljava/lang/String;

    .line 109
    new-array v2, v1, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, p0, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->values:[Ljava/lang/Object;

    .line 111
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 112
    .local v2, "mapCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    const/4 v3, 0x0

    .line 113
    .local v3, "index":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 114
    .local v5, "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TV;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, "hostname":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 116
    .local v7, "value":Ljava/lang/Object;, "TV;"
    iget-object v8, p0, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->domainNamePatterns:[Ljava/lang/String;

    aput-object v6, v8, v3

    .line 117
    iget-object v8, p0, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->values:[Ljava/lang/Object;

    aput-object v7, v8, v3

    .line 118
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    nop

    .end local v5    # "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TV;>;"
    .end local v6    # "hostname":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v3, v3, 0x1

    .line 120
    goto :goto_0

    .line 122
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->map:Ljava/util/Map;

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/util/Map;Lio/netty/util/DomainNameMappingBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Lio/netty/util/DomainNameMappingBuilder$1;

    .line 91
    .local p0, "this":Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;, "Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping<TV;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;-><init>(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method private appendMapping(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "mappingIndex"    # I

    .line 197
    .local p0, "this":Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;, "Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping<TV;>;"
    iget-object v0, p0, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->domainNamePatterns:[Ljava/lang/String;

    aget-object v0, v0, p2

    iget-object v1, p0, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->values:[Ljava/lang/Object;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->appendMapping(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static appendMapping(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "domainNamePattern"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 201
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static estimateBufferSize(III)I
    .locals 5
    .param p0, "defaultValueLength"    # I
    .param p1, "numberOfMappings"    # I
    .param p2, "estimatedMappingLength"    # I

    .line 192
    sget v0, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->REPR_CONST_PART_LENGTH:I

    add-int/2addr v0, p0

    mul-int v1, p2, p1

    int-to-double v1, v1

    const-wide v3, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/util/DomainNameMapping;
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)",
            "Lio/netty/util/DomainNameMapping<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    .local p0, "this":Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;, "Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping<TV;>;"
    .local p2, "output":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Immutable DomainNameMapping does not support modification after initial creation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;, "Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping<TV;>;"
    iget-object v0, p0, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->map:Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    .local p0, "this":Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;, "Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping<TV;>;"
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->map(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public map(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;, "Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping<TV;>;"
    if-eqz p1, :cond_1

    .line 135
    invoke-static {p1}, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->domainNamePatterns:[Ljava/lang/String;

    array-length v0, v0

    .line 138
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 139
    iget-object v2, p0, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->domainNamePatterns:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2, p1}, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    return-object v2

    .line 138
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "length":I
    .end local v1    # "index":I
    :cond_1
    iget-object v0, p0, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 155
    .local p0, "this":Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;, "Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping<TV;>;"
    iget-object v0, p0, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "defaultValueStr":Ljava/lang/String;
    iget-object v1, p0, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->domainNamePatterns:[Ljava/lang/String;

    array-length v2, v1

    .line 158
    .local v2, "numberOfMappings":I
    const-string v3, "})"

    const-string v4, ", map: {"

    const-string v5, "ImmutableDomainNameMapping(default: "

    if-nez v2, :cond_0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 162
    :cond_0
    const/4 v6, 0x0

    aget-object v1, v1, v6

    .line 163
    .local v1, "pattern0":Ljava/lang/String;
    iget-object v7, p0, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->values:[Ljava/lang/Object;

    aget-object v6, v7, v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, "value0":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x3

    .line 165
    .local v7, "oneMappingLength":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8, v2, v7}, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->estimateBufferSize(III)I

    move-result v8

    .line 167
    .local v8, "estimatedBufferSize":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 168
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 170
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-static {v4, v1, v6}, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->appendMapping(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const/4 v5, 0x1

    .local v5, "index":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 172
    const-string v9, ", "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-direct {p0, v4, v5}, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;->appendMapping(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 171
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 176
    .end local v5    # "index":I
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
