.class public interface abstract Lorg/osgi/framework/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract match(Ljava/util/Dictionary;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Dictionary<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract match(Lorg/osgi/framework/ServiceReference;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/ServiceReference<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract matchCase(Ljava/util/Dictionary;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Dictionary<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract matches(Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
