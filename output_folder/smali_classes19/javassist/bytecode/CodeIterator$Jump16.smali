.class Ljavassist/bytecode/CodeIterator$Jump16;
.super Ljavassist/bytecode/CodeIterator$Branch16;
.source "CodeIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/CodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Jump16"
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "p"    # I
    .param p2, "off"    # I

    .line 1442
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/CodeIterator$Branch16;-><init>(II)V

    .line 1443
    return-void
.end method


# virtual methods
.method deltaSize()I
    .locals 2

    .line 1447
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Jump16;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method write32(I[BI[B)V
    .locals 2
    .param p1, "src"    # I
    .param p2, "code"    # [B
    .param p3, "dest"    # I
    .param p4, "newcode"    # [B

    .line 1452
    aget-byte v0, p2, p1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc8

    goto :goto_0

    :cond_0
    const/16 v0, 0xc9

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, p4, p3

    .line 1453
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Jump16;->offset:I

    add-int/lit8 v1, p3, 0x1

    invoke-static {v0, p4, v1}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 1454
    return-void
.end method
