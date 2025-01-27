.class public final Lio/netty/handler/codec/http/cors/CorsConfigBuilder;
.super Ljava/lang/Object;
.source "CorsConfigBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/cors/CorsConfigBuilder$DateValueGenerator;,
        Lio/netty/handler/codec/http/cors/CorsConfigBuilder$ConstantValueGenerator;
    }
.end annotation


# instance fields
.field allowCredentials:Z

.field allowNullOrigin:Z

.field final anyOrigin:Z

.field enabled:Z

.field final exposeHeaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field maxAge:J

.field private noPreflightHeaders:Z

.field final origins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final preflightHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/concurrent/Callable<",
            "*>;>;"
        }
    .end annotation
.end field

.field final requestHeaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final requestMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/netty/handler/codec/http/HttpMethod;",
            ">;"
        }
    .end annotation
.end field

.field shortCircuit:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->enabled:Z

    .line 71
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->exposeHeaders:Ljava/util/Set;

    .line 73
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->requestMethods:Ljava/util/Set;

    .line 74
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->requestHeaders:Ljava/util/Set;

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->preflightHeaders:Ljava/util/Map;

    .line 95
    iput-boolean v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->anyOrigin:Z

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->origins:Ljava/util/Set;

    .line 97
    return-void
.end method

.method varargs constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "origins"    # [Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->enabled:Z

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->exposeHeaders:Ljava/util/Set;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->requestMethods:Ljava/util/Set;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->requestHeaders:Ljava/util/Set;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->preflightHeaders:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->origins:Ljava/util/Set;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->anyOrigin:Z

    .line 87
    return-void
.end method

.method public static forAnyOrigin()Lio/netty/handler/codec/http/cors/CorsConfigBuilder;
    .locals 1

    .line 42
    new-instance v0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-direct {v0}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;-><init>()V

    return-object v0
.end method

.method public static forOrigin(Ljava/lang/String;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;
    .locals 3
    .param p0, "origin"    # Ljava/lang/String;

    .line 51
    const-string v0, "*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-direct {v0}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;-><init>()V

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs forOrigins([Ljava/lang/String;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;
    .locals 1
    .param p0, "origins"    # [Ljava/lang/String;

    .line 63
    new-instance v0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public allowCredentials()Lio/netty/handler/codec/http/cors/CorsConfigBuilder;
    .locals 1

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->allowCredentials:Z

    .line 200
    return-object p0
.end method

.method public allowNullOrigin()Lio/netty/handler/codec/http/cors/CorsConfigBuilder;
    .locals 1

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->allowNullOrigin:Z

    .line 108
    return-object p0
.end method

.method public varargs allowedRequestHeaders([Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;
    .locals 5
    .param p1, "headers"    # [Ljava/lang/CharSequence;

    .line 267
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 268
    .local v2, "header":Ljava/lang/CharSequence;
    iget-object v3, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->requestHeaders:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v2    # "header":Ljava/lang/CharSequence;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_0
    return-object p0
.end method

.method public varargs allowedRequestHeaders([Ljava/lang/String;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;
    .locals 2
    .param p1, "headers"    # [Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->requestHeaders:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 247
    return-object p0
.end method

.method public varargs allowedRequestMethods([Lio/netty/handler/codec/http/HttpMethod;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;
    .locals 2
    .param p1, "methods"    # [Lio/netty/handler/codec/http/HttpMethod;

    .line 225
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->requestMethods:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 226
    return-object p0
.end method

.method public build()Lio/netty/handler/codec/http/cors/CorsConfig;
    .locals 5

    .line 359
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->preflightHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->noPreflightHeaders:Z

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->preflightHeaders:Ljava/util/Map;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->DATE:Lio/netty/util/AsciiString;

    sget-object v2, Lio/netty/handler/codec/http/cors/CorsConfigBuilder$DateValueGenerator;->INSTANCE:Lio/netty/handler/codec/http/cors/CorsConfigBuilder$DateValueGenerator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->preflightHeaders:Ljava/util/Map;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    new-instance v2, Lio/netty/handler/codec/http/cors/CorsConfigBuilder$ConstantValueGenerator;

    const/4 v3, 0x0

    const-string v4, "0"

    invoke-direct {v2, v4, v3}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder$ConstantValueGenerator;-><init>(Ljava/lang/Object;Lio/netty/handler/codec/http/cors/CorsConfigBuilder$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/cors/CorsConfig;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/http/cors/CorsConfig;-><init>(Lio/netty/handler/codec/http/cors/CorsConfigBuilder;)V

    return-object v0
.end method

.method public disable()Lio/netty/handler/codec/http/cors/CorsConfigBuilder;
    .locals 1

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->enabled:Z

    .line 118
    return-object p0
.end method

.method public varargs exposeHeaders([Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;
    .locals 5
    .param p1, "headers"    # [Ljava/lang/CharSequence;

    .line 177
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 178
    .local v2, "header":Ljava/lang/CharSequence;
    iget-object v3, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->exposeHeaders:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v2    # "header":Ljava/lang/CharSequence;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-object p0
.end method

.method public varargs exposeHeaders([Ljava/lang/String;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;
    .locals 2
    .param p1, "headers"    # [Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->exposeHeaders:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 148
    return-object p0
.end method

.method public maxAge(J)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;
    .locals 0
    .param p1, "max"    # J

    .line 213
    iput-wide p1, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->maxAge:J

    .line 214
    return-object p0
.end method

.method public noPreflightResponseHeaders()Lio/netty/handler/codec/http/cors/CorsConfigBuilder;
    .locals 1

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->noPreflightHeaders:Z

    .line 335
    return-object p0
.end method

.method public preflightResponseHeader(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;
    .locals 3
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lio/netty/handler/codec/http/cors/CorsConfigBuilder;"
        }
    .end annotation

    .line 304
    .local p2, "value":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->preflightHeaders:Ljava/util/Map;

    new-instance v1, Lio/netty/handler/codec/http/cors/CorsConfigBuilder$ConstantValueGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder$ConstantValueGenerator;-><init>(Ljava/lang/Object;Lio/netty/handler/codec/http/cors/CorsConfigBuilder$1;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    return-object p0
.end method

.method public preflightResponseHeader(Ljava/lang/CharSequence;Ljava/util/concurrent/Callable;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lio/netty/handler/codec/http/cors/CorsConfigBuilder;"
        }
    .end annotation

    .line 324
    .local p2, "valueGenerator":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->preflightHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    return-object p0
.end method

.method public varargs preflightResponseHeader(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;
    .locals 4
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "values"    # [Ljava/lang/Object;

    .line 284
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->preflightHeaders:Ljava/util/Map;

    new-instance v1, Lio/netty/handler/codec/http/cors/CorsConfigBuilder$ConstantValueGenerator;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder$ConstantValueGenerator;-><init>(Ljava/lang/Object;Lio/netty/handler/codec/http/cors/CorsConfigBuilder$1;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 287
    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->preflightResponseHeader(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 289
    :goto_0
    return-object p0
.end method

.method public shortCircuit()Lio/netty/handler/codec/http/cors/CorsConfigBuilder;
    .locals 1

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->shortCircuit:Z

    .line 350
    return-object p0
.end method
