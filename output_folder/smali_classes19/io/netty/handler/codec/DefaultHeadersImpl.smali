.class public final Lio/netty/handler/codec/DefaultHeadersImpl;
.super Lio/netty/handler/codec/DefaultHeaders;
.source "DefaultHeadersImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/handler/codec/DefaultHeaders<",
        "TK;TV;",
        "Lio/netty/handler/codec/DefaultHeadersImpl<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/HashingStrategy<",
            "TK;>;",
            "Lio/netty/handler/codec/ValueConverter<",
            "TV;>;",
            "Lio/netty/handler/codec/DefaultHeaders$NameValidator<",
            "TK;>;)V"
        }
    .end annotation

    .line 27
    .local p0, "this":Lio/netty/handler/codec/DefaultHeadersImpl;, "Lio/netty/handler/codec/DefaultHeadersImpl<TK;TV;>;"
    .local p1, "nameHashingStrategy":Lio/netty/util/HashingStrategy;, "Lio/netty/util/HashingStrategy<TK;>;"
    .local p2, "valueConverter":Lio/netty/handler/codec/ValueConverter;, "Lio/netty/handler/codec/ValueConverter<TV;>;"
    .local p3, "nameValidator":Lio/netty/handler/codec/DefaultHeaders$NameValidator;, "Lio/netty/handler/codec/DefaultHeaders$NameValidator<TK;>;"
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/DefaultHeaders;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;)V

    .line 28
    return-void
.end method
