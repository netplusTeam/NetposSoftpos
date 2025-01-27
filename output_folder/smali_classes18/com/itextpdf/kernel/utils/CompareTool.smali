.class public Lcom/itextpdf/kernel/utils/CompareTool;
.super Ljava/lang/Object;
.source "CompareTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/utils/CompareTool$CompareToolExecutionException;,
        Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;,
        Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;,
        Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;,
        Lcom/itextpdf/kernel/utils/CompareTool$ImageNameComparator;,
        Lcom/itextpdf/kernel/utils/CompareTool$DiffPngFileFilter;,
        Lcom/itextpdf/kernel/utils/CompareTool$CmpPngFileFilter;,
        Lcom/itextpdf/kernel/utils/CompareTool$PngFileFilter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COPYRIGHT_REGEXP:Ljava/lang/String; = "\u00a9\\d+-\\d+ iText Group NV"

.field private static final COPYRIGHT_REPLACEMENT:Ljava/lang/String; = "\u00a9<copyright years> iText Group NV"

.field private static final DIFFERENT_PAGES:Ljava/lang/String; = "File file://<filename> differs on page <pagenumber>."

.field private static final FILE_PROTOCOL:Ljava/lang/String; = "file://"

.field private static final IGNORED_AREAS_PREFIX:Ljava/lang/String; = "ignored_areas_"

.field private static final NEW_LINES:Ljava/lang/String; = "\\r|\\n"

.field private static final UNEXPECTED_NUMBER_OF_PAGES:Ljava/lang/String; = "Unexpected number of pages for <filename>."

.field private static final VERSION_REGEXP:Ljava/lang/String; = "(iText\u00ae( pdfX(FA|fa)| DITO)?|iTextSharp\u2122) (\\d+\\.)+\\d+(-SNAPSHOT)?"

.field private static final VERSION_REPLACEMENT:Ljava/lang/String; = "iText\u00ae <version>"


# instance fields
.field private cmpImage:Ljava/lang/String;

.field private cmpPagesRef:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field private cmpPdf:Ljava/lang/String;

.field private cmpPdfName:Ljava/lang/String;

.field private cmpProps:Lcom/itextpdf/kernel/pdf/ReaderProperties;

.field private compareByContentErrorsLimit:I

.field private compareExec:Ljava/lang/String;

.field private encryptionCompareEnabled:Z

.field private generateCompareByContentXmlReport:Z

.field private gsExec:Ljava/lang/String;

.field private metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

.field private outImage:Ljava/lang/String;

.field private outPagesRef:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field private outPdf:Ljava/lang/String;

.field private outPdfName:Ljava/lang/String;

.field private outProps:Lcom/itextpdf/kernel/pdf/ReaderProperties;

.field private useCachedPagesForComparison:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 128
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContentErrorsLimit:I

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->generateCompareByContentXmlReport:Z

    .line 157
    iput-boolean v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->encryptionCompareEnabled:Z

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->useCachedPagesForComparison:Z

    .line 166
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "gsExec"    # Ljava/lang/String;
    .param p2, "compareExec"    # Ljava/lang/String;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContentErrorsLimit:I

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->generateCompareByContentXmlReport:Z

    .line 157
    iput-boolean v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->encryptionCompareEnabled:Z

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->useCachedPagesForComparison:Z

    .line 169
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->gsExec:Ljava/lang/String;

    .line 170
    iput-object p2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->compareExec:Ljava/lang/String;

    .line 171
    return-void
.end method

.method static synthetic access$300(Lcom/itextpdf/kernel/utils/CompareTool;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/itextpdf/kernel/utils/CompareTool;

    .line 128
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdfName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/itextpdf/kernel/utils/CompareTool;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/itextpdf/kernel/utils/CompareTool;

    .line 128
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdfName:Ljava/lang/String;

    return-object v0
.end method

.method private compareArraysExtended(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z
    .locals 6
    .param p1, "outArray"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p2, "cmpArray"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p3, "currentPath"    # Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    .param p4, "compareResult"    # Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;

    .line 1601
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1602
    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    .line 1603
    const-string v1, "Found null. Expected PdfArray."

    invoke-virtual {p4, p3, v1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1604
    :cond_0
    return v0

    .line 1605
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    .line 1606
    if-eqz p4, :cond_2

    if-eqz p3, :cond_2

    .line 1607
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "PdfArrays. Lengths are different. Expected: {0}. Found: {1}."

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p3, v1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1608
    :cond_2
    return v0

    .line 1610
    :cond_3
    const/4 v1, 0x1

    .line 1611
    .local v1, "arraysAreEqual":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_9

    .line 1612
    if-eqz p3, :cond_4

    .line 1613
    invoke-virtual {p3, v2}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->pushArrayItemToPath(I)V

    .line 1614
    :cond_4
    invoke-virtual {p1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {p2, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p3, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareObjects(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    move v4, v3

    goto :goto_1

    :cond_5
    move v4, v0

    :goto_1
    move v1, v4

    .line 1615
    if-eqz p3, :cond_6

    .line 1616
    invoke-virtual {p3}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->pop()V

    .line 1617
    :cond_6
    if-nez v1, :cond_8

    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->isMessageLimitReached()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1618
    :cond_7
    return v0

    .line 1611
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1621
    .end local v2    # "i":I
    :cond_9
    return v1
.end method

.method private compareBooleansExtended(Lcom/itextpdf/kernel/pdf/PdfBoolean;Lcom/itextpdf/kernel/pdf/PdfBoolean;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z
    .locals 4
    .param p1, "outBoolean"    # Lcom/itextpdf/kernel/pdf/PdfBoolean;
    .param p2, "cmpBoolean"    # Lcom/itextpdf/kernel/pdf/PdfBoolean;
    .param p3, "currentPath"    # Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    .param p4, "compareResult"    # Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;

    .line 1718
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1719
    return v2

    .line 1721
    :cond_0
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-eqz p3, :cond_1

    .line 1722
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "PdfBoolean. Expected: {0}. Found: {1}."

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p3, v1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1723
    :cond_1
    return v0
.end method

.method private compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 17
    .param p1, "outPath"    # Ljava/lang/String;
    .param p2, "differenceImagePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1162
    .local p3, "ignoredAreas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;>;"
    move-object/from16 v13, p0

    const-string v1, "\" not found"

    const-string v2, "File \""

    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/utils/CompareTool;->printOutCmpDirectories()V

    .line 1163
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Comparing by content.........."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1166
    :try_start_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v4, v13, Lcom/itextpdf/kernel/utils/CompareTool;->outPdf:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/utils/CompareTool;->getOutReaderProperties()Lcom/itextpdf/kernel/pdf/ReaderProperties;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V

    new-instance v4, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v5, v13, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/kernel/counter/event/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v14, v0

    .line 1169
    .local v14, "outDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    nop

    .line 1170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 1171
    .local v15, "outPages":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v13, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    .line 1172
    invoke-direct {v13, v14, v15, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->loadPagesFromReader(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;Ljava/util/List;)V

    .line 1176
    :try_start_1
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v4, v13, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdf:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/utils/CompareTool;->getCmpReaderProperties()Lcom/itextpdf/kernel/pdf/ReaderProperties;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V

    new-instance v4, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v5, v13, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/kernel/counter/event/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v12, v0

    .line 1179
    .local v12, "cmpDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    nop

    .line 1180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 1181
    .local v11, "cmpPages":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v13, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    .line 1182
    invoke-direct {v13, v12, v11, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->loadPagesFromReader(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;Ljava/util/List;)V

    .line 1184
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1185
    const/4 v6, 0x0

    const-string v2, "Documents have different numbers of pages."

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/utils/CompareTool;->compareVisuallyAndCombineReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1187
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;

    iget v1, v13, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContentErrorsLimit:I

    invoke-direct {v0, v13, v1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;I)V

    move-object v10, v0

    .line 1188
    .local v10, "compareResult":Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v0

    .line 1189
    .local v9, "equalPages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1190
    new-instance v1, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;

    iget-object v2, v13, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v3, v13, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-direct {v1, v13, v2, v3}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    .line 1191
    .local v1, "currentPath":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v13, v2, v3, v1, v10}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1192
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1189
    .end local v1    # "currentPath":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1195
    .end local v0    # "i":I
    :cond_2
    new-instance v4, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    .line 1196
    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-direct {v4, v13, v0, v1}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    .line 1197
    .local v4, "catalogPath":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    new-instance v6, Ljava/util/LinkedHashSet;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Pages:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v7, 0x0

    aput-object v1, v0, v7

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Metadata:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1198
    .local v6, "ignoredCatalogEntries":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-object/from16 v1, p0

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;Ljava/util/Set;)Z

    .line 1201
    iget-boolean v0, v13, Lcom/itextpdf/kernel/utils/CompareTool;->encryptionCompareEnabled:Z

    if-eqz v0, :cond_3

    .line 1202
    invoke-direct {v13, v14, v12, v10}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDocumentsEncryption(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)V

    .line 1205
    :cond_3
    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 1206
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 1208
    iget-boolean v0, v13, Lcom/itextpdf/kernel/utils/CompareTool;->generateCompareByContentXmlReport:Z

    if-eqz v0, :cond_4

    .line 1209
    new-instance v0, Ljava/io/File;

    iget-object v1, v13, Lcom/itextpdf/kernel/utils/CompareTool;->outPdf:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1210
    .local v1, "outPdfName":Ljava/lang/String;
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "report.xml"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 1212
    .local v2, "xml":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v10, v2}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->writeReportToXml(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1216
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1217
    goto :goto_2

    .line 1216
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1213
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 1214
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "outPdfName":Ljava/lang/String;
    .end local v2    # "xml":Ljava/io/FileOutputStream;
    .end local v4    # "catalogPath":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    .end local v6    # "ignoredCatalogEntries":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    .end local v9    # "equalPages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "compareResult":Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;
    .end local v11    # "cmpPages":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    .end local v12    # "cmpDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    .end local v14    # "outDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    .end local v15    # "outPages":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    .end local p1    # "outPath":Ljava/lang/String;
    .end local p2    # "differenceImagePrefix":Ljava/lang/String;
    .end local p3    # "ignoredAreas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;>;"
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1216
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "outPdfName":Ljava/lang/String;
    .restart local v2    # "xml":Ljava/io/FileOutputStream;
    .restart local v4    # "catalogPath":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    .restart local v6    # "ignoredCatalogEntries":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    .restart local v9    # "equalPages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "compareResult":Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;
    .restart local v11    # "cmpPages":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    .restart local v12    # "cmpDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    .restart local v14    # "outDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    .restart local v15    # "outPages":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    .restart local p1    # "outPath":Ljava/lang/String;
    .restart local p2    # "differenceImagePrefix":Ljava/lang/String;
    .restart local p3    # "ignoredAreas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;>;"
    :goto_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1217
    throw v0

    .line 1208
    .end local v1    # "outPdfName":Ljava/lang/String;
    .end local v2    # "xml":Ljava/io/FileOutputStream;
    :cond_4
    move-object/from16 v3, p1

    .line 1221
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    invoke-virtual {v10}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->isOk()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1222
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1223
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 1224
    const/4 v0, 0x0

    return-object v0

    .line 1226
    :cond_5
    invoke-virtual {v10}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->getReport()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v7, p0

    move-object v1, v9

    .end local v9    # "equalPages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v1, "equalPages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v9, p1

    move-object v2, v10

    .end local v10    # "compareResult":Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;
    .local v2, "compareResult":Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;
    move-object/from16 v10, p2

    move-object v5, v11

    .end local v11    # "cmpPages":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    .local v5, "cmpPages":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    move-object/from16 v11, p3

    move-object/from16 v16, v12

    .end local v12    # "cmpDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    .local v16, "cmpDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    move-object v12, v1

    invoke-direct/range {v7 .. v12}, Lcom/itextpdf/kernel/utils/CompareTool;->compareVisuallyAndCombineReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1177
    .end local v1    # "equalPages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "compareResult":Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;
    .end local v4    # "catalogPath":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    .end local v5    # "cmpPages":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    .end local v6    # "ignoredCatalogEntries":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    .end local v16    # "cmpDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    :catch_1
    move-exception v0

    move-object/from16 v3, p1

    .line 1178
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v13, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdf:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1167
    .end local v0    # "e":Ljava/io/IOException;
    .end local v14    # "outDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    .end local v15    # "outPages":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    :catch_2
    move-exception v0

    move-object/from16 v3, p1

    .line 1168
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v13, Lcom/itextpdf/kernel/utils/CompareTool;->outPdf:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z
    .locals 6
    .param p1, "outDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "cmpDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "currentPath"    # Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    .param p4, "compareResult"    # Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;

    .line 1311
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method private compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;Ljava/util/Set;)Z
    .locals 19
    .param p1, "outDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "cmpDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "currentPath"    # Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    .param p4, "compareResult"    # Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;",
            "Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;)Z"
        }
    .end annotation

    .line 1315
    .local p5, "excludedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-class v6, Lcom/itextpdf/kernel/utils/CompareTool;

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 1316
    :cond_1
    const-string v6, "One of the dictionaries is null, the other is not."

    invoke-virtual {v4, v3, v6}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1317
    return v7

    .line 1319
    :cond_2
    const/4 v8, 0x1

    .line 1321
    .local v8, "dictsAreSame":Z
    new-instance v9, Ljava/util/TreeSet;

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1322
    .local v9, "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1323
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 1324
    .local v11, "key":Lcom/itextpdf/kernel/pdf/PdfName;
    if-nez v8, :cond_4

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->isMessageLimitReached()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1325
    :cond_3
    return v7

    .line 1328
    :cond_4
    if-eqz v5, :cond_5

    invoke-interface {v5, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1329
    move-object/from16 v18, v9

    goto/16 :goto_6

    .line 1331
    :cond_5
    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1f

    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1f

    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->ModDate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v18, v9

    goto/16 :goto_6

    .line 1332
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isStream()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isStream()Z

    move-result v12

    if-eqz v12, :cond_8

    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1333
    move-object/from16 v18, v9

    goto/16 :goto_6

    .line 1332
    :cond_7
    move-object/from16 v18, v9

    goto/16 :goto_6

    .line 1334
    :cond_8
    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->FontName:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    goto :goto_1

    :cond_9
    move-object/from16 v18, v9

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1335
    :cond_a
    :goto_1
    invoke-virtual {v2, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v12

    .line 1336
    .local v12, "cmpObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v12, :cond_10

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/PdfObject;->isName()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x2b

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-lez v14, :cond_10

    .line 1337
    invoke-virtual {v1, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v14

    .line 1338
    .local v14, "outObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/PdfObject;->isName()Z

    move-result v16

    const/16 v17, 0x2

    const-string v7, "PdfDictionary {0} entry: Expected: {1}. Found: {2}"

    if-eqz v16, :cond_e

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v15, -0x1

    if-ne v13, v15, :cond_b

    move-object/from16 v18, v9

    goto :goto_2

    .line 1343
    :cond_b
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v5, 0x2b

    invoke-virtual {v15, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1344
    .local v13, "cmpName":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v9

    .end local v9    # "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    .local v18, "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1345
    .local v5, "outName":Ljava/lang/String;
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 1346
    if-eqz v4, :cond_c

    if-eqz v3, :cond_c

    .line 1347
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v9, v16

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v9, v16

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v9, v17

    invoke-static {v7, v9}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1348
    :cond_c
    const/4 v7, 0x0

    move v8, v7

    .line 1351
    .end local v5    # "outName":Ljava/lang/String;
    .end local v13    # "cmpName":Ljava/lang/String;
    :cond_d
    move-object/from16 v5, p5

    move-object/from16 v9, v18

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1338
    .end local v18    # "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    .restart local v9    # "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    :cond_e
    move-object/from16 v18, v9

    .line 1339
    .end local v9    # "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    .restart local v18    # "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    :goto_2
    if-eqz v4, :cond_f

    if-eqz v3, :cond_f

    .line 1340
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    aput-object v9, v5, v13

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x1

    aput-object v9, v5, v13

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v17

    invoke-static {v7, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1341
    :cond_f
    const/4 v8, 0x0

    move-object/from16 v5, p5

    move-object/from16 v9, v18

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1336
    .end local v14    # "outObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v18    # "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    .restart local v9    # "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    :cond_10
    move-object/from16 v18, v9

    const/4 v13, 0x1

    .line 1356
    .end local v9    # "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    .end local v12    # "cmpObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v18    # "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    :goto_3
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->ParentTree:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->PageLabels:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x0

    goto :goto_5

    .line 1405
    :cond_11
    if-eqz v3, :cond_12

    .line 1406
    invoke-virtual {v3, v11}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->pushDictItemToPath(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 1408
    :cond_12
    const/4 v5, 0x0

    invoke-virtual {v1, v11, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    invoke-virtual {v2, v11, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v0, v7, v9, v3, v4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareObjects(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result v7

    if-eqz v7, :cond_13

    if-eqz v8, :cond_13

    goto :goto_4

    :cond_13
    move v13, v5

    :goto_4
    move v8, v13

    .line 1409
    if-eqz v3, :cond_14

    .line 1410
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->pop()V

    .line 1412
    .end local v11    # "key":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_14
    move v7, v5

    move-object/from16 v9, v18

    move-object/from16 v5, p5

    goto/16 :goto_0

    .line 1356
    .restart local v11    # "key":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_15
    const/4 v5, 0x0

    .line 1357
    :goto_5
    if-eqz v3, :cond_16

    .line 1358
    invoke-virtual {v3, v11}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->pushDictItemToPath(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 1360
    :cond_16
    invoke-virtual {v1, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v7

    .line 1361
    .local v7, "outNumTree":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v2, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v9

    .line 1362
    .local v9, "cmpNumTree":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 1363
    .local v12, "outItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 1364
    .local v13, "cmpItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    const/4 v14, 0x0

    invoke-direct {v0, v7, v14, v12}, Lcom/itextpdf/kernel/utils/CompareTool;->flattenNumTree(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfNumber;Ljava/util/LinkedList;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v15

    .line 1365
    .local v15, "outLeftover":Lcom/itextpdf/kernel/pdf/PdfNumber;
    invoke-direct {v0, v9, v14, v13}, Lcom/itextpdf/kernel/utils/CompareTool;->flattenNumTree(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfNumber;Ljava/util/LinkedList;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v14

    .line 1366
    .local v14, "cmpLeftover":Lcom/itextpdf/kernel/pdf/PdfNumber;
    const-string v5, "Number tree ends with a key which is invalid according to the PDF specification."

    if-eqz v15, :cond_18

    .line 1367
    invoke-static {v6}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1368
    if-nez v14, :cond_18

    .line 1369
    if-eqz v4, :cond_17

    if-eqz v3, :cond_17

    .line 1370
    const-string v1, "Number tree unexpectedly ends with a key"

    invoke-virtual {v4, v3, v1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1372
    :cond_17
    const/4 v8, 0x0

    .line 1375
    :cond_18
    if-eqz v14, :cond_1a

    .line 1376
    invoke-static {v6}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1377
    if-nez v15, :cond_1a

    .line 1378
    if-eqz v4, :cond_19

    if-eqz v3, :cond_19

    .line 1379
    const-string v1, "Number tree was expected to end with a key (although it is invalid according to the specification), but ended with a value"

    invoke-virtual {v4, v3, v1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1381
    :cond_19
    const/4 v8, 0x0

    .line 1384
    :cond_1a
    if-eqz v15, :cond_1c

    if-eqz v14, :cond_1c

    invoke-virtual {v0, v15, v14}, Lcom/itextpdf/kernel/utils/CompareTool;->compareNumbers(Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfNumber;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1385
    if-eqz v4, :cond_1b

    if-eqz v3, :cond_1b

    .line 1386
    const-string v1, "Number tree was expected to end with a different key (although it is invalid according to the specification)"

    invoke-virtual {v4, v3, v1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1388
    :cond_1b
    const/4 v8, 0x0

    .line 1390
    :cond_1c
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-direct {v1, v12, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Ljava/lang/Iterable;I)V

    .line 1391
    .local v1, "outArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-direct {v5, v13, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Ljava/lang/Iterable;I)V

    move-object v2, v5

    .line 1392
    .local v2, "cmpArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareArraysExtended(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 1393
    if-eqz v4, :cond_1d

    if-eqz v3, :cond_1d

    .line 1394
    const-string v5, "Number trees were flattened, compared and found to be different."

    invoke-virtual {v4, v3, v5}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1396
    :cond_1d
    const/4 v5, 0x0

    move v8, v5

    .line 1399
    :cond_1e
    if-eqz v3, :cond_20

    .line 1400
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->pop()V

    goto :goto_6

    .line 1331
    .end local v1    # "outArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v2    # "cmpArray":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v7    # "outNumTree":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v12    # "outItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    .end local v13    # "cmpItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    .end local v14    # "cmpLeftover":Lcom/itextpdf/kernel/pdf/PdfNumber;
    .end local v15    # "outLeftover":Lcom/itextpdf/kernel/pdf/PdfNumber;
    .end local v18    # "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    .local v9, "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    :cond_1f
    move-object/from16 v18, v9

    .line 1323
    .end local v9    # "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    .end local v11    # "key":Lcom/itextpdf/kernel/pdf/PdfName;
    .restart local v18    # "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    :cond_20
    :goto_6
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p5

    move-object/from16 v9, v18

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1413
    .end local v18    # "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    .restart local v9    # "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    :cond_21
    return v8
.end method

.method private compareDocumentsEncryption(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)V
    .locals 21
    .param p1, "outDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "cmpDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p3, "compareResult"    # Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;

    .line 1253
    move-object/from16 v12, p0

    move-object/from16 v13, p3

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTrailer()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Encrypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v14

    .line 1254
    .local v14, "outEncrypt":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTrailer()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Encrypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v15

    .line 1256
    .local v15, "cmpEncrypt":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v14, :cond_0

    if-nez v15, :cond_0

    .line 1257
    return-void

    .line 1260
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;

    move-object/from16 v10, p1

    move-object/from16 v9, p2

    invoke-direct {v0, v12, v9, v10}, Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    move-object v8, v0

    .line 1261
    .local v8, "trailerPath":Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;
    if-nez v14, :cond_1

    .line 1262
    const-string v0, "Expected encrypted document."

    invoke-virtual {v13, v8, v0}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1263
    return-void

    .line 1265
    :cond_1
    if-nez v15, :cond_2

    .line 1266
    const-string v0, "Expected not encrypted document."

    invoke-virtual {v13, v8, v0}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1267
    return-void

    .line 1270
    :cond_2
    new-instance v5, Ljava/util/LinkedHashSet;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->O:Lcom/itextpdf/kernel/pdf/PdfName;

    const/16 v16, 0x0

    aput-object v1, v0, v16

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->U:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v7, 0x1

    aput-object v1, v0, v7

    const/4 v1, 0x2

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->OE:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->UE:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Perms:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->CF:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Recipients:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1271
    .local v5, "ignoredEncryptEntries":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;

    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v15}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-direct {v0, v12, v1, v2}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    move-object v6, v0

    .line 1272
    .local v6, "objectPath":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object v3, v6

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;Ljava/util/Set;)Z

    .line 1274
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v14, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 1275
    .local v0, "outCfDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v15, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 1276
    .local v1, "cmpCfDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object/from16 v19, v6

    move-object v2, v8

    goto/16 :goto_2

    .line 1277
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    if-nez v1, :cond_7

    .line 1278
    :cond_6
    const-string v2, "One of the dictionaries is null, the other is not."

    invoke-virtual {v13, v6, v2}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    move-object/from16 v19, v6

    move-object v2, v8

    goto :goto_2

    .line 1280
    :cond_7
    new-instance v2, Ljava/util/TreeSet;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1281
    .local v2, "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1282
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 1283
    .local v4, "key":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {v6, v4}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->pushDictItemToPath(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 1284
    new-instance v11, Ljava/util/LinkedHashSet;

    move-object/from16 v17, v2

    .end local v2    # "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    .local v17, "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    new-array v2, v7, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v18, Lcom/itextpdf/kernel/pdf/PdfName;->Recipients:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v18, v2, v16

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1285
    .local v11, "excludedKeys":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v18

    move-object/from16 v19, v6

    .end local v6    # "objectPath":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    .local v19, "objectPath":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    move-object/from16 v6, p0

    move/from16 v20, v7

    move-object v7, v2

    move-object v2, v8

    .end local v8    # "trailerPath":Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;
    .local v2, "trailerPath":Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;
    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, p3

    invoke-direct/range {v6 .. v11}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;Ljava/util/Set;)Z

    .line 1286
    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->pop()V

    .line 1287
    .end local v4    # "key":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v11    # "excludedKeys":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    move-object/from16 v10, p1

    move-object/from16 v9, p2

    move-object v8, v2

    move-object/from16 v2, v17

    move-object/from16 v6, v19

    move/from16 v7, v20

    goto :goto_1

    .line 1282
    .end local v17    # "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    .end local v19    # "objectPath":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    .local v2, "mergedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    .restart local v6    # "objectPath":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    .restart local v8    # "trailerPath":Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;
    :cond_8
    move-object/from16 v17, v2

    move-object/from16 v19, v6

    move-object v2, v8

    .line 1290
    .end local v6    # "objectPath":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    .end local v8    # "trailerPath":Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;
    .local v2, "trailerPath":Lcom/itextpdf/kernel/utils/CompareTool$TrailerPath;
    .restart local v19    # "objectPath":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    :goto_2
    return-void
.end method

.method private compareImagesOfPdfs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 19
    .param p1, "outPath"    # Ljava/lang/String;
    .param p2, "differenceImagePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1014
    .local p3, "equalPages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$PngFileFilter;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcom/itextpdf/kernel/utils/CompareTool$PngFileFilter;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/utils/CompareTool$1;)V

    invoke-static {v2, v0}, Lcom/itextpdf/io/util/FileUtil;->listFilesInDirectoryByFilter(Ljava/lang/String;Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1015
    .local v5, "imageFiles":[Ljava/io/File;
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$CmpPngFileFilter;

    invoke-direct {v0, v1, v4}, Lcom/itextpdf/kernel/utils/CompareTool$CmpPngFileFilter;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/utils/CompareTool$1;)V

    invoke-static {v2, v0}, Lcom/itextpdf/io/util/FileUtil;->listFilesInDirectoryByFilter(Ljava/lang/String;Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v6

    .line 1016
    .local v6, "cmpImageFiles":[Ljava/io/File;
    const/4 v0, 0x0

    .line 1017
    .local v0, "bUnexpectedNumberOfPages":Z
    array-length v7, v5

    array-length v8, v6

    if-eq v7, v8, :cond_0

    .line 1018
    const/4 v0, 0x1

    move v7, v0

    goto :goto_0

    .line 1017
    :cond_0
    move v7, v0

    .line 1020
    .end local v0    # "bUnexpectedNumberOfPages":Z
    .local v7, "bUnexpectedNumberOfPages":Z
    :goto_0
    array-length v0, v5

    array-length v8, v6

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1021
    .local v8, "cnt":I
    const/4 v0, 0x1

    if-lt v8, v0, :cond_9

    .line 1025
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$ImageNameComparator;

    invoke-direct {v0, v1, v4}, Lcom/itextpdf/kernel/utils/CompareTool$ImageNameComparator;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/utils/CompareTool$1;)V

    invoke-static {v5, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1026
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$ImageNameComparator;

    invoke-direct {v0, v1, v4}, Lcom/itextpdf/kernel/utils/CompareTool$ImageNameComparator;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/utils/CompareTool$1;)V

    invoke-static {v6, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1029
    const/4 v9, 0x0

    .line 1030
    .local v9, "imageMagickInitError":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1032
    .local v10, "imageMagickHelper":Lcom/itextpdf/io/util/ImageMagickHelper;
    :try_start_0
    new-instance v0, Lcom/itextpdf/io/util/ImageMagickHelper;

    iget-object v11, v1, Lcom/itextpdf/kernel/utils/CompareTool;->compareExec:Ljava/lang/String;

    invoke-direct {v0, v11}, Lcom/itextpdf/io/util/ImageMagickHelper;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v0

    .line 1033
    const/4 v0, 0x1

    .line 1038
    .local v0, "compareExecIsOk":Z
    goto :goto_1

    .line 1034
    .end local v0    # "compareExecIsOk":Z
    :catch_0
    move-exception v0

    .line 1035
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v11, 0x0

    .line 1036
    .local v11, "compareExecIsOk":Z
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 1037
    const-class v12, Lcom/itextpdf/kernel/utils/CompareTool;

    invoke-static {v12}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    move v0, v11

    .line 1040
    .end local v11    # "compareExecIsOk":Z
    .local v0, "compareExecIsOk":Z
    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    .local v11, "diffPages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    .line 1043
    .local v12, "differentPagesFail":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v8, :cond_5

    .line 1044
    if-eqz v3, :cond_1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1045
    move-object/from16 v15, p2

    move/from16 v17, v8

    goto/16 :goto_4

    .line 1046
    :cond_1
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Comparing page "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, v13, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, ": "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v16, v5, v13

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    move/from16 v17, v8

    .end local v8    # "cnt":I
    .local v17, "cnt":I
    invoke-static/range {v16 .. v16}, Lcom/itextpdf/io/util/UrlUtil;->getNormalizedFileUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " ..."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1047
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v14, v13, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v14, v5, v13

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/itextpdf/io/util/UrlUtil;->getNormalizedFileUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1048
    new-instance v3, Ljava/io/FileInputStream;

    aget-object v4, v5, v13

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v3, "is1":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileInputStream;

    aget-object v8, v6, v13

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1050
    .local v4, "is2":Ljava/io/FileInputStream;
    invoke-direct {v1, v3, v4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareStreams(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v8

    .line 1051
    .local v8, "cmpResult":Z
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1052
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1053
    if-nez v8, :cond_4

    .line 1054
    const-string v12, "Page is different!"

    .line 1055
    add-int/lit8 v14, v13, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    if-eqz v0, :cond_3

    .line 1057
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v15, p2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v16, v13, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, ".png"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1058
    .local v2, "diffName":Ljava/lang/String;
    aget-object v14, v5, v13

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    aget-object v16, v6, v13

    .line 1059
    move-object/from16 v18, v3

    .end local v3    # "is1":Ljava/io/FileInputStream;
    .local v18, "is1":Ljava/io/FileInputStream;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1058
    invoke-virtual {v10, v14, v3, v2}, Lcom/itextpdf/io/util/ImageMagickHelper;->runImageMagickImageCompare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1060
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1061
    .local v3, "diffFile":Ljava/io/File;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v16, v2

    .end local v2    # "diffName":Ljava/lang/String;
    .local v16, "diffName":Ljava/lang/String;
    const-string v2, "\nPlease, examine file://"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1062
    invoke-static {v3}, Lcom/itextpdf/io/util/UrlUtil;->toNormalizedURI(Ljava/io/File;)Ljava/net/URI;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, " for more details."

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 1058
    .end local v3    # "diffFile":Ljava/io/File;
    .end local v16    # "diffName":Ljava/lang/String;
    .restart local v2    # "diffName":Ljava/lang/String;
    :cond_2
    move-object/from16 v16, v2

    .end local v2    # "diffName":Ljava/lang/String;
    .restart local v16    # "diffName":Ljava/lang/String;
    goto :goto_3

    .line 1056
    .end local v16    # "diffName":Ljava/lang/String;
    .end local v18    # "is1":Ljava/io/FileInputStream;
    .local v3, "is1":Ljava/io/FileInputStream;
    :cond_3
    move-object/from16 v15, p2

    move-object/from16 v18, v3

    .line 1065
    .end local v3    # "is1":Ljava/io/FileInputStream;
    .restart local v18    # "is1":Ljava/io/FileInputStream;
    :goto_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 1067
    .end local v18    # "is1":Ljava/io/FileInputStream;
    .restart local v3    # "is1":Ljava/io/FileInputStream;
    :cond_4
    move-object/from16 v15, p2

    move-object/from16 v18, v3

    .end local v3    # "is1":Ljava/io/FileInputStream;
    .restart local v18    # "is1":Ljava/io/FileInputStream;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " done."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1043
    .end local v4    # "is2":Ljava/io/FileInputStream;
    .end local v8    # "cmpResult":Z
    .end local v18    # "is1":Ljava/io/FileInputStream;
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v8, v17

    const/4 v4, 0x0

    goto/16 :goto_2

    .end local v17    # "cnt":I
    .local v8, "cnt":I
    :cond_5
    move-object/from16 v15, p2

    move/from16 v17, v8

    .line 1070
    .end local v8    # "cnt":I
    .end local v13    # "i":I
    .restart local v17    # "cnt":I
    const-string v2, "<filename>"

    if-eqz v12, :cond_7

    .line 1071
    iget-object v3, v1, Lcom/itextpdf/kernel/utils/CompareTool;->outPdf:Ljava/lang/String;

    invoke-static {v3}, Lcom/itextpdf/io/util/UrlUtil;->toNormalizedURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "File file://<filename> differs on page <pagenumber>."

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v11}, Lcom/itextpdf/kernel/utils/CompareTool;->listDiffPagesAsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "<pagenumber>"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1072
    .local v2, "errorMessage":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 1073
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1075
    :cond_6
    return-object v2

    .line 1077
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_7
    if-eqz v7, :cond_8

    .line 1078
    iget-object v3, v1, Lcom/itextpdf/kernel/utils/CompareTool;->outPdf:Ljava/lang/String;

    const-string v4, "Unexpected number of pages for <filename>."

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1081
    :cond_8
    const/4 v2, 0x0

    return-object v2

    .line 1022
    .end local v0    # "compareExecIsOk":Z
    .end local v9    # "imageMagickInitError":Ljava/lang/String;
    .end local v10    # "imageMagickHelper":Lcom/itextpdf/io/util/ImageMagickHelper;
    .end local v11    # "diffPages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "differentPagesFail":Ljava/lang/String;
    .end local v17    # "cnt":I
    .restart local v8    # "cnt":I
    :cond_9
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$CompareToolExecutionException;

    const-string v2, "No files for comparing. The result or sample pdf file is not processed by GhostScript."

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/utils/CompareTool$CompareToolExecutionException;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;Ljava/lang/String;)V

    throw v0
.end method

.method private compareLinkAnnotations(Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;)Z
    .locals 14
    .param p1, "cmpLink"    # Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;
    .param p2, "outLink"    # Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;
    .param p3, "cmpDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p4, "outDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 1740
    move-object v0, p0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getDestinationObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 1741
    .local v1, "cmpDestObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getDestinationObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 1743
    .local v2, "outDestObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 1744
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v4

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v5

    if-eq v4, v5, :cond_0

    .line 1745
    return v3

    .line 1747
    :cond_0
    const/4 v4, 0x0

    .line 1748
    .local v4, "explicitCmpDest":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v5, 0x0

    .line 1749
    .local v5, "explicitOutDest":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v6

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Dests:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getNameTree(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNameTree;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->getNames()Ljava/util/Map;

    move-result-object v6

    .line 1750
    .local v6, "cmpNamedDestinations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Dests:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getNameTree(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNameTree;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->getNames()Ljava/util/Map;

    move-result-object v7

    .line 1751
    .local v7, "outNamedDestinations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    .line 1761
    :sswitch_0
    move-object v8, v1

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1762
    move-object v8, v2

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1763
    goto :goto_0

    .line 1757
    :sswitch_1
    move-object v8, v1

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1758
    move-object v8, v2

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1759
    goto :goto_0

    .line 1753
    :sswitch_2
    move-object v4, v1

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1754
    move-object v5, v2

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1755
    nop

    .line 1768
    :goto_0
    invoke-direct {p0, v4}, Lcom/itextpdf/kernel/utils/CompareTool;->getExplicitDestinationPageNum(Lcom/itextpdf/kernel/pdf/PdfArray;)I

    move-result v8

    invoke-direct {p0, v5}, Lcom/itextpdf/kernel/utils/CompareTool;->getExplicitDestinationPageNum(Lcom/itextpdf/kernel/pdf/PdfArray;)I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 1769
    return v3

    .line 1774
    .end local v4    # "explicitCmpDest":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v5    # "explicitOutDest":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v6    # "cmpNamedDestinations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    .end local v7    # "outNamedDestinations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1775
    .local v4, "cmpDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1776
    .local v5, "outDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->size()I

    move-result v6

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->size()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 1777
    return v3

    .line 1779
    :cond_2
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Rect:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsRectangle(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v6

    .line 1780
    .local v6, "cmpRect":Lcom/itextpdf/kernel/geom/Rectangle;
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Rect:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsRectangle(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    .line 1782
    .local v7, "outRect":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v8

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_8

    .line 1783
    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v8

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_8

    .line 1784
    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v8

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_8

    .line 1785
    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v8

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v9

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_3

    goto :goto_3

    .line 1788
    :cond_3
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1789
    .local v9, "cmpEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1790
    .local v10, "cmpObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1791
    return v3

    .line 1792
    :cond_4
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v11

    .line 1793
    .local v11, "outObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v12

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v13

    if-eq v12, v13, :cond_5

    .line 1794
    return v3

    .line 1796
    :cond_5
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v12

    packed-switch v12, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 1802
    :pswitch_1
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 1803
    return v3

    .line 1806
    .end local v9    # "cmpEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    .end local v10    # "cmpObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v11    # "outObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_6
    :goto_2
    goto :goto_1

    .line 1807
    :cond_7
    const/4 v3, 0x1

    return v3

    .line 1786
    :cond_8
    :goto_3
    return v3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x6 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private compareNamesExtended(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z
    .locals 4
    .param p1, "outName"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "cmpName"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p3, "currentPath"    # Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    .param p4, "compareResult"    # Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;

    .line 1625
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1626
    return v1

    .line 1628
    :cond_0
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-eqz p3, :cond_1

    .line 1629
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "PdfName. Expected: {0}. Found: {1}"

    invoke-static {v1, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p3, v1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1630
    :cond_1
    return v0
.end method

.method private compareNumbersExtended(Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z
    .locals 4
    .param p1, "outNumber"    # Lcom/itextpdf/kernel/pdf/PdfNumber;
    .param p2, "cmpNumber"    # Lcom/itextpdf/kernel/pdf/PdfNumber;
    .param p3, "currentPath"    # Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    .param p4, "compareResult"    # Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;

    .line 1635
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1636
    return v1

    .line 1638
    :cond_0
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-eqz p3, :cond_1

    .line 1639
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    aput-object p1, v2, v1

    const-string v1, "PdfNumber. Expected: {0}. Found: {1}"

    invoke-static {v1, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p3, v1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1640
    :cond_1
    return v0
.end method

.method private compareStreams(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 6
    .param p1, "is1"    # Ljava/io/InputStream;
    .param p2, "is2"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1293
    const/high16 v0, 0x10000

    new-array v1, v0, [B

    .line 1294
    .local v1, "buffer1":[B
    new-array v0, v0, [B

    .line 1298
    .local v0, "buffer2":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 1299
    .local v2, "len1":I
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 1300
    .local v3, "len2":I
    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 1301
    return v4

    .line 1302
    :cond_0
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1303
    return v4

    .line 1304
    :cond_1
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 1305
    nop

    .line 1307
    const/4 v4, 0x1

    return v4

    .line 1304
    :cond_2
    goto :goto_0
.end method

.method private compareStreamsExtended(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z
    .locals 8
    .param p1, "outStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .param p2, "cmpStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .param p3, "currentPath"    # Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    .param p4, "compareResult"    # Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;

    .line 1536
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FlateDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1537
    .local v0, "toDecode":Z
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes(Z)[B

    move-result-object v1

    .line 1538
    .local v1, "outStreamBytes":[B
    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes(Z)[B

    move-result-object v2

    .line 1539
    .local v2, "cmpStreamBytes":[B
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1540
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result v3

    return v3

    .line 1542
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1543
    .local v3, "errorMessage":Ljava/lang/StringBuilder;
    array-length v4, v2

    array-length v5, v1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_1

    .line 1544
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    array-length v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v5, "PdfStream. Lengths are different. Expected: {0}. Found: {1}\n"

    invoke-static {v5, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1546
    :cond_1
    const-string v4, "PdfStream. Bytes are different.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    :goto_0
    invoke-direct {p0, v1, v2, v3}, Lcom/itextpdf/kernel/utils/CompareTool;->findBytesDifference([B[BLjava/lang/StringBuilder;)I

    move-result v4

    .line 1550
    .local v4, "firstDifferenceOffset":I
    if-eqz p4, :cond_2

    if-eqz p3, :cond_2

    .line 1551
    invoke-virtual {p3, v4}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->pushOffsetToPath(I)V

    .line 1552
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, p3, v5}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1553
    invoke-virtual {p3}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->pop()V

    .line 1555
    :cond_2
    return v6
.end method

.method private compareStringsExtended(Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z
    .locals 7
    .param p1, "outString"    # Lcom/itextpdf/kernel/pdf/PdfString;
    .param p2, "cmpString"    # Lcom/itextpdf/kernel/pdf/PdfString;
    .param p3, "currentPath"    # Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    .param p4, "compareResult"    # Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;

    .line 1645
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/utils/CompareTool;->convertPdfStringToBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/utils/CompareTool;->convertPdfStringToBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1646
    return v1

    .line 1648
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    .line 1649
    .local v0, "cmpStr":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v2

    .line 1650
    .local v2, "outStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1651
    .local v3, "errorMessage":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    if-eq v4, v5, :cond_1

    .line 1652
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "PdfString. Lengths are different. Expected: {0}. Found: {1}\n"

    invoke-static {v1, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1654
    :cond_1
    const-string v1, "PdfString. Characters are different.\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    :goto_0
    invoke-direct {p0, v2, v0, v3}, Lcom/itextpdf/kernel/utils/CompareTool;->findStringDifference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v1

    .line 1658
    .local v1, "firstDifferenceOffset":I
    if-eqz p4, :cond_2

    if-eqz p3, :cond_2

    .line 1659
    invoke-virtual {p3, v1}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->pushOffsetToPath(I)V

    .line 1660
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, p3, v4}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1661
    invoke-virtual {p3}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->pop()V

    .line 1663
    :cond_2
    return v6
.end method

.method private compareVisually(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1, "outPath"    # Ljava/lang/String;
    .param p2, "differenceImagePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 977
    .local p3, "ignoredAreas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->compareVisually(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private compareVisually(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p1, "outPath"    # Ljava/lang/String;
    .param p2, "differenceImagePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 981
    .local p3, "ignoredAreas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;>;"
    .local p4, "equalPages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 984
    :cond_0
    if-nez p2, :cond_2

    .line 985
    const-string v0, ""

    .line 986
    .local v0, "fileBasedPrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdfName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdfName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 990
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "diff_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 993
    .end local v0    # "fileBasedPrefix":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/utils/CompareTool;->prepareOutputDirs(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Comparing visually.........."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 997
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 998
    invoke-direct {p0, p1, p3}, Lcom/itextpdf/kernel/utils/CompareTool;->createIgnoredAreasPdfs(Ljava/lang/String;Ljava/util/Map;)V

    .line 1001
    :cond_3
    const/4 v0, 0x0

    .line 1003
    .local v0, "ghostscriptHelper":Lcom/itextpdf/io/util/GhostscriptHelper;
    :try_start_0
    new-instance v1, Lcom/itextpdf/io/util/GhostscriptHelper;

    iget-object v2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->gsExec:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/itextpdf/io/util/GhostscriptHelper;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1006
    nop

    .line 1008
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdf:Ljava/lang/String;

    iget-object v2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outImage:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/itextpdf/io/util/GhostscriptHelper;->runGhostScriptImageGeneration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdf:Ljava/lang/String;

    iget-object v2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpImage:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/itextpdf/io/util/GhostscriptHelper;->runGhostScriptImageGeneration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    invoke-direct {p0, p1, p2, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareImagesOfPdfs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1004
    :catch_0
    move-exception v1

    .line 1005
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/itextpdf/kernel/utils/CompareTool$CompareToolExecutionException;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/itextpdf/kernel/utils/CompareTool$CompareToolExecutionException;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;Ljava/lang/String;)V

    throw v2
.end method

.method private compareVisuallyAndCombineReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .param p1, "compareByFailContentReason"    # Ljava/lang/String;
    .param p2, "outPath"    # Ljava/lang/String;
    .param p3, "differenceImagePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1233
    .local p4, "ignoredAreas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;>;"
    .local p5, "equalPages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Fail"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1234
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Compare by content report:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1236
    .local v0, "compareByContentReport":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1237
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 1238
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/itextpdf/kernel/utils/CompareTool;->compareVisually(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 1239
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1241
    :cond_0
    return-object v1

    .line 1240
    :cond_1
    :goto_0
    const-string v2, "Compare by content fails. No visual differences"

    return-object v2
.end method

.method private convertPdfStringToBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B
    .locals 3
    .param p1, "pdfString"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 1708
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1709
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 1710
    .local v1, "encoding":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "UnicodeBig"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/itextpdf/io/font/PdfEncodings;->isPdfDocEncoding(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1711
    const-string v2, "PDF"

    invoke-static {v0, v2}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .local v2, "bytes":[B
    goto :goto_0

    .line 1713
    .end local v2    # "bytes":[B
    :cond_0
    invoke-static {v0, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 1714
    .restart local v2    # "bytes":[B
    :goto_0
    return-object v2
.end method

.method private createIgnoredAreasPdfs(Ljava/lang/String;Ljava/util/Map;)V
    .locals 17
    .param p1, "outPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1097
    .local p2, "ignoredAreas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ignored_areas_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdfName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v2, "outWriter":Lcom/itextpdf/kernel/pdf/PdfWriter;
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdfName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/lang/String;)V

    .line 1100
    .local v3, "cmpWriter":Lcom/itextpdf/kernel/pdf/PdfWriter;
    new-instance v5, Lcom/itextpdf/kernel/pdf/StampingProperties;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/StampingProperties;-><init>()V

    .line 1101
    .local v5, "properties":Lcom/itextpdf/kernel/pdf/StampingProperties;
    iget-object v6, v0, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/StampingProperties;->setEventCountingMetaInfo(Lcom/itextpdf/kernel/counter/event/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    .line 1102
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v8, v0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdf:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v2, v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)V

    .line 1103
    .local v6, "pdfOutDoc":Lcom/itextpdf/kernel/pdf/PdfDocument;
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v9, v0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdf:Ljava/lang/String;

    invoke-direct {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8, v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)V

    .line 1105
    .local v7, "pdfCmpDoc":Lcom/itextpdf/kernel/pdf/PdfDocument;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1106
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1107
    .local v10, "pageNumber":I
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 1109
    .local v11, "rectangles":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1110
    new-instance v12, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v6, v10}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 1111
    .local v12, "outCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    new-instance v13, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v7, v10}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 1113
    .local v13, "cmpCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1114
    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1115
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1116
    .local v15, "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    invoke-virtual {v12, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1117
    invoke-virtual {v13, v15}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1118
    .end local v15    # "rect":Lcom/itextpdf/kernel/geom/Rectangle;
    goto :goto_1

    .line 1119
    :cond_0
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1120
    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1122
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;>;"
    .end local v10    # "pageNumber":I
    .end local v11    # "rectangles":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;"
    .end local v12    # "outCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .end local v13    # "cmpCanvas":Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :cond_1
    goto :goto_0

    .line 1124
    :cond_2
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 1125
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 1127
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdfName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, v0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdfName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v8, v4}, Lcom/itextpdf/kernel/utils/CompareTool;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    return-void
.end method

.method private findBytesDifference([B[BLjava/lang/StringBuilder;)I
    .locals 20
    .param p1, "outStreamBytes"    # [B
    .param p2, "cmpStreamBytes"    # [B
    .param p3, "errorMessage"    # Ljava/lang/StringBuilder;

    .line 1563
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 1564
    .local v2, "numberOfDifferentBytes":I
    const/4 v3, 0x0

    .line 1565
    .local v3, "firstDifferenceOffset":I
    array-length v4, v1

    array-length v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1566
    .local v4, "minLength":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_1

    .line 1567
    aget-byte v7, v1, v5

    aget-byte v8, v0, v5

    if-eq v7, v8, :cond_0

    .line 1568
    add-int/lit8 v2, v2, 0x1

    .line 1569
    if-ne v2, v6, :cond_0

    .line 1570
    move v3, v5

    .line 1566
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1574
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x0

    .line 1575
    .local v5, "bytesDifference":Ljava/lang/String;
    const/4 v7, 0x0

    if-lez v2, :cond_2

    .line 1576
    const/16 v8, 0xa

    .line 1577
    .local v8, "diffBytesAreaL":I
    const/16 v9, 0xa

    .line 1578
    .local v9, "diffBytesAreaR":I
    sub-int v10, v3, v8

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1579
    .local v10, "lCmp":I
    array-length v11, v1

    add-int v12, v3, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1580
    .local v11, "rCmp":I
    sub-int v12, v3, v8

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1581
    .local v12, "lOut":I
    array-length v13, v0

    add-int v14, v3, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1584
    .local v13, "rOut":I
    new-instance v14, Ljava/lang/String;

    new-array v15, v6, [B

    aget-byte v16, v1, v3

    aput-byte v16, v15, v7

    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v14, v15, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v7, v14

    .line 1585
    .local v7, "cmpByte":Ljava/lang/String;
    new-instance v14, Ljava/lang/String;

    sub-int v15, v11, v10

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v14, v1, v10, v15, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v6, "\\r|\\n"

    const-string v15, " "

    invoke-virtual {v14, v6, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1586
    .local v14, "cmpByteNeighbours":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    move-object/from16 v17, v5

    move/from16 v18, v8

    const/4 v5, 0x1

    .end local v5    # "bytesDifference":Ljava/lang/String;
    .end local v8    # "diffBytesAreaL":I
    .local v17, "bytesDifference":Ljava/lang/String;
    .local v18, "diffBytesAreaL":I
    new-array v8, v5, [B

    aget-byte v5, v0, v3

    const/16 v16, 0x0

    aput-byte v5, v8, v16

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v8, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1587
    .local v1, "outByte":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    sub-int v8, v13, v12

    move/from16 v19, v9

    .end local v9    # "diffBytesAreaR":I
    .local v19, "diffBytesAreaR":I
    sget-object v9, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v12, v8, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v5, v6, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1588
    .local v5, "outBytesNeighbours":Ljava/lang/String;
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    .line 1589
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v8, 0x2

    aput-object v14, v6, v8

    const/4 v8, 0x3

    aput-object v1, v6, v8

    const/4 v8, 0x4

    aput-object v5, v6, v8

    const/4 v8, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    .line 1588
    const-string v8, "First bytes difference is encountered at index {0}. Expected: {1} ({2}). Found: {3} ({4}). Total number of different bytes: {5}"

    invoke-static {v8, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1590
    .end local v5    # "outBytesNeighbours":Ljava/lang/String;
    .end local v7    # "cmpByte":Ljava/lang/String;
    .end local v10    # "lCmp":I
    .end local v11    # "rCmp":I
    .end local v12    # "lOut":I
    .end local v13    # "rOut":I
    .end local v14    # "cmpByteNeighbours":Ljava/lang/String;
    .end local v17    # "bytesDifference":Ljava/lang/String;
    .end local v18    # "diffBytesAreaL":I
    .end local v19    # "diffBytesAreaR":I
    .local v1, "bytesDifference":Ljava/lang/String;
    goto :goto_1

    .line 1592
    .end local v1    # "bytesDifference":Ljava/lang/String;
    .local v5, "bytesDifference":Ljava/lang/String;
    :cond_2
    move-object/from16 v17, v5

    .end local v5    # "bytesDifference":Ljava/lang/String;
    .restart local v17    # "bytesDifference":Ljava/lang/String;
    move v3, v4

    .line 1593
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v1, v6

    const-string v5, "Bytes of the shorter array are the same as the first {0} bytes of the longer one."

    invoke-static {v5, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1596
    .end local v17    # "bytesDifference":Ljava/lang/String;
    .restart local v1    # "bytesDifference":Ljava/lang/String;
    :goto_1
    move-object/from16 v5, p3

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    return v3
.end method

.method private findStringDifference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 19
    .param p1, "outString"    # Ljava/lang/String;
    .param p2, "cmpString"    # Ljava/lang/String;
    .param p3, "errorMessage"    # Ljava/lang/StringBuilder;

    .line 1668
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 1669
    .local v2, "numberOfDifferentChars":I
    const/4 v3, 0x0

    .line 1670
    .local v3, "firstDifferenceOffset":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1671
    .local v4, "minLength":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_1

    .line 1672
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_0

    .line 1673
    add-int/lit8 v2, v2, 0x1

    .line 1674
    if-ne v2, v6, :cond_0

    .line 1675
    move v3, v5

    .line 1671
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1679
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x0

    .line 1680
    .local v5, "stringDifference":Ljava/lang/String;
    const/4 v7, 0x0

    if-lez v2, :cond_2

    .line 1681
    const/16 v8, 0xf

    .line 1682
    .local v8, "diffBytesAreaL":I
    const/16 v9, 0xf

    .line 1683
    .local v9, "diffBytesAreaR":I
    sub-int v10, v3, v8

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1684
    .local v10, "lCmp":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    add-int v12, v3, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1685
    .local v11, "rCmp":I
    sub-int v12, v3, v8

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1686
    .local v12, "lOut":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    add-int v14, v3, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1689
    .local v13, "rOut":I
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    .line 1690
    .local v14, "cmpByte":Ljava/lang/String;
    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const-string v6, "\\r|\\n"

    const-string v7, " "

    invoke-virtual {v15, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1691
    .local v15, "cmpByteNeighbours":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v18

    .line 1692
    .local v18, "outByte":Ljava/lang/String;
    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1693
    .local v1, "outBytesNeighbours":Ljava/lang/String;
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    .line 1694
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v17, 0x0

    aput-object v7, v6, v17

    const/4 v7, 0x1

    aput-object v14, v6, v7

    const/4 v7, 0x2

    aput-object v15, v6, v7

    const/4 v7, 0x3

    aput-object v18, v6, v7

    const/4 v7, 0x4

    aput-object v1, v6, v7

    const/4 v7, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v7

    .line 1693
    const-string v7, "First characters difference is encountered at index {0}.\nExpected: {1} ({2}).\nFound: {3} ({4}).\nTotal number of different characters: {5}"

    invoke-static {v7, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1695
    .end local v5    # "stringDifference":Ljava/lang/String;
    .end local v8    # "diffBytesAreaL":I
    .end local v9    # "diffBytesAreaR":I
    .end local v10    # "lCmp":I
    .end local v11    # "rCmp":I
    .end local v12    # "lOut":I
    .end local v13    # "rOut":I
    .end local v14    # "cmpByte":Ljava/lang/String;
    .end local v15    # "cmpByteNeighbours":Ljava/lang/String;
    .end local v18    # "outByte":Ljava/lang/String;
    .local v1, "stringDifference":Ljava/lang/String;
    goto :goto_1

    .line 1698
    .end local v1    # "stringDifference":Ljava/lang/String;
    .restart local v5    # "stringDifference":Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 1699
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v1, v7

    const-string v6, "All characters of the shorter string are the same as the first {0} characters of the longer one."

    invoke-static {v6, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1702
    .end local v5    # "stringDifference":Ljava/lang/String;
    .restart local v1    # "stringDifference":Ljava/lang/String;
    :goto_1
    move-object/from16 v5, p3

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1703
    return v3
.end method

.method private flattenNumTree(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfNumber;Ljava/util/LinkedList;)Lcom/itextpdf/kernel/pdf/PdfNumber;
    .locals 5
    .param p1, "dictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "leftOver"    # Lcom/itextpdf/kernel/pdf/PdfNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Lcom/itextpdf/kernel/pdf/PdfNumber;",
            "Ljava/util/LinkedList<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)",
            "Lcom/itextpdf/kernel/pdf/PdfNumber;"
        }
    .end annotation

    .line 1417
    .local p3, "items":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Nums:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 1418
    .local v0, "nums":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v0, :cond_3

    .line 1419
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1421
    if-nez p2, :cond_0

    .line 1422
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .local v2, "k":I
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    move v4, v2

    move-object v2, v1

    move v1, v4

    .local v1, "number":Lcom/itextpdf/kernel/pdf/PdfNumber;
    goto :goto_1

    .line 1424
    .end local v2    # "k":I
    .local v1, "k":I
    :cond_0
    move-object v2, p2

    .line 1425
    .local v2, "number":Lcom/itextpdf/kernel/pdf/PdfNumber;
    const/4 p2, 0x0

    .line 1427
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1428
    invoke-virtual {p3, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1429
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1419
    .end local v2    # "number":Lcom/itextpdf/kernel/pdf/PdfNumber;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1431
    .restart local v2    # "number":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :cond_1
    return-object v2

    .line 1419
    .end local v1    # "k":I
    .end local v2    # "number":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :cond_2
    goto :goto_3

    .line 1434
    :cond_3
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_4

    .line 1435
    const/4 v1, 0x0

    .restart local v1    # "k":I
    :goto_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1436
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 1437
    .local v2, "kid":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-direct {p0, v2, p2, p3}, Lcom/itextpdf/kernel/utils/CompareTool;->flattenNumTree(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfNumber;Ljava/util/LinkedList;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p2

    .line 1435
    .end local v2    # "kid":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1440
    .end local v1    # "k":I
    :cond_4
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private getExplicitDestinationPageNum(Lcom/itextpdf/kernel/pdf/PdfArray;)I
    .locals 4
    .param p1, "explicitDest"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1811
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 1813
    .local v0, "pageReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    .line 1814
    .local v1, "doc":Lcom/itextpdf/kernel/pdf/PdfDocument;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 1815
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1816
    return v2

    .line 1814
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1818
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "PdfLinkAnnotation comparison: Page not found."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getLinkAnnotations(ILcom/itextpdf/kernel/pdf/PdfDocument;)Ljava/util/List;
    .locals 6
    .param p1, "pageNum"    # I
    .param p2, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;",
            ">;"
        }
    .end annotation

    .line 1728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1729
    .local v0, "linkAnnotations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;>;"
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getAnnotations()Ljava/util/List;

    move-result-object v1

    .line 1730
    .local v1, "annotations":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 1731
    .local v3, "annotation":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Link:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1732
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1734
    .end local v3    # "annotation":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    :cond_0
    goto :goto_0

    .line 1735
    :cond_1
    return-object v0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "outPdf"    # Ljava/lang/String;
    .param p2, "cmpPdf"    # Ljava/lang/String;

    .line 958
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdf:Ljava/lang/String;

    .line 959
    iput-object p2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdf:Ljava/lang/String;

    .line 960
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdfName:Ljava/lang/String;

    .line 961
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdfName:Ljava/lang/String;

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdfName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-%03d.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outImage:Ljava/lang/String;

    .line 963
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdfName:Ljava/lang/String;

    const-string v2, "cmp_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdfName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpImage:Ljava/lang/String;

    goto :goto_0

    .line 964
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdfName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpImage:Ljava/lang/String;

    .line 965
    :goto_0
    return-void
.end method

.method private listDiffPagesAsString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1085
    .local p1, "diffPages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1086
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1087
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1088
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1089
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1092
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private loadPagesFromReader(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "doc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;)V"
        }
    .end annotation

    .line 1245
    .local p2, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfDictionary;>;"
    .local p3, "pagesRef":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v0

    .line 1246
    .local v0, "numOfPages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1247
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1246
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1250
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private prepareOutputDirs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "outPath"    # Ljava/lang/String;
    .param p2, "differenceImagePrefix"    # Ljava/lang/String;

    .line 1135
    invoke-static {p1}, Lcom/itextpdf/io/util/FileUtil;->directoryExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    invoke-static {p1}, Lcom/itextpdf/io/util/FileUtil;->createDirectories(Ljava/lang/String;)V

    goto :goto_3

    .line 1138
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$PngFileFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/kernel/utils/CompareTool$PngFileFilter;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/utils/CompareTool$1;)V

    invoke-static {p1, v0}, Lcom/itextpdf/io/util/FileUtil;->listFilesInDirectoryByFilter(Ljava/lang/String;Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 1139
    .local v0, "imageFiles":[Ljava/io/File;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 1140
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1139
    .end local v5    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1142
    :cond_1
    new-instance v2, Lcom/itextpdf/kernel/utils/CompareTool$CmpPngFileFilter;

    invoke-direct {v2, p0, v1}, Lcom/itextpdf/kernel/utils/CompareTool$CmpPngFileFilter;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/utils/CompareTool$1;)V

    invoke-static {p1, v2}, Lcom/itextpdf/io/util/FileUtil;->listFilesInDirectoryByFilter(Ljava/lang/String;Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 1143
    .local v1, "cmpImageFiles":[Ljava/io/File;
    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 1144
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1143
    .end local v5    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1147
    :cond_2
    new-instance v2, Lcom/itextpdf/kernel/utils/CompareTool$DiffPngFileFilter;

    invoke-direct {v2, p0, p2}, Lcom/itextpdf/kernel/utils/CompareTool$DiffPngFileFilter;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/itextpdf/io/util/FileUtil;->listFilesInDirectoryByFilter(Ljava/lang/String;Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 1148
    .local v2, "diffFiles":[Ljava/io/File;
    array-length v4, v2

    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v5, v2, v3

    .line 1149
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1148
    .end local v5    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1152
    .end local v0    # "imageFiles":[Ljava/io/File;
    .end local v1    # "cmpImageFiles":[Ljava/io/File;
    .end local v2    # "diffFiles":[Ljava/io/File;
    :cond_3
    :goto_3
    return-void
.end method

.method private printOutCmpDirectories()V
    .locals 4

    .line 1155
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out file folder: file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdf:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/io/util/UrlUtil;->toNormalizedURI(Ljava/io/File;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1155
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1157
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cmp file folder: file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdf:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/io/util/UrlUtil;->toNormalizedURI(Ljava/io/File;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1157
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1159
    return-void
.end method

.method private setPassword([B[B)V
    .locals 1
    .param p1, "outPass"    # [B
    .param p2, "cmpPass"    # [B

    .line 968
    if-eqz p1, :cond_0

    .line 969
    invoke-virtual {p0}, Lcom/itextpdf/kernel/utils/CompareTool;->getOutReaderProperties()Lcom/itextpdf/kernel/pdf/ReaderProperties;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/ReaderProperties;->setPassword([B)Lcom/itextpdf/kernel/pdf/ReaderProperties;

    .line 971
    :cond_0
    if-eqz p2, :cond_1

    .line 972
    invoke-virtual {p0}, Lcom/itextpdf/kernel/utils/CompareTool;->getCmpReaderProperties()Lcom/itextpdf/kernel/pdf/ReaderProperties;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/ReaderProperties;->setPassword([B)Lcom/itextpdf/kernel/pdf/ReaderProperties;

    .line 974
    :cond_1
    return-void
.end method


# virtual methods
.method public compareArrays(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)Z
    .locals 1
    .param p1, "outArray"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p2, "cmpArray"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 652
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->compareArraysExtended(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result v0

    return v0
.end method

.method public compareBooleans(Lcom/itextpdf/kernel/pdf/PdfBoolean;Lcom/itextpdf/kernel/pdf/PdfBoolean;)Z
    .locals 2
    .param p1, "outBoolean"    # Lcom/itextpdf/kernel/pdf/PdfBoolean;
    .param p2, "cmpBoolean"    # Lcom/itextpdf/kernel/pdf/PdfBoolean;

    .line 696
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public compareByCatalog(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;
    .locals 9
    .param p1, "outDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "cmpDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "compareResult":Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;
    new-instance v1, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;

    iget v2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContentErrorsLimit:I

    invoke-direct {v1, p0, v2}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;I)V

    move-object v0, v1

    .line 195
    new-instance v1, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    .line 196
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    .line 197
    .local v1, "catalogPath":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    new-instance v8, Ljava/util/LinkedHashSet;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Metadata:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 198
    .local v8, "ignoredCatalogEntries":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-object v3, p0

    move-object v6, v1

    move-object v7, v0

    invoke-direct/range {v3 .. v8}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;Ljava/util/Set;)Z

    .line 203
    iget-object v2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    if-nez v2, :cond_0

    goto :goto_2

    .line 207
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->isMessageLimitReached()Z

    move-result v2

    if-nez v2, :cond_1

    .line 208
    const-string v2, "Documents have different numbers of pages."

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 210
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 211
    invoke-virtual {v0}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->isMessageLimitReached()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    goto :goto_1

    .line 214
    :cond_2
    new-instance v3, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;

    iget-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v5, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-direct {v3, p0, v4, v5}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    .line 215
    .local v3, "currentPath":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    iget-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 216
    .local v4, "outPageDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    iget-object v5, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 217
    .local v5, "cmpPageDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-direct {p0, v4, v5, v3, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    .line 210
    .end local v3    # "currentPath":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    .end local v4    # "outPageDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v5    # "cmpPageDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v2    # "i":I
    :cond_3
    :goto_1
    return-object v0

    .line 204
    :cond_4
    :goto_2
    return-object v0
.end method

.method public compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "outPdf"    # Ljava/lang/String;
    .param p2, "cmpPdf"    # Ljava/lang/String;
    .param p3, "outPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "outPdf"    # Ljava/lang/String;
    .param p2, "cmpPdf"    # Ljava/lang/String;
    .param p3, "outPath"    # Ljava/lang/String;
    .param p4, "differenceImagePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .param p1, "outPdf"    # Ljava/lang/String;
    .param p2, "cmpPdf"    # Ljava/lang/String;
    .param p3, "outPath"    # Ljava/lang/String;
    .param p4, "differenceImagePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    .local p5, "ignoredAreas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;>;"
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B[B)Ljava/lang/String;
    .locals 3
    .param p1, "outPdf"    # Ljava/lang/String;
    .param p2, "cmpPdf"    # Ljava/lang/String;
    .param p3, "outPath"    # Ljava/lang/String;
    .param p4, "differenceImagePrefix"    # Ljava/lang/String;
    .param p6, "outPass"    # [B
    .param p7, "cmpPass"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;>;[B[B)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    .local p5, "ignoredAreas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;>;"
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/utils/CompareTool;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out pdf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/itextpdf/io/util/UrlUtil;->getNormalizedFileUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 531
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cmp pdf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/itextpdf/io/util/UrlUtil;->getNormalizedFileUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 532
    invoke-direct {p0, p6, p7}, Lcom/itextpdf/kernel/utils/CompareTool;->setPassword([B[B)V

    .line 533
    invoke-direct {p0, p3, p4, p5}, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/lang/String;
    .locals 8
    .param p1, "outPdf"    # Ljava/lang/String;
    .param p2, "cmpPdf"    # Ljava/lang/String;
    .param p3, "outPath"    # Ljava/lang/String;
    .param p4, "differenceImagePrefix"    # Ljava/lang/String;
    .param p5, "outPass"    # [B
    .param p6, "cmpPass"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareDictionaries(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z
    .locals 1
    .param p1, "outDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "cmpDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result v0

    return v0
.end method

.method public compareDictionariesStructure(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;
    .locals 1
    .param p1, "outDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "cmpDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 567
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesStructure(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;

    move-result-object v0

    return-object v0
.end method

.method public compareDictionariesStructure(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;
    .locals 8
    .param p1, "outDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "cmpDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;)",
            "Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;"
        }
    .end annotation

    .line 590
    .local p3, "excludedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 594
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;

    iget v1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContentErrorsLimit:I

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;I)V

    .line 595
    .local v0, "compareResult":Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;
    new-instance v5, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-direct {v5, p0, v1, v2}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    .line 596
    .local v5, "currentPath":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v0

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 597
    invoke-virtual {v0}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->isOk()Z

    move-result v1

    if-nez v1, :cond_0

    .line 598
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->getReport()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 599
    return-object v0

    .line 597
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 601
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->isOk()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 602
    const/4 v1, 0x0

    return-object v1

    .line 601
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 591
    .end local v0    # "compareResult":Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;
    .end local v5    # "currentPath":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'outDict\' and \'cmpDict\' objects shall have indirect references."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compareDocumentInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "outPdf"    # Ljava/lang/String;
    .param p2, "cmpPdf"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 842
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDocumentInfo(Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareDocumentInfo(Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/lang/String;
    .locals 9
    .param p1, "outPdf"    # Ljava/lang/String;
    .param p2, "cmpPdf"    # Ljava/lang/String;
    .param p3, "outPass"    # [B
    .param p4, "cmpPass"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 809
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[itext] INFO  Comparing document info......."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 810
    const/4 v0, 0x0

    .line 811
    .local v0, "message":Ljava/lang/String;
    invoke-direct {p0, p3, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->setPassword([B[B)V

    .line 812
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/utils/CompareTool;->getOutReaderProperties()Lcom/itextpdf/kernel/pdf/ReaderProperties;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V

    new-instance v3, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/kernel/counter/event/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V

    .line 813
    .local v1, "outDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/utils/CompareTool;->getCmpReaderProperties()Lcom/itextpdf/kernel/pdf/ReaderProperties;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V

    new-instance v4, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v5, p0, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/kernel/counter/event/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V

    .line 814
    .local v2, "cmpDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/utils/CompareTool;->convertInfo(Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;)[Ljava/lang/String;

    move-result-object v3

    .line 815
    .local v3, "cmpInfo":[Ljava/lang/String;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/utils/CompareTool;->convertInfo(Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;)[Ljava/lang/String;

    move-result-object v4

    .line 816
    .local v4, "outInfo":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_1

    .line 817
    aget-object v6, v3, v5

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 818
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v3, v5

    aput-object v8, v6, v7

    aget-object v7, v4, v5

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string v7, "Document info fail. Expected: \"{0}\", actual: \"{1}\""

    invoke-static {v7, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 819
    goto :goto_1

    .line 816
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 822
    .end local v5    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 823
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 825
    if-nez v0, :cond_2

    .line 826
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "OK"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 828
    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Fail"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 829
    :goto_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/io/PrintStream;->flush()V

    .line 830
    return-object v0
.end method

.method public compareLinkAnnotations(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "outPdf"    # Ljava/lang/String;
    .param p2, "cmpPdf"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 854
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[itext] INFO  Comparing link annotations...."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 855
    const/4 v0, 0x0

    .line 856
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/kernel/counter/event/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V

    .line 857
    .local v1, "outDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-direct {v3, p2}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v5, p0, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/kernel/counter/event/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V

    .line 858
    .local v2, "cmpDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 859
    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, v4, v1}, Lcom/itextpdf/kernel/utils/CompareTool;->getLinkAnnotations(ILcom/itextpdf/kernel/pdf/PdfDocument;)Ljava/util/List;

    move-result-object v4

    .line 860
    .local v4, "outLinks":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;>;"
    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v5, v2}, Lcom/itextpdf/kernel/utils/CompareTool;->getLinkAnnotations(ILcom/itextpdf/kernel/pdf/PdfDocument;)Ljava/util/List;

    move-result-object v5

    .line 862
    .local v5, "cmpLinks":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v6, v7, :cond_0

    .line 863
    new-array v6, v9, [Ljava/lang/Object;

    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const-string v7, "Different number of links on page {0}."

    invoke-static {v7, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 864
    goto :goto_3

    .line 866
    :cond_0
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 867
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    invoke-direct {p0, v7, v10, v2, v1}, Lcom/itextpdf/kernel/utils/CompareTool;->compareLinkAnnotations(Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 868
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v10, v3, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v8, "Different links on page {0}.\n{1}\n{2}"

    invoke-static {v8, v7}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 869
    goto :goto_2

    .line 866
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 858
    .end local v4    # "outLinks":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;>;"
    .end local v5    # "cmpLinks":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;>;"
    .end local v6    # "j":I
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 873
    .end local v3    # "i":I
    :cond_3
    :goto_3
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 874
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 875
    if-nez v0, :cond_4

    .line 876
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "OK"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 878
    :cond_4
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Fail"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 879
    :goto_4
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    .line 880
    return-object v0
.end method

.method public compareNames(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Z
    .locals 1
    .param p1, "outName"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "cmpName"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 663
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public compareNumbers(Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfNumber;)Z
    .locals 4
    .param p1, "outNumber"    # Lcom/itextpdf/kernel/pdf/PdfNumber;
    .param p2, "cmpNumber"    # Lcom/itextpdf/kernel/pdf/PdfNumber;

    .line 674
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected compareObjects(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z
    .locals 10
    .param p1, "outObj"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "cmpObj"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p3, "currentPath"    # Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    .param p4, "compareResult"    # Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;

    .line 1444
    const/4 v0, 0x0

    .line 1445
    .local v0, "outDirectObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    const/4 v1, 0x0

    .line 1446
    .local v1, "cmpDirectObj":Lcom/itextpdf/kernel/pdf/PdfObject;
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 1447
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    move-object v0, v3

    .line 1448
    :cond_1
    if-eqz p2, :cond_3

    .line 1449
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, p2

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, p2

    :goto_1
    move-object v1, v3

    .line 1451
    :cond_3
    const/4 v3, 0x1

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    .line 1452
    return v3

    .line 1454
    :cond_4
    if-nez v0, :cond_5

    .line 1455
    const-string v3, "Expected object was not found."

    invoke-virtual {p4, p3, v3}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1456
    return v2

    .line 1457
    :cond_5
    if-nez v1, :cond_6

    .line 1458
    const-string v3, "Found object which was not expected to be found."

    invoke-virtual {p4, p3, v3}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1459
    return v2

    .line 1460
    :cond_6
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v4

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v5

    const/4 v6, 0x2

    if-eq v4, v5, :cond_7

    .line 1461
    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "Types do not match. Expected: {0}. Found: {1}."

    invoke-static {v3, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, p3, v3}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1462
    return v2

    .line 1463
    :cond_7
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1464
    const-string v3, "Expected indirect object."

    invoke-virtual {p4, p3, v3}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1465
    return v2

    .line 1466
    :cond_8
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1467
    const-string v3, "Expected direct object."

    invoke-virtual {p4, p3, v3}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1468
    return v2

    .line 1471
    :cond_9
    if-eqz p3, :cond_b

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1472
    move-object v4, p2

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-object v5, p1

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {p3, v4, v5}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->isComparing(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1473
    return v3

    .line 1474
    :cond_a
    move-object v4, p2

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-object v5, p1

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {p3, v4, v5}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->resetDirectPath(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;

    move-result-object p3

    .line 1477
    :cond_b
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v4

    if-eqz v4, :cond_16

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Page:Lcom/itextpdf/kernel/pdf/PdfName;

    move-object v5, v1

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-boolean v4, p0, Lcom/itextpdf/kernel/utils/CompareTool;->useCachedPagesForComparison:Z

    if-eqz v4, :cond_16

    .line 1479
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v4

    if-eqz v4, :cond_14

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Page:Lcom/itextpdf/kernel/pdf/PdfName;

    move-object v5, v0

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_6

    .line 1484
    :cond_c
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object v4, p2

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    goto :goto_2

    :cond_d
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    .line 1485
    .local v4, "cmpRefKey":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :goto_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v5

    if-eqz v5, :cond_e

    move-object v5, p1

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    goto :goto_3

    :cond_e
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v5

    .line 1487
    .local v5, "outRefKey":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :goto_3
    iget-object v7, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    if-nez v7, :cond_f

    .line 1488
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    .line 1489
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_4
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v8

    if-gt v7, v8, :cond_f

    .line 1490
    iget-object v8, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1489
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1493
    .end local v7    # "i":I
    :cond_f
    iget-object v7, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    if-nez v7, :cond_10

    .line 1494
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    .line 1495
    const/4 v7, 0x1

    .restart local v7    # "i":I
    :goto_5
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v8

    if-gt v7, v8, :cond_10

    .line 1496
    iget-object v8, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1495
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1503
    .end local v7    # "i":I
    :cond_10
    iget-object v7, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1504
    :cond_11
    iget-object v7, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_12

    .line 1505
    return v3

    .line 1507
    :cond_12
    if-eqz p4, :cond_13

    if-eqz p3, :cond_13

    .line 1508
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    .line 1509
    invoke-interface {v7, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    add-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    add-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 1508
    const-string v3, "The dictionaries refer to different pages. Expected page number: {0}. Found: {1}"

    invoke-static {v3, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, p3, v3}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1510
    :cond_13
    return v2

    .line 1480
    .end local v4    # "cmpRefKey":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .end local v5    # "outRefKey":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :cond_14
    :goto_6
    if-eqz p4, :cond_15

    if-eqz p3, :cond_15

    .line 1481
    const-string v3, "Expected a page. Found not a page."

    invoke-virtual {p4, p3, v3}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Ljava/lang/String;)V

    .line 1482
    :cond_15
    return v2

    .line 1514
    :cond_16
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1515
    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-object v3, v1

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v2, v3, p3, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result v2

    return v2

    .line 1516
    :cond_17
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isStream()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1517
    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfStream;

    move-object v3, v1

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {p0, v2, v3, p3, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareStreamsExtended(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result v2

    return v2

    .line 1518
    :cond_18
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1519
    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    move-object v3, v1

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p0, v2, v3, p3, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareArraysExtended(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result v2

    return v2

    .line 1520
    :cond_19
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isName()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1521
    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    move-object v3, v1

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v2, v3, p3, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareNamesExtended(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result v2

    return v2

    .line 1522
    :cond_1a
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1523
    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-object v3, v1

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {p0, v2, v3, p3, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareNumbersExtended(Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result v2

    return v2

    .line 1524
    :cond_1b
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1525
    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfString;

    move-object v3, v1

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {p0, v2, v3, p3, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareStringsExtended(Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result v2

    return v2

    .line 1526
    :cond_1c
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isBoolean()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1527
    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-object v3, v1

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    invoke-direct {p0, v2, v3, p3, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareBooleansExtended(Lcom/itextpdf/kernel/pdf/PdfBoolean;Lcom/itextpdf/kernel/pdf/PdfBoolean;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result v2

    return v2

    .line 1528
    :cond_1d
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNull()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNull()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1529
    return v3

    .line 1531
    :cond_1e
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public compareStreams(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfStream;)Z
    .locals 1
    .param p1, "outStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .param p2, "cmpStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->compareStreamsExtended(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result v0

    return v0
.end method

.method public compareStreamsStructure(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;
    .locals 4
    .param p1, "outStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .param p2, "cmpStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 618
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;

    iget v1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContentErrorsLimit:I

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;I)V

    .line 619
    .local v0, "compareResult":Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;
    new-instance v1, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    .line 620
    .local v1, "currentPath":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->compareStreamsExtended(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 621
    invoke-virtual {v0}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->isOk()Z

    move-result v2

    if-nez v2, :cond_0

    .line 622
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->getReport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 623
    return-object v0

    .line 621
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 625
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->isOk()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 626
    const/4 v2, 0x0

    return-object v2

    .line 625
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public compareStrings(Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;)Z
    .locals 2
    .param p1, "outString"    # Lcom/itextpdf/kernel/pdf/PdfString;
    .param p2, "cmpString"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 685
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public compareTagStructures(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "outPdf"    # Ljava/lang/String;
    .param p2, "cmpPdf"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 899
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[itext] INFO  Comparing tag structures......"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 901
    const-string v0, ".pdf"

    const-string v1, ".xml"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 902
    .local v1, "outXmlPath":Ljava/lang/String;
    const-string v2, ".cmp.xml"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 904
    .local v0, "cmpXmlPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 906
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-direct {v3, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;)V

    .line 907
    .local v3, "readerOut":Lcom/itextpdf/kernel/pdf/PdfReader;
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v5, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v6, p0, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/kernel/counter/event/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V

    .line 908
    .local v4, "docOut":Lcom/itextpdf/kernel/pdf/PdfDocument;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 909
    .local v5, "xmlOut":Ljava/io/FileOutputStream;
    new-instance v6, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;

    invoke-direct {v6, v4}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    const-string/jumbo v7, "root"

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->setRootTag(Ljava/lang/String;)Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->convertToXml(Ljava/io/OutputStream;)V

    .line 910
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 911
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 913
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-direct {v6, p2}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;)V

    .line 914
    .local v6, "readerCmp":Lcom/itextpdf/kernel/pdf/PdfReader;
    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v9, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v9}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v10, p0, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/kernel/counter/event/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v9

    invoke-direct {v8, v6, v9}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V

    .line 915
    .local v8, "docCmp":Lcom/itextpdf/kernel/pdf/PdfDocument;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 916
    .local v9, "xmlCmp":Ljava/io/FileOutputStream;
    new-instance v10, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;

    invoke-direct {v10, v8}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {v10, v7}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->setRootTag(Ljava/lang/String;)Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->convertToXml(Ljava/io/OutputStream;)V

    .line 917
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 918
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 920
    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->compareXmls(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 921
    const-string v2, "The tag structures are different."

    .line 923
    :cond_0
    if-nez v2, :cond_1

    .line 924
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "OK"

    invoke-virtual {v7, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 926
    :cond_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Fail"

    invoke-virtual {v7, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 927
    :goto_0
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7}, Ljava/io/PrintStream;->flush()V

    .line 928
    return-object v2
.end method

.method public compareVisually(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "outPdf"    # Ljava/lang/String;
    .param p2, "cmpPdf"    # Ljava/lang/String;
    .param p3, "outPath"    # Ljava/lang/String;
    .param p4, "differenceImagePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/kernel/utils/CompareTool;->compareVisually(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareVisually(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .param p1, "outPdf"    # Ljava/lang/String;
    .param p2, "cmpPdf"    # Ljava/lang/String;
    .param p3, "outPath"    # Ljava/lang/String;
    .param p4, "differenceImagePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    .local p5, "ignoredAreas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/itextpdf/kernel/geom/Rectangle;>;>;"
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/utils/CompareTool;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out pdf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/itextpdf/io/util/UrlUtil;->getNormalizedFileUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 381
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cmp pdf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/itextpdf/io/util/UrlUtil;->getNormalizedFileUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 382
    invoke-direct {p0, p3, p4, p5}, Lcom/itextpdf/kernel/utils/CompareTool;->compareVisually(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareXmls(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "outXmlFile"    # Ljava/lang/String;
    .param p2, "cmpXmlFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 787
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out xml: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/itextpdf/io/util/UrlUtil;->getNormalizedFileUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 788
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cmp xml: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/itextpdf/io/util/UrlUtil;->getNormalizedFileUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 789
    invoke-static {p1}, Lcom/itextpdf/io/util/FileUtil;->getInputStreamForFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 790
    .local v0, "outXmlStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p2}, Lcom/itextpdf/io/util/FileUtil;->getInputStreamForFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 789
    .local v1, "cmpXmlStream":Ljava/io/InputStream;
    nop

    .line 791
    :try_start_1
    invoke-static {v0, v1}, Lcom/itextpdf/kernel/utils/XmlUtils;->compareXmls(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 791
    :cond_1
    return v2

    .line 789
    :catchall_0
    move-exception v2

    .end local v0    # "outXmlStream":Ljava/io/InputStream;
    .end local v1    # "cmpXmlStream":Ljava/io/InputStream;
    .end local p1    # "outXmlFile":Ljava/lang/String;
    .end local p2    # "cmpXmlFile":Ljava/lang/String;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 792
    .restart local v0    # "outXmlStream":Ljava/io/InputStream;
    .restart local v1    # "cmpXmlStream":Ljava/io/InputStream;
    .restart local p1    # "outXmlFile":Ljava/lang/String;
    .restart local p2    # "cmpXmlFile":Ljava/lang/String;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "outXmlStream":Ljava/io/InputStream;
    .end local p1    # "outXmlFile":Ljava/lang/String;
    .end local p2    # "cmpXmlFile":Ljava/lang/String;
    :cond_2
    :goto_0
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 789
    .end local v1    # "cmpXmlStream":Ljava/io/InputStream;
    .restart local v0    # "outXmlStream":Ljava/io/InputStream;
    .restart local p1    # "outXmlFile":Ljava/lang/String;
    .restart local p2    # "cmpXmlFile":Ljava/lang/String;
    :catchall_3
    move-exception v1

    .end local v0    # "outXmlStream":Ljava/io/InputStream;
    .end local p1    # "outXmlFile":Ljava/lang/String;
    .end local p2    # "cmpXmlFile":Ljava/lang/String;
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 792
    .restart local v0    # "outXmlStream":Ljava/io/InputStream;
    .restart local p1    # "outXmlFile":Ljava/lang/String;
    .restart local p2    # "cmpXmlFile":Ljava/lang/String;
    :catchall_4
    move-exception v2

    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2
.end method

.method public compareXmls([B[B)Z
    .locals 2
    .param p1, "xml1"    # [B
    .param p2, "xml2"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 772
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, v1}, Lcom/itextpdf/kernel/utils/XmlUtils;->compareXmls(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public compareXmp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "outPdf"    # Ljava/lang/String;
    .param p2, "cmpPdf"    # Ljava/lang/String;

    .line 707
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->compareXmp(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareXmp(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 15
    .param p1, "outPdf"    # Ljava/lang/String;
    .param p2, "cmpPdf"    # Ljava/lang/String;
    .param p3, "ignoreDateAndProducerProperties"    # Z

    .line 720
    move-object v1, p0

    const-string v0, "Producer"

    const-string v2, "http://ns.adobe.com/pdf/1.3/"

    const-string v3, "MetadataDate"

    const-string v4, "ModifyDate"

    const-string v5, "CreateDate"

    const-string v6, "http://ns.adobe.com/xap/1.0/"

    invoke-direct/range {p0 .. p2}, Lcom/itextpdf/kernel/utils/CompareTool;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const/4 v7, 0x0

    .line 722
    .local v7, "cmpDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    const/4 v8, 0x0

    .line 724
    .local v8, "outDocument":Lcom/itextpdf/kernel/pdf/PdfDocument;
    :try_start_0
    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v11, v1, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdf:Ljava/lang/String;

    invoke-direct {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v11}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v12, v1, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/kernel/counter/event/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V

    move-object v7, v9

    .line 725
    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v11, v1, Lcom/itextpdf/kernel/utils/CompareTool;->outPdf:Ljava/lang/String;

    invoke-direct {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v11}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v12, v1, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/kernel/counter/event/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V

    move-object v8, v9

    .line 726
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXmpMetadata()[B

    move-result-object v9

    .local v9, "cmpBytes":[B
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXmpMetadata()[B

    move-result-object v10

    .line 727
    .local v10, "outBytes":[B
    if-eqz p3, :cond_0

    .line 728
    new-instance v11, Lcom/itextpdf/kernel/xmp/options/ParseOptions;

    invoke-direct {v11}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;-><init>()V

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;->setOmitNormalization(Z)Lcom/itextpdf/kernel/xmp/options/ParseOptions;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->parseFromBuffer([BLcom/itextpdf/kernel/xmp/options/ParseOptions;)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object v11

    .line 730
    .local v11, "xmpMeta":Lcom/itextpdf/kernel/xmp/XMPMeta;
    invoke-static {v11, v6, v5, v12, v12}, Lcom/itextpdf/kernel/xmp/XMPUtils;->removeProperties(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 731
    invoke-static {v11, v6, v4, v12, v12}, Lcom/itextpdf/kernel/xmp/XMPUtils;->removeProperties(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 732
    invoke-static {v11, v6, v3, v12, v12}, Lcom/itextpdf/kernel/xmp/XMPUtils;->removeProperties(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 733
    invoke-static {v11, v2, v0, v12, v12}, Lcom/itextpdf/kernel/xmp/XMPUtils;->removeProperties(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 735
    new-instance v13, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    const/16 v14, 0x2000

    invoke-direct {v13, v14}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;-><init>(I)V

    invoke-static {v11, v13}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/itextpdf/kernel/xmp/XMPMeta;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)[B

    move-result-object v13

    move-object v9, v13

    .line 737
    new-instance v13, Lcom/itextpdf/kernel/xmp/options/ParseOptions;

    invoke-direct {v13}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;-><init>()V

    invoke-virtual {v13, v12}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;->setOmitNormalization(Z)Lcom/itextpdf/kernel/xmp/options/ParseOptions;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->parseFromBuffer([BLcom/itextpdf/kernel/xmp/options/ParseOptions;)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object v13

    move-object v11, v13

    .line 738
    invoke-static {v11, v6, v5, v12, v12}, Lcom/itextpdf/kernel/xmp/XMPUtils;->removeProperties(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 739
    invoke-static {v11, v6, v4, v12, v12}, Lcom/itextpdf/kernel/xmp/XMPUtils;->removeProperties(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 740
    invoke-static {v11, v6, v3, v12, v12}, Lcom/itextpdf/kernel/xmp/XMPUtils;->removeProperties(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 741
    invoke-static {v11, v2, v0, v12, v12}, Lcom/itextpdf/kernel/xmp/XMPUtils;->removeProperties(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 743
    new-instance v0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-direct {v0, v14}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;-><init>(I)V

    invoke-static {v11, v0}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/itextpdf/kernel/xmp/XMPMeta;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)[B

    move-result-object v0

    move-object v10, v0

    .line 746
    .end local v11    # "xmpMeta":Lcom/itextpdf/kernel/xmp/XMPMeta;
    :cond_0
    invoke-virtual {p0, v9, v10}, Lcom/itextpdf/kernel/utils/CompareTool;->compareXmls([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 747
    const-string v0, "The XMP packages different!"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    nop

    .line 753
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 754
    nop

    .line 755
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 747
    return-object v0

    .line 752
    .end local v9    # "cmpBytes":[B
    .end local v10    # "outBytes":[B
    :cond_1
    nop

    .line 753
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 754
    nop

    .line 755
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 757
    const/4 v0, 0x0

    return-object v0

    .line 752
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "XMP parsing failure!"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    if-eqz v7, :cond_2

    .line 753
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 754
    :cond_2
    if-eqz v8, :cond_3

    .line 755
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 750
    :cond_3
    return-object v2

    .line 752
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    if-eqz v7, :cond_4

    .line 753
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 754
    :cond_4
    if-eqz v8, :cond_5

    .line 755
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 756
    :cond_5
    throw v0
.end method

.method convertInfo(Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;)[Ljava/lang/String;
    .locals 4
    .param p1, "info"    # Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 932
    const-string v0, ""

    filled-new-array {v0, v0, v0, v0, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 933
    .local v0, "convertedInfo":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 934
    .local v1, "infoValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 935
    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 936
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getAuthor()Ljava/lang/String;

    move-result-object v1

    .line 937
    if-eqz v1, :cond_1

    .line 938
    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 939
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getSubject()Ljava/lang/String;

    move-result-object v1

    .line 940
    if-eqz v1, :cond_2

    .line 941
    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 942
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getKeywords()Ljava/lang/String;

    move-result-object v1

    .line 943
    if-eqz v1, :cond_3

    .line 944
    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 945
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getProducer()Ljava/lang/String;

    move-result-object v1

    .line 946
    if-eqz v1, :cond_4

    .line 947
    const/4 v2, 0x4

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/utils/CompareTool;->convertProducerLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 949
    :cond_4
    return-object v0
.end method

.method convertProducerLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "producer"    # Ljava/lang/String;

    .line 953
    const-string v0, "(iText\u00ae( pdfX(FA|fa)| DITO)?|iTextSharp\u2122) (\\d+\\.)+\\d+(-SNAPSHOT)?"

    const-string v1, "iText\u00ae <version>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u00a9\\d+-\\d+ iText Group NV"

    const-string/jumbo v2, "\u00a9<copyright years> iText Group NV"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public disableCachedPagesComparison()Lcom/itextpdf/kernel/utils/CompareTool;
    .locals 1

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->useCachedPagesForComparison:Z

    .line 243
    return-object p0
.end method

.method public enableEncryptionCompare()Lcom/itextpdf/kernel/utils/CompareTool;
    .locals 1

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->encryptionCompareEnabled:Z

    .line 291
    return-object p0
.end method

.method public getCmpReaderProperties()Lcom/itextpdf/kernel/pdf/ReaderProperties;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpProps:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lcom/itextpdf/kernel/pdf/ReaderProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/ReaderProperties;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpProps:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpProps:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    return-object v0
.end method

.method public getOutReaderProperties()Lcom/itextpdf/kernel/pdf/ReaderProperties;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outProps:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lcom/itextpdf/kernel/pdf/ReaderProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/ReaderProperties;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outProps:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outProps:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    return-object v0
.end method

.method public setCompareByContentErrorsLimit(I)Lcom/itextpdf/kernel/utils/CompareTool;
    .locals 0
    .param p1, "compareByContentMaxErrorCount"    # I

    .line 253
    iput p1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContentErrorsLimit:I

    .line 254
    return-object p0
.end method

.method public setEventCountingMetaInfo(Lcom/itextpdf/kernel/counter/event/IMetaInfo;)V
    .locals 0
    .param p1, "metaInfo"    # Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    .line 276
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    .line 277
    return-void
.end method

.method public setGenerateCompareByContentXmlReport(Z)Lcom/itextpdf/kernel/utils/CompareTool;
    .locals 0
    .param p1, "generateCompareByContentXmlReport"    # Z

    .line 266
    iput-boolean p1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->generateCompareByContentXmlReport:Z

    .line 267
    return-object p0
.end method
