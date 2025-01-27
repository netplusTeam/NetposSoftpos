.class public interface abstract Lorg/osgi/framework/wiring/BundleWire;
.super Ljava/lang/Object;
.source "BundleWire.java"

# interfaces
.implements Lorg/osgi/resource/Wire;


# virtual methods
.method public abstract getCapability()Lorg/osgi/framework/wiring/BundleCapability;
.end method

.method public abstract getProvider()Lorg/osgi/framework/wiring/BundleRevision;
.end method

.method public abstract getProviderWiring()Lorg/osgi/framework/wiring/BundleWiring;
.end method

.method public abstract getRequirement()Lorg/osgi/framework/wiring/BundleRequirement;
.end method

.method public abstract getRequirer()Lorg/osgi/framework/wiring/BundleRevision;
.end method

.method public abstract getRequirerWiring()Lorg/osgi/framework/wiring/BundleWiring;
.end method
