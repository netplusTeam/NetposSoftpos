.class public final enum Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;
.super Ljava/lang/Enum;
.source "BackgroundPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/property/BackgroundPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PositionY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

.field public static final enum BOTTOM:Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

.field public static final enum CENTER:Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

.field public static final enum TOP:Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 249
    new-instance v0, Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;->TOP:Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    .line 250
    new-instance v1, Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    const-string v3, "BOTTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;->BOTTOM:Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    .line 251
    new-instance v3, Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    const-string v5, "CENTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;->CENTER:Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    .line 248
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;->$VALUES:[Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 248
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 248
    const-class v0, Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;
    .locals 1

    .line 248
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;->$VALUES:[Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/property/BackgroundPosition$PositionY;

    return-object v0
.end method
