.class Ljavassist/util/proxy/DefinePackageHelper$Java7;
.super Ljavassist/util/proxy/DefinePackageHelper$Helper;
.source "DefinePackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/util/proxy/DefinePackageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Java7"
.end annotation


# instance fields
.field private final definePackage:Ljava/lang/invoke/MethodHandle;

.field private final stack:Ljavassist/util/proxy/SecurityActions;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/util/proxy/DefinePackageHelper$Helper;-><init>(Ljavassist/util/proxy/DefinePackageHelper$1;)V

    .line 55
    sget-object v0, Ljavassist/util/proxy/SecurityActions;->stack:Ljavassist/util/proxy/SecurityActions;

    iput-object v0, p0, Ljavassist/util/proxy/DefinePackageHelper$Java7;->stack:Ljavassist/util/proxy/SecurityActions;

    .line 56
    invoke-direct {p0}, Ljavassist/util/proxy/DefinePackageHelper$Java7;->getDefinePackageMethodHandle()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    iput-object v0, p0, Ljavassist/util/proxy/DefinePackageHelper$Java7;->definePackage:Ljava/lang/invoke/MethodHandle;

    return-void
.end method

.method synthetic constructor <init>(Ljavassist/util/proxy/DefinePackageHelper$1;)V
    .locals 0
    .param p1, "x0"    # Ljavassist/util/proxy/DefinePackageHelper$1;

    .line 54
    invoke-direct {p0}, Ljavassist/util/proxy/DefinePackageHelper$Java7;-><init>()V

    return-void
.end method

.method private getDefinePackageMethodHandle()Ljava/lang/invoke/MethodHandle;
    .locals 5

    .line 59
    iget-object v0, p0, Ljavassist/util/proxy/DefinePackageHelper$Java7;->stack:Ljavassist/util/proxy/SecurityActions;

    invoke-virtual {v0}, Ljavassist/util/proxy/SecurityActions;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 62
    :try_start_0
    const-class v0, Ljava/lang/ClassLoader;

    const-string v1, "definePackage"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-class v4, Ljava/net/URL;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljavassist/util/proxy/SecurityActions;->getMethodHandle(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "cannot initialize"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 60
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Access denied for caller."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method definePackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    .locals 3
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

    .line 78
    iget-object v0, p0, Ljavassist/util/proxy/DefinePackageHelper$Java7;->stack:Ljavassist/util/proxy/SecurityActions;

    invoke-virtual {v0}, Ljavassist/util/proxy/SecurityActions;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljavassist/util/proxy/DefinePackageHelper;

    if-ne v0, v1, :cond_2

    .line 81
    :try_start_0
    iget-object v0, p0, Ljavassist/util/proxy/DefinePackageHelper$Java7;->definePackage:Ljava/lang/invoke/MethodHandle;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    const/4 v2, 0x6

    aput-object p7, v1, v2

    const/4 v2, 0x7

    aput-object p8, v1, v2

    const/16 v2, 0x8

    aput-object p9, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Package;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_1

    .line 85
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_0

    .line 87
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0

    .line 85
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 84
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/IllegalArgumentException;

    throw v1

    .line 79
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Access denied for caller."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
