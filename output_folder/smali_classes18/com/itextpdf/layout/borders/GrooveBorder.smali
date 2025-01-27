.class public Lcom/itextpdf/layout/borders/GrooveBorder;
.super Lcom/itextpdf/layout/borders/Border3D;
.source "GrooveBorder.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "width"    # F

    .line 59
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/borders/Border3D;-><init>(F)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/DeviceCmyk;F)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/DeviceCmyk;
    .param p2, "width"    # F

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/borders/Border3D;-><init>(Lcom/itextpdf/kernel/colors/DeviceCmyk;F)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/DeviceCmyk;FF)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/DeviceCmyk;
    .param p2, "width"    # F
    .param p3, "opacity"    # F

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/borders/Border3D;-><init>(Lcom/itextpdf/kernel/colors/DeviceCmyk;FF)V

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/DeviceGray;F)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/DeviceGray;
    .param p2, "width"    # F

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/borders/Border3D;-><init>(Lcom/itextpdf/kernel/colors/DeviceGray;F)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/DeviceGray;FF)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/DeviceGray;
    .param p2, "width"    # F
    .param p3, "opacity"    # F

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/borders/Border3D;-><init>(Lcom/itextpdf/kernel/colors/DeviceGray;FF)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/DeviceRgb;F)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/DeviceRgb;
    .param p2, "width"    # F

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/borders/Border3D;-><init>(Lcom/itextpdf/kernel/colors/DeviceRgb;F)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/DeviceRgb;FF)V
    .locals 0
    .param p1, "color"    # Lcom/itextpdf/kernel/colors/DeviceRgb;
    .param p2, "width"    # F
    .param p3, "opacity"    # F

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/borders/Border3D;-><init>(Lcom/itextpdf/kernel/colors/DeviceRgb;FF)V

    .line 101
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 130
    const/4 v0, 0x5

    return v0
.end method

.method protected setInnerHalfColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/borders/Border$Side;)V
    .locals 2
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "side"    # Lcom/itextpdf/layout/borders/Border$Side;

    .line 138
    sget-object v0, Lcom/itextpdf/layout/borders/GrooveBorder$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {p2}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 145
    :pswitch_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/GrooveBorder;->getDarkerColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 141
    :pswitch_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/GrooveBorder;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 142
    nop

    .line 148
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected setOuterHalfColor(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;Lcom/itextpdf/layout/borders/Border$Side;)V
    .locals 2
    .param p1, "canvas"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    .param p2, "side"    # Lcom/itextpdf/layout/borders/Border$Side;

    .line 155
    sget-object v0, Lcom/itextpdf/layout/borders/GrooveBorder$1;->$SwitchMap$com$itextpdf$layout$borders$Border$Side:[I

    invoke-virtual {p2}, Lcom/itextpdf/layout/borders/Border$Side;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 162
    :pswitch_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/GrooveBorder;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 158
    :pswitch_1
    invoke-virtual {p0}, Lcom/itextpdf/layout/borders/GrooveBorder;->getDarkerColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 159
    nop

    .line 165
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
