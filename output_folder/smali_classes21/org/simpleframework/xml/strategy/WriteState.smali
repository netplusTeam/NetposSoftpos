.class Lorg/simpleframework/xml/strategy/WriteState;
.super Lorg/simpleframework/xml/util/WeakCache;
.source "WriteState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/xml/util/WeakCache<",
        "Lorg/simpleframework/xml/strategy/WriteGraph;",
        ">;"
    }
.end annotation


# instance fields
.field private contract:Lorg/simpleframework/xml/strategy/Contract;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Contract;)V
    .locals 0
    .param p1, "contract"    # Lorg/simpleframework/xml/strategy/Contract;

    .line 51
    invoke-direct {p0}, Lorg/simpleframework/xml/util/WeakCache;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/simpleframework/xml/strategy/WriteState;->contract:Lorg/simpleframework/xml/strategy/Contract;

    .line 53
    return-void
.end method


# virtual methods
.method public find(Ljava/lang/Object;)Lorg/simpleframework/xml/strategy/WriteGraph;
    .locals 3
    .param p1, "map"    # Ljava/lang/Object;

    .line 66
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/strategy/WriteState;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/strategy/WriteGraph;

    .line 68
    .local v0, "write":Lorg/simpleframework/xml/strategy/WriteGraph;
    if-nez v0, :cond_0

    .line 69
    new-instance v1, Lorg/simpleframework/xml/strategy/WriteGraph;

    iget-object v2, p0, Lorg/simpleframework/xml/strategy/WriteState;->contract:Lorg/simpleframework/xml/strategy/Contract;

    invoke-direct {v1, v2}, Lorg/simpleframework/xml/strategy/WriteGraph;-><init>(Lorg/simpleframework/xml/strategy/Contract;)V

    move-object v0, v1

    .line 70
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/strategy/WriteState;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    :cond_0
    return-object v0
.end method
