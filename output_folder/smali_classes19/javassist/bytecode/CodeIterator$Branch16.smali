.class abstract Ljavassist/bytecode/CodeIterator$Branch16;
.super Ljavassist/bytecode/CodeIterator$Branch;
.source "CodeIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/CodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Branch16"
.end annotation


# static fields
.field static final BIT16:I = 0x0

.field static final BIT32:I = 0x2

.field static final EXPAND:I = 0x1


# instance fields
.field offset:I

.field state:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "p"    # I
    .param p2, "off"    # I

    .line 1399
    invoke-direct {p0, p1}, Ljavassist/bytecode/CodeIterator$Branch;-><init>(I)V

    .line 1400
    iput p2, p0, Ljavassist/bytecode/CodeIterator$Branch16;->offset:I

    .line 1401
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/CodeIterator$Branch16;->state:I

    .line 1402
    return-void
.end method


# virtual methods
.method abstract deltaSize()I
.end method

.method expanded()Z
    .locals 2

    .line 1415
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Branch16;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1416
    const/4 v0, 0x2

    iput v0, p0, Ljavassist/bytecode/CodeIterator$Branch16;->state:I

    .line 1417
    return v1

    .line 1419
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method shift(IIZ)V
    .locals 2
    .param p1, "where"    # I
    .param p2, "gapLength"    # I
    .param p3, "exclusive"    # Z

    .line 1406
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Branch16;->pos:I

    iget v1, p0, Ljavassist/bytecode/CodeIterator$Branch16;->offset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljavassist/bytecode/CodeIterator$Branch16;->shiftOffset(IIIIZ)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/CodeIterator$Branch16;->offset:I

    .line 1407
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/CodeIterator$Branch;->shift(IIZ)V

    .line 1408
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Branch16;->state:I

    if-nez v0, :cond_1

    .line 1409
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Branch16;->offset:I

    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_1

    .line 1410
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Ljavassist/bytecode/CodeIterator$Branch16;->state:I

    .line 1411
    :cond_1
    return-void
.end method

.method write(I[BI[B)I
    .locals 2
    .param p1, "src"    # I
    .param p2, "code"    # [B
    .param p3, "dest"    # I
    .param p4, "newcode"    # [B

    .line 1428
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Branch16;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1429
    invoke-virtual {p0, p1, p2, p3, p4}, Ljavassist/bytecode/CodeIterator$Branch16;->write32(I[BI[B)V

    goto :goto_0

    .line 1431
    :cond_0
    aget-byte v0, p2, p1

    aput-byte v0, p4, p3

    .line 1432
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Branch16;->offset:I

    add-int/lit8 v1, p3, 0x1

    invoke-static {v0, p4, v1}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 1435
    :goto_0
    const/4 v0, 0x3

    return v0
.end method

.method abstract write32(I[BI[B)V
.end method
