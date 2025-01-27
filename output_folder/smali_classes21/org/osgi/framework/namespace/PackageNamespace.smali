.class public final Lorg/osgi/framework/namespace/PackageNamespace;
.super Lorg/osgi/framework/namespace/AbstractWiringNamespace;
.source "PackageNamespace.java"


# static fields
.field public static final CAPABILITY_BUNDLE_SYMBOLICNAME_ATTRIBUTE:Ljava/lang/String; = "bundle-symbolic-name"

.field public static final CAPABILITY_EXCLUDE_DIRECTIVE:Ljava/lang/String; = "exclude"

.field public static final CAPABILITY_INCLUDE_DIRECTIVE:Ljava/lang/String; = "include"

.field public static final CAPABILITY_VERSION_ATTRIBUTE:Ljava/lang/String; = "version"

.field public static final PACKAGE_NAMESPACE:Ljava/lang/String; = "osgi.wiring.package"

.field public static final RESOLUTION_DYNAMIC:Ljava/lang/String; = "dynamic"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lorg/osgi/framework/namespace/AbstractWiringNamespace;-><init>()V

    .line 111
    return-void
.end method
