.class public Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;
.super Ljava/lang/Object;
.source "PdfCanvasProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ClipPathOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$RectangleOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CloseSubpathOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CurveFourhPointDuplicatedOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CurveFirstPointDuplicatedOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CurveOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$LineToOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveToOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$IgnoreXObjectDoHandler;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ImageXObjectDoHandler;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$FormXObjectDoHandler;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineDashPatternOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetMiterLimitOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineJoinOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineCapOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineWidthOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$EndImageOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$DoOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$EndMarkedContentOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$BeginMarkedContentDictionaryOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$BeginMarkedContentOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$EndTextOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$BeginTextOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorStrokeOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorFillOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorSpaceStrokeOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorSpaceFillOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetCMYKStrokeOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetCMYKFillOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetRGBStrokeOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetRGBFillOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetGrayStrokeOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetGrayFillOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PopGraphicsStateOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ModifyCurrentTransformationMatrixOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PushGraphicsStateOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ProcessGraphicsStateResourceOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextWordSpacingOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextCharacterSpacingOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextHorizontalScalingOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextLeadingOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextRiseOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextRenderModeOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextFontOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveStartNextLineOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveStartNextLineWithLeadingOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextSetTextMatrixOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveNextLineOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ShowTextOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveNextLineAndShowTextOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveNextLineAndShowTextWithSpacingOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ShowTextArrayOperator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$IgnoreOperator;
    }
.end annotation


# static fields
.field public static final DEFAULT_OPERATOR:Ljava/lang/String; = "DefaultOperator"


# instance fields
.field private cachedFonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/itextpdf/kernel/font/PdfFont;",
            ">;>;"
        }
    .end annotation
.end field

.field protected clippingRule:I

.field protected currentPath:Lcom/itextpdf/kernel/geom/Path;

.field protected final eventListener:Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;

.field private final gsStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;",
            ">;"
        }
    .end annotation
.end field

.field protected isClip:Z

.field private markedContentStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;",
            ">;"
        }
    .end annotation
.end field

.field private operators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;",
            ">;"
        }
    .end annotation
.end field

.field private resourcesStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/pdf/PdfResources;",
            ">;"
        }
    .end annotation
.end field

.field protected final supportedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;",
            ">;"
        }
    .end annotation
.end field

.field private textLineMatrix:Lcom/itextpdf/kernel/geom/Matrix;

.field private textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

.field private xobjectDoHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;)V
    .locals 1
    .param p1, "eventListener"    # Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lcom/itextpdf/kernel/geom/Path;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Path;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->currentPath:Lcom/itextpdf/kernel/geom/Path;

    .line 153
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->gsStack:Ljava/util/Stack;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->cachedFonts:Ljava/util/Map;

    .line 171
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->markedContentStack:Ljava/util/Stack;

    .line 180
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->eventListener:Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;

    .line 181
    invoke-interface {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;->getSupportedEvents()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->operators:Ljava/util/Map;

    .line 183
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->populateOperators()V

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->xobjectDoHandlers:Ljava/util/Map;

    .line 185
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->populateXObjectDoHandlers()V

    .line 186
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->reset()V

    .line 187
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;Ljava/util/Map;)V
    .locals 4
    .param p1, "eventListener"    # Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p2, "additionalContentOperators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;>;"
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;)V

    .line 200
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 201
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 202
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;>;"
    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method static synthetic access$4700(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;Lcom/itextpdf/kernel/pdf/PdfString;)V
    .locals 0
    .param p0, "x0"    # Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;
    .param p1, "x1"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 110
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->displayPdfString(Lcom/itextpdf/kernel/pdf/PdfString;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;F)V
    .locals 0
    .param p0, "x0"    # Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;
    .param p1, "x1"    # F

    .line 110
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->applyTextAdjust(F)V

    return-void
.end method

.method static synthetic access$4900(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;)Lcom/itextpdf/kernel/geom/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;

    .line 110
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textLineMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;
    .locals 0
    .param p0, "x0"    # Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;
    .param p1, "x1"    # Lcom/itextpdf/kernel/geom/Matrix;

    .line 110
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textLineMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;)Lcom/itextpdf/kernel/geom/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;

    .line 110
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;
    .locals 0
    .param p0, "x0"    # Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;
    .param p1, "x1"    # Lcom/itextpdf/kernel/geom/Matrix;

    .line 110
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;

    .line 110
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->gsStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$5200(ILjava/util/List;)Lcom/itextpdf/kernel/colors/Color;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/util/List;

    .line 110
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColor(ILjava/util/List;)Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfResources;)Lcom/itextpdf/kernel/colors/Color;
    .locals 1
    .param p0, "x0"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/itextpdf/kernel/pdf/PdfResources;

    .line 110
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfResources;)Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;)V
    .locals 0
    .param p0, "x0"    # Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;

    .line 110
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->beginText()V

    return-void
.end method

.method static synthetic access$5500(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;)V
    .locals 0
    .param p0, "x0"    # Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;

    .line 110
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->endText()V

    return-void
.end method

.method static synthetic access$5600(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 0
    .param p0, "x0"    # Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;
    .param p1, "x1"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 110
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->displayXObject(Lcom/itextpdf/kernel/pdf/PdfName;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;

    .line 110
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->markedContentStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;Ljava/util/Stack;Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfName;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;
    .param p1, "x1"    # Ljava/util/Stack;
    .param p2, "x2"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .param p3, "x3"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p4, "x4"    # Z

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->displayImage(Ljava/util/Stack;Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfName;Z)V

    return-void
.end method

.method private applyTextAdjust(F)V
    .locals 3
    .param p1, "tj"    # F

    .line 585
    neg-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->getFontSize()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->getHorizontalScaling()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 587
    .local v0, "adjustBy":F
    new-instance v1, Lcom/itextpdf/kernel/geom/Matrix;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/kernel/geom/Matrix;-><init>(FF)V

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Matrix;->multiply(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    .line 588
    return-void
.end method

.method private beginText()V
    .locals 2

    .line 519
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->BEGIN_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V

    .line 520
    return-void
.end method

.method private displayImage(Ljava/util/Stack;Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfName;Z)V
    .locals 10
    .param p2, "imageStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .param p3, "resourceName"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p4, "isInline"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfStream;",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Z)V"
        }
    .end annotation

    .line 573
    .local p1, "canvasTagHierarchy":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;>;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResource(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 574
    .local v0, "colorSpaceDic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;

    move-result-object v4

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->getCtm()Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object v5

    move-object v2, v1

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, v0

    move v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;-><init>(Ljava/util/Stack;Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/geom/Matrix;Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;Z)V

    .line 576
    .local v1, "renderInfo":Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;
    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_IMAGE:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V

    .line 577
    return-void
.end method

.method private displayPdfString(Lcom/itextpdf/kernel/pdf/PdfString;)V
    .locals 4
    .param p1, "string"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 550
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->markedContentStack:Ljava/util/Stack;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;-><init>(Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/geom/Matrix;Ljava/util/Stack;)V

    .line 551
    .local v0, "renderInfo":Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;
    new-instance v1, Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/TextRenderInfo;->getUnscaledWidth()F

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/geom/Matrix;-><init>(FF)V

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/geom/Matrix;->multiply(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    .line 552
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V

    .line 553
    return-void
.end method

.method private displayXObject(Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 5
    .param p1, "resourceName"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 561
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getXObjectStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    .line 562
    .local v0, "xobjectStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 563
    .local v1, "subType":Lcom/itextpdf/kernel/pdf/PdfName;
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->xobjectDoHandlers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;

    .line 565
    .local v2, "handler":Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;
    if-nez v2, :cond_0

    .line 566
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->xobjectDoHandlers:Ljava/util/Map;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Default:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;

    .line 569
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->markedContentStack:Ljava/util/Stack;

    invoke-interface {v2, p0, v3, v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;->handleXObject(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;Ljava/util/Stack;Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 570
    return-void
.end method

.method private endText()V
    .locals 2

    .line 526
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->END_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V

    .line 527
    return-void
.end method

.method private static getColor(ILjava/util/List;)Lcom/itextpdf/kernel/colors/Color;
    .locals 6
    .param p0, "nOperands"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)",
            "Lcom/itextpdf/kernel/colors/Color;"
        }
    .end annotation

    .line 1041
    .local p1, "operands":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    new-array v0, p0, [F

    .line 1042
    .local v0, "c":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 1043
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 1042
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1046
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p0, :pswitch_data_0

    .line 1054
    :pswitch_0
    const/4 v1, 0x0

    return-object v1

    .line 1052
    :pswitch_1
    new-instance v4, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    aget v2, v0, v2

    aget v3, v0, v3

    aget v1, v0, v1

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-direct {v4, v2, v3, v1, v5}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(FFFF)V

    return-object v4

    .line 1050
    :pswitch_2
    new-instance v4, Lcom/itextpdf/kernel/colors/DeviceRgb;

    aget v2, v0, v2

    aget v3, v0, v3

    aget v1, v0, v1

    invoke-direct {v4, v2, v3, v1}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    return-object v4

    .line 1048
    :pswitch_3
    new-instance v1, Lcom/itextpdf/kernel/colors/DeviceGray;

    aget v2, v0, v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfResources;)Lcom/itextpdf/kernel/colors/Color;
    .locals 11
    .param p0, "pdfColorSpace"    # Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .param p2, "resources"    # Lcom/itextpdf/kernel/pdf/PdfResources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfResources;",
            ")",
            "Lcom/itextpdf/kernel/colors/Color;"
        }
    .end annotation

    .line 976
    .local p1, "operands":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .local v0, "pdfObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_0

    .line 979
    .end local v0    # "pdfObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 982
    .restart local v0    # "pdfObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isName()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 983
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceGray:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 984
    new-instance v1, Lcom/itextpdf/kernel/colors/DeviceGray;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object v2

    aget v2, v2, v4

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/colors/DeviceGray;-><init>(F)V

    return-object v1

    .line 985
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Pattern:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 986
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/kernel/pdf/PdfName;

    if-eqz v1, :cond_2

    .line 987
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPattern(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;

    move-result-object v1

    .line 988
    .local v1, "pattern":Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;
    if-eqz v1, :cond_2

    .line 989
    new-instance v2, Lcom/itextpdf/kernel/colors/PatternColor;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/colors/PatternColor;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;)V

    return-object v2

    .line 993
    .end local v1    # "pattern":Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;
    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 994
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object v1

    .line 995
    .local v1, "c":[F
    new-instance v5, Lcom/itextpdf/kernel/colors/DeviceRgb;

    aget v4, v1, v4

    aget v2, v1, v2

    aget v3, v1, v3

    invoke-direct {v5, v4, v2, v3}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    return-object v5

    .line 996
    .end local v1    # "c":[F
    :cond_3
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceCMYK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 997
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object v1

    .line 998
    .restart local v1    # "c":[F
    new-instance v5, Lcom/itextpdf/kernel/colors/DeviceCmyk;

    aget v4, v1, v4

    aget v2, v1, v2

    aget v3, v1, v3

    const/4 v6, 0x3

    aget v6, v1, v6

    invoke-direct {v5, v4, v2, v3, v6}, Lcom/itextpdf/kernel/colors/DeviceCmyk;-><init>(FFFF)V

    return-object v5

    .line 1000
    .end local v1    # "c":[F
    :cond_4
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1001
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1002
    .local v1, "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v5

    .line 1003
    .local v5, "csType":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->CalGray:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1004
    new-instance v2, Lcom/itextpdf/kernel/colors/CalGray;

    move-object v3, p0

    check-cast v3, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalGray;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object v6

    aget v4, v6, v4

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/colors/CalGray;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalGray;F)V

    return-object v2

    .line 1005
    :cond_5
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->CalRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1006
    new-instance v2, Lcom/itextpdf/kernel/colors/CalRgb;

    move-object v3, p0

    check-cast v3, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalRgb;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/colors/CalRgb;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$CalRgb;[F)V

    return-object v2

    .line 1007
    :cond_6
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Lab:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1008
    new-instance v2, Lcom/itextpdf/kernel/colors/Lab;

    move-object v3, p0

    check-cast v3, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$Lab;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/colors/Lab;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$Lab;[F)V

    return-object v2

    .line 1009
    :cond_7
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->ICCBased:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1010
    new-instance v2, Lcom/itextpdf/kernel/colors/IccBased;

    move-object v3, p0

    check-cast v3, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/colors/IccBased;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;[F)V

    return-object v2

    .line 1011
    :cond_8
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Indexed:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1012
    new-instance v2, Lcom/itextpdf/kernel/colors/Indexed;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object v3

    aget v3, v3, v4

    float-to-int v3, v3

    invoke-direct {v2, p0, v3}, Lcom/itextpdf/kernel/colors/Indexed;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;I)V

    return-object v2

    .line 1013
    :cond_9
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Separation:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1014
    new-instance v2, Lcom/itextpdf/kernel/colors/Separation;

    move-object v3, p0

    check-cast v3, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object v6

    aget v4, v6, v4

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/colors/Separation;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Separation;F)V

    return-object v2

    .line 1015
    :cond_a
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceN:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1016
    new-instance v2, Lcom/itextpdf/kernel/colors/DeviceN;

    move-object v3, p0

    check-cast v3, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;

    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/colors/DeviceN;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;[F)V

    return-object v2

    .line 1017
    :cond_b
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Pattern:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1018
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1019
    .local v6, "underlyingOperands":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1020
    .local v7, "patternName":Lcom/itextpdf/kernel/pdf/PdfObject;
    move-object v8, p0

    check-cast v8, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$UncoloredTilingPattern;->getUnderlyingColorSpace()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v8

    .line 1021
    .local v8, "underlyingCs":Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    instance-of v9, v7, Lcom/itextpdf/kernel/pdf/PdfName;

    if-eqz v9, :cond_c

    .line 1022
    move-object v9, v7

    check-cast v9, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v9}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPattern(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;

    move-result-object v9

    .line 1023
    .local v9, "pattern":Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;
    instance-of v10, v9, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    if-eqz v10, :cond_c

    move-object v10, v9

    check-cast v10, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;->isColored()Z

    move-result v10

    if-nez v10, :cond_c

    .line 1024
    new-instance v2, Lcom/itextpdf/kernel/colors/PatternColor;

    move-object v3, v9

    check-cast v3, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    invoke-static {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getColorants(Ljava/util/List;)[F

    move-result-object v4

    invoke-direct {v2, v3, v8, v4}, Lcom/itextpdf/kernel/colors/PatternColor;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)V

    return-object v2

    .line 1030
    .end local v1    # "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v5    # "csType":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v6    # "underlyingOperands":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    .end local v7    # "patternName":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v8    # "underlyingCs":Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    .end local v9    # "pattern":Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;
    :cond_c
    const-class v1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 1031
    .local v1, "logger":Lorg/slf4j/Logger;
    new-array v3, v3, [Ljava/lang/Object;

    .line 1032
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    aput-object v4, v3, v2

    .line 1031
    const-string v2, "Unable to parse color {0} within {1} color space"

    invoke-static {v2, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1034
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getColorants(Ljava/util/List;)[F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)[F"
        }
    .end annotation

    .line 1058
    .local p0, "operands":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [F

    .line 1059
    .local v0, "c":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1060
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 1059
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1062
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private initClippingPath(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 2
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 591
    new-instance v0, Lcom/itextpdf/kernel/geom/Path;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Path;-><init>()V

    .line 592
    .local v0, "clippingPath":Lcom/itextpdf/kernel/geom/Path;
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getCropBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Path;->rectangle(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 593
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->setClippingPath(Lcom/itextpdf/kernel/geom/Path;)V

    .line 594
    return-void
.end method


# virtual methods
.method protected beginMarkedContent(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2
    .param p1, "tag"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "dict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 505
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->markedContentStack:Ljava/util/Stack;

    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;)V

    invoke-virtual {v1, p2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->setProperties(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    return-void
.end method

.method protected endMarkedContent()V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->markedContentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 513
    return-void
.end method

.method protected eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V
    .locals 1
    .param p1, "data"    # Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;
    .param p2, "type"    # Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    .line 536
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->eventListener:Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;

    invoke-interface {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;->eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V

    .line 539
    :cond_1
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;

    if-eqz v0, :cond_2

    .line 540
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;->releaseGraphicsState()V

    .line 542
    :cond_2
    return-void
.end method

.method public getEventListener()Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->eventListener:Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;

    return-object v0
.end method

.method protected getFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 6
    .param p1, "fontDict"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 484
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 485
    invoke-static {p1}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0

    .line 487
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v0

    .line 488
    .local v0, "n":I
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->cachedFonts:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 489
    .local v1, "fontRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/itextpdf/kernel/font/PdfFont;>;"
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/font/PdfFont;

    .line 490
    .local v2, "font":Lcom/itextpdf/kernel/font/PdfFont;
    :goto_0
    if-nez v2, :cond_2

    .line 491
    invoke-static {p1}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v2

    .line 492
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->cachedFonts:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_2
    return-object v2
.end method

.method public getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->gsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;

    return-object v0
.end method

.method public getRegisteredOperatorStrings()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->operators:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getResources()Lcom/itextpdf/kernel/pdf/PdfResources;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->resourcesStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfResources;

    return-object v0
.end method

.method protected getXObjectStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 2
    .param p1, "xobjectName"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 458
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResource(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 459
    .local v0, "xobjects":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v1

    return-object v1
.end method

.method protected invokeOperator(Lcom/itextpdf/kernel/pdf/PdfLiteral;Ljava/util/List;)V
    .locals 3
    .param p1, "operator"    # Lcom/itextpdf/kernel/pdf/PdfLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfLiteral;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .line 450
    .local p2, "operands":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->operators:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfLiteral;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 451
    .local v0, "op":Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;
    if-nez v0, :cond_0

    .line 452
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->operators:Ljava/util/Map;

    const-string v2, "DefaultOperator"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 454
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;->invoke(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;Lcom/itextpdf/kernel/pdf/PdfLiteral;Ljava/util/List;)V

    .line 455
    return-void
.end method

.method protected paintPath(II)V
    .locals 10
    .param p1, "operation"    # I
    .param p2, "rule"    # I

    .line 430
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;

    move-result-object v8

    .line 431
    .local v8, "gs":Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;
    new-instance v9, Lcom/itextpdf/kernel/pdf/canvas/parser/data/PathRenderInfo;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->markedContentStack:Ljava/util/Stack;

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->currentPath:Lcom/itextpdf/kernel/geom/Path;

    iget-boolean v6, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->isClip:Z

    iget v7, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->clippingRule:I

    move-object v0, v9

    move-object v2, v8

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/PathRenderInfo;-><init>(Ljava/util/Stack;Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/geom/Path;IIZI)V

    .line 432
    .local v0, "renderInfo":Lcom/itextpdf/kernel/pdf/canvas/parser/data/PathRenderInfo;
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_PATH:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V

    .line 434
    iget-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->isClip:Z

    if-eqz v1, :cond_0

    .line 435
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->isClip:Z

    .line 436
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->currentPath:Lcom/itextpdf/kernel/geom/Path;

    iget v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->clippingRule:I

    invoke-virtual {v8, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->clip(Lcom/itextpdf/kernel/geom/Path;I)V

    .line 437
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ClippingPathInfo;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->getClippingPath()Lcom/itextpdf/kernel/geom/Path;

    move-result-object v2

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->getCtm()Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object v3

    invoke-direct {v1, v8, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ClippingPathInfo;-><init>(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/geom/Path;Lcom/itextpdf/kernel/geom/Matrix;)V

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->CLIP_PATH_CHANGED:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V

    .line 440
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/geom/Path;

    invoke-direct {v1}, Lcom/itextpdf/kernel/geom/Path;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->currentPath:Lcom/itextpdf/kernel/geom/Path;

    .line 441
    return-void
.end method

.method protected populateOperators()V
    .locals 10

    .line 320
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$IgnoreOperator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$IgnoreOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "DefaultOperator"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 322
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PushGraphicsStateOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PushGraphicsStateOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string/jumbo v2, "q"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 323
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PopGraphicsStateOperator;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PopGraphicsStateOperator;-><init>()V

    const-string v2, "Q"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 324
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ModifyCurrentTransformationMatrixOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ModifyCurrentTransformationMatrixOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "cm"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 326
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$DoOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$DoOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "Do"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 328
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$BeginMarkedContentOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$BeginMarkedContentOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "BMC"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 329
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$BeginMarkedContentDictionaryOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$BeginMarkedContentDictionaryOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "BDC"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 330
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$EndMarkedContentOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$EndMarkedContentOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "EMC"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 332
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_PATH:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    .line 333
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->CLIP_PATH_CHANGED:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    .line 334
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetGrayFillOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetGrayFillOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "g"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 337
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetGrayStrokeOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetGrayStrokeOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "G"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 338
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetRGBFillOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetRGBFillOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string/jumbo v2, "rg"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 339
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetRGBStrokeOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetRGBStrokeOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "RG"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 340
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetCMYKFillOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetCMYKFillOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "k"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 341
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetCMYKStrokeOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetCMYKStrokeOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "K"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 342
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorSpaceFillOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorSpaceFillOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "cs"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 343
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorSpaceStrokeOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorSpaceStrokeOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "CS"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 344
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorFillOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorFillOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string/jumbo v2, "sc"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 345
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorStrokeOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorStrokeOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "SC"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 346
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorFillOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorFillOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string/jumbo v2, "scn"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 347
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorStrokeOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetColorStrokeOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "SCN"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 348
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ProcessGraphicsStateResourceOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ProcessGraphicsStateResourceOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "gs"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_IMAGE:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 352
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$EndImageOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$EndImageOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "EI"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    if-eqz v0, :cond_4

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->BEGIN_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    .line 356
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->END_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    .line 357
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 358
    :cond_4
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$BeginTextOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$BeginTextOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "BT"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 359
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$EndTextOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$EndTextOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "ET"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 362
    :cond_5
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    if-eqz v0, :cond_6

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_TEXT:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 363
    :cond_6
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextCharacterSpacingOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextCharacterSpacingOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    .line 364
    .local v0, "tcOperator":Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextCharacterSpacingOperator;
    const-string v2, "Tc"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 365
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextWordSpacingOperator;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextWordSpacingOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    .line 366
    .local v2, "twOperator":Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextWordSpacingOperator;
    const-string v3, "Tw"

    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 367
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextHorizontalScalingOperator;

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextHorizontalScalingOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v4, "Tz"

    invoke-virtual {p0, v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 368
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextLeadingOperator;

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextLeadingOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    .line 369
    .local v3, "tlOperator":Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextLeadingOperator;
    const-string v4, "TL"

    invoke-virtual {p0, v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 370
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextFontOperator;

    invoke-direct {v4, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextFontOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v5, "Tf"

    invoke-virtual {p0, v5, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 371
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextRenderModeOperator;

    invoke-direct {v4, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextRenderModeOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v5, "Tr"

    invoke-virtual {p0, v5, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 372
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextRiseOperator;

    invoke-direct {v4, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextRiseOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v5, "Ts"

    invoke-virtual {p0, v5, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 374
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveStartNextLineOperator;

    invoke-direct {v4, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveStartNextLineOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    .line 375
    .local v4, "tdOperator":Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveStartNextLineOperator;
    const-string v5, "Td"

    invoke-virtual {p0, v5, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 376
    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveStartNextLineWithLeadingOperator;

    invoke-direct {v5, v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveStartNextLineWithLeadingOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveStartNextLineOperator;Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextLeadingOperator;)V

    const-string v6, "TD"

    invoke-virtual {p0, v6, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 377
    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextSetTextMatrixOperator;

    invoke-direct {v5, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextSetTextMatrixOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v6, "Tm"

    invoke-virtual {p0, v6, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 378
    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveNextLineOperator;

    invoke-direct {v5, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveNextLineOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveStartNextLineOperator;)V

    .line 379
    .local v5, "tstarOperator":Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveNextLineOperator;
    const-string v6, "T*"

    invoke-virtual {p0, v6, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 381
    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ShowTextOperator;

    invoke-direct {v6, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ShowTextOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    .line 382
    .local v6, "tjOperator":Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ShowTextOperator;
    const-string v7, "Tj"

    invoke-virtual {p0, v7, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 383
    new-instance v7, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveNextLineAndShowTextOperator;

    invoke-direct {v7, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveNextLineAndShowTextOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveNextLineOperator;Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ShowTextOperator;)V

    .line 384
    .local v7, "tickOperator":Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveNextLineAndShowTextOperator;
    const-string v8, "\'"

    invoke-virtual {p0, v8, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 385
    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveNextLineAndShowTextWithSpacingOperator;

    invoke-direct {v8, v2, v0, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveNextLineAndShowTextWithSpacingOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextWordSpacingOperator;Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextCharacterSpacingOperator;Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveNextLineAndShowTextOperator;)V

    const-string v9, "\""

    invoke-virtual {p0, v9, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 386
    new-instance v8, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ShowTextArrayOperator;

    invoke-direct {v8, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ShowTextArrayOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v9, "TJ"

    invoke-virtual {p0, v9, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 389
    .end local v0    # "tcOperator":Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextCharacterSpacingOperator;
    .end local v2    # "twOperator":Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextWordSpacingOperator;
    .end local v3    # "tlOperator":Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetTextLeadingOperator;
    .end local v4    # "tdOperator":Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveStartNextLineOperator;
    .end local v5    # "tstarOperator":Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextMoveNextLineOperator;
    .end local v6    # "tjOperator":Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ShowTextOperator;
    .end local v7    # "tickOperator":Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveNextLineAndShowTextOperator;
    :cond_7
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    if-eqz v0, :cond_8

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->CLIP_PATH_CHANGED:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_PATH:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    .line 390
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 391
    :cond_8
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineWidthOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineWidthOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string/jumbo v2, "w"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 392
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineCapOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineCapOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "J"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 393
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineJoinOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineJoinOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "j"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 394
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetMiterLimitOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetMiterLimitOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "M"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 395
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineDashPatternOperator;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$SetLineDashPatternOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v2, "d"

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 397
    const/4 v0, 0x3

    .line 398
    .local v0, "fillStroke":I
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveToOperator;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$MoveToOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v3, "m"

    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 399
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$LineToOperator;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$LineToOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v3, "l"

    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 400
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CurveOperator;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CurveOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v3, "c"

    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 401
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CurveFirstPointDuplicatedOperator;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CurveFirstPointDuplicatedOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string/jumbo v3, "v"

    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 402
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CurveFourhPointDuplicatedOperator;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CurveFourhPointDuplicatedOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string/jumbo v3, "y"

    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 403
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CloseSubpathOperator;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$CloseSubpathOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string v3, "h"

    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 404
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$RectangleOperator;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$RectangleOperator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    const-string/jumbo v1, "re"

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 405
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;-><init>(IIZ)V

    const-string v5, "S"

    invoke-virtual {p0, v5, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 406
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;

    invoke-direct {v1, v2, v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;-><init>(IIZ)V

    const-string/jumbo v5, "s"

    invoke-virtual {p0, v5, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 407
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;

    const/4 v5, 0x2

    invoke-direct {v1, v5, v2, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;-><init>(IIZ)V

    const-string v6, "f"

    invoke-virtual {p0, v6, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 408
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;

    invoke-direct {v1, v5, v2, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;-><init>(IIZ)V

    const-string v6, "F"

    invoke-virtual {p0, v6, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 409
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;

    invoke-direct {v1, v5, v5, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;-><init>(IIZ)V

    const-string v6, "f*"

    invoke-virtual {p0, v6, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 410
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;

    invoke-direct {v1, v0, v2, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;-><init>(IIZ)V

    const-string v6, "B"

    invoke-virtual {p0, v6, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 411
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;

    invoke-direct {v1, v0, v5, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;-><init>(IIZ)V

    const-string v6, "B*"

    invoke-virtual {p0, v6, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 412
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;

    invoke-direct {v1, v0, v2, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;-><init>(IIZ)V

    const-string v6, "b"

    invoke-virtual {p0, v6, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 413
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;

    invoke-direct {v1, v0, v5, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;-><init>(IIZ)V

    const-string v6, "b*"

    invoke-virtual {p0, v6, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 414
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;

    invoke-direct {v1, v4, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;-><init>(IIZ)V

    const-string v3, "n"

    invoke-virtual {p0, v3, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 415
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ClipPathOperator;

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ClipPathOperator;-><init>(I)V

    const-string v2, "W"

    invoke-virtual {p0, v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 416
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ClipPathOperator;

    invoke-direct {v1, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ClipPathOperator;-><init>(I)V

    const-string v2, "W*"

    invoke-virtual {p0, v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 418
    .end local v0    # "fillStroke":I
    :cond_9
    return-void
.end method

.method protected populateXObjectDoHandlers()V
    .locals 3

    .line 467
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Default:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$IgnoreXObjectDoHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$IgnoreXObjectDoHandler;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerXObjectDoHandler(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;)Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;

    .line 468
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Form:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$FormXObjectDoHandler;

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$FormXObjectDoHandler;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerXObjectDoHandler(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;)Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;

    .line 470
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->supportedEvents:Ljava/util/Set;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->RENDER_IMAGE:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    .line 471
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Image:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ImageXObjectDoHandler;

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ImageXObjectDoHandler;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->registerXObjectDoHandler(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;)Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;

    .line 474
    :cond_1
    return-void
.end method

.method public processContent([BLcom/itextpdf/kernel/pdf/PdfResources;)V
    .locals 6
    .param p1, "contentBytes"    # [B
    .param p2, "resources"    # Lcom/itextpdf/kernel/pdf/PdfResources;

    .line 272
    if-eqz p2, :cond_1

    .line 275
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->resourcesStack:Ljava/util/Stack;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance v0, Lcom/itextpdf/io/source/PdfTokenizer;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v2, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v2}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v2, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    .line 277
    .local v0, "tokeniser":Lcom/itextpdf/io/source/PdfTokenizer;
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;

    invoke-direct {v1, v0, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;-><init>(Lcom/itextpdf/io/source/PdfTokenizer;Lcom/itextpdf/kernel/pdf/PdfResources;)V

    .line 278
    .local v1, "ps":Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v2, "operands":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    :goto_0
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->parse(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 281
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    .line 282
    .local v3, "operator":Lcom/itextpdf/kernel/pdf/PdfLiteral;
    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->invokeOperator(Lcom/itextpdf/kernel/pdf/PdfLiteral;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v3    # "operator":Lcom/itextpdf/kernel/pdf/PdfLiteral;
    goto :goto_0

    .line 286
    :cond_0
    nop

    .line 288
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->resourcesStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 290
    return-void

    .line 284
    :catch_0
    move-exception v3

    .line 285
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "Cannot parse content stream."

    invoke-direct {v4, v5, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 273
    .end local v0    # "tokeniser":Lcom/itextpdf/io/source/PdfTokenizer;
    .end local v1    # "ps":Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;
    .end local v2    # "operands":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfObject;>;"
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Resources cannot be null."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processPageContent(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 4
    .param p1, "page"    # Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 300
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->initClippingPath(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 301
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;

    move-result-object v0

    .line 302
    .local v0, "gs":Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ClippingPathInfo;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->getClippingPath()Lcom/itextpdf/kernel/geom/Path;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->getCtm()Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ClippingPathInfo;-><init>(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/geom/Path;Lcom/itextpdf/kernel/geom/Matrix;)V

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;->CLIP_PATH_CHANGED:Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->eventOccurred(Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;Lcom/itextpdf/kernel/pdf/canvas/parser/EventType;)V

    .line 303
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->processContent([BLcom/itextpdf/kernel/pdf/PdfResources;)V

    .line 304
    return-void
.end method

.method public registerContentOperator(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;)Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;
    .locals 1
    .param p1, "operatorString"    # Ljava/lang/String;
    .param p2, "operator"    # Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    .line 230
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->operators:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;

    return-object v0
.end method

.method public registerXObjectDoHandler(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;)Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;
    .locals 1
    .param p1, "xobjectSubType"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "handler"    # Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;

    .line 216
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->xobjectDoHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/IXObjectDoHandler;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->gsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    .line 247
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->gsStack:Ljava/util/Stack;

    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    .line 249
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->textLineMatrix:Lcom/itextpdf/kernel/geom/Matrix;

    .line 250
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->resourcesStack:Ljava/util/Stack;

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->isClip:Z

    .line 252
    new-instance v0, Lcom/itextpdf/kernel/geom/Path;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Path;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->currentPath:Lcom/itextpdf/kernel/geom/Path;

    .line 253
    return-void
.end method
