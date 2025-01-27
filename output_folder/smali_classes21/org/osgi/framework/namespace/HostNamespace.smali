.class public final Lorg/osgi/framework/namespace/HostNamespace;
.super Lorg/osgi/framework/namespace/AbstractWiringNamespace;
.source "HostNamespace.java"


# static fields
.field public static final CAPABILITY_FRAGMENT_ATTACHMENT_DIRECTIVE:Ljava/lang/String; = "fragment-attachment"

.field public static final CAPABILITY_SINGLETON_DIRECTIVE:Ljava/lang/String; = "singleton"

.field public static final EXTENSION_BOOTCLASSPATH:Ljava/lang/String; = "bootclasspath"

.field public static final EXTENSION_FRAMEWORK:Ljava/lang/String; = "framework"

.field public static final FRAGMENT_ATTACHMENT_ALWAYS:Ljava/lang/String; = "always"

.field public static final FRAGMENT_ATTACHMENT_NEVER:Ljava/lang/String; = "never"

.field public static final FRAGMENT_ATTACHMENT_RESOLVETIME:Ljava/lang/String; = "resolve-time"

.field public static final HOST_NAMESPACE:Ljava/lang/String; = "osgi.wiring.host"

.field public static final REQUIREMENT_EXTENSION_DIRECTIVE:Ljava/lang/String; = "extension"

.field public static final REQUIREMENT_VISIBILITY_DIRECTIVE:Ljava/lang/String; = "visibility"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Lorg/osgi/framework/namespace/AbstractWiringNamespace;-><init>()V

    .line 173
    return-void
.end method
