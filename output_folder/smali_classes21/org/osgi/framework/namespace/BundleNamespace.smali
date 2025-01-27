.class public final Lorg/osgi/framework/namespace/BundleNamespace;
.super Lorg/osgi/framework/namespace/AbstractWiringNamespace;
.source "BundleNamespace.java"


# static fields
.field public static final BUNDLE_NAMESPACE:Ljava/lang/String; = "osgi.wiring.bundle"

.field public static final CAPABILITY_FRAGMENT_ATTACHMENT_DIRECTIVE:Ljava/lang/String; = "fragment-attachment"

.field public static final CAPABILITY_SINGLETON_DIRECTIVE:Ljava/lang/String; = "singleton"

.field public static final REQUIREMENT_EXTENSION_DIRECTIVE:Ljava/lang/String; = "extension"

.field public static final REQUIREMENT_VISIBILITY_DIRECTIVE:Ljava/lang/String; = "visibility"

.field public static final VISIBILITY_PRIVATE:Ljava/lang/String; = "private"

.field public static final VISIBILITY_REEXPORT:Ljava/lang/String; = "reexport"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Lorg/osgi/framework/namespace/AbstractWiringNamespace;-><init>()V

    .line 152
    return-void
.end method
