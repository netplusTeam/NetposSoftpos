.class public interface abstract Lorg/osgi/resource/Wiring;
.super Ljava/lang/Object;
.source "Wiring.java"


# virtual methods
.method public abstract getProvidedResourceWires(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/osgi/resource/Wire;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequiredResourceWires(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/osgi/resource/Wire;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResource()Lorg/osgi/resource/Resource;
.end method

.method public abstract getResourceCapabilities(Ljava/lang/String;)Ljava/util/List;
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

.method public abstract getResourceRequirements(Ljava/lang/String;)Ljava/util/List;
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
