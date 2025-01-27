.class public final enum Lcom/itextpdf/layout/property/AreaBreakType;
.super Ljava/lang/Enum;
.source "AreaBreakType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/property/AreaBreakType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/property/AreaBreakType;

.field public static final enum LAST_PAGE:Lcom/itextpdf/layout/property/AreaBreakType;

.field public static final enum NEXT_AREA:Lcom/itextpdf/layout/property/AreaBreakType;

.field public static final enum NEXT_PAGE:Lcom/itextpdf/layout/property/AreaBreakType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 51
    new-instance v0, Lcom/itextpdf/layout/property/AreaBreakType;

    const-string v1, "NEXT_AREA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/AreaBreakType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/property/AreaBreakType;->NEXT_AREA:Lcom/itextpdf/layout/property/AreaBreakType;

    .line 52
    new-instance v1, Lcom/itextpdf/layout/property/AreaBreakType;

    const-string v3, "NEXT_PAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/layout/property/AreaBreakType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/property/AreaBreakType;->NEXT_PAGE:Lcom/itextpdf/layout/property/AreaBreakType;

    .line 53
    new-instance v3, Lcom/itextpdf/layout/property/AreaBreakType;

    const-string v5, "LAST_PAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/layout/property/AreaBreakType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/property/AreaBreakType;->LAST_PAGE:Lcom/itextpdf/layout/property/AreaBreakType;

    .line 50
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/itextpdf/layout/property/AreaBreakType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/itextpdf/layout/property/AreaBreakType;->$VALUES:[Lcom/itextpdf/layout/property/AreaBreakType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/property/AreaBreakType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 50
    const-class v0, Lcom/itextpdf/layout/property/AreaBreakType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/AreaBreakType;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/layout/property/AreaBreakType;
    .locals 1

    .line 50
    sget-object v0, Lcom/itextpdf/layout/property/AreaBreakType;->$VALUES:[Lcom/itextpdf/layout/property/AreaBreakType;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/property/AreaBreakType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/property/AreaBreakType;

    return-object v0
.end method
