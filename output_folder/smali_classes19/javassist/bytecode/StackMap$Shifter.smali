.class Ljavassist/bytecode/StackMap$Shifter;
.super Ljavassist/bytecode/StackMap$Walker;
.source "StackMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shifter"
.end annotation


# instance fields
.field private exclusive:Z

.field private gap:I

.field private where:I


# direct methods
.method public constructor <init>(Ljavassist/bytecode/StackMap;IIZ)V
    .locals 0
    .param p1, "smt"    # Ljavassist/bytecode/StackMap;
    .param p2, "where"    # I
    .param p3, "gap"    # I
    .param p4, "exclusive"    # Z

    .line 397
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMap$Walker;-><init>(Ljavassist/bytecode/StackMap;)V

    .line 398
    iput p2, p0, Ljavassist/bytecode/StackMap$Shifter;->where:I

    .line 399
    iput p3, p0, Ljavassist/bytecode/StackMap$Shifter;->gap:I

    .line 400
    iput-boolean p4, p0, Ljavassist/bytecode/StackMap$Shifter;->exclusive:Z

    .line 401
    return-void
.end method


# virtual methods
.method public locals(III)I
    .locals 3
    .param p1, "pos"    # I
    .param p2, "offset"    # I
    .param p3, "num"    # I

    .line 405
    iget-boolean v0, p0, Ljavassist/bytecode/StackMap$Shifter;->exclusive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljavassist/bytecode/StackMap$Shifter;->where:I

    if-gt v0, p2, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Ljavassist/bytecode/StackMap$Shifter;->where:I

    if-ge v0, p2, :cond_1

    .line 406
    :goto_0
    iget v0, p0, Ljavassist/bytecode/StackMap$Shifter;->gap:I

    add-int/2addr v0, p2

    iget-object v1, p0, Ljavassist/bytecode/StackMap$Shifter;->info:[B

    add-int/lit8 v2, p1, -0x4

    invoke-static {v0, v1, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 408
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/StackMap$Walker;->locals(III)I

    move-result v0

    return v0
.end method

.method public uninitialized(II)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "offset"    # I

    .line 413
    iget v0, p0, Ljavassist/bytecode/StackMap$Shifter;->where:I

    if-gt v0, p2, :cond_0

    .line 414
    iget v0, p0, Ljavassist/bytecode/StackMap$Shifter;->gap:I

    add-int/2addr v0, p2

    iget-object v1, p0, Ljavassist/bytecode/StackMap$Shifter;->info:[B

    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 415
    :cond_0
    return-void
.end method
