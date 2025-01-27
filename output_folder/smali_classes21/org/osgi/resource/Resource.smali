.class public interface abstract Lorg/osgi/resource/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getCapabilities(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/osgi/resource/Capability;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequirements(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/osgi/resource/Requirement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method
