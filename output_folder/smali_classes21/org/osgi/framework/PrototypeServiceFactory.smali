.class public interface abstract Lorg/osgi/framework/PrototypeServiceFactory;
.super Ljava/lang/Object;
.source "PrototypeServiceFactory.java"

# interfaces
.implements Lorg/osgi/framework/ServiceFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/osgi/framework/ServiceFactory<",
        "TS;>;"
    }
.end annotation


# virtual methods
.method public abstract getService(Lorg/osgi/framework/Bundle;Lorg/osgi/framework/ServiceRegistration;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/Bundle;",
            "Lorg/osgi/framework/ServiceRegistration<",
            "TS;>;)TS;"
        }
    .end annotation
.end method

.method public abstract ungetService(Lorg/osgi/framework/Bundle;Lorg/osgi/framework/ServiceRegistration;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/Bundle;",
            "Lorg/osgi/framework/ServiceRegistration<",
            "TS;>;TS;)V"
        }
    .end annotation
.end method
