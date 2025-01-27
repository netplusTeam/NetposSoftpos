.class final Lio/netty/handler/codec/http/cors/CorsConfigBuilder$ConstantValueGenerator;
.super Ljava/lang/Object;
.source "CorsConfigBuilder.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/cors/CorsConfigBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConstantValueGenerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    if-eqz p1, :cond_0

    .line 384
    iput-object p1, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder$ConstantValueGenerator;->value:Ljava/lang/Object;

    .line 385
    return-void

    .line 382
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lio/netty/handler/codec/http/cors/CorsConfigBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lio/netty/handler/codec/http/cors/CorsConfigBuilder$1;

    .line 371
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder$ConstantValueGenerator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    .line 389
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder$ConstantValueGenerator;->value:Ljava/lang/Object;

    return-object v0
.end method
