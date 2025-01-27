.class public final enum Lcom/itextpdf/layout/property/ListSymbolPosition;
.super Ljava/lang/Enum;
.source "ListSymbolPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/property/ListSymbolPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/property/ListSymbolPosition;

.field public static final enum DEFAULT:Lcom/itextpdf/layout/property/ListSymbolPosition;

.field public static final enum INSIDE:Lcom/itextpdf/layout/property/ListSymbolPosition;

.field public static final enum OUTSIDE:Lcom/itextpdf/layout/property/ListSymbolPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 46
    new-instance v0, Lcom/itextpdf/layout/property/ListSymbolPosition;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/ListSymbolPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/property/ListSymbolPosition;->DEFAULT:Lcom/itextpdf/layout/property/ListSymbolPosition;

    .line 47
    new-instance v1, Lcom/itextpdf/layout/property/ListSymbolPosition;

    const-string v3, "INSIDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/layout/property/ListSymbolPosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/property/ListSymbolPosition;->INSIDE:Lcom/itextpdf/layout/property/ListSymbolPosition;

    .line 48
    new-instance v3, Lcom/itextpdf/layout/property/ListSymbolPosition;

    const-string v5, "OUTSIDE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/layout/property/ListSymbolPosition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/property/ListSymbolPosition;->OUTSIDE:Lcom/itextpdf/layout/property/ListSymbolPosition;

    .line 45
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/itextpdf/layout/property/ListSymbolPosition;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/itextpdf/layout/property/ListSymbolPosition;->$VALUES:[Lcom/itextpdf/layout/property/ListSymbolPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/property/ListSymbolPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lcom/itextpdf/layout/property/ListSymbolPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/ListSymbolPosition;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/layout/property/ListSymbolPosition;
    .locals 1

    .line 45
    sget-object v0, Lcom/itextpdf/layout/property/ListSymbolPosition;->$VALUES:[Lcom/itextpdf/layout/property/ListSymbolPosition;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/property/ListSymbolPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/property/ListSymbolPosition;

    return-object v0
.end method
