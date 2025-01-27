.class public final Lcom/hivemq/client/internal/util/UnsignedDataTypes;
.super Ljava/lang/Object;
.source "UnsignedDataTypes.java"


# static fields
.field public static final UNSIGNED_INT_MAX_VALUE:J = 0xffffffffL

.field public static final UNSIGNED_SHORT_MAX_VALUE:I = 0xffff


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUnsignedInt(J)Z
    .locals 2
    .param p0, "value"    # J

    .line 32
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUnsignedShort(J)Z
    .locals 2
    .param p0, "value"    # J

    .line 28
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0xffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
