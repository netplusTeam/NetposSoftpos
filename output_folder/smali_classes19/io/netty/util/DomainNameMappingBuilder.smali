.class public final Lio/netty/util/DomainNameMappingBuilder;
.super Ljava/lang/Object;
.source "DomainNameMappingBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final defaultValue:Ljava/lang/Object;
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


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lio/netty/util/DomainNameMappingBuilder;, "Lio/netty/util/DomainNameMappingBuilder<TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/DomainNameMappingBuilder;->defaultValue:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lio/netty/util/DomainNameMappingBuilder;->map:Ljava/util/Map;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lio/netty/util/DomainNameMappingBuilder;, "Lio/netty/util/DomainNameMappingBuilder<TV;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lio/netty/util/DomainNameMappingBuilder;-><init>(ILjava/lang/Object;)V

    .line 44
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/util/DomainNameMappingBuilder;
    .locals 3
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)",
            "Lio/netty/util/DomainNameMappingBuilder<",
            "TV;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lio/netty/util/DomainNameMappingBuilder;, "Lio/netty/util/DomainNameMappingBuilder<TV;>;"
    .local p2, "output":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lio/netty/util/DomainNameMappingBuilder;->map:Ljava/util/Map;

    const-string v1, "hostname"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "output"

    invoke-static {p2, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-object p0
.end method

.method public build()Lio/netty/util/DomainNameMapping;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/DomainNameMapping<",
            "TV;>;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lio/netty/util/DomainNameMappingBuilder;, "Lio/netty/util/DomainNameMappingBuilder<TV;>;"
    new-instance v0, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;

    iget-object v1, p0, Lio/netty/util/DomainNameMappingBuilder;->defaultValue:Ljava/lang/Object;

    iget-object v2, p0, Lio/netty/util/DomainNameMappingBuilder;->map:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/netty/util/DomainNameMappingBuilder$ImmutableDomainNameMapping;-><init>(Ljava/lang/Object;Ljava/util/Map;Lio/netty/util/DomainNameMappingBuilder$1;)V

    return-object v0
.end method
