.class Ljavassist/bytecode/StackMap$SwitchShifter;
.super Ljavassist/bytecode/StackMap$Walker;
.source "StackMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SwitchShifter"
.end annotation


# instance fields
.field private gap:I

.field private where:I


# direct methods
.method public constructor <init>(Ljavassist/bytecode/StackMap;II)V
    .locals 0
    .param p1, "smt"    # Ljavassist/bytecode/StackMap;
    .param p2, "where"    # I
    .param p3, "gap"    # I

    .line 429
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMap$Walker;-><init>(Ljavassist/bytecode/StackMap;)V

    .line 430
    iput p2, p0, Ljavassist/bytecode/StackMap$SwitchShifter;->where:I

    .line 431
    iput p3, p0, Ljavassist/bytecode/StackMap$SwitchShifter;->gap:I

    .line 432
    return-void
.end method


# virtual methods
.method public locals(III)I
    .locals 3
    .param p1, "pos"    # I
    .param p2, "offset"    # I
    .param p3, "num"    # I

    .line 436
    iget v0, p0, Ljavassist/bytecode/StackMap$SwitchShifter;->where:I

    add-int v1, p1, p2

    if-ne v0, v1, :cond_0

    .line 437
    iget v0, p0, Ljavassist/bytecode/StackMap$SwitchShifter;->gap:I

    sub-int v0, p2, v0

    iget-object v1, p0, Ljavassist/bytecode/StackMap$SwitchShifter;->info:[B

    add-int/lit8 v2, p1, -0x4

    invoke-static {v0, v1, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    goto :goto_0

    .line 438
    :cond_0
    if-ne v0, p1, :cond_1

    .line 439
    iget v0, p0, Ljavassist/bytecode/StackMap$SwitchShifter;->gap:I

    add-int/2addr v0, p2

    iget-object v1, p0, Ljavassist/bytecode/StackMap$SwitchShifter;->info:[B

    add-int/lit8 v2, p1, -0x4

    invoke-static {v0, v1, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 441
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/StackMap$Walker;->locals(III)I

    move-result v0

    return v0
.end method
