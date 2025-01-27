.class public Lcom/itextpdf/kernel/geom/PageSize;
.super Lcom/itextpdf/kernel/geom/Rectangle;
.source "PageSize.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static A0:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static A1:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static A10:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static A2:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static A3:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static A4:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static A5:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static A6:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static A7:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static A8:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static A9:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static B0:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static B1:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static B10:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static B2:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static B3:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static B4:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static B5:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static B6:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static B7:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static B8:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static B9:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static Default:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static EXECUTIVE:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static LEDGER:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static LEGAL:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static LETTER:Lcom/itextpdf/kernel/geom/PageSize; = null

.field public static TABLOID:Lcom/itextpdf/kernel/geom/PageSize; = null

.field private static final serialVersionUID:J = 0x6bc668753109ab0L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const/high16 v1, 0x45150000    # 2384.0f

    const v2, 0x4552a000    # 3370.0f

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->A0:Lcom/itextpdf/kernel/geom/PageSize;

    .line 53
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const v2, 0x44d28000    # 1684.0f

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->A1:Lcom/itextpdf/kernel/geom/PageSize;

    .line 54
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const v1, 0x4494c000    # 1190.0f

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->A2:Lcom/itextpdf/kernel/geom/PageSize;

    .line 55
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const v2, 0x44528000    # 842.0f

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->A3:Lcom/itextpdf/kernel/geom/PageSize;

    .line 56
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const v1, 0x4414c000    # 595.0f

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->A4:Lcom/itextpdf/kernel/geom/PageSize;

    .line 57
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const/high16 v2, 0x43d20000    # 420.0f

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->A5:Lcom/itextpdf/kernel/geom/PageSize;

    .line 58
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const/high16 v1, 0x43950000    # 298.0f

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->A6:Lcom/itextpdf/kernel/geom/PageSize;

    .line 59
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const/high16 v2, 0x43520000    # 210.0f

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->A7:Lcom/itextpdf/kernel/geom/PageSize;

    .line 60
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const/high16 v1, 0x43140000    # 148.0f

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->A8:Lcom/itextpdf/kernel/geom/PageSize;

    .line 61
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const/high16 v1, 0x42d20000    # 105.0f

    const v2, 0x4408c000    # 547.0f

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->A9:Lcom/itextpdf/kernel/geom/PageSize;

    .line 62
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const/high16 v2, 0x42940000    # 74.0f

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->A10:Lcom/itextpdf/kernel/geom/PageSize;

    .line 64
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const v1, 0x45312000    # 2834.0f

    const v2, 0x457a8000    # 4008.0f

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->B0:Lcom/itextpdf/kernel/geom/PageSize;

    .line 65
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const v2, 0x44fa8000    # 2004.0f

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->B1:Lcom/itextpdf/kernel/geom/PageSize;

    .line 66
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const v1, 0x44b12000    # 1417.0f

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->B2:Lcom/itextpdf/kernel/geom/PageSize;

    .line 67
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->B3:Lcom/itextpdf/kernel/geom/PageSize;

    .line 68
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const/high16 v1, 0x44310000    # 708.0f

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->B4:Lcom/itextpdf/kernel/geom/PageSize;

    .line 69
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const/high16 v2, 0x43f90000    # 498.0f

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->B5:Lcom/itextpdf/kernel/geom/PageSize;

    .line 70
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const/high16 v1, 0x43b10000    # 354.0f

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->B6:Lcom/itextpdf/kernel/geom/PageSize;

    .line 71
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const/high16 v2, 0x43790000    # 249.0f

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->B7:Lcom/itextpdf/kernel/geom/PageSize;

    .line 72
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const/high16 v1, 0x432f0000    # 175.0f

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->B8:Lcom/itextpdf/kernel/geom/PageSize;

    .line 73
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const/high16 v2, 0x42f80000    # 124.0f

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->B9:Lcom/itextpdf/kernel/geom/PageSize;

    .line 74
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const/high16 v1, 0x42b00000    # 88.0f

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->B10:Lcom/itextpdf/kernel/geom/PageSize;

    .line 76
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const/high16 v1, 0x44190000    # 612.0f

    const/high16 v2, 0x44460000    # 792.0f

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->LETTER:Lcom/itextpdf/kernel/geom/PageSize;

    .line 77
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const/high16 v3, 0x447c0000    # 1008.0f

    invoke-direct {v0, v1, v3}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->LEGAL:Lcom/itextpdf/kernel/geom/PageSize;

    .line 78
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const/high16 v1, 0x44990000    # 1224.0f

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->TABLOID:Lcom/itextpdf/kernel/geom/PageSize;

    .line 79
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->LEDGER:Lcom/itextpdf/kernel/geom/PageSize;

    .line 80
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    const v1, 0x44028000    # 522.0f

    const/high16 v2, 0x443d0000    # 756.0f

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->EXECUTIVE:Lcom/itextpdf/kernel/geom/PageSize;

    .line 82
    sget-object v0, Lcom/itextpdf/kernel/geom/PageSize;->A4:Lcom/itextpdf/kernel/geom/PageSize;

    sput-object v0, Lcom/itextpdf/kernel/geom/PageSize;->Default:Lcom/itextpdf/kernel/geom/PageSize;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 4
    .param p1, "box"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 90
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 91
    return-void
.end method


# virtual methods
.method public clone()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 113
    invoke-super {p0}, Lcom/itextpdf/kernel/geom/Rectangle;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/itextpdf/kernel/geom/PageSize;->clone()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public rotate()Lcom/itextpdf/kernel/geom/PageSize;
    .locals 3

    .line 99
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    iget v1, p0, Lcom/itextpdf/kernel/geom/PageSize;->height:F

    iget v2, p0, Lcom/itextpdf/kernel/geom/PageSize;->width:F

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(FF)V

    return-object v0
.end method
