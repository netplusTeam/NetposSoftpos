.class Lorg/HdrHistogram/packedarray/ResizeException;
.super Ljava/lang/Exception;
.source "ResizeException.java"


# instance fields
.field private newSize:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "newSize"    # I

    .line 6
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 7
    iput p1, p0, Lorg/HdrHistogram/packedarray/ResizeException;->newSize:I

    .line 8
    return-void
.end method


# virtual methods
.method getNewSize()I
    .locals 1

    .line 11
    iget v0, p0, Lorg/HdrHistogram/packedarray/ResizeException;->newSize:I

    return v0
.end method
