.class public interface abstract Lorg/jpos/space/LocalSpace;
.super Ljava/lang/Object;
.source "LocalSpace.java"

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


# virtual methods
.method public abstract addListener(Ljava/lang/Object;Lorg/jpos/space/SpaceListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/jpos/space/SpaceListener<",
            "TK;TV;>;)V"
        }
    .end annotation
.end method

.method public abstract addListener(Ljava/lang/Object;Lorg/jpos/space/SpaceListener;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/jpos/space/SpaceListener<",
            "TK;TV;>;J)V"
        }
    .end annotation
.end method

.method public abstract getKeySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end method

.method public abstract removeListener(Ljava/lang/Object;Lorg/jpos/space/SpaceListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/jpos/space/SpaceListener<",
            "TK;TV;>;)V"
        }
    .end annotation
.end method

.method public abstract size(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation
.end method
