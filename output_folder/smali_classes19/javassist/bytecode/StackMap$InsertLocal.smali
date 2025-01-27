.class Ljavassist/bytecode/StackMap$InsertLocal;
.super Ljavassist/bytecode/StackMap$SimpleCopy;
.source "StackMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InsertLocal"
.end annotation


# instance fields
.field private varData:I

.field private varIndex:I

.field private varTag:I


# direct methods
.method constructor <init>(Ljavassist/bytecode/StackMap;III)V
    .locals 0
    .param p1, "map"    # Ljavassist/bytecode/StackMap;
    .param p2, "varIndex"    # I
    .param p3, "varTag"    # I
    .param p4, "varData"    # I

    .line 351
    invoke-direct {p0, p1}, Ljavassist/bytecode/StackMap$SimpleCopy;-><init>(Ljavassist/bytecode/StackMap;)V

    .line 352
    iput p2, p0, Ljavassist/bytecode/StackMap$InsertLocal;->varIndex:I

    .line 353
    iput p3, p0, Ljavassist/bytecode/StackMap$InsertLocal;->varTag:I

    .line 354
    iput p4, p0, Ljavassist/bytecode/StackMap$InsertLocal;->varData:I

    .line 355
    return-void
.end method

.method private writeVarTypeInfo()V
    .locals 3

    .line 377
    iget v0, p0, Ljavassist/bytecode/StackMap$InsertLocal;->varTag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 378
    iget-object v0, p0, Ljavassist/bytecode/StackMap$InsertLocal;->writer:Ljavassist/bytecode/StackMap$Writer;

    iget v2, p0, Ljavassist/bytecode/StackMap$InsertLocal;->varData:I

    invoke-virtual {v0, v1, v2}, Ljavassist/bytecode/StackMap$Writer;->writeVerifyTypeInfo(II)V

    goto :goto_0

    .line 379
    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 380
    iget-object v0, p0, Ljavassist/bytecode/StackMap$InsertLocal;->writer:Ljavassist/bytecode/StackMap$Writer;

    iget v2, p0, Ljavassist/bytecode/StackMap$InsertLocal;->varData:I

    invoke-virtual {v0, v1, v2}, Ljavassist/bytecode/StackMap$Writer;->writeVerifyTypeInfo(II)V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Ljavassist/bytecode/StackMap$InsertLocal;->writer:Ljavassist/bytecode/StackMap$Writer;

    iget v1, p0, Ljavassist/bytecode/StackMap$InsertLocal;->varTag:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavassist/bytecode/StackMap$Writer;->writeVerifyTypeInfo(II)V

    .line 383
    :goto_0
    return-void
.end method


# virtual methods
.method public typeInfoArray(IIIZ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "offset"    # I
    .param p3, "num"    # I
    .param p4, "isLocals"    # Z

    .line 359
    if-eqz p4, :cond_4

    iget v0, p0, Ljavassist/bytecode/StackMap$InsertLocal;->varIndex:I

    if-ge p3, v0, :cond_0

    goto :goto_1

    .line 362
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/StackMap$InsertLocal;->writer:Ljavassist/bytecode/StackMap$Writer;

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/StackMap$Writer;->write16bit(I)V

    .line 363
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 364
    iget v1, p0, Ljavassist/bytecode/StackMap$InsertLocal;->varIndex:I

    if-ne v0, v1, :cond_1

    .line 365
    invoke-direct {p0}, Ljavassist/bytecode/StackMap$InsertLocal;->writeVarTypeInfo()V

    .line 367
    :cond_1
    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/StackMap$InsertLocal;->typeInfoArray2(II)I

    move-result p1

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    .end local v0    # "k":I
    :cond_2
    iget v0, p0, Ljavassist/bytecode/StackMap$InsertLocal;->varIndex:I

    if-ne p3, v0, :cond_3

    .line 371
    invoke-direct {p0}, Ljavassist/bytecode/StackMap$InsertLocal;->writeVarTypeInfo()V

    .line 373
    :cond_3
    return p1

    .line 360
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Ljavassist/bytecode/StackMap$SimpleCopy;->typeInfoArray(IIIZ)I

    move-result v0

    return v0
.end method
