.class final Lio/netty/util/internal/NativeLibraryUtil;
.super Ljava/lang/Object;
.source "NativeLibraryUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "absolute"    # Z

    .line 35
    if-eqz p1, :cond_0

    .line 36
    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    :goto_0
    return-void
.end method
