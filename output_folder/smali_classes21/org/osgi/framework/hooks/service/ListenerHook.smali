.class public interface abstract Lorg/osgi/framework/hooks/service/ListenerHook;
.super Ljava/lang/Object;
.source "ListenerHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osgi/framework/hooks/service/ListenerHook$ListenerInfo;
    }
.end annotation


# virtual methods
.method public abstract added(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/osgi/framework/hooks/service/ListenerHook$ListenerInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removed(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/osgi/framework/hooks/service/ListenerHook$ListenerInfo;",
            ">;)V"
        }
    .end annotation
.end method
