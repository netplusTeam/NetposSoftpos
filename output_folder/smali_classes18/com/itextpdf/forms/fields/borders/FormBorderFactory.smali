.class public final Lcom/itextpdf/forms/fields/borders/FormBorderFactory;
.super Ljava/lang/Object;
.source "FormBorderFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getBorder(Lcom/itextpdf/kernel/pdf/PdfDictionary;FLcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/layout/borders/Border;
    .locals 11
    .param p0, "borderStyle"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p1, "borderWidth"    # F
    .param p2, "borderColor"    # Lcom/itextpdf/kernel/colors/Color;
    .param p3, "backgroundColor"    # Lcom/itextpdf/kernel/colors/Color;

    .line 74
    if-eqz p0, :cond_8

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 79
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 80
    .local v0, "borderType":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->U:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    new-instance v1, Lcom/itextpdf/forms/fields/borders/UnderlineBorder;

    invoke-direct {v1, p2, p1}, Lcom/itextpdf/forms/fields/borders/UnderlineBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .local v1, "resultBorder":Lcom/itextpdf/layout/borders/Border;
    goto/16 :goto_1

    .line 82
    .end local v1    # "resultBorder":Lcom/itextpdf/layout/borders/Border;
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    new-instance v1, Lcom/itextpdf/layout/borders/SolidBorder;

    invoke-direct {v1, p2, p1}, Lcom/itextpdf/layout/borders/SolidBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .restart local v1    # "resultBorder":Lcom/itextpdf/layout/borders/Border;
    goto/16 :goto_1

    .line 84
    .end local v1    # "resultBorder":Lcom/itextpdf/layout/borders/Border;
    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 85
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 86
    .local v1, "dashArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/high16 v2, 0x40400000    # 3.0f

    .line 87
    .local v2, "unitsOn":F
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 88
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v3

    int-to-float v2, v3

    .line 90
    :cond_3
    move v3, v2

    .line 91
    .local v3, "unitsOff":F
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 92
    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v4

    int-to-float v3, v4

    move v9, v3

    goto :goto_0

    .line 94
    :cond_4
    move v9, v3

    .end local v3    # "unitsOff":F
    .local v9, "unitsOff":F
    :goto_0
    new-instance v10, Lcom/itextpdf/layout/borders/FixedDashedBorder;

    const/4 v8, 0x0

    move-object v3, v10

    move-object v4, p2

    move v5, p1

    move v6, v2

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/itextpdf/layout/borders/FixedDashedBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;FFFF)V

    move-object v1, v10

    .line 95
    .end local v2    # "unitsOn":F
    .end local v9    # "unitsOff":F
    .local v1, "resultBorder":Lcom/itextpdf/layout/borders/Border;
    goto :goto_1

    .end local v1    # "resultBorder":Lcom/itextpdf/layout/borders/Border;
    :cond_5
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->I:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 96
    new-instance v1, Lcom/itextpdf/forms/fields/borders/InsetBorder;

    invoke-direct {v1, p2, p1}, Lcom/itextpdf/forms/fields/borders/InsetBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;F)V

    .restart local v1    # "resultBorder":Lcom/itextpdf/layout/borders/Border;
    goto :goto_1

    .line 97
    .end local v1    # "resultBorder":Lcom/itextpdf/layout/borders/Border;
    :cond_6
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->B:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 98
    new-instance v1, Lcom/itextpdf/forms/fields/borders/BeveledBorder;

    invoke-direct {v1, p2, p1, p3}, Lcom/itextpdf/forms/fields/borders/BeveledBorder;-><init>(Lcom/itextpdf/kernel/colors/Color;FLcom/itextpdf/kernel/colors/Color;)V

    .restart local v1    # "resultBorder":Lcom/itextpdf/layout/borders/Border;
    goto :goto_1

    .line 100
    .end local v1    # "resultBorder":Lcom/itextpdf/layout/borders/Border;
    :cond_7
    const/4 v1, 0x0

    .line 102
    .restart local v1    # "resultBorder":Lcom/itextpdf/layout/borders/Border;
    :goto_1
    return-object v1

    .line 76
    .end local v0    # "borderType":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v1    # "resultBorder":Lcom/itextpdf/layout/borders/Border;
    :cond_8
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method
