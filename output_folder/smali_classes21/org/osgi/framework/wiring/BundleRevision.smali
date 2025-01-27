.class public interface abstract Lorg/osgi/framework/wiring/BundleRevision;
.super Ljava/lang/Object;
.source "BundleRevision.java"

# interfaces
.implements Lorg/osgi/framework/BundleReference;
.implements Lorg/osgi/resource/Resource;


# static fields
.field public static final BUNDLE_NAMESPACE:Ljava/lang/String; = "osgi.wiring.bundle"

.field public static final HOST_NAMESPACE:Ljava/lang/String; = "osgi.wiring.host"

.field public static final PACKAGE_NAMESPACE:Ljava/lang/String; = "osgi.wiring.package"

.field public static final TYPE_FRAGMENT:I = 0x1


# virtual methods
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

.method public abstract getDeclaredCapabilities(Ljava/lang/String;)Ljava/util/List;
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

.method public abstract getDeclaredRequirements(Ljava/lang/String;)Ljava/util/List;
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

.method public abstract getSymbolicName()Ljava/lang/String;
.end method

.method public abstract getTypes()I
.end method

.method public abstract getVersion()Lorg/osgi/framework/Version;
.end method

.method public abstract getWiring()Lorg/osgi/framework/wiring/BundleWiring;
.end method
