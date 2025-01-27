.class public Lcom/itextpdf/pdfa/checker/PdfA1Checker;
.super Lcom/itextpdf/pdfa/checker/PdfAChecker;
.source "PdfA1Checker.java"


# static fields
.field private static final MAX_NUMBER_OF_DEVICEN_COLOR_COMPONENTS:I = 0x8

.field protected static final allowedNamedActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field protected static final allowedRenderingIntents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field protected static final contentAnnotations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field protected static final forbiddenActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field protected static final forbiddenAnnotations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x46d198566fa6db54L


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 95
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Sound:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Movie:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FileAttachment:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 96
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->forbiddenAnnotations:Ljava/util/Set;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Text:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v4

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FreeText:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v5

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Line:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v6

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Square:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v1

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Circle:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v7, 0x4

    aput-object v3, v2, v7

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Stamp:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v8, 0x5

    aput-object v3, v2, v8

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Ink:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v9, 0x6

    aput-object v3, v2, v9

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Popup:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v10, 0x7

    aput-object v3, v2, v10

    .line 101
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->contentAnnotations:Ljava/util/Set;

    .line 110
    new-instance v0, Ljava/util/HashSet;

    new-array v2, v10, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Launch:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v4

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Sound:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v5

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Movie:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v6

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->ResetForm:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v1

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->ImportData:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v7

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->JavaScript:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v8

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Hide:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v9

    .line 111
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->forbiddenActions:Ljava/util/Set;

    .line 119
    new-instance v0, Ljava/util/HashSet;

    new-array v2, v7, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->NextPage:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v4

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->PrevPage:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v5

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FirstPage:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v6

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->LastPage:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v1

    .line 120
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->allowedNamedActions:Ljava/util/Set;

    .line 125
    new-instance v0, Ljava/util/HashSet;

    new-array v2, v7, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->RelativeColorimetric:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v4

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->AbsoluteColorimetric:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v5

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Perceptual:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v6

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Saturation:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v2, v1

    .line 126
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->allowedRenderingIntents:Ljava/util/Set;

    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V
    .locals 0
    .param p1, "conformanceLevel"    # Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 141
    invoke-direct {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfAChecker;-><init>(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)V

    .line 142
    return-void
.end method

.method private getMaxArrayCapacity()I
    .locals 1

    .line 772
    const/16 v0, 0x1fff

    return v0
.end method

.method private getMaxDictionaryCapacity()I
    .locals 1

    .line 776
    const/16 v0, 0xfff

    return v0
.end method


# virtual methods
.method protected checkAction(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 6
    .param p1, "action"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 706
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 708
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 709
    .local v0, "s":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getForbiddenActions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    .line 712
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Named:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 713
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 714
    .local v1, "n":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getAllowedNamedActions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 715
    :cond_1
    new-instance v4, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v5, "Named action type {0} not allowed"

    invoke-direct {v4, v5}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v4, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v2

    throw v2

    .line 718
    .end local v1    # "n":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_2
    :goto_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->SetState:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->NoOp:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 721
    return-void

    .line 719
    :cond_3
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v2, "Deprecated setstate and noop actions are not allowed"

    invoke-direct {v1, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 710
    :cond_4
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string/jumbo v4, "{0} actions are not allowed"

    invoke-direct {v1, v4}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v1

    throw v1
.end method

.method protected checkAnnotation(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 9
    .param p1, "annotDic"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 617
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 619
    .local v0, "subtype":Lcom/itextpdf/kernel/pdf/PdfName;
    const-string v1, "Annotation type {0} is not permitted"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    .line 622
    sget-object v4, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->forbiddenAnnotations:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 625
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    .line 626
    .local v1, "ca":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_0

    .line 627
    :cond_0
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "An annotation dictionary shall not contain the ca key with a value other than 1"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 629
    :cond_1
    :goto_0
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 633
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 634
    .local v4, "flags":I
    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkFlag(II)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkFlag(II)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-static {v4, v3}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkFlag(II)Z

    move-result v5

    if-nez v5, :cond_11

    const/16 v5, 0x20

    .line 635
    invoke-static {v4, v5}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkFlag(II)Z

    move-result v5

    if-nez v5, :cond_11

    .line 638
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Text:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkFlag(II)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkFlag(II)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 639
    :cond_2
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "Text annotations should set the nozoom and norotate flag bits of the f key to 1"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 641
    :cond_3
    :goto_1
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->C:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->IC:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 642
    :cond_4
    iget-object v5, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->pdfAOutputIntentColorSpace:Ljava/lang/String;

    const-string v6, "RGB "

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 647
    :cond_5
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    .line 648
    .local v5, "ap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v5, :cond_a

    .line 649
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v6

    const-string v7, "Appearance dictionary shall contain only the n key with stream value"

    if-nez v6, :cond_9

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 652
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Btn:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 653
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v6

    if-eqz v6, :cond_6

    goto :goto_2

    .line 654
    :cond_6
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "If an annotation dictionary\'s Subtype key has a value of Widget and its FT key has a value of Btn, the value of the N key shall be an appearance subdictionary"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 657
    :cond_7
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 661
    :goto_2
    invoke-virtual {p0, v5}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkResourcesOfAppearanceStreams(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_3

    .line 658
    :cond_8
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v2, v7}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 650
    :cond_9
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v2, v7}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 664
    :cond_a
    :goto_3
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v6

    if-nez v6, :cond_b

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_4

    .line 665
    :cond_b
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "Widget annotation dictionary or field dictionary shall not include a or aa entry"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 668
    :cond_c
    :goto_4
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 672
    iget-object v6, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->conformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    invoke-static {v6}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkStructure(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 673
    sget-object v6, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->contentAnnotations:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_5

    .line 674
    :cond_d
    new-instance v6, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v7, "Annotation of type {0} should have contents key"

    invoke-direct {v6, v7}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-virtual {v6, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v2

    throw v2

    .line 677
    :cond_e
    :goto_5
    return-void

    .line 669
    :cond_f
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "An annotation dictionary shall not contain aa key"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 643
    .end local v5    # "ap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_10
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "Destoutputprofile in the pdfa1 outputintent dictionary shall be rgb"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 636
    :cond_11
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "The f keys print flag bit shall be set to 1 and its hidden invisible and noview flag bits shall be set to 0"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 630
    .end local v4    # "flags":I
    :cond_12
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "An annotation dictionary shall contain the f key"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 623
    .end local v1    # "ca":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :cond_13
    new-instance v4, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v4, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v4, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v1

    throw v1

    .line 620
    :cond_14
    new-instance v4, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v4, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "null"

    aput-object v3, v1, v2

    invoke-virtual {v4, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v1

    throw v1
.end method

.method public checkCanvasStack(C)V
    .locals 2
    .param p1, "stackOperation"    # C

    .line 146
    const/16 v0, 0x71

    if-ne v0, p1, :cond_1

    .line 147
    iget v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->gsStackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->gsStackDepth:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "Graphics state stack depth is greater than 28"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    const/16 v0, 0x51

    if-ne v0, p1, :cond_2

    .line 150
    iget v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->gsStackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->gsStackDepth:I

    .line 152
    :cond_2
    :goto_0
    return-void
.end method

.method protected checkCatalogValidEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2
    .param p1, "catalogDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 725
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 728
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->OCProperties:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 731
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Names:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Names:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->EmbeddedFiles:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 733
    :cond_0
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "A name dictionary shall not contain the EmbeddedFiles key"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 736
    :cond_1
    :goto_0
    return-void

    .line 729
    :cond_2
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "A catalog dictionary shall not contain the ocproperties key"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_3
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "A catalog dictionary shall not contain aa entry"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkColor(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "currentColorSpaces"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "fill"    # Ljava/lang/Boolean;

    .line 175
    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/Color;->getColorSpace()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1, p3}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 176
    return-void
.end method

.method public checkColor(Lcom/itextpdf/kernel/colors/Color;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/Boolean;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 2
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/Color;
    .param p2, "currentColorSpaces"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "fill"    # Ljava/lang/Boolean;
    .param p4, "stream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 180
    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/Color;->getColorSpace()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1, p3}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 181
    instance-of v0, p1, Lcom/itextpdf/kernel/colors/PatternColor;

    if-eqz v0, :cond_0

    .line 182
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/colors/PatternColor;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/PatternColor;->getPattern()Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;

    move-result-object v0

    .line 183
    .local v0, "pattern":Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkContentStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 187
    .end local v0    # "pattern":Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;
    :cond_0
    return-void
.end method

.method public checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V
    .locals 4
    .param p1, "colorSpace"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .param p2, "currentColorSpaces"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "checkAlternate"    # Z
    .param p4, "fill"    # Ljava/lang/Boolean;

    .line 191
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;

    if-eqz v0, :cond_0

    .line 192
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;->getBaseCs()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object p1

    goto :goto_0

    .line 193
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;

    if-eqz v0, :cond_2

    .line 194
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;

    .line 195
    .local v0, "deviceNColorspace":Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;->getNumberOfComponents()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    .line 200
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;->getBaseCs()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object p1

    goto :goto_0

    .line 196
    :cond_1
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    .line 198
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "The number of color components in DeviceN colorspace should not exceed {0}"

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v1

    .line 203
    .end local v0    # "deviceNColorspace":Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;
    :cond_2
    :goto_0
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    const-string v1, "Devicergb and devicecmyk colorspaces cannot be used both in one file"

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 204
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->cmykIsUsed:Z

    if-nez v0, :cond_3

    .line 207
    iput-boolean v2, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->rgbIsUsed:Z

    goto :goto_1

    .line 205
    :cond_3
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_4
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;

    if-eqz v0, :cond_6

    .line 209
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->rgbIsUsed:Z

    if-nez v0, :cond_5

    .line 212
    iput-boolean v2, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->cmykIsUsed:Z

    goto :goto_1

    .line 210
    :cond_5
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_6
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;

    if-eqz v0, :cond_7

    .line 214
    iput-boolean v2, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->grayIsUsed:Z

    .line 216
    :cond_7
    :goto_1
    return-void
.end method

.method protected checkColorsUsages()V
    .locals 2

    .line 243
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->rgbIsUsed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->cmykIsUsed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->grayIsUsed:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->pdfAOutputIntentColorSpace:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 247
    :cond_1
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->rgbIsUsed:Z

    if-eqz v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->pdfAOutputIntentColorSpace:Ljava/lang/String;

    const-string v1, "RGB "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 249
    :cond_2
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "Devicergb may be used only if the file has a rgb pdfa outputIntent"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->cmykIsUsed:Z

    if-eqz v0, :cond_5

    .line 253
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->pdfAOutputIntentColorSpace:Ljava/lang/String;

    const-string v1, "CMYK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 254
    :cond_4
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "Devicecmyk may be used only if the file has a cmyk pdfa outputIntent"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_5
    :goto_1
    return-void

    .line 244
    :cond_6
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "If device rgb cmyk gray used in file, that file shall contain pdfa outputintent"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkContentStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 7
    .param p1, "contentStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 334
    invoke-virtual {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->isFullCheckMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->isModified()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v0

    .line 336
    .local v0, "contentBytes":[B
    new-instance v1, Lcom/itextpdf/io/source/PdfTokenizer;

    new-instance v2, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v3, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v3}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    .line 337
    invoke-virtual {v3, v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-direct {v1, v2}, Lcom/itextpdf/io/source/PdfTokenizer;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    .line 339
    .local v1, "tokenizer":Lcom/itextpdf/io/source/PdfTokenizer;
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;-><init>(Lcom/itextpdf/io/source/PdfTokenizer;)V

    .line 340
    .local v2, "parser":Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v3, "operands":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    :goto_0
    :try_start_0
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->parse(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 343
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 344
    .local v5, "operand":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {p0, v5}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkContentStreamObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v5    # "operand":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_1

    :cond_1
    goto :goto_0

    .line 349
    :cond_2
    nop

    .line 351
    .end local v0    # "contentBytes":[B
    .end local v1    # "tokenizer":Lcom/itextpdf/io/source/PdfTokenizer;
    .end local v2    # "parser":Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;
    .end local v3    # "operands":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    :cond_3
    return-void

    .line 347
    .restart local v0    # "contentBytes":[B
    .restart local v1    # "tokenizer":Lcom/itextpdf/io/source/PdfTokenizer;
    .restart local v2    # "parser":Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;
    .restart local v3    # "operands":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    :catch_0
    move-exception v4

    .line 348
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lcom/itextpdf/kernel/PdfException;

    const-string v6, "Cannot parse content stream."

    invoke-direct {v5, v6, v4}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected checkContentStreamObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 5
    .param p1, "object"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 355
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    .line 356
    .local v0, "type":B
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    .line 361
    :sswitch_0
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkPdfString(Lcom/itextpdf/kernel/pdf/PdfString;)V

    .line 362
    goto :goto_3

    .line 364
    :sswitch_1
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkPdfNumber(Lcom/itextpdf/kernel/pdf/PdfNumber;)V

    .line 365
    goto :goto_3

    .line 358
    :sswitch_2
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkPdfName(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 359
    goto :goto_3

    .line 374
    :sswitch_3
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 375
    .local v1, "dictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 376
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 377
    .local v3, "name":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {p0, v3}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkPdfName(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 378
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkPdfObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 379
    .end local v3    # "name":Lcom/itextpdf/kernel/pdf/PdfName;
    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 381
    .local v3, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {p0, v3}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkContentStreamObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 382
    .end local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_1

    .line 367
    .end local v1    # "dictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :sswitch_4
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 368
    .local v1, "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkPdfArray(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 369
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 370
    .restart local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {p0, v3}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkContentStreamObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 371
    .end local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_2

    .line 372
    :cond_1
    nop

    .line 385
    .end local v1    # "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_2
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_3
        0x6 -> :sswitch_2
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public checkExtGState(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V
    .locals 1
    .param p1, "extGState"    # Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkExtGState(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 262
    return-void
.end method

.method public checkExtGState(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 6
    .param p1, "extGState"    # Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
    .param p2, "contentStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 266
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getTransferFunction()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_a

    .line 269
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getTransferFunction2()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 270
    .local v0, "transferFunction2":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v0, :cond_1

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Default:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v2, "An extgstate dictionary shall not contain the TR2 key with a value other than default"

    invoke-direct {v1, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getRenderingIntent()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkRenderingIntent(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 276
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getSoftMask()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 277
    .local v1, "softMask":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v1, :cond_3

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->None:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 278
    :cond_2
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "The smask key is not allowed in extgstate"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getBlendMode()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 282
    .local v2, "bm":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v2, :cond_5

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Normal:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Compatible:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 283
    :cond_4
    new-instance v3, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v4, "Blend mode shall have value normal or compatible"

    invoke-direct {v3, v4}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 286
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getStrokeOpacity()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 287
    .local v3, "ca":Ljava/lang/Float;
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v4

    if-nez v5, :cond_6

    goto :goto_3

    .line 288
    :cond_6
    new-instance v4, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v5, "Transparency is not allowed. CA shall be equal to 1"

    invoke-direct {v4, v5}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 291
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->getFillOpacity()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 292
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v4, v5, v4

    if-nez v4, :cond_8

    goto :goto_4

    .line 293
    :cond_8
    new-instance v4, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v5, "Transparency is not allowed. ca shall be equal to 1"

    invoke-direct {v4, v5}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 295
    :cond_9
    :goto_4
    return-void

    .line 267
    .end local v0    # "transferFunction2":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v1    # "softMask":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v2    # "bm":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v3    # "ca":Ljava/lang/Float;
    :cond_a
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "An extgstate dictionary shall not contain the tr key"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkFileSpec(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2
    .param p1, "fileSpec"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 610
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->EF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    return-void

    .line 611
    :cond_0
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "File specification dictionary shall not contain the EF key"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkFont(Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 4
    .param p1, "pdfFont"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 309
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfFont;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 314
    instance-of v0, p1, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;

    if-eqz v0, :cond_1

    .line 315
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;

    .line 316
    .local v0, "trueTypeFont":Lcom/itextpdf/kernel/font/PdfTrueTypeFont;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getFontEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v1

    .line 317
    .local v1, "symbolic":Z
    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkSymbolicTrueTypeFont(Lcom/itextpdf/kernel/font/PdfTrueTypeFont;)V

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkNonSymbolicTrueTypeFont(Lcom/itextpdf/kernel/font/PdfTrueTypeFont;)V

    .line 324
    .end local v0    # "trueTypeFont":Lcom/itextpdf/kernel/font/PdfTrueTypeFont;
    .end local v1    # "symbolic":Z
    :cond_1
    :goto_0
    instance-of v0, p1, Lcom/itextpdf/kernel/font/PdfType3Font;

    if-eqz v0, :cond_2

    .line 325
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CharProcs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 326
    .local v0, "charProcs":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 327
    .local v2, "charName":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkContentStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 328
    .end local v2    # "charName":Lcom/itextpdf/kernel/pdf/PdfName;
    goto :goto_1

    .line 330
    .end local v0    # "charProcs":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_2
    return-void

    .line 310
    :cond_3
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "All the fonts must be embedded. This one is not: {0}"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 311
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v0

    throw v0
.end method

.method protected checkForm(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 6
    .param p1, "form"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 681
    if-nez p1, :cond_0

    .line 682
    return-void

    .line 684
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->NeedAppearances:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v0

    .line 685
    .local v0, "needAppearances":Lcom/itextpdf/kernel/pdf/PdfBoolean;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 686
    :cond_1
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v2, "Needappearances flag of the interactive form dictionary shall either not be presented or shall be false"

    invoke-direct {v1, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 689
    :cond_2
    :goto_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 691
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 692
    .local v1, "fields":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v1, :cond_4

    .line 693
    invoke-virtual {p0, v1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getFormFields(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 694
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 695
    .local v3, "field":Lcom/itextpdf/kernel/pdf/PdfObject;
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 696
    .local v4, "fieldDic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 699
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->DR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 700
    .end local v3    # "field":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v4    # "fieldDic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    goto :goto_1

    .line 697
    .restart local v3    # "field":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v4    # "fieldDic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_3
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v5, "Widget annotation dictionary or field dictionary shall not include a or aa entry"

    invoke-direct {v2, v5}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 702
    .end local v3    # "field":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v4    # "fieldDic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_4
    return-void
.end method

.method protected checkFormXObject(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 2
    .param p1, "form"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 440
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 442
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->OPI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 445
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 448
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PS:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype2:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 452
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->SMask:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->None:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->SMask:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 453
    :cond_1
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "The smask key is not allowed in xobjects"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->isContainsTransparencyGroup(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 460
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 461
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkContentStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 462
    return-void

    .line 457
    :cond_3
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "A group object with an s key with a value of transparency shall not be included in a form xobject"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_4
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "A form xobject dictionary shall not contain subtype2 key with a value of PS"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_5
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "A form xobject dictionary shall not contain PS key"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_6
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "A form xobject dictionary shall not contain opi key"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkImage(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 4
    .param p1, "image"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .param p2, "currentColorSpaces"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "colorSpace":Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->isAlreadyChecked(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkedObjectsColorspace:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    .line 410
    invoke-virtual {p0, v0, p2, v3, v2}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 411
    return-void

    .line 413
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 414
    .local v1, "colorSpaceObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v1, :cond_1

    .line 415
    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->makeColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v0

    .line 416
    invoke-virtual {p0, v0, p2, v3, v2}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLjava/lang/Boolean;)V

    .line 417
    iget-object v2, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkedObjectsColorspace:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_1
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Alternates:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 423
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->OPI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 427
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Interpolate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Interpolate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsBool(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 428
    :cond_2
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "The value of interpolate key shall not be true"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 431
    :cond_3
    :goto_0
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Intent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkRenderingIntent(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 433
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->SMask:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->None:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->SMask:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 434
    :cond_4
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "The smask key is not allowed in xobjects"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 436
    :cond_5
    :goto_1
    return-void

    .line 424
    :cond_6
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "An image dictionary shall not contain opi key"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 421
    :cond_7
    new-instance v2, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v3, "An image dictionary shall not contain alternates key"

    invoke-direct {v2, v3}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public checkInlineImage(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 5
    .param p1, "inlineImage"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .param p2, "currentColorSpaces"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 156
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 157
    .local v0, "filter":Lcom/itextpdf/kernel/pdf/PdfObject;
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "LZWDecode filter is not permitted"

    if-eqz v1, :cond_1

    .line 158
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->LZWDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 159
    :cond_0
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v1, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_1
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v1, :cond_3

    .line 162
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object v3, v0

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 163
    move-object v3, v0

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v3

    .line 164
    .local v3, "f":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->LZWDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 162
    .end local v3    # "f":Lcom/itextpdf/kernel/pdf/PdfName;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .restart local v3    # "f":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_2
    new-instance v4, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v4, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 170
    .end local v1    # "i":I
    .end local v3    # "f":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkImage(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 171
    return-void
.end method

.method protected checkLogicalStructure(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 3
    .param p1, "catalog"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 466
    iget-object v0, p0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->conformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    invoke-static {v0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkStructure(Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->MarkInfo:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 468
    .local v0, "markInfo":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Marked:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Marked:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Lang:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 472
    const-class v1, Lcom/itextpdf/pdfa/checker/PdfAChecker;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 473
    .local v1, "logger":Lorg/slf4j/Logger;
    const-string v2, "Catalog dictionary should contain lang entry"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 469
    .end local v1    # "logger":Lorg/slf4j/Logger;
    :cond_0
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v2, "A catalog dictionary shall include a markinfo dictionary whose entry marked shall have a value of true"

    invoke-direct {v1, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 476
    .end local v0    # "markInfo":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_1
    :goto_0
    return-void
.end method

.method protected checkMetaData(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2
    .param p1, "catalog"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 480
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Metadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    return-void

    .line 481
    :cond_0
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "A catalog dictionary shall contain metadata entry"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkNonSymbolicTrueTypeFont(Lcom/itextpdf/kernel/font/PdfTrueTypeFont;)V
    .locals 3
    .param p1, "trueTypeFont"    # Lcom/itextpdf/kernel/font/PdfTrueTypeFont;

    .line 389
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getFontEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontEncoding;->getBaseEncoding()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "encoding":Ljava/lang/String;
    const-string v1, "Cp1252"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MacRoman"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getFontEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontEncoding;->hasDifferences()Z

    move-result v1

    if-nez v1, :cond_1

    .line 394
    return-void

    .line 392
    :cond_1
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v2, "All non-symbolic TrueType fonts shall specify MacRomanEncoding or WinAnsiEncoding as the value of the Encoding entry in the font dictionary  This also means that Encoding entry in the font dictionary shall not be an encoding dictionary "

    invoke-direct {v1, v2, p1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v1
.end method

.method protected checkOutputIntents(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 6
    .param p1, "catalog"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 487
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->OutputIntents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 488
    .local v0, "outputIntents":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v0, :cond_0

    .line 489
    return-void

    .line 492
    :cond_0
    const/4 v1, 0x0

    .line 493
    .local v1, "destOutputProfile":Lcom/itextpdf/kernel/pdf/PdfObject;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-nez v1, :cond_1

    .line 494
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->DestOutputProfile:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 493
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 496
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 497
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->DestOutputProfile:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 498
    .local v3, "otherDestOutputProfile":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v3, :cond_3

    if-ne v1, v3, :cond_2

    goto :goto_2

    .line 499
    :cond_2
    new-instance v4, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v5, "If outputintents array has more than one entry with destoutputprofile key the same indirect object shall be used as the value of that object"

    invoke-direct {v4, v5}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 496
    .end local v3    # "otherDestOutputProfile":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 503
    :cond_4
    return-void
.end method

.method protected checkPageObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 4
    .param p1, "pageDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "pageResources"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 740
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 741
    .local v0, "actions":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 743
    .local v2, "key":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 744
    .local v3, "action":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p0, v3}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkAction(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 745
    .end local v2    # "key":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v3    # "action":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    goto :goto_0

    .line 747
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->isContainsTransparencyGroup(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 750
    return-void

    .line 748
    :cond_1
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v2, "A group object with an s key with a value of transparency shall not be included in a page xobject"

    invoke-direct {v1, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected checkPageSize(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 606
    return-void
.end method

.method protected checkPdfArray(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 2
    .param p1, "array"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 544
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getMaxArrayCapacity()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 547
    return-void

    .line 545
    :cond_0
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "Maximum array capacity is exceeded"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2
    .param p1, "dictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 551
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getMaxDictionaryCapacity()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 554
    return-void

    .line 552
    :cond_0
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "Maximum dictionary capacity is exceeded"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkPdfName(Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 2
    .param p1, "name"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 578
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getMaxNameLength()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 581
    return-void

    .line 579
    :cond_0
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "PdfName is too long"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkPdfNumber(Lcom/itextpdf/kernel/pdf/PdfNumber;)V
    .locals 4
    .param p1, "number"    # Lcom/itextpdf/kernel/pdf/PdfNumber;

    .line 507
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->hasDecimalPoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getMaxRealValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "Real number is out of range"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getMaxIntegerValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getMinIntegerValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 516
    :goto_0
    return-void

    .line 513
    :cond_2
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "Integer number is out of range"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkPdfStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 5
    .param p1, "stream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 558
    invoke-virtual {p0, p1}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->checkPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 560
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FFilter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FDecodeParams:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 564
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 565
    .local v0, "filter":Lcom/itextpdf/kernel/pdf/PdfObject;
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "LZWDecode filter is not permitted"

    if-eqz v1, :cond_1

    .line 566
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->LZWDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 567
    :cond_0
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v1, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 568
    :cond_1
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v1, :cond_3

    .line 569
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 570
    .local v3, "f":Lcom/itextpdf/kernel/pdf/PdfObject;
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->LZWDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 572
    .end local v3    # "f":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_0

    .line 571
    .restart local v3    # "f":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_2
    new-instance v1, Lcom/itextpdf/pdfa/PdfAConformanceException;

    invoke-direct {v1, v2}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 574
    .end local v3    # "f":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_3
    :goto_1
    return-void

    .line 561
    .end local v0    # "filter":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_4
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "Stream object dictionary shall not contain the f ffilter or fdecodeparams keys"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkPdfString(Lcom/itextpdf/kernel/pdf/PdfString;)V
    .locals 2
    .param p1, "string"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 594
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getMaxStringLength()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 597
    return-void

    .line 595
    :cond_0
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "PdfString is too long"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkRenderingIntent(Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 2
    .param p1, "intent"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 299
    if-nez p1, :cond_0

    .line 300
    return-void

    .line 302
    :cond_0
    sget-object v0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->allowedRenderingIntents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    return-void

    .line 303
    :cond_1
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "If specified rendering shall be one of the following relativecolorimetric absolutecolorimetric perceptual or saturation"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkSymbolicTrueTypeFont(Lcom/itextpdf/kernel/font/PdfTrueTypeFont;)V
    .locals 2
    .param p1, "trueTypeFont"    # Lcom/itextpdf/kernel/font/PdfTrueTypeFont;

    .line 398
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;->getFontEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontEncoding;->hasDifferences()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    return-void

    .line 399
    :cond_0
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "All symbolic TrueType fonts shall not specify an Encoding entry in the font dictionary "

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkTrailer(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2
    .param p1, "trailer"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 754
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Encrypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    return-void

    .line 755
    :cond_0
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "Keyword encrypt shall not be used in the trailer dictionary"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkXrefTable(Lcom/itextpdf/kernel/pdf/PdfXrefTable;)V
    .locals 4
    .param p1, "xrefTable"    # Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    .line 221
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->getCountOfIndirectObjects()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getMaxNumberOfIndirectObjects()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 224
    return-void

    .line 222
    :cond_0
    new-instance v0, Lcom/itextpdf/pdfa/PdfAConformanceException;

    const-string v1, "Maximum number of indirect objects exceeded"

    invoke-direct {v0, v1}, Lcom/itextpdf/pdfa/PdfAConformanceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getAllowedNamedActions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation

    .line 233
    sget-object v0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->allowedNamedActions:Ljava/util/Set;

    return-object v0
.end method

.method protected getForbiddenActions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation

    .line 228
    sget-object v0, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->forbiddenActions:Ljava/util/Set;

    return-object v0
.end method

.method protected getFormFields(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 5
    .param p1, "array"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 760
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 761
    .local v0, "fields":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 762
    .local v2, "field":Lcom/itextpdf/kernel/pdf/PdfObject;
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    .line 763
    .local v3, "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 764
    if-eqz v3, :cond_0

    .line 765
    invoke-virtual {p0, v3}, Lcom/itextpdf/pdfa/checker/PdfA1Checker;->getFormFields(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->addAll(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 767
    .end local v2    # "field":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v3    # "kids":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_0
    goto :goto_0

    .line 768
    :cond_1
    return-object v0
.end method

.method protected getMaxIntegerValue()J
    .locals 2

    .line 531
    const-wide/32 v0, 0x7fffffff

    return-wide v0
.end method

.method protected getMaxNameLength()I
    .locals 1

    .line 589
    const/16 v0, 0x7f

    return v0
.end method

.method protected getMaxNumberOfIndirectObjects()J
    .locals 2

    .line 238
    const-wide/32 v0, 0x7fffff

    return-wide v0
.end method

.method protected getMaxRealValue()D
    .locals 2

    .line 523
    const-wide v0, 0x40dfffc000000000L    # 32767.0

    return-wide v0
.end method

.method protected getMaxStringLength()I
    .locals 1

    .line 600
    const v0, 0xffff

    return v0
.end method

.method protected getMinIntegerValue()J
    .locals 2

    .line 539
    const-wide/32 v0, -0x80000000

    return-wide v0
.end method
