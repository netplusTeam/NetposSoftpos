.class public Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
.super Ljava/lang/Object;
.source "CorsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/cors/CorsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    new-instance v0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-direct {v0}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 308
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "origins"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    new-instance v0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 300
    return-void
.end method


# virtual methods
.method public allowCredentials()Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 342
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->allowCredentials()Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 343
    return-object p0
.end method

.method public allowNullOrigin()Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->allowNullOrigin()Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 316
    return-object p0
.end method

.method public varargs allowedRequestHeaders([Ljava/lang/String;)Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .param p1, "headers"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 369
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->allowedRequestHeaders([Ljava/lang/String;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 370
    return-object p0
.end method

.method public varargs allowedRequestMethods([Lio/netty/handler/codec/http/HttpMethod;)Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .param p1, "methods"    # [Lio/netty/handler/codec/http/HttpMethod;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 360
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->allowedRequestMethods([Lio/netty/handler/codec/http/HttpMethod;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 361
    return-object p0
.end method

.method public build()Lio/netty/handler/codec/http/cors/CorsConfig;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 414
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->build()Lio/netty/handler/codec/http/cors/CorsConfig;

    move-result-object v0

    return-object v0
.end method

.method public disable()Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 324
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->disable()Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 325
    return-object p0
.end method

.method public varargs exposeHeaders([Ljava/lang/String;)Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .param p1, "headers"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 333
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->exposeHeaders([Ljava/lang/String;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 334
    return-object p0
.end method

.method public maxAge(J)Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .param p1, "max"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->maxAge(J)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 352
    return-object p0
.end method

.method public noPreflightResponseHeaders()Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 405
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->noPreflightResponseHeaders()Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 406
    return-object p0
.end method

.method public preflightResponseHeader(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lio/netty/handler/codec/http/cors/CorsConfig$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 387
    .local p2, "value":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->preflightResponseHeader(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 388
    return-object p0
.end method

.method public varargs preflightResponseHeader(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 378
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->preflightResponseHeader(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 379
    return-object p0
.end method

.method public preflightResponseHeader(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lio/netty/handler/codec/http/cors/CorsConfig$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 396
    .local p2, "valueGenerator":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->preflightResponseHeader(Ljava/lang/CharSequence;Ljava/util/concurrent/Callable;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 397
    return-object p0
.end method

.method public shortCurcuit()Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 422
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->shortCircuit()Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 423
    return-object p0
.end method
