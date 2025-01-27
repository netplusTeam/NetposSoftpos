.class public final Lorg/jctools/queues/CircularArrayOffsetCalculator;
.super Ljava/lang/Object;
.source "CircularArrayOffsetCalculator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocate(I)[Ljava/lang/Object;
    .locals 1
    .param p0, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)[TE;"
        }
    .end annotation

    .line 14
    new-array v0, p0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static calcElementOffset(JJ)J
    .locals 5
    .param p0, "index"    # J
    .param p2, "mask"    # J

    .line 24
    sget-wide v0, Lorg/jctools/util/UnsafeRefArrayAccess;->REF_ARRAY_BASE:J

    and-long v2, p0, p2

    sget v4, Lorg/jctools/util/UnsafeRefArrayAccess;->REF_ELEMENT_SHIFT:I

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method
