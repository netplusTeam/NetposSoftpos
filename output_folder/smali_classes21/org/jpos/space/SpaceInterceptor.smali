.class public Lorg/jpos/space/SpaceInterceptor;
.super Ljava/lang/Object;
.source "SpaceInterceptor.java"

# interfaces
.implements Lorg/jpos/space/Space;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jpos/space/Space<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field protected sp:Lorg/jpos/space/Space;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jpos/space/Space<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jpos/space/Space;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/space/Space<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lorg/jpos/space/SpaceInterceptor;, "Lorg/jpos/space/SpaceInterceptor<TK;TV;>;"
    .local p1, "sp":Lorg/jpos/space/Space;, "Lorg/jpos/space/Space<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/jpos/space/SpaceInterceptor;->sp:Lorg/jpos/space/Space;

    .line 32
    return-void
.end method


# virtual methods
.method public existAny([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)Z"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/jpos/space/SpaceInterceptor;, "Lorg/jpos/space/SpaceInterceptor<TK;TV;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    iget-object v0, p0, Lorg/jpos/space/SpaceInterceptor;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1}, Lorg/jpos/space/Space;->existAny([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public existAny([Ljava/lang/Object;J)Z
    .locals 1
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;J)Z"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/jpos/space/SpaceInterceptor;, "Lorg/jpos/space/SpaceInterceptor<TK;TV;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    iget-object v0, p0, Lorg/jpos/space/SpaceInterceptor;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1, p2, p3}, Lorg/jpos/space/Space;->existAny([Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public in(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/jpos/space/SpaceInterceptor;, "Lorg/jpos/space/SpaceInterceptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/jpos/space/SpaceInterceptor;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public in(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TV;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/jpos/space/SpaceInterceptor;, "Lorg/jpos/space/SpaceInterceptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/jpos/space/SpaceInterceptor;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1, p2, p3}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inp(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/jpos/space/SpaceInterceptor;, "Lorg/jpos/space/SpaceInterceptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/jpos/space/SpaceInterceptor;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1}, Lorg/jpos/space/Space;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nrd(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TV;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/jpos/space/SpaceInterceptor;, "Lorg/jpos/space/SpaceInterceptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/jpos/space/SpaceInterceptor;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1, p2, p3}, Lorg/jpos/space/Space;->nrd(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nrd(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/jpos/space/SpaceInterceptor;, "Lorg/jpos/space/SpaceInterceptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/jpos/space/SpaceInterceptor;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1}, Lorg/jpos/space/Space;->nrd(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public out(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lorg/jpos/space/SpaceInterceptor;, "Lorg/jpos/space/SpaceInterceptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/jpos/space/SpaceInterceptor;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1, p2}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public out(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lorg/jpos/space/SpaceInterceptor;, "Lorg/jpos/space/SpaceInterceptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/jpos/space/SpaceInterceptor;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 38
    return-void
.end method

.method public push(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/jpos/space/SpaceInterceptor;, "Lorg/jpos/space/SpaceInterceptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/jpos/space/SpaceInterceptor;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1, p2}, Lorg/jpos/space/Space;->push(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public push(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/jpos/space/SpaceInterceptor;, "Lorg/jpos/space/SpaceInterceptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/jpos/space/SpaceInterceptor;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jpos/space/Space;->push(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 44
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/jpos/space/SpaceInterceptor;, "Lorg/jpos/space/SpaceInterceptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/jpos/space/SpaceInterceptor;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1, p2}, Lorg/jpos/space/Space;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lorg/jpos/space/SpaceInterceptor;, "Lorg/jpos/space/SpaceInterceptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/jpos/space/SpaceInterceptor;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jpos/space/Space;->put(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 50
    return-void
.end method

.method public rd(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/jpos/space/SpaceInterceptor;, "Lorg/jpos/space/SpaceInterceptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/jpos/space/SpaceInterceptor;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1}, Lorg/jpos/space/Space;->rd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public rd(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TV;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lorg/jpos/space/SpaceInterceptor;, "Lorg/jpos/space/SpaceInterceptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/jpos/space/SpaceInterceptor;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1, p2, p3}, Lorg/jpos/space/Space;->rd(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public rdp(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/jpos/space/SpaceInterceptor;, "Lorg/jpos/space/SpaceInterceptor<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/jpos/space/SpaceInterceptor;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1}, Lorg/jpos/space/Space;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
