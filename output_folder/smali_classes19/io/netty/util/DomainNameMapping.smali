.class public Lio/netty/util/DomainNameMapping;
.super Ljava/lang/Object;
.source "DomainNameMapping.java"

# interfaces
.implements Lio/netty/util/Mapping;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/util/Mapping<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# instance fields
.field final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation
.end field

.field private final unmodifiableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    .local p0, "this":Lio/netty/util/DomainNameMapping;, "Lio/netty/util/DomainNameMapping<TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-direct {p0, v0, p2}, Lio/netty/util/DomainNameMapping;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    .local p0, "this":Lio/netty/util/DomainNameMapping;, "Lio/netty/util/DomainNameMapping<TV;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lio/netty/util/DomainNameMapping;-><init>(ILjava/lang/Object;)V

    .line 53
    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;TV;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lio/netty/util/DomainNameMapping;, "Lio/netty/util/DomainNameMapping<TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/DomainNameMapping;->defaultValue:Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lio/netty/util/DomainNameMapping;->map:Ljava/util/Map;

    .line 71
    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/netty/util/DomainNameMapping;->unmodifiableMap:Ljava/util/Map;

    .line 73
    return-void
.end method

.method static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "template"    # Ljava/lang/String;
    .param p1, "hostName"    # Ljava/lang/String;

    .line 97
    const-string v0, "*."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    const/4 v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p1, p0, v0}, Lio/netty/util/internal/StringUtil;->commonSuffixOfLength(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    .line 98
    :cond_1
    return v2

    .line 101
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static needsNormalization(Ljava/lang/String;)Z
    .locals 4
    .param p0, "hostname"    # Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 116
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 117
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 118
    .local v2, "c":I
    const/16 v3, 0x7f

    if-le v2, v3, :cond_0

    .line 119
    const/4 v3, 0x1

    return v3

    .line 116
    .end local v2    # "c":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method static normalizeHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "hostname"    # Ljava/lang/String;

    .line 108
    invoke-static {p0}, Lio/netty/util/DomainNameMapping;->needsNormalization(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 111
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/util/DomainNameMapping;
    .locals 3
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

    .line 89
    .local p0, "this":Lio/netty/util/DomainNameMapping;, "Lio/netty/util/DomainNameMapping<TV;>;"
    .local p2, "output":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lio/netty/util/DomainNameMapping;->map:Ljava/util/Map;

    const-string v1, "hostname"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/netty/util/DomainNameMapping;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "output"

    invoke-static {p2, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-object p0
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

    .line 143
    .local p0, "this":Lio/netty/util/DomainNameMapping;, "Lio/netty/util/DomainNameMapping<TV;>;"
    iget-object v0, p0, Lio/netty/util/DomainNameMapping;->unmodifiableMap:Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    .local p0, "this":Lio/netty/util/DomainNameMapping;, "Lio/netty/util/DomainNameMapping<TV;>;"
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/netty/util/DomainNameMapping;->map(Ljava/lang/String;)Ljava/lang/Object;

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

    .line 127
    .local p0, "this":Lio/netty/util/DomainNameMapping;, "Lio/netty/util/DomainNameMapping<TV;>;"
    if-eqz p1, :cond_1

    .line 128
    invoke-static {p1}, Lio/netty/util/DomainNameMapping;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    iget-object v0, p0, Lio/netty/util/DomainNameMapping;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 131
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Lio/netty/util/DomainNameMapping;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 134
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TV;>;"
    :cond_0
    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lio/netty/util/DomainNameMapping;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 148
    .local p0, "this":Lio/netty/util/DomainNameMapping;, "Lio/netty/util/DomainNameMapping<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(default: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/util/DomainNameMapping;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", map: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/util/DomainNameMapping;->map:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
