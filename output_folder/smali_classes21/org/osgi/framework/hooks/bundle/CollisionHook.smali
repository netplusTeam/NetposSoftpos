.class public interface abstract Lorg/osgi/framework/hooks/bundle/CollisionHook;
.super Ljava/lang/Object;
.source "CollisionHook.java"


# static fields
.field public static final INSTALLING:I = 0x1

.field public static final UPDATING:I = 0x2


# virtual methods
.method public abstract filterCollisions(ILorg/osgi/framework/Bundle;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/osgi/framework/Bundle;",
            "Ljava/util/Collection<",
            "Lorg/osgi/framework/Bundle;",
            ">;)V"
        }
    .end annotation
.end method
