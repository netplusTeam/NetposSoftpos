.class public final Lorg/jctools/queues/PaddedCircularArrayOffsetCalculator;
.super Ljava/lang/Object;
.source "PaddedCircularArrayOffsetCalculator.java"


# static fields
.field static final REF_ARRAY_BASE:J

.field static final REF_BUFFER_PAD:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    sget v0, Lorg/jctools/util/PortableJvmInfo;->CACHE_LINE_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lorg/jctools/util/UnsafeRefArrayAccess;->REF_ELEMENT_SHIFT:I

    shr-int/2addr v0, v1

    sput v0, Lorg/jctools/queues/PaddedCircularArrayOffsetCalculator;->REF_BUFFER_PAD:I

    .line 18
    sget v1, Lorg/jctools/util/UnsafeRefArrayAccess;->REF_ELEMENT_SHIFT:I

    shl-int/2addr v0, v1

    .line 19
    .local v0, "paddingOffset":I
    sget-wide v1, Lorg/jctools/util/UnsafeRefArrayAccess;->REF_ARRAY_BASE:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    sput-wide v1, Lorg/jctools/queues/PaddedCircularArrayOffsetCalculator;->REF_ARRAY_BASE:J

    .line 20
    .end local v0    # "paddingOffset":I
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
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

    .line 25
    sget v0, Lorg/jctools/queues/PaddedCircularArrayOffsetCalculator;->REF_BUFFER_PAD:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method protected static calcElementOffset(JJ)J
    .locals 5
    .param p0, "index"    # J
    .param p2, "mask"    # J

    .line 35
    sget-wide v0, Lorg/jctools/queues/PaddedCircularArrayOffsetCalculator;->REF_ARRAY_BASE:J

    and-long v2, p0, p2

    sget v4, Lorg/jctools/util/UnsafeRefArrayAccess;->REF_ELEMENT_SHIFT:I

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method
