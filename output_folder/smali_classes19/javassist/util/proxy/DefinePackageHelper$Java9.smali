.class Ljavassist/util/proxy/DefinePackageHelper$Java9;
.super Ljavassist/util/proxy/DefinePackageHelper$Helper;
.source "DefinePackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/util/proxy/DefinePackageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Java9"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/util/proxy/DefinePackageHelper$Helper;-><init>(Ljavassist/util/proxy/DefinePackageHelper$1;)V

    return-void
.end method

.method synthetic constructor <init>(Ljavassist/util/proxy/DefinePackageHelper$1;)V
    .locals 0
    .param p1, "x0"    # Ljavassist/util/proxy/DefinePackageHelper$1;

    .line 42
    invoke-direct {p0}, Ljavassist/util/proxy/DefinePackageHelper$Java9;-><init>()V

    return-void
.end method


# virtual methods
.method definePackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "specTitle"    # Ljava/lang/String;
    .param p4, "specVersion"    # Ljava/lang/String;
    .param p5, "specVendor"    # Ljava/lang/String;
    .param p6, "implTitle"    # Ljava/lang/String;
    .param p7, "implVersion"    # Ljava/lang/String;
    .param p8, "implVendor"    # Ljava/lang/String;
    .param p9, "sealBase"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "define package has been disabled for jigsaw"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
