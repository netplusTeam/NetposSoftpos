.class public interface abstract Lorg/osgi/framework/wiring/BundleCapability;
.super Ljava/lang/Object;
.source "BundleCapability.java"

# interfaces
.implements Lorg/osgi/resource/Capability;


# virtual methods
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

.method public abstract getResource()Lorg/osgi/framework/wiring/BundleRevision;
.end method

.method public abstract getRevision()Lorg/osgi/framework/wiring/BundleRevision;
.end method
