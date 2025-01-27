.class public Ljavassist/util/proxy/DefinePackageHelper;
.super Ljava/lang/Object;
.source "DefinePackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/util/proxy/DefinePackageHelper$JavaOther;,
        Ljavassist/util/proxy/DefinePackageHelper$Java7;,
        Ljavassist/util/proxy/DefinePackageHelper$Java9;,
        Ljavassist/util/proxy/DefinePackageHelper$Helper;
    }
.end annotation


# static fields
.field private static final privileged:Ljavassist/util/proxy/DefinePackageHelper$Helper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 136
    sget v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    const/4 v1, 0x0

    const/16 v2, 0x35

    if-lt v0, v2, :cond_0

    .line 137
    new-instance v0, Ljavassist/util/proxy/DefinePackageHelper$Java9;

    invoke-direct {v0, v1}, Ljavassist/util/proxy/DefinePackageHelper$Java9;-><init>(Ljavassist/util/proxy/DefinePackageHelper$1;)V

    goto :goto_0

    :cond_0
    sget v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    const/16 v2, 0x33

    if-lt v0, v2, :cond_1

    .line 138
    new-instance v0, Ljavassist/util/proxy/DefinePackageHelper$Java7;

    invoke-direct {v0, v1}, Ljavassist/util/proxy/DefinePackageHelper$Java7;-><init>(Ljavassist/util/proxy/DefinePackageHelper$1;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljavassist/util/proxy/DefinePackageHelper$JavaOther;

    invoke-direct {v0, v1}, Ljavassist/util/proxy/DefinePackageHelper$JavaOther;-><init>(Ljavassist/util/proxy/DefinePackageHelper$1;)V

    :goto_0
    sput-object v0, Ljavassist/util/proxy/DefinePackageHelper;->privileged:Ljavassist/util/proxy/DefinePackageHelper$Helper;

    .line 135
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static definePackage(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 10
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 165
    :try_start_0
    sget-object v0, Ljavassist/util/proxy/DefinePackageHelper;->privileged:Ljavassist/util/proxy/DefinePackageHelper$Helper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v9}, Ljavassist/util/proxy/DefinePackageHelper$Helper;->definePackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    nop

    .line 176
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return-void
.end method
