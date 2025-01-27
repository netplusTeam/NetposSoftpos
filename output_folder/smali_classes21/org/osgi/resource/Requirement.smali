.class public interface abstract Lorg/osgi/resource/Requirement;
.super Ljava/lang/Object;
.source "Requirement.java"


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getAttributes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDirectives()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNamespace()Ljava/lang/String;
.end method

.method public abstract getResource()Lorg/osgi/resource/Resource;
.end method

.method public abstract hashCode()I
.end method
