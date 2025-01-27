.class public Lcom/itextpdf/signatures/SignaturePermissions;
.super Ljava/lang/Object;
.source "SignaturePermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/signatures/SignaturePermissions$FieldLock;
    }
.end annotation


# instance fields
.field annotationsAllowed:Z

.field certification:Z

.field fieldLocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/signatures/SignaturePermissions$FieldLock;",
            ">;"
        }
    .end annotation
.end field

.field fillInAllowed:Z


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/signatures/SignaturePermissions;)V
    .locals 10
    .param p1, "sigDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "previous"    # Lcom/itextpdf/signatures/SignaturePermissions;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/signatures/SignaturePermissions;->certification:Z

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/signatures/SignaturePermissions;->fillInAllowed:Z

    .line 105
    iput-boolean v1, p0, Lcom/itextpdf/signatures/SignaturePermissions;->annotationsAllowed:Z

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/signatures/SignaturePermissions;->fieldLocks:Ljava/util/List;

    .line 118
    if-eqz p2, :cond_0

    .line 119
    iget-boolean v2, p0, Lcom/itextpdf/signatures/SignaturePermissions;->annotationsAllowed:Z

    invoke-virtual {p2}, Lcom/itextpdf/signatures/SignaturePermissions;->isAnnotationsAllowed()Z

    move-result v3

    and-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/itextpdf/signatures/SignaturePermissions;->annotationsAllowed:Z

    .line 120
    iget-boolean v2, p0, Lcom/itextpdf/signatures/SignaturePermissions;->fillInAllowed:Z

    invoke-virtual {p2}, Lcom/itextpdf/signatures/SignaturePermissions;->isFillInAllowed()Z

    move-result v3

    and-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/itextpdf/signatures/SignaturePermissions;->fillInAllowed:Z

    .line 121
    iget-object v2, p0, Lcom/itextpdf/signatures/SignaturePermissions;->fieldLocks:Ljava/util/List;

    invoke-virtual {p2}, Lcom/itextpdf/signatures/SignaturePermissions;->getFieldLocks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    :cond_0
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Reference:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    .line 124
    .local v2, "ref":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v2, :cond_4

    .line 125
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 126
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    .line 127
    .local v4, "dict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->TransformParams:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    .line 128
    .local v5, "params":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->DocMDP:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->TransformMethod:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 129
    iput-boolean v1, p0, Lcom/itextpdf/signatures/SignaturePermissions;->certification:Z

    .line 131
    :cond_1
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Action:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v6

    .line 132
    .local v6, "action":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v6, :cond_2

    .line 133
    iget-object v7, p0, Lcom/itextpdf/signatures/SignaturePermissions;->fieldLocks:Ljava/util/List;

    new-instance v8, Lcom/itextpdf/signatures/SignaturePermissions$FieldLock;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v9

    invoke-direct {v8, p0, v6, v9}, Lcom/itextpdf/signatures/SignaturePermissions$FieldLock;-><init>(Lcom/itextpdf/signatures/SignaturePermissions;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfArray;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_2
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v7

    .line 136
    .local v7, "p":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-nez v7, :cond_3

    .line 137
    goto :goto_1

    .line 138
    :cond_3
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 140
    goto :goto_1

    .line 142
    :pswitch_0
    iget-boolean v8, p0, Lcom/itextpdf/signatures/SignaturePermissions;->fillInAllowed:Z

    and-int/2addr v8, v0

    iput-boolean v8, p0, Lcom/itextpdf/signatures/SignaturePermissions;->fillInAllowed:Z

    .line 144
    :pswitch_1
    iget-boolean v8, p0, Lcom/itextpdf/signatures/SignaturePermissions;->annotationsAllowed:Z

    and-int/2addr v8, v0

    iput-boolean v8, p0, Lcom/itextpdf/signatures/SignaturePermissions;->annotationsAllowed:Z

    .line 125
    .end local v4    # "dict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v5    # "params":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v6    # "action":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v7    # "p":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    .end local v3    # "i":I
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getFieldLocks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/signatures/SignaturePermissions$FieldLock;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/itextpdf/signatures/SignaturePermissions;->fieldLocks:Ljava/util/List;

    return-object v0
.end method

.method public isAnnotationsAllowed()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/itextpdf/signatures/SignaturePermissions;->annotationsAllowed:Z

    return v0
.end method

.method public isCertification()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/itextpdf/signatures/SignaturePermissions;->certification:Z

    return v0
.end method

.method public isFillInAllowed()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/itextpdf/signatures/SignaturePermissions;->fillInAllowed:Z

    return v0
.end method
