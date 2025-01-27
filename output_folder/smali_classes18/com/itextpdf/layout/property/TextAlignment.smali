.class public final enum Lcom/itextpdf/layout/property/TextAlignment;
.super Ljava/lang/Enum;
.source "TextAlignment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/property/TextAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/property/TextAlignment;

.field public static final enum CENTER:Lcom/itextpdf/layout/property/TextAlignment;

.field public static final enum JUSTIFIED:Lcom/itextpdf/layout/property/TextAlignment;

.field public static final enum JUSTIFIED_ALL:Lcom/itextpdf/layout/property/TextAlignment;

.field public static final enum LEFT:Lcom/itextpdf/layout/property/TextAlignment;

.field public static final enum RIGHT:Lcom/itextpdf/layout/property/TextAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 51
    new-instance v0, Lcom/itextpdf/layout/property/TextAlignment;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/property/TextAlignment;->LEFT:Lcom/itextpdf/layout/property/TextAlignment;

    .line 52
    new-instance v1, Lcom/itextpdf/layout/property/TextAlignment;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/layout/property/TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/property/TextAlignment;->CENTER:Lcom/itextpdf/layout/property/TextAlignment;

    .line 53
    new-instance v3, Lcom/itextpdf/layout/property/TextAlignment;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/layout/property/TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/property/TextAlignment;->RIGHT:Lcom/itextpdf/layout/property/TextAlignment;

    .line 54
    new-instance v5, Lcom/itextpdf/layout/property/TextAlignment;

    const-string v7, "JUSTIFIED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/layout/property/TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/layout/property/TextAlignment;->JUSTIFIED:Lcom/itextpdf/layout/property/TextAlignment;

    .line 55
    new-instance v7, Lcom/itextpdf/layout/property/TextAlignment;

    const-string v9, "JUSTIFIED_ALL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/itextpdf/layout/property/TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/itextpdf/layout/property/TextAlignment;->JUSTIFIED_ALL:Lcom/itextpdf/layout/property/TextAlignment;

    .line 50
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/itextpdf/layout/property/TextAlignment;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/itextpdf/layout/property/TextAlignment;->$VALUES:[Lcom/itextpdf/layout/property/TextAlignment;

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

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/property/TextAlignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 50
    const-class v0, Lcom/itextpdf/layout/property/TextAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/TextAlignment;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/layout/property/TextAlignment;
    .locals 1

    .line 50
    sget-object v0, Lcom/itextpdf/layout/property/TextAlignment;->$VALUES:[Lcom/itextpdf/layout/property/TextAlignment;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/property/TextAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/property/TextAlignment;

    return-object v0
.end method
