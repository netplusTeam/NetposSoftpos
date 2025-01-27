.class public Lcom/itextpdf/io/font/cmap/CMapObject;
.super Ljava/lang/Object;
.source "CMapObject.java"


# static fields
.field protected static final ARRAY:I = 0x6

.field protected static final DICTIONARY:I = 0x7

.field protected static final HEX_STRING:I = 0x2

.field protected static final LITERAL:I = 0x5

.field protected static final NAME:I = 0x3

.field protected static final NUMBER:I = 0x4

.field protected static final STRING:I = 0x1

.field protected static final TOKEN:I = 0x8


# instance fields
.field private type:I

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "objectType"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/itextpdf/io/font/cmap/CMapObject;->type:I

    .line 62
    iput-object p2, p0, Lcom/itextpdf/io/font/cmap/CMapObject;->value:Ljava/lang/Object;

    .line 63
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/itextpdf/io/font/cmap/CMapObject;->type:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapObject;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isArray()Z
    .locals 2

    .line 98
    iget v0, p0, Lcom/itextpdf/io/font/cmap/CMapObject;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDictionary()Z
    .locals 2

    .line 102
    iget v0, p0, Lcom/itextpdf/io/font/cmap/CMapObject;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHexString()Z
    .locals 2

    .line 82
    iget v0, p0, Lcom/itextpdf/io/font/cmap/CMapObject;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLiteral()Z
    .locals 2

    .line 94
    iget v0, p0, Lcom/itextpdf/io/font/cmap/CMapObject;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isName()Z
    .locals 2

    .line 86
    iget v0, p0, Lcom/itextpdf/io/font/cmap/CMapObject;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNumber()Z
    .locals 2

    .line 90
    iget v0, p0, Lcom/itextpdf/io/font/cmap/CMapObject;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isString()Z
    .locals 3

    .line 78
    iget v0, p0, Lcom/itextpdf/io/font/cmap/CMapObject;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isToken()Z
    .locals 2

    .line 106
    iget v0, p0, Lcom/itextpdf/io/font/cmap/CMapObject;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 74
    iput-object p1, p0, Lcom/itextpdf/io/font/cmap/CMapObject;->value:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public toHexByteArray()[B
    .locals 2

    .line 126
    iget v0, p0, Lcom/itextpdf/io/font/cmap/CMapObject;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapObject;->value:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    return-object v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 114
    iget v0, p0, Lcom/itextpdf/io/font/cmap/CMapObject;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapObject;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapObject;->value:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    .line 116
    .local v0, "content":[B
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 117
    .local v1, "str":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-byte v4, v0, v3

    .line 118
    .local v4, "b":B
    and-int/lit16 v5, v4, 0xff

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
