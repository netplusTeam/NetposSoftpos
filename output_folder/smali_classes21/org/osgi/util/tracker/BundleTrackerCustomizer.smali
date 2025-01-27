.class public interface abstract Lorg/osgi/util/tracker/BundleTrackerCustomizer;
.super Ljava/lang/Object;
.source "BundleTrackerCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addingBundle(Lorg/osgi/framework/Bundle;Lorg/osgi/framework/BundleEvent;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/Bundle;",
            "Lorg/osgi/framework/BundleEvent;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract modifiedBundle(Lorg/osgi/framework/Bundle;Lorg/osgi/framework/BundleEvent;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/Bundle;",
            "Lorg/osgi/framework/BundleEvent;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract removedBundle(Lorg/osgi/framework/Bundle;Lorg/osgi/framework/BundleEvent;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/Bundle;",
            "Lorg/osgi/framework/BundleEvent;",
            "TT;)V"
        }
    .end annotation
.end method
