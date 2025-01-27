.class public final enum Lcom/itextpdf/layout/property/CaptionSide;
.super Ljava/lang/Enum;
.source "CaptionSide.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/property/CaptionSide;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/property/CaptionSide;

.field public static final enum BOTTOM:Lcom/itextpdf/layout/property/CaptionSide;

.field public static final enum TOP:Lcom/itextpdf/layout/property/CaptionSide;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 50
    new-instance v0, Lcom/itextpdf/layout/property/CaptionSide;

    const-string v1, "BOTTOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/CaptionSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/property/CaptionSide;->BOTTOM:Lcom/itextpdf/layout/property/CaptionSide;

    .line 51
    new-instance v1, Lcom/itextpdf/layout/property/CaptionSide;

    const-string v3, "TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/layout/property/CaptionSide;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/property/CaptionSide;->TOP:Lcom/itextpdf/layout/property/CaptionSide;

    .line 49
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/itextpdf/layout/property/CaptionSide;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/itextpdf/layout/property/CaptionSide;->$VALUES:[Lcom/itextpdf/layout/property/CaptionSide;

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

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/property/CaptionSide;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lcom/itextpdf/layout/property/CaptionSide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/CaptionSide;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/layout/property/CaptionSide;
    .locals 1

    .line 49
    sget-object v0, Lcom/itextpdf/layout/property/CaptionSide;->$VALUES:[Lcom/itextpdf/layout/property/CaptionSide;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/property/CaptionSide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/property/CaptionSide;

    return-object v0
.end method
