.class Ljavassist/bytecode/CodeIterator$Table;
.super Ljavassist/bytecode/CodeIterator$Switcher;
.source "CodeIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/CodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Table"
.end annotation


# instance fields
.field high:I

.field low:I


# direct methods
.method constructor <init>(IIII[ILjavassist/bytecode/CodeIterator$Pointers;)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "defaultByte"    # I
    .param p3, "low"    # I
    .param p4, "high"    # I
    .param p5, "offsets"    # [I
    .param p6, "ptrs"    # Ljavassist/bytecode/CodeIterator$Pointers;

    .line 1599
    invoke-direct {p0, p1, p2, p5, p6}, Ljavassist/bytecode/CodeIterator$Switcher;-><init>(II[ILjavassist/bytecode/CodeIterator$Pointers;)V

    .line 1600
    iput p3, p0, Ljavassist/bytecode/CodeIterator$Table;->low:I

    .line 1601
    iput p4, p0, Ljavassist/bytecode/CodeIterator$Table;->high:I

    .line 1602
    return-void
.end method


# virtual methods
.method tableSize()I
    .locals 1

    .line 1619
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Table;->offsets:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method write2(I[B)I
    .locals 3
    .param p1, "dest"    # I
    .param p2, "newcode"    # [B

    .line 1606
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Table;->low:I

    invoke-static {v0, p2, p1}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 1607
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Table;->high:I

    add-int/lit8 v1, p1, 0x4

    invoke-static {v0, p2, v1}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 1608
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Table;->offsets:[I

    array-length v0, v0

    .line 1609
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x8

    .line 1610
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1611
    iget-object v2, p0, Ljavassist/bytecode/CodeIterator$Table;->offsets:[I

    aget v2, v2, v1

    invoke-static {v2, p2, p1}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 1612
    add-int/lit8 p1, p1, 0x4

    .line 1610
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1615
    .end local v1    # "i":I
    :cond_0
    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x8

    return v1
.end method
