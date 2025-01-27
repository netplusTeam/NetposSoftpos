.class public interface abstract Lorg/osgi/framework/ServiceReference;
.super Ljava/lang/Object;
.source "ServiceReference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract compareTo(Ljava/lang/Object;)I
.end method

.method public abstract getBundle()Lorg/osgi/framework/Bundle;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getPropertyKeys()[Ljava/lang/String;
.end method

.method public abstract getUsingBundles()[Lorg/osgi/framework/Bundle;
.end method

.method public abstract isAssignableTo(Lorg/osgi/framework/Bundle;Ljava/lang/String;)Z
.end method
