.class abstract Ljavassist/util/proxy/DefinePackageHelper$Helper;
.super Ljava/lang/Object;
.source "DefinePackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/util/proxy/DefinePackageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Helper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavassist/util/proxy/DefinePackageHelper$1;)V
    .locals 0
    .param p1, "x0"    # Ljavassist/util/proxy/DefinePackageHelper$1;

    .line 35
    invoke-direct {p0}, Ljavassist/util/proxy/DefinePackageHelper$Helper;-><init>()V

    return-void
.end method


# virtual methods
.method abstract definePackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
