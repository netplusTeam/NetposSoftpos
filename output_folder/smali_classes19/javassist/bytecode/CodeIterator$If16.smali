.class Ljavassist/bytecode/CodeIterator$If16;
.super Ljavassist/bytecode/CodeIterator$Branch16;
.source "CodeIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/CodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "If16"
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "p"    # I
    .param p2, "off"    # I

    .line 1460
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/CodeIterator$Branch16;-><init>(II)V

    .line 1461
    return-void
.end method


# virtual methods
.method deltaSize()I
    .locals 2

    .line 1465
    iget v0, p0, Ljavassist/bytecode/CodeIterator$If16;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method opcode(I)I
    .locals 2
    .param p1, "op"    # I

    .line 1478
    const/16 v0, 0xc7

    const/16 v1, 0xc6

    if-ne p1, v1, :cond_0

    .line 1479
    return v0

    .line 1480
    :cond_0
    if-ne p1, v0, :cond_1

    .line 1481
    return v1

    .line 1482
    :cond_1
    add-int/lit16 v0, p1, -0x99

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 1483
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 1484
    :cond_2
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method write32(I[BI[B)V
    .locals 2
    .param p1, "src"    # I
    .param p2, "code"    # [B
    .param p3, "dest"    # I
    .param p4, "newcode"    # [B

    .line 1470
    aget-byte v0, p2, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljavassist/bytecode/CodeIterator$If16;->opcode(I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p4, p3

    .line 1471
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    aput-byte v1, p4, v0

    .line 1472
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x8

    aput-byte v1, p4, v0

    .line 1473
    add-int/lit8 v0, p3, 0x3

    const/16 v1, -0x38

    aput-byte v1, p4, v0

    .line 1474
    iget v0, p0, Ljavassist/bytecode/CodeIterator$If16;->offset:I

    add-int/lit8 v0, v0, -0x3

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p4, v1}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 1475
    return-void
.end method
