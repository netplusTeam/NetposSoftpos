.class Ljavassist/util/proxy/DefinePackageHelper$JavaOther;
.super Ljavassist/util/proxy/DefinePackageHelper$Helper;
.source "DefinePackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/util/proxy/DefinePackageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JavaOther"
.end annotation


# instance fields
.field private final definePackage:Ljava/lang/reflect/Method;

.field private final stack:Ljavassist/util/proxy/SecurityActions;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/util/proxy/DefinePackageHelper$Helper;-><init>(Ljavassist/util/proxy/DefinePackageHelper$1;)V

    .line 92
    sget-object v0, Ljavassist/util/proxy/SecurityActions;->stack:Ljavassist/util/proxy/SecurityActions;

    iput-object v0, p0, Ljavassist/util/proxy/DefinePackageHelper$JavaOther;->stack:Ljavassist/util/proxy/SecurityActions;

    .line 93
    invoke-direct {p0}, Ljavassist/util/proxy/DefinePackageHelper$JavaOther;->getDefinePackageMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ljavassist/util/proxy/DefinePackageHelper$JavaOther;->definePackage:Ljava/lang/reflect/Method;

    return-void
.end method

.method synthetic constructor <init>(Ljavassist/util/proxy/DefinePackageHelper$1;)V
    .locals 0
    .param p1, "x0"    # Ljavassist/util/proxy/DefinePackageHelper$1;

    .line 91
    invoke-direct {p0}, Ljavassist/util/proxy/DefinePackageHelper$JavaOther;-><init>()V

    return-void
.end method

.method private getDefinePackageMethod()Ljava/lang/reflect/Method;
    .locals 5

    .line 96
    iget-object v0, p0, Ljavassist/util/proxy/DefinePackageHelper$JavaOther;->stack:Ljavassist/util/proxy/SecurityActions;

    invoke-virtual {v0}, Ljavassist/util/proxy/SecurityActions;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 99
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

    invoke-static {v0, v1, v2}, Ljavassist/util/proxy/SecurityActions;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "cannot initialize"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 97
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Access denied for caller."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method definePackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    .locals 4
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

    .line 115
    iget-object v0, p0, Ljavassist/util/proxy/DefinePackageHelper$JavaOther;->stack:Ljavassist/util/proxy/SecurityActions;

    invoke-virtual {v0}, Ljavassist/util/proxy/SecurityActions;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljavassist/util/proxy/DefinePackageHelper;

    if-ne v0, v1, :cond_3

    .line 118
    :try_start_0
    iget-object v0, p0, Ljavassist/util/proxy/DefinePackageHelper$JavaOther;->definePackage:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 119
    iget-object v0, p0, Ljavassist/util/proxy/DefinePackageHelper$JavaOther;->definePackage:Ljava/lang/reflect/Method;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    aput-object p3, v2, v1

    const/4 v1, 0x2

    aput-object p4, v2, v1

    const/4 v1, 0x3

    aput-object p5, v2, v1

    const/4 v1, 0x4

    aput-object p6, v2, v1

    const/4 v1, 0x5

    aput-object p7, v2, v1

    const/4 v1, 0x6

    aput-object p8, v2, v1

    const/4 v1, 0x7

    aput-object p9, v2, v1

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Package;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_1

    .line 125
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 126
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/IllegalArgumentException;

    if-nez v2, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/lang/IllegalArgumentException;

    throw v2

    .line 129
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    .line 131
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0

    .line 129
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 116
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Access denied for caller."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
