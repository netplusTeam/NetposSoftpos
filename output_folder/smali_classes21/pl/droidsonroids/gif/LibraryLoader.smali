.class public Lpl/droidsonroids/gif/LibraryLoader;
.super Ljava/lang/Object;
.source "LibraryLoader.java"


# static fields
.field private static final BASE_LIBRARY_NAME:Ljava/lang/String; = "pl_droidsonroids_gif"

.field private static sAppContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .locals 4

    .line 35
    sget-object v0, Lpl/droidsonroids/gif/LibraryLoader;->sAppContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 38
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 40
    .local v0, "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "currentApplication"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 41
    .local v1, "currentApplicationMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    sput-object v2, Lpl/droidsonroids/gif/LibraryLoader;->sAppContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0    # "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "currentApplicationMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "LibraryLoader not initialized. Call LibraryLoader.initialize() before using library classes."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v0, Lpl/droidsonroids/gif/LibraryLoader;->sAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lpl/droidsonroids/gif/LibraryLoader;->sAppContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static loadLibrary()V
    .locals 3

    .line 51
    const-string v0, "pl_droidsonroids_gif"

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-static {}, Lpl/droidsonroids/gif/LibraryLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lpl/droidsonroids/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method
