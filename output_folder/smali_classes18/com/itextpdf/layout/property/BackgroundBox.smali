.class public final enum Lcom/itextpdf/layout/property/BackgroundBox;
.super Ljava/lang/Enum;
.source "BackgroundBox.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/property/BackgroundBox;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/property/BackgroundBox;

.field public static final enum BORDER_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

.field public static final enum CONTENT_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

.field public static final enum PADDING_BOX:Lcom/itextpdf/layout/property/BackgroundBox;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 51
    new-instance v0, Lcom/itextpdf/layout/property/BackgroundBox;

    const-string v1, "BORDER_BOX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/BackgroundBox;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/property/BackgroundBox;->BORDER_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    .line 52
    new-instance v1, Lcom/itextpdf/layout/property/BackgroundBox;

    const-string v3, "PADDING_BOX"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/layout/property/BackgroundBox;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/property/BackgroundBox;->PADDING_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    .line 53
    new-instance v3, Lcom/itextpdf/layout/property/BackgroundBox;

    const-string v5, "CONTENT_BOX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/layout/property/BackgroundBox;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/property/BackgroundBox;->CONTENT_BOX:Lcom/itextpdf/layout/property/BackgroundBox;

    .line 50
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/itextpdf/layout/property/BackgroundBox;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/itextpdf/layout/property/BackgroundBox;->$VALUES:[Lcom/itextpdf/layout/property/BackgroundBox;

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

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/property/BackgroundBox;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 50
    const-class v0, Lcom/itextpdf/layout/property/BackgroundBox;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/BackgroundBox;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/layout/property/BackgroundBox;
    .locals 1

    .line 50
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundBox;->$VALUES:[Lcom/itextpdf/layout/property/BackgroundBox;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/property/BackgroundBox;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/property/BackgroundBox;

    return-object v0
.end method
