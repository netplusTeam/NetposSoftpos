.class public interface abstract Lorg/osgi/framework/wiring/BundleWiring;
.super Ljava/lang/Object;
.source "BundleWiring.java"

# interfaces
.implements Lorg/osgi/framework/BundleReference;
.implements Lorg/osgi/resource/Wiring;


# static fields
.field public static final FINDENTRIES_RECURSE:I = 0x1

.field public static final LISTRESOURCES_LOCAL:I = 0x2

.field public static final LISTRESOURCES_RECURSE:I = 0x1


# virtual methods
.method public abstract findEntries(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCapabilities(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/osgi/framework/wiring/BundleCapability;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClassLoader()Ljava/lang/ClassLoader;
.end method

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

.method public abstract getProvidedWires(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/osgi/framework/wiring/BundleWire;",
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

.method public abstract getRequiredWires(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/osgi/framework/wiring/BundleWire;",
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
            "Lorg/osgi/framework/wiring/BundleRequirement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResource()Lorg/osgi/framework/wiring/BundleRevision;
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

.method public abstract getRevision()Lorg/osgi/framework/wiring/BundleRevision;
.end method

.method public abstract isCurrent()Z
.end method

.method public abstract isInUse()Z
.end method

.method public abstract listResources(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
