.class public final Lcom/itextpdf/io/util/ExceptionUtil;
.super Ljava/lang/Object;
.source "ExceptionUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static isOutOfRange(Ljava/lang/Exception;)Z
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .line 55
    instance-of v0, p0, Ljava/lang/IndexOutOfBoundsException;

    return v0
.end method
