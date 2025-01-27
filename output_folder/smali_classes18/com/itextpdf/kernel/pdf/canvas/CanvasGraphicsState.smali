.class public Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
.super Ljava/lang/Object;
.source "CanvasGraphicsState.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7f01de3c720af51cL


# instance fields
.field private alphaIsShape:Z

.field private automaticStrokeAdjustment:Z

.field private blackGenerationFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private blackGenerationFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private blendMode:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private charSpacing:F

.field private ctm:Lcom/itextpdf/kernel/geom/Matrix;

.field private dashPattern:Lcom/itextpdf/kernel/pdf/PdfArray;

.field private fillAlpha:F

.field private fillColor:Lcom/itextpdf/kernel/colors/Color;

.field private fillOverprint:Z

.field private flatnessTolerance:F

.field private font:Lcom/itextpdf/kernel/font/PdfFont;

.field private fontSize:F

.field private halftone:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private htp:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private leading:F

.field private lineCapStyle:I

.field private lineJoinStyle:I

.field private lineWidth:F

.field private miterLimit:F

.field private overprintMode:I

.field private renderingIntent:Lcom/itextpdf/kernel/pdf/PdfName;

.field private scale:F

.field private smoothnessTolerance:Ljava/lang/Float;

.field private softMask:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private strokeAlpha:F

.field private strokeColor:Lcom/itextpdf/kernel/colors/Color;

.field private strokeOverprint:Z

.field private textKnockout:Z

.field private textRenderingMode:I

.field private textRise:F

.field private transferFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private transferFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private underColorRemovalFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private underColorRemovalFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private wordSpacing:F


# direct methods
.method protected constructor <init>()V
    .locals 6

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/itextpdf/kernel/geom/Matrix;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Matrix;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    .line 77
    sget-object v0, Lcom/itextpdf/kernel/colors/DeviceGray;->BLACK:Lcom/itextpdf/kernel/colors/DeviceGray;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeColor:Lcom/itextpdf/kernel/colors/Color;

    .line 78
    sget-object v0, Lcom/itextpdf/kernel/colors/DeviceGray;->BLACK:Lcom/itextpdf/kernel/colors/DeviceGray;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillColor:Lcom/itextpdf/kernel/colors/Color;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->charSpacing:F

    .line 82
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->wordSpacing:F

    .line 84
    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->scale:F

    .line 85
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->leading:F

    .line 88
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRenderingMode:I

    .line 89
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRise:F

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textKnockout:Z

    .line 92
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineWidth:F

    .line 93
    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineCapStyle:I

    .line 94
    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineJoinStyle:I

    .line 95
    const/high16 v3, 0x41200000    # 10.0f

    iput v3, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->miterLimit:F

    .line 106
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/itextpdf/kernel/pdf/PdfObject;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    aput-object v5, v4, v1

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v5, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    aput-object v5, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->dashPattern:Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 108
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->RelativeColorimetric:Lcom/itextpdf/kernel/pdf/PdfName;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->renderingIntent:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 109
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->automaticStrokeAdjustment:Z

    .line 110
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Normal:Lcom/itextpdf/kernel/pdf/PdfName;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blendMode:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 111
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->None:Lcom/itextpdf/kernel/pdf/PdfName;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->softMask:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 114
    iput v2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeAlpha:F

    .line 115
    iput v2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillAlpha:F

    .line 117
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->alphaIsShape:Z

    .line 119
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeOverprint:Z

    .line 120
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillOverprint:Z

    .line 121
    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->overprintMode:I

    .line 129
    iput v2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->flatnessTolerance:F

    .line 138
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V
    .locals 6
    .param p1, "source"    # Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/itextpdf/kernel/geom/Matrix;

    invoke-direct {v0}, Lcom/itextpdf/kernel/geom/Matrix;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    .line 77
    sget-object v0, Lcom/itextpdf/kernel/colors/DeviceGray;->BLACK:Lcom/itextpdf/kernel/colors/DeviceGray;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeColor:Lcom/itextpdf/kernel/colors/Color;

    .line 78
    sget-object v0, Lcom/itextpdf/kernel/colors/DeviceGray;->BLACK:Lcom/itextpdf/kernel/colors/DeviceGray;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillColor:Lcom/itextpdf/kernel/colors/Color;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->charSpacing:F

    .line 82
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->wordSpacing:F

    .line 84
    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->scale:F

    .line 85
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->leading:F

    .line 88
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRenderingMode:I

    .line 89
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRise:F

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textKnockout:Z

    .line 92
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineWidth:F

    .line 93
    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineCapStyle:I

    .line 94
    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineJoinStyle:I

    .line 95
    const/high16 v3, 0x41200000    # 10.0f

    iput v3, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->miterLimit:F

    .line 106
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/itextpdf/kernel/pdf/PdfObject;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    aput-object v5, v4, v1

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v5, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    aput-object v5, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->dashPattern:Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 108
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->RelativeColorimetric:Lcom/itextpdf/kernel/pdf/PdfName;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->renderingIntent:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 109
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->automaticStrokeAdjustment:Z

    .line 110
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Normal:Lcom/itextpdf/kernel/pdf/PdfName;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blendMode:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 111
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->None:Lcom/itextpdf/kernel/pdf/PdfName;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->softMask:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 114
    iput v2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeAlpha:F

    .line 115
    iput v2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillAlpha:F

    .line 117
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->alphaIsShape:Z

    .line 119
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeOverprint:Z

    .line 120
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillOverprint:Z

    .line 121
    iput v1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->overprintMode:I

    .line 129
    iput v2, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->flatnessTolerance:F

    .line 146
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->copyFrom(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V

    .line 147
    return-void
.end method

.method private copyFrom(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V
    .locals 1
    .param p1, "source"    # Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    .line 508
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    .line 509
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeColor:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeColor:Lcom/itextpdf/kernel/colors/Color;

    .line 510
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillColor:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillColor:Lcom/itextpdf/kernel/colors/Color;

    .line 511
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->charSpacing:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->charSpacing:F

    .line 512
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->wordSpacing:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->wordSpacing:F

    .line 513
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->scale:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->scale:F

    .line 514
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->leading:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->leading:F

    .line 515
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->font:Lcom/itextpdf/kernel/font/PdfFont;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 516
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fontSize:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fontSize:F

    .line 517
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRenderingMode:I

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRenderingMode:I

    .line 518
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRise:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRise:F

    .line 519
    iget-boolean v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textKnockout:Z

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textKnockout:Z

    .line 520
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineWidth:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineWidth:F

    .line 521
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineCapStyle:I

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineCapStyle:I

    .line 522
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineJoinStyle:I

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineJoinStyle:I

    .line 523
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->miterLimit:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->miterLimit:F

    .line 524
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->dashPattern:Lcom/itextpdf/kernel/pdf/PdfArray;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->dashPattern:Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 525
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->renderingIntent:Lcom/itextpdf/kernel/pdf/PdfName;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->renderingIntent:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 526
    iget-boolean v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->automaticStrokeAdjustment:Z

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->automaticStrokeAdjustment:Z

    .line 527
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blendMode:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blendMode:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 528
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->softMask:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->softMask:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 529
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeAlpha:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeAlpha:F

    .line 530
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillAlpha:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillAlpha:F

    .line 531
    iget-boolean v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->alphaIsShape:Z

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->alphaIsShape:Z

    .line 532
    iget-boolean v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeOverprint:Z

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeOverprint:Z

    .line 533
    iget-boolean v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillOverprint:Z

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillOverprint:Z

    .line 534
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->overprintMode:I

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->overprintMode:I

    .line 535
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blackGenerationFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blackGenerationFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 536
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blackGenerationFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blackGenerationFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 537
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->underColorRemovalFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->underColorRemovalFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 538
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->underColorRemovalFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->underColorRemovalFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 539
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->transferFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->transferFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 540
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->transferFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->transferFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 541
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->halftone:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->halftone:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 542
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->flatnessTolerance:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->flatnessTolerance:F

    .line 543
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->smoothnessTolerance:Ljava/lang/Float;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->smoothnessTolerance:Ljava/lang/Float;

    .line 544
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->htp:Lcom/itextpdf/kernel/pdf/PdfObject;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->htp:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 545
    return-void
.end method


# virtual methods
.method public getAlphaIsShape()Z
    .locals 1

    .line 390
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->alphaIsShape:Z

    return v0
.end method

.method public getAutomaticStrokeAdjustment()Z
    .locals 1

    .line 370
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->automaticStrokeAdjustment:Z

    return v0
.end method

.method public getBlackGenerationFunction()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blackGenerationFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getBlackGenerationFunction2()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blackGenerationFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getBlendMode()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blendMode:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getCharSpacing()F
    .locals 1

    .line 306
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->charSpacing:F

    return v0
.end method

.method public getCtm()Lcom/itextpdf/kernel/geom/Matrix;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    return-object v0
.end method

.method public getDashPattern()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->dashPattern:Lcom/itextpdf/kernel/pdf/PdfArray;

    return-object v0
.end method

.method public getFillColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillColor:Lcom/itextpdf/kernel/colors/Color;

    return-object v0
.end method

.method public getFillOpacity()F
    .locals 1

    .line 386
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillAlpha:F

    return v0
.end method

.method public getFillOverprint()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillOverprint:Z

    return v0
.end method

.method public getFlatnessTolerance()F
    .locals 1

    .line 286
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->flatnessTolerance:F

    return v0
.end method

.method public getFont()Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->font:Lcom/itextpdf/kernel/font/PdfFont;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .line 254
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fontSize:F

    return v0
.end method

.method public getHTP()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->htp:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getHalftone()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->halftone:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getHorizontalScaling()F
    .locals 1

    .line 318
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->scale:F

    return v0
.end method

.method public getLeading()F
    .locals 1

    .line 310
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->leading:F

    return v0
.end method

.method public getLineCapStyle()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineCapStyle:I

    return v0
.end method

.method public getLineJoinStyle()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineJoinStyle:I

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .line 206
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineWidth:F

    return v0
.end method

.method public getMiterLimit()F
    .locals 1

    .line 230
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->miterLimit:F

    return v0
.end method

.method public getOverprintMode()I
    .locals 1

    .line 334
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->overprintMode:I

    return v0
.end method

.method public getRenderingIntent()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->renderingIntent:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public getSmoothnessTolerance()Ljava/lang/Float;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->smoothnessTolerance:Ljava/lang/Float;

    return-object v0
.end method

.method public getSoftMask()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->softMask:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getStrokeColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeColor:Lcom/itextpdf/kernel/colors/Color;

    return-object v0
.end method

.method public getStrokeOpacity()F
    .locals 1

    .line 382
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeAlpha:F

    return v0
.end method

.method public getStrokeOverprint()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeOverprint:Z

    return v0
.end method

.method public getTextKnockout()Z
    .locals 1

    .line 394
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textKnockout:Z

    return v0
.end method

.method public getTextRenderingMode()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRenderingMode:I

    return v0
.end method

.method public getTextRise()F
    .locals 1

    .line 278
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRise:F

    return v0
.end method

.method public getTransferFunction()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->transferFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getTransferFunction2()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->transferFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getUnderColorRemovalFunction()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->underColorRemovalFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getUnderColorRemovalFunction2()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->underColorRemovalFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getWordSpacing()F
    .locals 1

    .line 298
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->wordSpacing:F

    return v0
.end method

.method public setCharSpacing(F)V
    .locals 0
    .param p1, "characterSpacing"    # F

    .line 302
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->charSpacing:F

    .line 303
    return-void
.end method

.method public setDashPattern(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 0
    .param p1, "dashPattern"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 242
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->dashPattern:Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 243
    return-void
.end method

.method public setFillColor(Lcom/itextpdf/kernel/colors/Color;)V
    .locals 0
    .param p1, "fillColor"    # Lcom/itextpdf/kernel/colors/Color;

    .line 194
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillColor:Lcom/itextpdf/kernel/colors/Color;

    .line 195
    return-void
.end method

.method public setFlatnessTolerance(F)V
    .locals 0
    .param p1, "flatnessTolerance"    # F

    .line 290
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->flatnessTolerance:F

    .line 291
    return-void
.end method

.method public setFont(Lcom/itextpdf/kernel/font/PdfFont;)V
    .locals 0
    .param p1, "font"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 266
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 267
    return-void
.end method

.method public setFontSize(F)V
    .locals 0
    .param p1, "fontSize"    # F

    .line 258
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fontSize:F

    .line 259
    return-void
.end method

.method public setHorizontalScaling(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 322
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->scale:F

    .line 323
    return-void
.end method

.method public setLeading(F)V
    .locals 0
    .param p1, "leading"    # F

    .line 314
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->leading:F

    .line 315
    return-void
.end method

.method public setLineCapStyle(I)V
    .locals 0
    .param p1, "lineCapStyle"    # I

    .line 218
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineCapStyle:I

    .line 219
    return-void
.end method

.method public setLineJoinStyle(I)V
    .locals 0
    .param p1, "lineJoinStyle"    # I

    .line 226
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineJoinStyle:I

    .line 227
    return-void
.end method

.method public setLineWidth(F)V
    .locals 0
    .param p1, "lineWidth"    # F

    .line 210
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineWidth:F

    .line 211
    return-void
.end method

.method public setMiterLimit(F)V
    .locals 0
    .param p1, "miterLimit"    # F

    .line 234
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->miterLimit:F

    .line 235
    return-void
.end method

.method public setRenderingIntent(Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 0
    .param p1, "renderingIntent"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 250
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->renderingIntent:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 251
    return-void
.end method

.method public setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)V
    .locals 0
    .param p1, "strokeColor"    # Lcom/itextpdf/kernel/colors/Color;

    .line 202
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeColor:Lcom/itextpdf/kernel/colors/Color;

    .line 203
    return-void
.end method

.method public setTextRenderingMode(I)V
    .locals 0
    .param p1, "textRenderingMode"    # I

    .line 274
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRenderingMode:I

    .line 275
    return-void
.end method

.method public setTextRise(F)V
    .locals 0
    .param p1, "textRise"    # F

    .line 282
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textRise:F

    .line 283
    return-void
.end method

.method public setWordSpacing(F)V
    .locals 0
    .param p1, "wordSpacing"    # F

    .line 294
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->wordSpacing:F

    .line 295
    return-void
.end method

.method public updateCtm(FFFFFF)V
    .locals 8
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F
    .param p5, "e"    # F
    .param p6, "f"    # F

    .line 177
    new-instance v7, Lcom/itextpdf/kernel/geom/Matrix;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/kernel/geom/Matrix;-><init>(FFFFFF)V

    invoke-virtual {p0, v7}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->updateCtm(Lcom/itextpdf/kernel/geom/Matrix;)V

    .line 178
    return-void
.end method

.method public updateCtm(Lcom/itextpdf/kernel/geom/Matrix;)V
    .locals 1
    .param p1, "newCtm"    # Lcom/itextpdf/kernel/geom/Matrix;

    .line 186
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/geom/Matrix;->multiply(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    .line 187
    return-void
.end method

.method public updateFromExtGState(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2
    .param p1, "extGState"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 155
    new-instance v0, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->updateFromExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 156
    return-void
.end method

.method public updateFromExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)V
    .locals 1
    .param p1, "extGState"    # Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    .line 407
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->updateFromExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 408
    return-void
.end method

.method updateFromExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 28
    .param p1, "extGState"    # Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;
    .param p2, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 417
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getLineWidth()Ljava/lang/Float;

    move-result-object v1

    .line 418
    .local v1, "lw":Ljava/lang/Float;
    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineWidth:F

    .line 420
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getLineCapStyle()Ljava/lang/Integer;

    move-result-object v2

    .line 421
    .local v2, "lc":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 422
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineCapStyle:I

    .line 423
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getLineJoinStyle()Ljava/lang/Integer;

    move-result-object v3

    .line 424
    .local v3, "lj":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    .line 425
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->lineJoinStyle:I

    .line 426
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getMiterLimit()Ljava/lang/Float;

    move-result-object v4

    .line 427
    .local v4, "ml":Ljava/lang/Float;
    if-eqz v4, :cond_3

    .line 428
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->miterLimit:F

    .line 429
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getDashPattern()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    .line 430
    .local v5, "d":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v5, :cond_4

    .line 431
    iput-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->dashPattern:Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 432
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getRenderingIntent()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v6

    .line 433
    .local v6, "ri":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v6, :cond_5

    .line 434
    iput-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->renderingIntent:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 435
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getStrokeOverprintFlag()Ljava/lang/Boolean;

    move-result-object v7

    .line 436
    .local v7, "op":Ljava/lang/Boolean;
    if-eqz v7, :cond_6

    .line 437
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeOverprint:Z

    .line 438
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getFillOverprintFlag()Ljava/lang/Boolean;

    move-result-object v7

    .line 439
    if-eqz v7, :cond_7

    .line 440
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillOverprint:Z

    .line 441
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getOverprintMode()Ljava/lang/Integer;

    move-result-object v8

    .line 442
    .local v8, "opm":Ljava/lang/Integer;
    if-eqz v8, :cond_8

    .line 443
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->overprintMode:I

    .line 444
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getFont()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v9

    .line 445
    .local v9, "fnt":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v9, :cond_b

    .line 446
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v10

    .line 447
    .local v10, "fontDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->font:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v11

    if-eq v11, v10, :cond_9

    goto :goto_0

    :cond_9
    move-object/from16 v11, p2

    goto :goto_1

    .line 448
    :cond_a
    :goto_0
    move-object/from16 v11, p2

    invoke-virtual {v11, v10}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v12

    iput-object v12, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->font:Lcom/itextpdf/kernel/font/PdfFont;

    .line 450
    :goto_1
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v12

    .line 451
    .local v12, "fntSz":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v12, :cond_c

    .line 452
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v13

    iput v13, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fontSize:F

    goto :goto_2

    .line 445
    .end local v10    # "fontDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v12    # "fntSz":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :cond_b
    move-object/from16 v11, p2

    .line 454
    :cond_c
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getBlackGenerationFunction()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    .line 455
    .local v10, "bg":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v10, :cond_d

    .line 456
    iput-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blackGenerationFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 457
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getBlackGenerationFunction2()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v12

    .line 458
    .local v12, "bg2":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v12, :cond_e

    .line 459
    iput-object v12, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blackGenerationFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 460
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getUndercolorRemovalFunction()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v13

    .line 461
    .local v13, "ucr":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v13, :cond_f

    .line 462
    iput-object v13, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->underColorRemovalFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 463
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getUndercolorRemovalFunction2()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v14

    .line 464
    .local v14, "ucr2":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v14, :cond_10

    .line 465
    iput-object v14, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->underColorRemovalFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 466
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getTransferFunction()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v15

    .line 467
    .local v15, "tr":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v15, :cond_11

    .line 468
    iput-object v15, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->transferFunction:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 469
    :cond_11
    move-object/from16 v16, v1

    .end local v1    # "lw":Ljava/lang/Float;
    .local v16, "lw":Ljava/lang/Float;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getTransferFunction2()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 470
    .local v1, "tr2":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v1, :cond_12

    .line 471
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->transferFunction2:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 472
    :cond_12
    move-object/from16 v17, v1

    .end local v1    # "tr2":Lcom/itextpdf/kernel/pdf/PdfObject;
    .local v17, "tr2":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getHalftone()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 473
    .local v1, "ht":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v1, :cond_13

    .line 474
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->halftone:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 475
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v18

    move-object/from16 v19, v1

    .end local v1    # "ht":Lcom/itextpdf/kernel/pdf/PdfObject;
    .local v19, "ht":Lcom/itextpdf/kernel/pdf/PdfObject;
    move-object/from16 v1, v18

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-object/from16 v18, v2

    .end local v2    # "lc":Ljava/lang/Integer;
    .local v18, "lc":Ljava/lang/Integer;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->HTP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 476
    .local v1, "local_htp":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v1, :cond_14

    .line 477
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->htp:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 478
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getFlatnessTolerance()Ljava/lang/Float;

    move-result-object v2

    .line 479
    .local v2, "fl":Ljava/lang/Float;
    if-eqz v2, :cond_15

    .line 480
    move-object/from16 v20, v1

    .end local v1    # "local_htp":Lcom/itextpdf/kernel/pdf/PdfObject;
    .local v20, "local_htp":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->flatnessTolerance:F

    goto :goto_3

    .line 479
    .end local v20    # "local_htp":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v1    # "local_htp":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_15
    move-object/from16 v20, v1

    .line 481
    .end local v1    # "local_htp":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v20    # "local_htp":Lcom/itextpdf/kernel/pdf/PdfObject;
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getSmothnessTolerance()Ljava/lang/Float;

    move-result-object v1

    .line 482
    .local v1, "sm":Ljava/lang/Float;
    if-eqz v1, :cond_16

    .line 483
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->smoothnessTolerance:Ljava/lang/Float;

    .line 484
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getAutomaticStrokeAdjustmentFlag()Ljava/lang/Boolean;

    move-result-object v21

    .line 485
    .local v21, "sa":Ljava/lang/Boolean;
    if-eqz v21, :cond_17

    .line 486
    move-object/from16 v22, v1

    .end local v1    # "sm":Ljava/lang/Float;
    .local v22, "sm":Ljava/lang/Float;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->automaticStrokeAdjustment:Z

    goto :goto_4

    .line 485
    .end local v22    # "sm":Ljava/lang/Float;
    .restart local v1    # "sm":Ljava/lang/Float;
    :cond_17
    move-object/from16 v22, v1

    .line 487
    .end local v1    # "sm":Ljava/lang/Float;
    .restart local v22    # "sm":Ljava/lang/Float;
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getBlendMode()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 488
    .local v1, "bm":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v1, :cond_18

    .line 489
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->blendMode:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 490
    :cond_18
    move-object/from16 v23, v1

    .end local v1    # "bm":Lcom/itextpdf/kernel/pdf/PdfObject;
    .local v23, "bm":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getSoftMask()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 491
    .local v1, "sMask":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v1, :cond_19

    .line 492
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->softMask:Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 493
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getStrokeOpacity()Ljava/lang/Float;

    move-result-object v24

    .line 494
    .local v24, "ca":Ljava/lang/Float;
    if-eqz v24, :cond_1a

    .line 495
    move-object/from16 v25, v1

    .end local v1    # "sMask":Lcom/itextpdf/kernel/pdf/PdfObject;
    .local v25, "sMask":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->strokeAlpha:F

    goto :goto_5

    .line 494
    .end local v25    # "sMask":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v1    # "sMask":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_1a
    move-object/from16 v25, v1

    .line 496
    .end local v1    # "sMask":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v25    # "sMask":Lcom/itextpdf/kernel/pdf/PdfObject;
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getFillOpacity()Ljava/lang/Float;

    move-result-object v1

    .line 497
    .end local v24    # "ca":Ljava/lang/Float;
    .local v1, "ca":Ljava/lang/Float;
    if-eqz v1, :cond_1b

    .line 498
    move-object/from16 v24, v2

    .end local v2    # "fl":Ljava/lang/Float;
    .local v24, "fl":Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->fillAlpha:F

    goto :goto_6

    .line 497
    .end local v24    # "fl":Ljava/lang/Float;
    .restart local v2    # "fl":Ljava/lang/Float;
    :cond_1b
    move-object/from16 v24, v2

    .line 499
    .end local v2    # "fl":Ljava/lang/Float;
    .restart local v24    # "fl":Ljava/lang/Float;
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getAlphaSourceFlag()Ljava/lang/Boolean;

    move-result-object v2

    .line 500
    .local v2, "ais":Ljava/lang/Boolean;
    if-eqz v2, :cond_1c

    .line 501
    move-object/from16 v26, v1

    .end local v1    # "ca":Ljava/lang/Float;
    .local v26, "ca":Ljava/lang/Float;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->alphaIsShape:Z

    goto :goto_7

    .line 500
    .end local v26    # "ca":Ljava/lang/Float;
    .restart local v1    # "ca":Ljava/lang/Float;
    :cond_1c
    move-object/from16 v26, v1

    .line 502
    .end local v1    # "ca":Ljava/lang/Float;
    .restart local v26    # "ca":Ljava/lang/Float;
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->getTextKnockoutFlag()Ljava/lang/Boolean;

    move-result-object v1

    .line 503
    .local v1, "tk":Ljava/lang/Boolean;
    if-eqz v1, :cond_1d

    .line 504
    move-object/from16 v27, v2

    .end local v2    # "ais":Ljava/lang/Boolean;
    .local v27, "ais":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->textKnockout:Z

    goto :goto_8

    .line 503
    .end local v27    # "ais":Ljava/lang/Boolean;
    .restart local v2    # "ais":Ljava/lang/Boolean;
    :cond_1d
    move-object/from16 v27, v2

    .line 505
    .end local v2    # "ais":Ljava/lang/Boolean;
    .restart local v27    # "ais":Ljava/lang/Boolean;
    :goto_8
    return-void
.end method
