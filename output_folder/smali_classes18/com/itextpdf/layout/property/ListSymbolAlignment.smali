.class public final enum Lcom/itextpdf/layout/property/ListSymbolAlignment;
.super Ljava/lang/Enum;
.source "ListSymbolAlignment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/property/ListSymbolAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/property/ListSymbolAlignment;

.field public static final enum LEFT:Lcom/itextpdf/layout/property/ListSymbolAlignment;

.field public static final enum RIGHT:Lcom/itextpdf/layout/property/ListSymbolAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 60
    new-instance v0, Lcom/itextpdf/layout/property/ListSymbolAlignment;

    const-string v1, "RIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/ListSymbolAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/property/ListSymbolAlignment;->RIGHT:Lcom/itextpdf/layout/property/ListSymbolAlignment;

    .line 61
    new-instance v1, Lcom/itextpdf/layout/property/ListSymbolAlignment;

    const-string v3, "LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/layout/property/ListSymbolAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/property/ListSymbolAlignment;->LEFT:Lcom/itextpdf/layout/property/ListSymbolAlignment;

    .line 59
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/itextpdf/layout/property/ListSymbolAlignment;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/itextpdf/layout/property/ListSymbolAlignment;->$VALUES:[Lcom/itextpdf/layout/property/ListSymbolAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/property/ListSymbolAlignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 59
    const-class v0, Lcom/itextpdf/layout/property/ListSymbolAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/ListSymbolAlignment;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/layout/property/ListSymbolAlignment;
    .locals 1

    .line 59
    sget-object v0, Lcom/itextpdf/layout/property/ListSymbolAlignment;->$VALUES:[Lcom/itextpdf/layout/property/ListSymbolAlignment;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/property/ListSymbolAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/property/ListSymbolAlignment;

    return-object v0
.end method
