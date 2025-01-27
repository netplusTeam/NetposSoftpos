.class Ljavassist/bytecode/CodeIterator$Jump32;
.super Ljavassist/bytecode/CodeIterator$Branch;
.source "CodeIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/CodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Jump32"
.end annotation


# instance fields
.field offset:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "p"    # I
    .param p2, "off"    # I

    .line 1492
    invoke-direct {p0, p1}, Ljavassist/bytecode/CodeIterator$Branch;-><init>(I)V

    .line 1493
    iput p2, p0, Ljavassist/bytecode/CodeIterator$Jump32;->offset:I

    .line 1494
    return-void
.end method


# virtual methods
.method shift(IIZ)V
    .locals 2
    .param p1, "where"    # I
    .param p2, "gapLength"    # I
    .param p3, "exclusive"    # Z

    .line 1498
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Jump32;->pos:I

    iget v1, p0, Ljavassist/bytecode/CodeIterator$Jump32;->offset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljavassist/bytecode/CodeIterator$Jump32;->shiftOffset(IIIIZ)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/CodeIterator$Jump32;->offset:I

    .line 1499
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/CodeIterator$Branch;->shift(IIZ)V

    .line 1500
    return-void
.end method

.method write(I[BI[B)I
    .locals 2
    .param p1, "src"    # I
    .param p2, "code"    # [B
    .param p3, "dest"    # I
    .param p4, "newcode"    # [B

    .line 1504
    aget-byte v0, p2, p1

    aput-byte v0, p4, p3

    .line 1505
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Jump32;->offset:I

    add-int/lit8 v1, p3, 0x1

    invoke-static {v0, p4, v1}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 1506
    const/4 v0, 0x5

    return v0
.end method
