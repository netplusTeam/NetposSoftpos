.class public interface abstract Ljdbm/helper/CachePolicy;
.super Ljava/lang/Object;
.source "CachePolicy.java"


# virtual methods
.method public abstract addListener(Ljdbm/helper/CachePolicyListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract elements()Ljava/util/Enumeration;
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljdbm/helper/CacheEvictionException;
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)V
.end method

.method public abstract removeAll()V
.end method

.method public abstract removeListener(Ljdbm/helper/CachePolicyListener;)V
.end method
