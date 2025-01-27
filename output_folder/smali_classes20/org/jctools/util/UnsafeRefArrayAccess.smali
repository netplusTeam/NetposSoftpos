.class public final Lorg/jctools/util/UnsafeRefArrayAccess;
.super Ljava/lang/Object;
.source "UnsafeRefArrayAccess.java"


# static fields
.field public static final REF_ARRAY_BASE:J

.field public static final REF_ELEMENT_SHIFT:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 41
    .local v0, "scale":I
    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    .line 43
    const/4 v1, 0x2

    sput v1, Lorg/jctools/util/UnsafeRefArrayAccess;->REF_ELEMENT_SHIFT:I

    goto :goto_0

    .line 45
    :cond_0
    const/16 v1, 0x8

    if-ne v1, v0, :cond_1

    .line 47
    const/4 v1, 0x3

    sput v1, Lorg/jctools/util/UnsafeRefArrayAccess;->REF_ELEMENT_SHIFT:I

    .line 53
    :goto_0
    sget-object v1, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lorg/jctools/util/UnsafeRefArrayAccess;->REF_ARRAY_BASE:J

    .line 54
    .end local v0    # "scale":I
    return-void

    .line 51
    .restart local v0    # "scale":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown pointer size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcElementOffset(J)J
    .locals 4
    .param p0, "index"    # J

    .line 112
    sget-wide v0, Lorg/jctools/util/UnsafeRefArrayAccess;->REF_ARRAY_BASE:J

    sget v2, Lorg/jctools/util/UnsafeRefArrayAccess;->REF_ELEMENT_SHIFT:I

    shl-long v2, p0, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static lpElement([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;J)TE;"
        }
    .end annotation

    .line 90
    .local p0, "buffer":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static lvElement([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;J)TE;"
        }
    .end annotation

    .line 103
    .local p0, "buffer":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static soElement([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;JTE;)V"
        }
    .end annotation

    .line 77
    .local p0, "buffer":[Ljava/lang/Object;, "[TE;"
    .local p3, "e":Ljava/lang/Object;, "TE;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 78
    return-void
.end method

.method public static spElement([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;JTE;)V"
        }
    .end annotation

    .line 65
    .local p0, "buffer":[Ljava/lang/Object;, "[TE;"
    .local p3, "e":Ljava/lang/Object;, "TE;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 66
    return-void
.end method
