.class final Lio/netty/handler/codec/serialization/WeakReferenceMap;
.super Lio/netty/handler/codec/serialization/ReferenceMap;
.source "WeakReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/handler/codec/serialization/ReferenceMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/ref/Reference<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lio/netty/handler/codec/serialization/WeakReferenceMap;, "Lio/netty/handler/codec/serialization/WeakReferenceMap<TK;TV;>;"
    .local p1, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/lang/ref/Reference<TV;>;>;"
    invoke-direct {p0, p1}, Lio/netty/handler/codec/serialization/ReferenceMap;-><init>(Ljava/util/Map;)V

    .line 26
    return-void
.end method


# virtual methods
.method fold(Ljava/lang/Object;)Ljava/lang/ref/Reference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/lang/ref/Reference<",
            "TV;>;"
        }
    .end annotation

    .line 30
    .local p0, "this":Lio/netty/handler/codec/serialization/WeakReferenceMap;, "Lio/netty/handler/codec/serialization/WeakReferenceMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
