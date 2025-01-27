.class public interface abstract Lorg/osgi/util/tracker/ServiceTrackerCustomizer;
.super Ljava/lang/Object;
.source "ServiceTrackerCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addingService(Lorg/osgi/framework/ServiceReference;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;)TT;"
        }
    .end annotation
.end method

.method public abstract modifiedService(Lorg/osgi/framework/ServiceReference;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract removedService(Lorg/osgi/framework/ServiceReference;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;TT;)V"
        }
    .end annotation
.end method
