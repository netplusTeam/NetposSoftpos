.class Ljavassist/bytecode/CodeIterator$Lookup;
.super Ljavassist/bytecode/CodeIterator$Switcher;
.source "CodeIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/CodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Lookup"
.end annotation


# instance fields
.field matches:[I


# direct methods
.method constructor <init>(II[I[ILjavassist/bytecode/CodeIterator$Pointers;)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "defaultByte"    # I
    .param p3, "matches"    # [I
    .param p4, "offsets"    # [I
    .param p5, "ptrs"    # Ljavassist/bytecode/CodeIterator$Pointers;

    .line 1626
    invoke-direct {p0, p1, p2, p4, p5}, Ljavassist/bytecode/CodeIterator$Switcher;-><init>(II[ILjavassist/bytecode/CodeIterator$Pointers;)V

    .line 1627
    iput-object p3, p0, Ljavassist/bytecode/CodeIterator$Lookup;->matches:[I

    .line 1628
    return-void
.end method


# virtual methods
.method tableSize()I
    .locals 1

    .line 1645
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Lookup;->matches:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method write2(I[B)I
    .locals 4
    .param p1, "dest"    # I
    .param p2, "newcode"    # [B

    .line 1632
    iget-object v0, p0, Ljavassist/bytecode/CodeIterator$Lookup;->matches:[I

    array-length v0, v0

    .line 1633
    .local v0, "n":I
    invoke-static {v0, p2, p1}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 1634
    add-int/lit8 p1, p1, 0x4

    .line 1635
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1636
    iget-object v2, p0, Ljavassist/bytecode/CodeIterator$Lookup;->matches:[I

    aget v2, v2, v1

    invoke-static {v2, p2, p1}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 1637
    iget-object v2, p0, Ljavassist/bytecode/CodeIterator$Lookup;->offsets:[I

    aget v2, v2, v1

    add-int/lit8 v3, p1, 0x4

    invoke-static {v2, p2, v3}, Ljavassist/bytecode/ByteArray;->write32bit(I[BI)V

    .line 1638
    add-int/lit8 p1, p1, 0x8

    .line 1635
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1641
    .end local v1    # "i":I
    :cond_0
    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    return v1
.end method
