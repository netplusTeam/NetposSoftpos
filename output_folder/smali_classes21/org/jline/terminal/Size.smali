.class public Lorg/jline/terminal/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private cols:I

.field private rows:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "columns"    # I
    .param p2, "rows"    # I

    .line 20
    invoke-direct {p0}, Lorg/jline/terminal/Size;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lorg/jline/terminal/Size;->setColumns(I)V

    .line 22
    invoke-virtual {p0, p2}, Lorg/jline/terminal/Size;->setRows(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public copy(Lorg/jline/terminal/Size;)V
    .locals 1
    .param p1, "size"    # Lorg/jline/terminal/Size;

    .line 57
    invoke-virtual {p1}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/terminal/Size;->setColumns(I)V

    .line 58
    invoke-virtual {p1}, Lorg/jline/terminal/Size;->getRows()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/terminal/Size;->setRows(I)V

    .line 59
    return-void
.end method

.method public cursorPos(II)I
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 53
    iget v0, p0, Lorg/jline/terminal/Size;->cols:I

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 63
    instance-of v0, p1, Lorg/jline/terminal/Size;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 64
    move-object v0, p1

    check-cast v0, Lorg/jline/terminal/Size;

    .line 65
    .local v0, "size":Lorg/jline/terminal/Size;
    iget v2, p0, Lorg/jline/terminal/Size;->rows:I

    iget v3, v0, Lorg/jline/terminal/Size;->rows:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/jline/terminal/Size;->cols:I

    iget v3, v0, Lorg/jline/terminal/Size;->cols:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 67
    .end local v0    # "size":Lorg/jline/terminal/Size;
    :cond_1
    return v1
.end method

.method public getColumns()I
    .locals 1

    .line 26
    iget v0, p0, Lorg/jline/terminal/Size;->cols:I

    return v0
.end method

.method public getRows()I
    .locals 1

    .line 34
    iget v0, p0, Lorg/jline/terminal/Size;->rows:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 73
    iget v0, p0, Lorg/jline/terminal/Size;->rows:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/jline/terminal/Size;->cols:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setColumns(I)V
    .locals 1
    .param p1, "columns"    # I

    .line 30
    int-to-short v0, p1

    iput v0, p0, Lorg/jline/terminal/Size;->cols:I

    .line 31
    return-void
.end method

.method public setRows(I)V
    .locals 1
    .param p1, "rows"    # I

    .line 38
    int-to-short v0, p1

    iput v0, p0, Lorg/jline/terminal/Size;->rows:I

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size[cols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jline/terminal/Size;->cols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jline/terminal/Size;->rows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
