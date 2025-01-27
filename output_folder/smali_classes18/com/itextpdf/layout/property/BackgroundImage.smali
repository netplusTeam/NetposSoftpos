.class public Lcom/itextpdf/layout/property/BackgroundImage;
.super Ljava/lang/Object;
.source "BackgroundImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/property/BackgroundImage$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_BLEND_MODE:Lcom/itextpdf/layout/property/BlendMode;


# instance fields
.field private final backgroundClip:Lcom/itextpdf/layout/property/BackgroundBox;

.field private final backgroundOrigin:Lcom/itextpdf/layout/property/BackgroundBox;

.field private final backgroundSize:Lcom/itextpdf/layout/property/BackgroundSize;

.field private blendMode:Lcom/itextpdf/layout/property/BlendMode;

.field protected image:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

.field protected linearGradientBuilder:Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

.field private final position:Lcom/itextpdf/layout/property/BackgroundPosition;

.field private repeat:Lcom/itextpdf/layout/property/BackgroundRepeat;

.field protected repeatX:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected repeatY:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget-object v0, Lcom/itextpdf/layout/property/BlendMode;->NORMAL:Lcom/itextpdf/layout/property/BlendMode;

    sput-object v0, Lcom/itextpdf/layout/property/BackgroundImage;->DEFAULT_BLEND_MODE:Lcom/itextpdf/layout/property/BlendMode;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;)V
    .locals 1
    .param p1, "linearGradientBuilder"    # Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundImage;->DEFAULT_BLEND_MODE:Lcom/itextpdf/layout/property/BlendMode;

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/property/BackgroundImage;-><init>(Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/layout/property/BlendMode;)V

    .line 225
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/layout/property/BlendMode;)V
    .locals 9
    .param p1, "linearGradientBuilder"    # Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;
    .param p2, "blendMode"    # Lcom/itextpdf/layout/property/BlendMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    new-instance v2, Lcom/itextpdf/layout/property/BackgroundRepeat;

    sget-object v0, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->NO_REPEAT:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    invoke-direct {v2, v0}, Lcom/itextpdf/layout/property/BackgroundRepeat;-><init>(Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;)V

    new-instance v3, Lcom/itextpdf/layout/property/BackgroundPosition;

    invoke-direct {v3}, Lcom/itextpdf/layout/property/BackgroundPosition;-><init>()V

    new-instance v4, Lcom/itextpdf/layout/property/BackgroundSize;

    invoke-direct {v4}, Lcom/itextpdf/layout/property/BackgroundSize;-><init>()V

    sget-object v7, Lcom/itextpdf/layout/property/BackgroundBox;->BORDER_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    sget-object v8, Lcom/itextpdf/layout/property/BackgroundBox;->PADDING_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    const/4 v1, 0x0

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/layout/property/BackgroundImage;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/layout/property/BackgroundRepeat;Lcom/itextpdf/layout/property/BackgroundPosition;Lcom/itextpdf/layout/property/BackgroundSize;Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/layout/property/BlendMode;Lcom/itextpdf/layout/property/BackgroundBox;Lcom/itextpdf/layout/property/BackgroundBox;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;)V
    .locals 9
    .param p1, "image"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    new-instance v2, Lcom/itextpdf/layout/property/BackgroundRepeat;

    invoke-direct {v2}, Lcom/itextpdf/layout/property/BackgroundRepeat;-><init>()V

    new-instance v3, Lcom/itextpdf/layout/property/BackgroundPosition;

    invoke-direct {v3}, Lcom/itextpdf/layout/property/BackgroundPosition;-><init>()V

    new-instance v4, Lcom/itextpdf/layout/property/BackgroundSize;

    invoke-direct {v4}, Lcom/itextpdf/layout/property/BackgroundSize;-><init>()V

    sget-object v6, Lcom/itextpdf/layout/property/BackgroundImage;->DEFAULT_BLEND_MODE:Lcom/itextpdf/layout/property/BlendMode;

    sget-object v7, Lcom/itextpdf/layout/property/BackgroundBox;->BORDER_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    sget-object v8, Lcom/itextpdf/layout/property/BackgroundBox;->PADDING_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/layout/property/BackgroundImage;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/layout/property/BackgroundRepeat;Lcom/itextpdf/layout/property/BackgroundPosition;Lcom/itextpdf/layout/property/BackgroundSize;Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/layout/property/BlendMode;Lcom/itextpdf/layout/property/BackgroundBox;Lcom/itextpdf/layout/property/BackgroundBox;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/layout/property/BackgroundRepeat;)V
    .locals 9
    .param p1, "image"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p2, "repeat"    # Lcom/itextpdf/layout/property/BackgroundRepeat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    new-instance v3, Lcom/itextpdf/layout/property/BackgroundPosition;

    invoke-direct {v3}, Lcom/itextpdf/layout/property/BackgroundPosition;-><init>()V

    new-instance v4, Lcom/itextpdf/layout/property/BackgroundSize;

    invoke-direct {v4}, Lcom/itextpdf/layout/property/BackgroundSize;-><init>()V

    sget-object v6, Lcom/itextpdf/layout/property/BackgroundImage;->DEFAULT_BLEND_MODE:Lcom/itextpdf/layout/property/BlendMode;

    sget-object v7, Lcom/itextpdf/layout/property/BackgroundBox;->BORDER_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    sget-object v8, Lcom/itextpdf/layout/property/BackgroundBox;->PADDING_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/layout/property/BackgroundImage;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/layout/property/BackgroundRepeat;Lcom/itextpdf/layout/property/BackgroundPosition;Lcom/itextpdf/layout/property/BackgroundSize;Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/layout/property/BlendMode;Lcom/itextpdf/layout/property/BackgroundBox;Lcom/itextpdf/layout/property/BackgroundBox;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/layout/property/BackgroundRepeat;Lcom/itextpdf/layout/property/BlendMode;)V
    .locals 9
    .param p1, "image"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p2, "repeat"    # Lcom/itextpdf/layout/property/BackgroundRepeat;
    .param p3, "blendMode"    # Lcom/itextpdf/layout/property/BlendMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    new-instance v3, Lcom/itextpdf/layout/property/BackgroundPosition;

    invoke-direct {v3}, Lcom/itextpdf/layout/property/BackgroundPosition;-><init>()V

    new-instance v4, Lcom/itextpdf/layout/property/BackgroundSize;

    invoke-direct {v4}, Lcom/itextpdf/layout/property/BackgroundSize;-><init>()V

    sget-object v7, Lcom/itextpdf/layout/property/BackgroundBox;->BORDER_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    sget-object v8, Lcom/itextpdf/layout/property/BackgroundBox;->PADDING_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/layout/property/BackgroundImage;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/layout/property/BackgroundRepeat;Lcom/itextpdf/layout/property/BackgroundPosition;Lcom/itextpdf/layout/property/BackgroundSize;Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/layout/property/BlendMode;Lcom/itextpdf/layout/property/BackgroundBox;Lcom/itextpdf/layout/property/BackgroundBox;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;ZZ)V
    .locals 9
    .param p1, "image"    # Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .param p2, "repeatX"    # Z
    .param p3, "repeatY"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    new-instance v2, Lcom/itextpdf/layout/property/BackgroundRepeat;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->REPEAT:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->NO_REPEAT:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    :goto_0
    if-eqz p3, :cond_1

    sget-object v1, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->REPEAT:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->NO_REPEAT:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    :goto_1
    invoke-direct {v2, v0, v1}, Lcom/itextpdf/layout/property/BackgroundRepeat;-><init>(Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;)V

    new-instance v3, Lcom/itextpdf/layout/property/BackgroundPosition;

    invoke-direct {v3}, Lcom/itextpdf/layout/property/BackgroundPosition;-><init>()V

    new-instance v4, Lcom/itextpdf/layout/property/BackgroundSize;

    invoke-direct {v4}, Lcom/itextpdf/layout/property/BackgroundSize;-><init>()V

    const/4 v5, 0x0

    sget-object v6, Lcom/itextpdf/layout/property/BackgroundImage;->DEFAULT_BLEND_MODE:Lcom/itextpdf/layout/property/BlendMode;

    sget-object v7, Lcom/itextpdf/layout/property/BackgroundBox;->BORDER_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    sget-object v8, Lcom/itextpdf/layout/property/BackgroundBox;->PADDING_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/layout/property/BackgroundImage;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/layout/property/BackgroundRepeat;Lcom/itextpdf/layout/property/BackgroundPosition;Lcom/itextpdf/layout/property/BackgroundSize;Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/layout/property/BlendMode;Lcom/itextpdf/layout/property/BackgroundBox;Lcom/itextpdf/layout/property/BackgroundBox;)V

    .line 213
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)V
    .locals 9
    .param p1, "image"    # Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    new-instance v2, Lcom/itextpdf/layout/property/BackgroundRepeat;

    invoke-direct {v2}, Lcom/itextpdf/layout/property/BackgroundRepeat;-><init>()V

    new-instance v3, Lcom/itextpdf/layout/property/BackgroundPosition;

    invoke-direct {v3}, Lcom/itextpdf/layout/property/BackgroundPosition;-><init>()V

    new-instance v4, Lcom/itextpdf/layout/property/BackgroundSize;

    invoke-direct {v4}, Lcom/itextpdf/layout/property/BackgroundSize;-><init>()V

    sget-object v6, Lcom/itextpdf/layout/property/BackgroundImage;->DEFAULT_BLEND_MODE:Lcom/itextpdf/layout/property/BlendMode;

    sget-object v7, Lcom/itextpdf/layout/property/BackgroundBox;->BORDER_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    sget-object v8, Lcom/itextpdf/layout/property/BackgroundBox;->PADDING_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/layout/property/BackgroundImage;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/layout/property/BackgroundRepeat;Lcom/itextpdf/layout/property/BackgroundPosition;Lcom/itextpdf/layout/property/BackgroundSize;Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/layout/property/BlendMode;Lcom/itextpdf/layout/property/BackgroundBox;Lcom/itextpdf/layout/property/BackgroundBox;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;Lcom/itextpdf/layout/property/BackgroundRepeat;)V
    .locals 9
    .param p1, "image"    # Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .param p2, "repeat"    # Lcom/itextpdf/layout/property/BackgroundRepeat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    new-instance v3, Lcom/itextpdf/layout/property/BackgroundPosition;

    invoke-direct {v3}, Lcom/itextpdf/layout/property/BackgroundPosition;-><init>()V

    new-instance v4, Lcom/itextpdf/layout/property/BackgroundSize;

    invoke-direct {v4}, Lcom/itextpdf/layout/property/BackgroundSize;-><init>()V

    sget-object v6, Lcom/itextpdf/layout/property/BackgroundImage;->DEFAULT_BLEND_MODE:Lcom/itextpdf/layout/property/BlendMode;

    sget-object v7, Lcom/itextpdf/layout/property/BackgroundBox;->BORDER_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    sget-object v8, Lcom/itextpdf/layout/property/BackgroundBox;->PADDING_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/layout/property/BackgroundImage;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/layout/property/BackgroundRepeat;Lcom/itextpdf/layout/property/BackgroundPosition;Lcom/itextpdf/layout/property/BackgroundSize;Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/layout/property/BlendMode;Lcom/itextpdf/layout/property/BackgroundBox;Lcom/itextpdf/layout/property/BackgroundBox;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;Lcom/itextpdf/layout/property/BackgroundRepeat;Lcom/itextpdf/layout/property/BlendMode;)V
    .locals 9
    .param p1, "image"    # Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .param p2, "repeat"    # Lcom/itextpdf/layout/property/BackgroundRepeat;
    .param p3, "blendMode"    # Lcom/itextpdf/layout/property/BlendMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    new-instance v3, Lcom/itextpdf/layout/property/BackgroundPosition;

    invoke-direct {v3}, Lcom/itextpdf/layout/property/BackgroundPosition;-><init>()V

    new-instance v4, Lcom/itextpdf/layout/property/BackgroundSize;

    invoke-direct {v4}, Lcom/itextpdf/layout/property/BackgroundSize;-><init>()V

    sget-object v7, Lcom/itextpdf/layout/property/BackgroundBox;->BORDER_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    sget-object v8, Lcom/itextpdf/layout/property/BackgroundBox;->PADDING_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/layout/property/BackgroundImage;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/layout/property/BackgroundRepeat;Lcom/itextpdf/layout/property/BackgroundPosition;Lcom/itextpdf/layout/property/BackgroundSize;Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/layout/property/BlendMode;Lcom/itextpdf/layout/property/BackgroundBox;Lcom/itextpdf/layout/property/BackgroundBox;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;ZZ)V
    .locals 9
    .param p1, "image"    # Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .param p2, "repeatX"    # Z
    .param p3, "repeatY"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    new-instance v2, Lcom/itextpdf/layout/property/BackgroundRepeat;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->REPEAT:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->NO_REPEAT:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    :goto_0
    if-eqz p3, :cond_1

    sget-object v1, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->REPEAT:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->NO_REPEAT:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    :goto_1
    invoke-direct {v2, v0, v1}, Lcom/itextpdf/layout/property/BackgroundRepeat;-><init>(Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;)V

    new-instance v3, Lcom/itextpdf/layout/property/BackgroundPosition;

    invoke-direct {v3}, Lcom/itextpdf/layout/property/BackgroundPosition;-><init>()V

    new-instance v4, Lcom/itextpdf/layout/property/BackgroundSize;

    invoke-direct {v4}, Lcom/itextpdf/layout/property/BackgroundSize;-><init>()V

    const/4 v5, 0x0

    sget-object v6, Lcom/itextpdf/layout/property/BackgroundImage;->DEFAULT_BLEND_MODE:Lcom/itextpdf/layout/property/BlendMode;

    sget-object v7, Lcom/itextpdf/layout/property/BackgroundBox;->BORDER_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    sget-object v8, Lcom/itextpdf/layout/property/BackgroundBox;->PADDING_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/layout/property/BackgroundImage;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/layout/property/BackgroundRepeat;Lcom/itextpdf/layout/property/BackgroundPosition;Lcom/itextpdf/layout/property/BackgroundSize;Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/layout/property/BlendMode;Lcom/itextpdf/layout/property/BackgroundBox;Lcom/itextpdf/layout/property/BackgroundBox;)V

    .line 197
    return-void
.end method

.method private constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/layout/property/BackgroundRepeat;Lcom/itextpdf/layout/property/BackgroundPosition;Lcom/itextpdf/layout/property/BackgroundSize;Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/layout/property/BlendMode;Lcom/itextpdf/layout/property/BackgroundBox;Lcom/itextpdf/layout/property/BackgroundBox;)V
    .locals 1
    .param p1, "image"    # Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .param p2, "repeat"    # Lcom/itextpdf/layout/property/BackgroundRepeat;
    .param p3, "position"    # Lcom/itextpdf/layout/property/BackgroundPosition;
    .param p4, "backgroundSize"    # Lcom/itextpdf/layout/property/BackgroundSize;
    .param p5, "linearGradientBuilder"    # Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;
    .param p6, "blendMode"    # Lcom/itextpdf/layout/property/BlendMode;
    .param p7, "clip"    # Lcom/itextpdf/layout/property/BackgroundBox;
    .param p8, "origin"    # Lcom/itextpdf/layout/property/BackgroundBox;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundImage;->DEFAULT_BLEND_MODE:Lcom/itextpdf/layout/property/BlendMode;

    iput-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->blendMode:Lcom/itextpdf/layout/property/BlendMode;

    .line 265
    iput-object p1, p0, Lcom/itextpdf/layout/property/BackgroundImage;->image:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    .line 266
    if-eqz p2, :cond_0

    .line 267
    invoke-virtual {p2}, Lcom/itextpdf/layout/property/BackgroundRepeat;->isNoRepeatOnXAxis()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->repeatX:Z

    .line 268
    invoke-virtual {p2}, Lcom/itextpdf/layout/property/BackgroundRepeat;->isNoRepeatOnYAxis()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->repeatY:Z

    .line 270
    :cond_0
    iput-object p2, p0, Lcom/itextpdf/layout/property/BackgroundImage;->repeat:Lcom/itextpdf/layout/property/BackgroundRepeat;

    .line 271
    iput-object p3, p0, Lcom/itextpdf/layout/property/BackgroundImage;->position:Lcom/itextpdf/layout/property/BackgroundPosition;

    .line 272
    iput-object p4, p0, Lcom/itextpdf/layout/property/BackgroundImage;->backgroundSize:Lcom/itextpdf/layout/property/BackgroundSize;

    .line 273
    iput-object p5, p0, Lcom/itextpdf/layout/property/BackgroundImage;->linearGradientBuilder:Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    .line 274
    if-eqz p6, :cond_1

    .line 275
    iput-object p6, p0, Lcom/itextpdf/layout/property/BackgroundImage;->blendMode:Lcom/itextpdf/layout/property/BlendMode;

    .line 277
    :cond_1
    iput-object p7, p0, Lcom/itextpdf/layout/property/BackgroundImage;->backgroundClip:Lcom/itextpdf/layout/property/BackgroundBox;

    .line 278
    iput-object p8, p0, Lcom/itextpdf/layout/property/BackgroundImage;->backgroundOrigin:Lcom/itextpdf/layout/property/BackgroundBox;

    .line 279
    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/layout/property/BackgroundRepeat;Lcom/itextpdf/layout/property/BackgroundPosition;Lcom/itextpdf/layout/property/BackgroundSize;Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/layout/property/BlendMode;Lcom/itextpdf/layout/property/BackgroundBox;Lcom/itextpdf/layout/property/BackgroundBox;Lcom/itextpdf/layout/property/BackgroundImage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .param p2, "x1"    # Lcom/itextpdf/layout/property/BackgroundRepeat;
    .param p3, "x2"    # Lcom/itextpdf/layout/property/BackgroundPosition;
    .param p4, "x3"    # Lcom/itextpdf/layout/property/BackgroundSize;
    .param p5, "x4"    # Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;
    .param p6, "x5"    # Lcom/itextpdf/layout/property/BlendMode;
    .param p7, "x6"    # Lcom/itextpdf/layout/property/BackgroundBox;
    .param p8, "x7"    # Lcom/itextpdf/layout/property/BackgroundBox;
    .param p9, "x8"    # Lcom/itextpdf/layout/property/BackgroundImage$1;

    .line 51
    invoke-direct/range {p0 .. p8}, Lcom/itextpdf/layout/property/BackgroundImage;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/layout/property/BackgroundRepeat;Lcom/itextpdf/layout/property/BackgroundPosition;Lcom/itextpdf/layout/property/BackgroundSize;Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/layout/property/BlendMode;Lcom/itextpdf/layout/property/BackgroundBox;Lcom/itextpdf/layout/property/BackgroundBox;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/property/BackgroundImage;)V
    .locals 10
    .param p1, "backgroundImage"    # Lcom/itextpdf/layout/property/BackgroundImage;

    .line 93
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getImage()Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getForm()Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getImage()Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 94
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getRepeat()Lcom/itextpdf/layout/property/BackgroundRepeat;

    move-result-object v3

    .line 95
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getBackgroundPosition()Lcom/itextpdf/layout/property/BackgroundPosition;

    move-result-object v4

    .line 96
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getBackgroundSize()Lcom/itextpdf/layout/property/BackgroundSize;

    move-result-object v5

    .line 97
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getLinearGradientBuilder()Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    move-result-object v6

    .line 98
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getBlendMode()Lcom/itextpdf/layout/property/BlendMode;

    move-result-object v7

    .line 99
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getBackgroundClip()Lcom/itextpdf/layout/property/BackgroundBox;

    move-result-object v8

    .line 100
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/BackgroundImage;->getBackgroundOrigin()Lcom/itextpdf/layout/property/BackgroundBox;

    move-result-object v9

    .line 93
    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/itextpdf/layout/property/BackgroundImage;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/layout/property/BackgroundRepeat;Lcom/itextpdf/layout/property/BackgroundPosition;Lcom/itextpdf/layout/property/BackgroundSize;Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;Lcom/itextpdf/layout/property/BlendMode;Lcom/itextpdf/layout/property/BackgroundBox;Lcom/itextpdf/layout/property/BackgroundBox;)V

    .line 101
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/BackgroundImage;->isRepeatX()Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->repeatX:Z

    .line 102
    invoke-virtual {p1}, Lcom/itextpdf/layout/property/BackgroundImage;->isRepeatY()Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->repeatY:Z

    .line 103
    return-void
.end method

.method static synthetic access$000()Lcom/itextpdf/layout/property/BlendMode;
    .locals 1

    .line 51
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundImage;->DEFAULT_BLEND_MODE:Lcom/itextpdf/layout/property/BlendMode;

    return-object v0
.end method


# virtual methods
.method public getBackgroundClip()Lcom/itextpdf/layout/property/BackgroundBox;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->backgroundClip:Lcom/itextpdf/layout/property/BackgroundBox;

    return-object v0
.end method

.method public getBackgroundOrigin()Lcom/itextpdf/layout/property/BackgroundBox;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->backgroundOrigin:Lcom/itextpdf/layout/property/BackgroundBox;

    return-object v0
.end method

.method public getBackgroundPosition()Lcom/itextpdf/layout/property/BackgroundPosition;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->position:Lcom/itextpdf/layout/property/BackgroundPosition;

    return-object v0
.end method

.method public getBackgroundSize()Lcom/itextpdf/layout/property/BackgroundSize;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->backgroundSize:Lcom/itextpdf/layout/property/BackgroundSize;

    return-object v0
.end method

.method public getBlendMode()Lcom/itextpdf/layout/property/BlendMode;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->blendMode:Lcom/itextpdf/layout/property/BlendMode;

    return-object v0
.end method

.method public getForm()Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->image:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getHeight()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->image:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getHeight()F

    move-result v0

    return v0
.end method

.method public getImage()Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->image:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getImageHeight()F
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->image:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getHeight()F

    move-result v0

    return v0
.end method

.method public getImageWidth()F
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->image:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getWidth()F

    move-result v0

    return v0
.end method

.method public getLinearGradientBuilder()Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->linearGradientBuilder:Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    return-object v0
.end method

.method public getRepeat()Lcom/itextpdf/layout/property/BackgroundRepeat;
    .locals 3

    .line 364
    iget-boolean v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->repeatX:Z

    iget-object v1, p0, Lcom/itextpdf/layout/property/BackgroundImage;->repeat:Lcom/itextpdf/layout/property/BackgroundRepeat;

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/BackgroundRepeat;->isNoRepeatOnXAxis()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 365
    new-instance v0, Lcom/itextpdf/layout/property/BackgroundRepeat;

    iget-boolean v1, p0, Lcom/itextpdf/layout/property/BackgroundImage;->repeatX:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->REPEAT:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->NO_REPEAT:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    :goto_0
    iget-object v2, p0, Lcom/itextpdf/layout/property/BackgroundImage;->repeat:Lcom/itextpdf/layout/property/BackgroundRepeat;

    .line 366
    invoke-virtual {v2}, Lcom/itextpdf/layout/property/BackgroundRepeat;->getYAxisRepeat()Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/BackgroundRepeat;-><init>(Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;)V

    iput-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->repeat:Lcom/itextpdf/layout/property/BackgroundRepeat;

    .line 368
    :cond_1
    iget-boolean v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->repeatY:Z

    iget-object v1, p0, Lcom/itextpdf/layout/property/BackgroundImage;->repeat:Lcom/itextpdf/layout/property/BackgroundRepeat;

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/BackgroundRepeat;->isNoRepeatOnYAxis()Z

    move-result v1

    if-ne v0, v1, :cond_3

    .line 369
    new-instance v0, Lcom/itextpdf/layout/property/BackgroundRepeat;

    iget-object v1, p0, Lcom/itextpdf/layout/property/BackgroundImage;->repeat:Lcom/itextpdf/layout/property/BackgroundRepeat;

    invoke-virtual {v1}, Lcom/itextpdf/layout/property/BackgroundRepeat;->getXAxisRepeat()Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    move-result-object v1

    iget-boolean v2, p0, Lcom/itextpdf/layout/property/BackgroundImage;->repeatY:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->REPEAT:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->NO_REPEAT:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/BackgroundRepeat;-><init>(Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;)V

    iput-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->repeat:Lcom/itextpdf/layout/property/BackgroundRepeat;

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->repeat:Lcom/itextpdf/layout/property/BackgroundRepeat;

    return-object v0
.end method

.method public getWidth()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->image:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->getWidth()F

    move-result v0

    return v0
.end method

.method public isBackgroundSpecified()Z
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->image:Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->linearGradientBuilder:Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRepeatX()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    iget-boolean v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->repeatX:Z

    return v0
.end method

.method public isRepeatY()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    iget-boolean v0, p0, Lcom/itextpdf/layout/property/BackgroundImage;->repeatY:Z

    return v0
.end method
