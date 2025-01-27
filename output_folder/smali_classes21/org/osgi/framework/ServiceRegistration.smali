.class public interface abstract Lorg/osgi/framework/ServiceRegistration;
.super Ljava/lang/Object;
.source "ServiceRegistration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getReference()Lorg/osgi/framework/ServiceReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract setProperties(Ljava/util/Dictionary;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Dictionary<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract unregister()V
.end method
