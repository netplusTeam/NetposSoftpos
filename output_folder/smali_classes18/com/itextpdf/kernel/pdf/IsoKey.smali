.class public final enum Lcom/itextpdf/kernel/pdf/IsoKey;
.super Ljava/lang/Enum;
.source "IsoKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/kernel/pdf/IsoKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum CANVAS_STACK:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum EXTENDED_GRAPHICS_STATE:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum FILL_COLOR:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum FONT_GLYPHS:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum INLINE_IMAGE:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum PAGE:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum PDF_OBJECT:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum RENDERING_INTENT:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum STROKE_COLOR:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum TAG_STRUCTURE_ELEMENT:Lcom/itextpdf/kernel/pdf/IsoKey;

.field public static final enum XREF_TABLE:Lcom/itextpdf/kernel/pdf/IsoKey;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 50
    new-instance v0, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v1, "CANVAS_STACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/IsoKey;->CANVAS_STACK:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 51
    new-instance v1, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v3, "FILL_COLOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/kernel/pdf/IsoKey;->FILL_COLOR:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 52
    new-instance v3, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v5, "EXTENDED_GRAPHICS_STATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/kernel/pdf/IsoKey;->EXTENDED_GRAPHICS_STATE:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 53
    new-instance v5, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v7, "INLINE_IMAGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/kernel/pdf/IsoKey;->INLINE_IMAGE:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 54
    new-instance v7, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v9, "PAGE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/itextpdf/kernel/pdf/IsoKey;->PAGE:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 55
    new-instance v9, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v11, "PDF_OBJECT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/itextpdf/kernel/pdf/IsoKey;->PDF_OBJECT:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 56
    new-instance v11, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v13, "RENDERING_INTENT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/itextpdf/kernel/pdf/IsoKey;->RENDERING_INTENT:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 57
    new-instance v13, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v15, "STROKE_COLOR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/itextpdf/kernel/pdf/IsoKey;->STROKE_COLOR:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 58
    new-instance v15, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v14, "TAG_STRUCTURE_ELEMENT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/itextpdf/kernel/pdf/IsoKey;->TAG_STRUCTURE_ELEMENT:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 59
    new-instance v14, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v12, "FONT_GLYPHS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/itextpdf/kernel/pdf/IsoKey;->FONT_GLYPHS:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 60
    new-instance v12, Lcom/itextpdf/kernel/pdf/IsoKey;

    const-string v10, "XREF_TABLE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/itextpdf/kernel/pdf/IsoKey;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/itextpdf/kernel/pdf/IsoKey;->XREF_TABLE:Lcom/itextpdf/kernel/pdf/IsoKey;

    .line 49
    const/16 v10, 0xb

    new-array v10, v10, [Lcom/itextpdf/kernel/pdf/IsoKey;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lcom/itextpdf/kernel/pdf/IsoKey;->$VALUES:[Lcom/itextpdf/kernel/pdf/IsoKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/IsoKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/IsoKey;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/kernel/pdf/IsoKey;
    .locals 1

    .line 49
    sget-object v0, Lcom/itextpdf/kernel/pdf/IsoKey;->$VALUES:[Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v0}, [Lcom/itextpdf/kernel/pdf/IsoKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/kernel/pdf/IsoKey;

    return-object v0
.end method
