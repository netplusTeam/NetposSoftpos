.class public Lcom/itextpdf/layout/element/Table;
.super Lcom/itextpdf/layout/element/BlockElement;
.source "Table.java"

# interfaces
.implements Lcom/itextpdf/layout/element/ILargeElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/element/Table$RowRange;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/layout/element/BlockElement<",
        "Lcom/itextpdf/layout/element/Table;",
        ">;",
        "Lcom/itextpdf/layout/element/ILargeElement;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private caption:Lcom/itextpdf/layout/element/Div;

.field private columnWidths:[Lcom/itextpdf/layout/property/UnitValue;

.field private currentColumn:I

.field private currentRow:I

.field private document:Lcom/itextpdf/layout/Document;

.field private footer:Lcom/itextpdf/layout/element/Table;

.field private header:Lcom/itextpdf/layout/element/Table;

.field private isComplete:Z

.field private lastAddedRow:[Lcom/itextpdf/layout/element/Cell;

.field private lastAddedRowGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/element/Table$RowRange;",
            ">;"
        }
    .end annotation
.end field

.field private rowWindowStart:I

.field private rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Lcom/itextpdf/layout/element/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private skipFirstHeader:Z

.field private skipLastFooter:Z

.field protected tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/element/Table;-><init>(IZ)V

    .line 248
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "numColumns"    # I
    .param p2, "largeTable"    # Z

    .line 217
    invoke-direct {p0}, Lcom/itextpdf/layout/element/BlockElement;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    .line 79
    const/4 v1, -0x1

    iput v1, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    .line 88
    iput v0, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    .line 218
    if-lez p1, :cond_0

    .line 221
    invoke-static {p1}, Lcom/itextpdf/layout/element/Table;->normalizeColumnWidths(I)[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/property/UnitValue;

    .line 222
    invoke-direct {p0, p2}, Lcom/itextpdf/layout/element/Table;->initializeLargeTable(Z)V

    .line 223
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->initializeRows()V

    .line 224
    return-void

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of columns in Table constructor must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([F)V
    .locals 1
    .param p1, "pointColumnWidths"    # [F

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/element/Table;-><init>([FZ)V

    .line 193
    return-void
.end method

.method public constructor <init>([FZ)V
    .locals 2
    .param p1, "columnWidths"    # [F
    .param p2, "largeTable"    # Z

    .line 112
    invoke-direct {p0}, Lcom/itextpdf/layout/element/BlockElement;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    .line 79
    const/4 v1, -0x1

    iput v1, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    .line 88
    iput v0, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    .line 113
    if-eqz p1, :cond_1

    .line 116
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p1}, Lcom/itextpdf/layout/element/Table;->normalizeColumnWidths([F)[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/property/UnitValue;

    .line 120
    invoke-direct {p0, p2}, Lcom/itextpdf/layout/element/Table;->initializeLargeTable(Z)V

    .line 121
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->initializeRows()V

    .line 122
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The widths array in table constructor can not have zero length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The widths array in table constructor can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([Lcom/itextpdf/layout/property/UnitValue;)V
    .locals 1
    .param p1, "columnWidths"    # [Lcom/itextpdf/layout/property/UnitValue;

    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/element/Table;-><init>([Lcom/itextpdf/layout/property/UnitValue;Z)V

    .line 173
    return-void
.end method

.method public constructor <init>([Lcom/itextpdf/layout/property/UnitValue;Z)V
    .locals 2
    .param p1, "columnWidths"    # [Lcom/itextpdf/layout/property/UnitValue;
    .param p2, "largeTable"    # Z

    .line 143
    invoke-direct {p0}, Lcom/itextpdf/layout/element/BlockElement;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    .line 79
    const/4 v1, -0x1

    iput v1, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    .line 88
    iput v0, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    .line 144
    if-eqz p1, :cond_1

    .line 147
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p1}, Lcom/itextpdf/layout/element/Table;->normalizeColumnWidths([Lcom/itextpdf/layout/property/UnitValue;)[Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/property/UnitValue;

    .line 151
    invoke-direct {p0, p2}, Lcom/itextpdf/layout/element/Table;->initializeLargeTable(Z)V

    .line 152
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->initializeRows()V

    .line 153
    return-void

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The widths array in table constructor can not have zero length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The widths array in table constructor can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cellBelongsToAnyRowGroup(Lcom/itextpdf/layout/element/Cell;Ljava/util/List;)Z
    .locals 4
    .param p1, "cell"    # Lcom/itextpdf/layout/element/Cell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/element/Cell;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/element/Table$RowRange;",
            ">;)Z"
        }
    .end annotation

    .line 954
    .local p2, "rowGroups":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/element/Table$RowRange;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Cell;->getRow()I

    move-result v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Table$RowRange;->getStartRow()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 955
    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Cell;->getRow()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v3

    if-gt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 954
    :goto_0
    return v0
.end method

.method private ensureCaptionPropertiesAreSet()V
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->caption:Lcom/itextpdf/layout/element/Div;

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Div;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v0

    const-string v1, "Caption"

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->setRole(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    .line 555
    return-void
.end method

.method private ensureFooterIsInitialized()V
    .locals 3

    .line 977
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    if-nez v0, :cond_3

    .line 978
    new-instance v0, Lcom/itextpdf/layout/element/Table;

    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/property/UnitValue;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/element/Table;-><init>([Lcom/itextpdf/layout/property/UnitValue;)V

    iput-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    .line 979
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Table;->getWidth()Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 980
    .local v0, "width":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/element/Table;->setWidth(Lcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/element/IElement;

    .line 981
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v1

    const-string v2, "TFoot"

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->setRole(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    .line 982
    const/16 v1, 0x72

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/element/Table;->hasOwnProperty(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 983
    iget-object v2, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/element/Table;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;

    invoke-virtual {v2, v1}, Lcom/itextpdf/layout/element/Table;->setBorderCollapse(Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;)Lcom/itextpdf/layout/element/Table;

    .line 985
    :cond_1
    const/16 v1, 0x73

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/element/Table;->hasOwnProperty(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 986
    iget-object v2, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/element/Table;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/layout/element/Table;->setHorizontalBorderSpacing(F)Lcom/itextpdf/layout/element/Table;

    .line 988
    :cond_2
    const/16 v1, 0x74

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/element/Table;->hasOwnProperty(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 989
    iget-object v2, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/element/Table;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/layout/element/Table;->setVerticalBorderSpacing(F)Lcom/itextpdf/layout/element/Table;

    .line 992
    .end local v0    # "width":Lcom/itextpdf/layout/property/UnitValue;
    :cond_3
    return-void
.end method

.method private ensureHeaderIsInitialized()V
    .locals 3

    .line 959
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    if-nez v0, :cond_3

    .line 960
    new-instance v0, Lcom/itextpdf/layout/element/Table;

    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/property/UnitValue;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/element/Table;-><init>([Lcom/itextpdf/layout/property/UnitValue;)V

    iput-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    .line 961
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Table;->getWidth()Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    .line 962
    .local v0, "width":Lcom/itextpdf/layout/property/UnitValue;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/element/Table;->setWidth(Lcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/element/IElement;

    .line 963
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Table;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v1

    const-string v2, "THead"

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->setRole(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    .line 964
    const/16 v1, 0x72

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/element/Table;->hasOwnProperty(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 965
    iget-object v2, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/element/Table;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;

    invoke-virtual {v2, v1}, Lcom/itextpdf/layout/element/Table;->setBorderCollapse(Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;)Lcom/itextpdf/layout/element/Table;

    .line 967
    :cond_1
    const/16 v1, 0x73

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/element/Table;->hasOwnProperty(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 968
    iget-object v2, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/element/Table;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/layout/element/Table;->setHorizontalBorderSpacing(F)Lcom/itextpdf/layout/element/Table;

    .line 970
    :cond_2
    const/16 v1, 0x74

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/element/Table;->hasOwnProperty(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 971
    iget-object v2, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/element/Table;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/layout/element/Table;->setVerticalBorderSpacing(F)Lcom/itextpdf/layout/element/Table;

    .line 974
    .end local v0    # "width":Lcom/itextpdf/layout/property/UnitValue;
    :cond_3
    return-void
.end method

.method private initializeLargeTable(Z)V
    .locals 1
    .param p1, "largeTable"    # Z

    .line 995
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/layout/element/Table;->isComplete:Z

    .line 996
    if-eqz p1, :cond_0

    .line 997
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lcom/itextpdf/layout/property/UnitValue;->createPercentValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Table;->setWidth(Lcom/itextpdf/layout/property/UnitValue;)Lcom/itextpdf/layout/element/IElement;

    .line 998
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Table;->setFixedLayout()Lcom/itextpdf/layout/element/Table;

    .line 1000
    :cond_0
    return-void
.end method

.method private initializeRows()V
    .locals 1

    .line 949
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    .line 950
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    .line 951
    return-void
.end method

.method private static normalizeColumnWidths(I)[Lcom/itextpdf/layout/property/UnitValue;
    .locals 1
    .param p0, "numberOfColumns"    # I

    .line 908
    new-array v0, p0, [Lcom/itextpdf/layout/property/UnitValue;

    .line 909
    .local v0, "normalized":[Lcom/itextpdf/layout/property/UnitValue;
    return-object v0
.end method

.method private static normalizeColumnWidths([F)[Lcom/itextpdf/layout/property/UnitValue;
    .locals 4
    .param p0, "pointColumnWidths"    # [F

    .line 888
    array-length v0, p0

    new-array v0, v0, [Lcom/itextpdf/layout/property/UnitValue;

    .line 889
    .local v0, "normalized":[Lcom/itextpdf/layout/property/UnitValue;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 890
    aget v2, p0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 891
    aget v2, p0, v1

    invoke-static {v2}, Lcom/itextpdf/layout/property/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v2

    aput-object v2, v0, v1

    .line 889
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 894
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static normalizeColumnWidths([Lcom/itextpdf/layout/property/UnitValue;)[Lcom/itextpdf/layout/property/UnitValue;
    .locals 4
    .param p0, "unitColumnWidths"    # [Lcom/itextpdf/layout/property/UnitValue;

    .line 898
    array-length v0, p0

    new-array v0, v0, [Lcom/itextpdf/layout/property/UnitValue;

    .line 899
    .local v0, "normalized":[Lcom/itextpdf/layout/property/UnitValue;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 900
    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/itextpdf/layout/property/UnitValue;->getValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    new-instance v2, Lcom/itextpdf/layout/property/UnitValue;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/itextpdf/layout/property/UnitValue;-><init>(Lcom/itextpdf/layout/property/UnitValue;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    aput-object v2, v0, v1

    .line 899
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 904
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addCell(Lcom/itextpdf/layout/element/BlockElement;)Lcom/itextpdf/layout/element/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/itextpdf/layout/element/IElement;",
            ">(",
            "Lcom/itextpdf/layout/element/BlockElement<",
            "TT;>;)",
            "Lcom/itextpdf/layout/element/Table;"
        }
    .end annotation

    .line 633
    .local p1, "blockElement":Lcom/itextpdf/layout/element/BlockElement;, "Lcom/itextpdf/layout/element/BlockElement<TT;>;"
    new-instance v0, Lcom/itextpdf/layout/element/Cell;

    invoke-direct {v0}, Lcom/itextpdf/layout/element/Cell;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Cell;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Cell;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    move-result-object v0

    return-object v0
.end method

.method public addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;
    .locals 5
    .param p1, "cell"    # Lcom/itextpdf/layout/element/Cell;

    .line 589
    iget-boolean v0, p0, Lcom/itextpdf/layout/element/Table;->isComplete:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRow:[Lcom/itextpdf/layout/element/Cell;

    if-nez v0, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "The large table was completed. It\'s prohibited to use it anymore. Created different Table instance instead."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_1
    :goto_0
    iget v0, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/property/UnitValue;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 596
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Table;->startNewRow()Lcom/itextpdf/layout/element/Table;

    .line 598
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    iget v1, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    iget v2, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/element/Cell;

    iget v1, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    .line 599
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    goto :goto_0

    .line 605
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    iget v0, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    iget v1, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    iget-object v2, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/property/UnitValue;

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/itextpdf/layout/element/Cell;->updateCellIndexes(III)Lcom/itextpdf/layout/element/Cell;

    .line 608
    :goto_1
    iget v0, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    iget v1, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_5

    .line 609
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/property/UnitValue;

    array-length v1, v1

    new-array v1, v1, [Lcom/itextpdf/layout/element/Cell;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 613
    :cond_5
    iget v0, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    .local v0, "i":I
    :goto_2
    iget v1, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_8

    .line 614
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    iget v2, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int v2, v0, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itextpdf/layout/element/Cell;

    .line 615
    .local v1, "row":[Lcom/itextpdf/layout/element/Cell;
    iget v2, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    .local v2, "j":I
    :goto_3
    iget v3, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Cell;->getColspan()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_7

    .line 616
    aget-object v3, v1, v2

    if-nez v3, :cond_6

    .line 617
    aput-object p1, v1, v2

    .line 615
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 613
    .end local v1    # "row":[Lcom/itextpdf/layout/element/Cell;
    .end local v2    # "j":I
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 621
    .end local v0    # "i":I
    :cond_8
    iget v0, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    invoke-virtual {p1}, Lcom/itextpdf/layout/element/Cell;->getColspan()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    .line 622
    return-object p0
.end method

.method public addCell(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/element/Table;
    .locals 1
    .param p1, "image"    # Lcom/itextpdf/layout/element/Image;

    .line 643
    new-instance v0, Lcom/itextpdf/layout/element/Cell;

    invoke-direct {v0}, Lcom/itextpdf/layout/element/Cell;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Cell;->add(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/element/Cell;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    move-result-object v0

    return-object v0
.end method

.method public addCell(Ljava/lang/String;)Lcom/itextpdf/layout/element/Table;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 653
    new-instance v0, Lcom/itextpdf/layout/element/Cell;

    invoke-direct {v0}, Lcom/itextpdf/layout/element/Cell;-><init>()V

    new-instance v1, Lcom/itextpdf/layout/element/Paragraph;

    invoke-direct {v1, p1}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/element/Cell;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Cell;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    move-result-object v0

    return-object v0
.end method

.method public addFooterCell(Lcom/itextpdf/layout/element/BlockElement;)Lcom/itextpdf/layout/element/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/itextpdf/layout/element/IElement;",
            ">(",
            "Lcom/itextpdf/layout/element/BlockElement<",
            "TT;>;)",
            "Lcom/itextpdf/layout/element/Table;"
        }
    .end annotation

    .line 432
    .local p1, "blockElement":Lcom/itextpdf/layout/element/BlockElement;, "Lcom/itextpdf/layout/element/BlockElement<TT;>;"
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->ensureFooterIsInitialized()V

    .line 433
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/BlockElement;)Lcom/itextpdf/layout/element/Table;

    .line 434
    return-object p0
.end method

.method public addFooterCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;
    .locals 1
    .param p1, "footerCell"    # Lcom/itextpdf/layout/element/Cell;

    .line 417
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->ensureFooterIsInitialized()V

    .line 418
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    .line 419
    return-object p0
.end method

.method public addFooterCell(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/element/Table;
    .locals 1
    .param p1, "image"    # Lcom/itextpdf/layout/element/Image;

    .line 446
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->ensureFooterIsInitialized()V

    .line 447
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/element/Table;

    .line 448
    return-object p0
.end method

.method public addFooterCell(Ljava/lang/String;)Lcom/itextpdf/layout/element/Table;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 460
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->ensureFooterIsInitialized()V

    .line 461
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->addCell(Ljava/lang/String;)Lcom/itextpdf/layout/element/Table;

    .line 462
    return-object p0
.end method

.method public addHeaderCell(Lcom/itextpdf/layout/element/BlockElement;)Lcom/itextpdf/layout/element/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/itextpdf/layout/element/IElement;",
            ">(",
            "Lcom/itextpdf/layout/element/BlockElement<",
            "TT;>;)",
            "Lcom/itextpdf/layout/element/Table;"
        }
    .end annotation

    .line 366
    .local p1, "blockElement":Lcom/itextpdf/layout/element/BlockElement;, "Lcom/itextpdf/layout/element/BlockElement<TT;>;"
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->ensureHeaderIsInitialized()V

    .line 367
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/BlockElement;)Lcom/itextpdf/layout/element/Table;

    .line 368
    return-object p0
.end method

.method public addHeaderCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;
    .locals 1
    .param p1, "headerCell"    # Lcom/itextpdf/layout/element/Cell;

    .line 351
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->ensureHeaderIsInitialized()V

    .line 352
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Cell;)Lcom/itextpdf/layout/element/Table;

    .line 353
    return-object p0
.end method

.method public addHeaderCell(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/element/Table;
    .locals 1
    .param p1, "image"    # Lcom/itextpdf/layout/element/Image;

    .line 380
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->ensureHeaderIsInitialized()V

    .line 381
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->addCell(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/element/Table;

    .line 382
    return-object p0
.end method

.method public addHeaderCell(Ljava/lang/String;)Lcom/itextpdf/layout/element/Table;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 394
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->ensureHeaderIsInitialized()V

    .line 395
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->addCell(Ljava/lang/String;)Lcom/itextpdf/layout/element/Table;

    .line 396
    return-object p0
.end method

.method public complete()V
    .locals 1

    .line 750
    iget-boolean v0, p0, Lcom/itextpdf/layout/element/Table;->isComplete:Z

    if-nez v0, :cond_0

    .line 751
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/layout/element/Table;->isComplete:Z

    .line 752
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Table;->flush()V

    .line 753
    return-void

    .line 750
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 5

    .line 684
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Table;->getRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    .line 685
    .local v0, "rendererRoot":Lcom/itextpdf/layout/renderer/TableRenderer;
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->childElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/IElement;

    .line 686
    .local v2, "child":Lcom/itextpdf/layout/element/IElement;
    iget-boolean v3, p0, Lcom/itextpdf/layout/element/Table;->isComplete:Z

    if-nez v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/element/Cell;

    iget-object v4, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRowGroups:Ljava/util/List;

    invoke-direct {p0, v3, v4}, Lcom/itextpdf/layout/element/Table;->cellBelongsToAnyRowGroup(Lcom/itextpdf/layout/element/Cell;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    .line 687
    .local v3, "childShouldBeAdded":Z
    :goto_2
    if-eqz v3, :cond_2

    .line 688
    invoke-interface {v2}, Lcom/itextpdf/layout/element/IElement;->createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/renderer/TableRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 690
    .end local v2    # "child":Lcom/itextpdf/layout/element/IElement;
    .end local v3    # "childShouldBeAdded":Z
    :cond_2
    goto :goto_0

    .line 691
    :cond_3
    return-object v0
.end method

.method public flush()V
    .locals 4

    .line 760
    const/4 v0, 0x0

    .line 761
    .local v0, "row":[Lcom/itextpdf/layout/element/Cell;
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 762
    .local v1, "rowNum":I
    iget-object v2, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 763
    iget-object v2, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Lcom/itextpdf/layout/element/Cell;

    .line 765
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/layout/element/Table;->document:Lcom/itextpdf/layout/Document;

    invoke-virtual {v2, p0}, Lcom/itextpdf/layout/Document;->add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/Document;

    .line 766
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 767
    iput-object v0, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRow:[Lcom/itextpdf/layout/element/Cell;

    .line 769
    :cond_1
    return-void
.end method

.method public flushContent()V
    .locals 6

    .line 777
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRowGroups:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRowGroups:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Table$RowRange;

    iget v0, v0, Lcom/itextpdf/layout/element/Table$RowRange;->startRow:I

    .line 780
    .local v0, "firstRow":I
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRowGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/element/Table$RowRange;

    iget v1, v1, Lcom/itextpdf/layout/element/Table$RowRange;->finishRow:I

    .line 782
    .local v1, "lastRow":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .local v2, "toRemove":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/element/IElement;>;"
    iget-object v3, p0, Lcom/itextpdf/layout/element/Table;->childElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/element/IElement;

    .line 784
    .local v4, "cell":Lcom/itextpdf/layout/element/IElement;
    move-object v5, v4

    check-cast v5, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual {v5}, Lcom/itextpdf/layout/element/Cell;->getRow()I

    move-result v5

    if-lt v5, v0, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/itextpdf/layout/element/Cell;

    invoke-virtual {v5}, Lcom/itextpdf/layout/element/Cell;->getRow()I

    move-result v5

    if-gt v5, v1, :cond_1

    .line 785
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    .end local v4    # "cell":Lcom/itextpdf/layout/element/IElement;
    :cond_1
    goto :goto_0

    .line 788
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/layout/element/Table;->childElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 790
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sub-int v4, v1, v0

    if-ge v3, v4, :cond_3

    .line 791
    iget-object v4, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    iget v5, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int v5, v0, v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 790
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 793
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    iget v4, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int v4, v0, v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/itextpdf/layout/element/Cell;

    iput-object v3, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRow:[Lcom/itextpdf/layout/element/Cell;

    .line 794
    iget-object v3, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRowGroups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-virtual {v3}, Lcom/itextpdf/layout/element/Table$RowRange;->getFinishRow()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    .line 796
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRowGroups:Ljava/util/List;

    .line 797
    return-void

    .line 778
    .end local v0    # "firstRow":I
    .end local v1    # "lastRow":I
    .end local v2    # "toRemove":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/element/IElement;>;"
    :cond_4
    :goto_2
    return-void
.end method

.method public getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 2

    .line 876
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    if-nez v0, :cond_0

    .line 877
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    const-string v1, "Table"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/layout/element/Table;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    return-object v0
.end method

.method public getCaption()Lcom/itextpdf/layout/element/Div;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->caption:Lcom/itextpdf/layout/element/Div;

    return-object v0
.end method

.method public getCell(II)Lcom/itextpdf/layout/element/Cell;
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 665
    iget v0, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 666
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    iget v1, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/element/Cell;

    aget-object v0, v0, p2

    .line 668
    .local v0, "cell":Lcom/itextpdf/layout/element/Cell;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Cell;->getRow()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/layout/element/Cell;->getCol()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 669
    return-object v0

    .line 672
    .end local v0    # "cell":Lcom/itextpdf/layout/element/Cell;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnWidth(I)Lcom/itextpdf/layout/property/UnitValue;
    .locals 1
    .param p1, "column"    # I

    .line 321
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/property/UnitValue;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getFooter()Lcom/itextpdf/layout/element/Table;
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    return-object v0
.end method

.method public getHeader()Lcom/itextpdf/layout/element/Table;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    return-object v0
.end method

.method public getLastRowBottomBorder()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/borders/Border;",
            ">;"
        }
    .end annotation

    .line 810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v0, "horizontalBorder":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/borders/Border;>;"
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRow:[Lcom/itextpdf/layout/element/Cell;

    if-eqz v1, :cond_3

    .line 812
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRow:[Lcom/itextpdf/layout/element/Cell;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 813
    aget-object v2, v2, v1

    .line 814
    .local v2, "cell":Lcom/itextpdf/layout/element/Cell;
    const/4 v3, 0x0

    .line 815
    .local v3, "border":Lcom/itextpdf/layout/borders/Border;
    if-eqz v2, :cond_2

    .line 816
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Lcom/itextpdf/layout/element/Cell;->hasProperty(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 817
    invoke-virtual {v2, v4}, Lcom/itextpdf/layout/element/Cell;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/itextpdf/layout/borders/Border;

    goto :goto_1

    .line 818
    :cond_0
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Lcom/itextpdf/layout/element/Cell;->hasProperty(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 819
    invoke-virtual {v2, v4}, Lcom/itextpdf/layout/element/Cell;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/itextpdf/layout/borders/Border;

    goto :goto_1

    .line 821
    :cond_1
    invoke-virtual {v2, v4}, Lcom/itextpdf/layout/element/Cell;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/itextpdf/layout/borders/Border;

    .line 824
    :cond_2
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    .end local v2    # "cell":Lcom/itextpdf/layout/element/Cell;
    .end local v3    # "border":Lcom/itextpdf/layout/borders/Border;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 828
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public getNumberOfColumns()I
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/property/UnitValue;

    array-length v0, v0

    return v0
.end method

.method public getNumberOfRows()I
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 4

    .line 703
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    instance-of v0, v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 706
    .local v0, "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/layout/element/Table;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 707
    return-object v0

    .line 709
    .end local v0    # "renderer":Lcom/itextpdf/layout/renderer/IRenderer;
    :cond_0
    const-class v0, Lcom/itextpdf/layout/element/Table;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 710
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "Invalid renderer for Table: must be inherited from TableRenderer"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 715
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_1
    iget-boolean v0, p0, Lcom/itextpdf/layout/element/Table;->isComplete:Z

    if-eqz v0, :cond_2

    .line 717
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRow:[Lcom/itextpdf/layout/element/Cell;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 719
    .local v0, "allRows":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/element/Table$RowRange;>;"
    new-instance v1, Lcom/itextpdf/layout/element/Table$RowRange;

    iget v2, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    iget-object v3, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/element/Table$RowRange;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    iput-object v0, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRowGroups:Ljava/util/List;

    .line 721
    .end local v0    # "allRows":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/element/Table$RowRange;>;"
    goto :goto_0

    .line 723
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/Table;->getRowGroups()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRowGroups:Ljava/util/List;

    .line 725
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/itextpdf/layout/element/Table;->isComplete:Z

    if-eqz v0, :cond_4

    .line 726
    new-instance v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    new-instance v1, Lcom/itextpdf/layout/element/Table$RowRange;

    iget v2, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    iget-object v3, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/layout/element/Table$RowRange;-><init>(II)V

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/layout/renderer/TableRenderer;-><init>(Lcom/itextpdf/layout/element/Table;Lcom/itextpdf/layout/element/Table$RowRange;)V

    return-object v0

    .line 728
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRowGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->lastAddedRowGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/Table$RowRange;

    iget v0, v0, Lcom/itextpdf/layout/element/Table$RowRange;->finishRow:I

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    .line 729
    .local v0, "rowWindowFinish":I
    :goto_1
    new-instance v1, Lcom/itextpdf/layout/renderer/TableRenderer;

    new-instance v2, Lcom/itextpdf/layout/element/Table$RowRange;

    iget v3, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    invoke-direct {v2, v3, v0}, Lcom/itextpdf/layout/element/Table$RowRange;-><init>(II)V

    invoke-direct {v1, p0, v2}, Lcom/itextpdf/layout/renderer/TableRenderer;-><init>(Lcom/itextpdf/layout/element/Table;Lcom/itextpdf/layout/element/Table$RowRange;)V

    return-object v1
.end method

.method protected getRowGroups()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/element/Table$RowRange;",
            ">;"
        }
    .end annotation

    .line 913
    iget v0, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/property/UnitValue;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    add-int/lit8 v0, v0, -0x1

    .line 914
    .local v0, "lastRowWeCanFlush":I
    :goto_0
    array-length v1, v1

    new-array v1, v1, [I

    .line 915
    .local v1, "cellBottomRows":[I
    iget v2, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    .line 916
    .local v2, "currentRowGroupStart":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 917
    .local v3, "rowGroups":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/element/Table$RowRange;>;"
    :goto_1
    if-gt v2, v0, :cond_8

    .line 918
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v5, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/property/UnitValue;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 919
    aput v2, v1, v4

    .line 918
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 921
    .end local v4    # "i":I
    :cond_1
    const/4 v4, 0x0

    aget v5, v1, v4

    iget-object v6, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    aget v7, v1, v4

    iget v8, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/itextpdf/layout/element/Cell;

    aget-object v4, v6, v4

    invoke-virtual {v4}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v4

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    .line 922
    .local v5, "maxRowGroupFinish":I
    const/4 v4, 0x0

    .line 923
    .local v4, "converged":Z
    const/4 v6, 0x1

    .line 924
    .local v6, "rowGroupComplete":Z
    :goto_3
    if-nez v4, :cond_6

    .line 925
    const/4 v4, 0x1

    .line 926
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    iget-object v8, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/property/UnitValue;

    array-length v8, v8

    if-ge v7, v8, :cond_5

    .line 927
    :goto_5
    aget v8, v1, v7

    if-ge v8, v0, :cond_2

    aget v8, v1, v7

    iget-object v9, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    aget v10, v1, v7

    iget v11, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int/2addr v10, v11

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/itextpdf/layout/element/Cell;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    if-ge v8, v5, :cond_2

    .line 928
    aget v8, v1, v7

    iget-object v9, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    aget v10, v1, v7

    iget v11, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int/2addr v10, v11

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/itextpdf/layout/element/Cell;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v9

    add-int/2addr v8, v9

    aput v8, v1, v7

    goto :goto_5

    .line 930
    :cond_2
    aget v8, v1, v7

    iget-object v9, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    aget v10, v1, v7

    iget v11, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int/2addr v10, v11

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/itextpdf/layout/element/Cell;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    if-le v8, v5, :cond_3

    .line 931
    aget v8, v1, v7

    iget-object v9, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    aget v10, v1, v7

    iget v11, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int/2addr v10, v11

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/itextpdf/layout/element/Cell;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v5, v8, -0x1

    .line 932
    const/4 v4, 0x0

    goto :goto_6

    .line 933
    :cond_3
    aget v8, v1, v7

    iget-object v9, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    aget v10, v1, v7

    iget v11, p0, Lcom/itextpdf/layout/element/Table;->rowWindowStart:I

    sub-int/2addr v10, v11

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/itextpdf/layout/element/Cell;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/itextpdf/layout/element/Cell;->getRowspan()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    if-ge v8, v5, :cond_4

    .line 935
    const/4 v6, 0x0

    .line 926
    :cond_4
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .end local v7    # "i":I
    :cond_5
    goto/16 :goto_3

    .line 939
    :cond_6
    if-eqz v6, :cond_7

    .line 940
    new-instance v7, Lcom/itextpdf/layout/element/Table$RowRange;

    invoke-direct {v7, v2, v5}, Lcom/itextpdf/layout/element/Table$RowRange;-><init>(II)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    :cond_7
    add-int/lit8 v2, v5, 0x1

    .line 943
    .end local v4    # "converged":Z
    .end local v5    # "maxRowGroupFinish":I
    .end local v6    # "rowGroupComplete":Z
    goto/16 :goto_1

    .line 945
    :cond_8
    return-object v3
.end method

.method public isComplete()Z
    .locals 1

    .line 735
    iget-boolean v0, p0, Lcom/itextpdf/layout/element/Table;->isComplete:Z

    return v0
.end method

.method public isSkipFirstHeader()Z
    .locals 1

    .line 481
    iget-boolean v0, p0, Lcom/itextpdf/layout/element/Table;->skipFirstHeader:Z

    return v0
.end method

.method public isSkipLastFooter()Z
    .locals 1

    .line 503
    iget-boolean v0, p0, Lcom/itextpdf/layout/element/Table;->skipLastFooter:Z

    return v0
.end method

.method protected makeNewRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 884
    new-instance v0, Lcom/itextpdf/layout/renderer/TableRenderer;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/renderer/TableRenderer;-><init>(Lcom/itextpdf/layout/element/Table;)V

    return-object v0
.end method

.method public setAutoLayout()Lcom/itextpdf/layout/element/Table;
    .locals 2

    .line 300
    const/16 v0, 0x5d

    const-string v1, "auto"

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/element/Table;->setProperty(ILjava/lang/Object;)V

    .line 301
    return-object p0
.end method

.method public setBorderCollapse(Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;)Lcom/itextpdf/layout/element/Table;
    .locals 1
    .param p1, "collapsePropertyValue"    # Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;

    .line 842
    const/16 v0, 0x72

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Table;->setProperty(ILjava/lang/Object;)V

    .line 843
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->setBorderCollapse(Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;)Lcom/itextpdf/layout/element/Table;

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    if-eqz v0, :cond_1

    .line 847
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->setBorderCollapse(Lcom/itextpdf/layout/property/BorderCollapsePropertyValue;)Lcom/itextpdf/layout/element/Table;

    .line 849
    :cond_1
    return-object p0
.end method

.method public setCaption(Lcom/itextpdf/layout/element/Div;)Lcom/itextpdf/layout/element/Table;
    .locals 0
    .param p1, "caption"    # Lcom/itextpdf/layout/element/Div;

    .line 529
    iput-object p1, p0, Lcom/itextpdf/layout/element/Table;->caption:Lcom/itextpdf/layout/element/Div;

    .line 530
    if-eqz p1, :cond_0

    .line 531
    invoke-direct {p0}, Lcom/itextpdf/layout/element/Table;->ensureCaptionPropertiesAreSet()V

    .line 533
    :cond_0
    return-object p0
.end method

.method public setCaption(Lcom/itextpdf/layout/element/Div;Lcom/itextpdf/layout/property/CaptionSide;)Lcom/itextpdf/layout/element/Table;
    .locals 1
    .param p1, "caption"    # Lcom/itextpdf/layout/element/Div;
    .param p2, "side"    # Lcom/itextpdf/layout/property/CaptionSide;

    .line 546
    if-eqz p1, :cond_0

    .line 547
    const/16 v0, 0x77

    invoke-virtual {p1, v0, p2}, Lcom/itextpdf/layout/element/Div;->setProperty(ILjava/lang/Object;)V

    .line 549
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/Table;->setCaption(Lcom/itextpdf/layout/element/Div;)Lcom/itextpdf/layout/element/Table;

    .line 550
    return-object p0
.end method

.method public setDocument(Lcom/itextpdf/layout/Document;)V
    .locals 0
    .param p1, "document"    # Lcom/itextpdf/layout/Document;

    .line 801
    iput-object p1, p0, Lcom/itextpdf/layout/element/Table;->document:Lcom/itextpdf/layout/Document;

    .line 802
    return-void
.end method

.method public setExtendBottomRow(Z)Lcom/itextpdf/layout/element/Table;
    .locals 2
    .param p1, "isExtended"    # Z

    .line 832
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x56

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Table;->setProperty(ILjava/lang/Object;)V

    .line 833
    return-object p0
.end method

.method public setExtendBottomRowOnSplit(Z)Lcom/itextpdf/layout/element/Table;
    .locals 2
    .param p1, "isExtended"    # Z

    .line 837
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x57

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Table;->setProperty(ILjava/lang/Object;)V

    .line 838
    return-object p0
.end method

.method public setFixedLayout()Lcom/itextpdf/layout/element/Table;
    .locals 2

    .line 277
    const/16 v0, 0x5d

    const-string v1, "fixed"

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/element/Table;->setProperty(ILjava/lang/Object;)V

    .line 278
    return-object p0
.end method

.method public setHorizontalBorderSpacing(F)Lcom/itextpdf/layout/element/Table;
    .locals 2
    .param p1, "spacing"    # F

    .line 853
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x73

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Table;->setProperty(ILjava/lang/Object;)V

    .line 854
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->setHorizontalBorderSpacing(F)Lcom/itextpdf/layout/element/Table;

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    if-eqz v0, :cond_1

    .line 858
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->setHorizontalBorderSpacing(F)Lcom/itextpdf/layout/element/Table;

    .line 860
    :cond_1
    return-object p0
.end method

.method public setSkipFirstHeader(Z)Lcom/itextpdf/layout/element/Table;
    .locals 0
    .param p1, "skipFirstHeader"    # Z

    .line 492
    iput-boolean p1, p0, Lcom/itextpdf/layout/element/Table;->skipFirstHeader:Z

    .line 493
    return-object p0
.end method

.method public setSkipLastFooter(Z)Lcom/itextpdf/layout/element/Table;
    .locals 0
    .param p1, "skipLastFooter"    # Z

    .line 514
    iput-boolean p1, p0, Lcom/itextpdf/layout/element/Table;->skipLastFooter:Z

    .line 515
    return-object p0
.end method

.method public setVerticalBorderSpacing(F)Lcom/itextpdf/layout/element/Table;
    .locals 2
    .param p1, "spacing"    # F

    .line 864
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x74

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Table;->setProperty(ILjava/lang/Object;)V

    .line 865
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->header:Lcom/itextpdf/layout/element/Table;

    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->setVerticalBorderSpacing(F)Lcom/itextpdf/layout/element/Table;

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->footer:Lcom/itextpdf/layout/element/Table;

    if-eqz v0, :cond_1

    .line 869
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/element/Table;->setVerticalBorderSpacing(F)Lcom/itextpdf/layout/element/Table;

    .line 871
    :cond_1
    return-object p0
.end method

.method public startNewRow()Lcom/itextpdf/layout/element/Table;
    .locals 2

    .line 572
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/layout/element/Table;->currentColumn:I

    .line 573
    iget v0, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/layout/element/Table;->currentRow:I

    .line 574
    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 575
    iget-object v0, p0, Lcom/itextpdf/layout/element/Table;->rows:Ljava/util/List;

    iget-object v1, p0, Lcom/itextpdf/layout/element/Table;->columnWidths:[Lcom/itextpdf/layout/property/UnitValue;

    array-length v1, v1

    new-array v1, v1, [Lcom/itextpdf/layout/element/Cell;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_0
    return-object p0
.end method

.method public useAllAvailableWidth()Lcom/itextpdf/layout/element/Table;
    .locals 2

    .line 310
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lcom/itextpdf/layout/property/UnitValue;->createPercentValue(F)Lcom/itextpdf/layout/property/UnitValue;

    move-result-object v0

    const/16 v1, 0x4d

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/layout/element/Table;->setProperty(ILjava/lang/Object;)V

    .line 311
    return-object p0
.end method
