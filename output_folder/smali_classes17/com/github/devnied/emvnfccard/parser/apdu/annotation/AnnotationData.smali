.class public Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;
.super Ljava/lang/Object;
.source "AnnotationData.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private dateStandard:I

.field private field:Ljava/lang/reflect/Field;

.field private format:Ljava/lang/String;

.field private index:I

.field private readHexa:Z

.field private size:I

.field private skip:Z

.field private tag:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 197
    new-instance v0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;

    invoke-direct {v0}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;-><init>()V

    .line 198
    .local v0, "data":Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;
    iget v1, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->dateStandard:I

    iput v1, v0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->dateStandard:I

    .line 199
    iget-object v1, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->field:Ljava/lang/reflect/Field;

    iput-object v1, v0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->field:Ljava/lang/reflect/Field;

    .line 200
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->format:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->format:Ljava/lang/String;

    .line 201
    iget v1, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->index:I

    iput v1, v0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->index:I

    .line 202
    iget-boolean v1, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->readHexa:Z

    iput-boolean v1, v0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->readHexa:Z

    .line 203
    iget v1, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->size:I

    iput v1, v0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->size:I

    .line 204
    iget-object v1, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->tag:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    iput-object v1, v0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->tag:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    .line 205
    return-object v0
.end method

.method public compareTo(Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;)I
    .locals 2
    .param p1, "pO"    # Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;

    .line 79
    iget v0, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;

    invoke-virtual {p0, p1}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->compareTo(Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "pObj"    # Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "ret":Z
    instance-of v1, p1, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;

    if-eqz v1, :cond_1

    .line 90
    iget v1, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->index:I

    move-object v2, p1

    check-cast v2, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;

    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->getIndex()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 92
    :cond_1
    return v0
.end method

.method public getDateStandard()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->dateStandard:I

    return v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->index:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->size:I

    return v0
.end method

.method public getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->tag:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    return-object v0
.end method

.method public initFromAnnotation(Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;)V
    .locals 1
    .param p1, "pData"    # Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;

    .line 185
    invoke-interface {p1}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;->dateStandard()I

    move-result v0

    iput v0, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->dateStandard:I

    .line 186
    invoke-interface {p1}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;->format()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->format:Ljava/lang/String;

    .line 187
    invoke-interface {p1}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;->index()I

    move-result v0

    iput v0, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->index:I

    .line 188
    invoke-interface {p1}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;->readHexa()Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->readHexa:Z

    .line 189
    invoke-interface {p1}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;->size()I

    move-result v0

    iput v0, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->size:I

    .line 190
    invoke-interface {p1}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;->tag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {p1}, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;->tag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfr/devnied/bitlib/BytesUtils;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->find([B)Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v0

    iput-object v0, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->tag:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    .line 193
    :cond_0
    return-void
.end method

.method public isReadHexa()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->readHexa:Z

    return v0
.end method

.method public isSkip()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->skip:Z

    return v0
.end method

.method public setField(Ljava/lang/reflect/Field;)V
    .locals 0
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 166
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->field:Ljava/lang/reflect/Field;

    .line 167
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 111
    iput p1, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->size:I

    .line 112
    return-void
.end method

.method public setSkip(Z)V
    .locals 0
    .param p1, "skip"    # Z

    .line 224
    iput-boolean p1, p0, Lcom/github/devnied/emvnfccard/parser/apdu/annotation/AnnotationData;->skip:Z

    .line 225
    return-void
.end method
