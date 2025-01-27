.class public final Lcom/hivemq/client/internal/util/Pow2Util;
.super Ljava/lang/Object;
.source "Pow2Util.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static roundToPowerOf2Bits(I)I
    .locals 1
    .param p0, "value"    # I

    .line 25
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    return v0
.end method
