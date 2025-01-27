.class public interface abstract Lorg/osgi/framework/ServiceFactory;
.super Ljava/lang/Object;
.source "ServiceFactory.java"


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
