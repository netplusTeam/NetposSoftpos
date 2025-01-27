.class public Lorg/jline/terminal/Cursor;
.super Ljava/lang/Object;
.source "Cursor.java"


# instance fields
.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lorg/jline/terminal/Cursor;->x:I

    .line 23
    iput p2, p0, Lorg/jline/terminal/Cursor;->y:I

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 36
    instance-of v0, p1, Lorg/jline/terminal/Cursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 37
    move-object v0, p1

    check-cast v0, Lorg/jline/terminal/Cursor;

    .line 38
    .local v0, "c":Lorg/jline/terminal/Cursor;
    iget v2, p0, Lorg/jline/terminal/Cursor;->x:I

    iget v3, v0, Lorg/jline/terminal/Cursor;->x:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/jline/terminal/Cursor;->y:I

    iget v3, v0, Lorg/jline/terminal/Cursor;->y:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 40
    .end local v0    # "c":Lorg/jline/terminal/Cursor;
    :cond_1
    return v1
.end method

.method public getX()I
    .locals 1

    .line 27
    iget v0, p0, Lorg/jline/terminal/Cursor;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 31
    iget v0, p0, Lorg/jline/terminal/Cursor;->y:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 46
    iget v0, p0, Lorg/jline/terminal/Cursor;->x:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/jline/terminal/Cursor;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cursor[x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jline/terminal/Cursor;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jline/terminal/Cursor;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
