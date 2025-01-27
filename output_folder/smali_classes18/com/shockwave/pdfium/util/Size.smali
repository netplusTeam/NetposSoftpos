.class public Lcom/shockwave/pdfium/util/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/shockwave/pdfium/util/Size;->width:I

    .line 9
    iput p2, p0, Lcom/shockwave/pdfium/util/Size;->height:I

    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 23
    return v0

    .line 25
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 26
    return v1

    .line 28
    :cond_1
    instance-of v2, p1, Lcom/shockwave/pdfium/util/Size;

    if-eqz v2, :cond_3

    .line 29
    move-object v2, p1

    check-cast v2, Lcom/shockwave/pdfium/util/Size;

    .line 30
    .local v2, "other":Lcom/shockwave/pdfium/util/Size;
    iget v3, p0, Lcom/shockwave/pdfium/util/Size;->width:I

    iget v4, v2, Lcom/shockwave/pdfium/util/Size;->width:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/shockwave/pdfium/util/Size;->height:I

    iget v4, v2, Lcom/shockwave/pdfium/util/Size;->height:I

    if-ne v3, v4, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 32
    .end local v2    # "other":Lcom/shockwave/pdfium/util/Size;
    :cond_3
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/shockwave/pdfium/util/Size;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/shockwave/pdfium/util/Size;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 43
    iget v0, p0, Lcom/shockwave/pdfium/util/Size;->height:I

    iget v1, p0, Lcom/shockwave/pdfium/util/Size;->width:I

    shl-int/lit8 v2, v1, 0x10

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/shockwave/pdfium/util/Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shockwave/pdfium/util/Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
