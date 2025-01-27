.class public final enum Lcom/itextpdf/layout/property/HorizontalAlignment;
.super Ljava/lang/Enum;
.source "HorizontalAlignment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/property/HorizontalAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/property/HorizontalAlignment;

.field public static final enum CENTER:Lcom/itextpdf/layout/property/HorizontalAlignment;

.field public static final enum LEFT:Lcom/itextpdf/layout/property/HorizontalAlignment;

.field public static final enum RIGHT:Lcom/itextpdf/layout/property/HorizontalAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 50
    new-instance v0, Lcom/itextpdf/layout/property/HorizontalAlignment;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/HorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/property/HorizontalAlignment;->LEFT:Lcom/itextpdf/layout/property/HorizontalAlignment;

    .line 51
    new-instance v1, Lcom/itextpdf/layout/property/HorizontalAlignment;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/layout/property/HorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/property/HorizontalAlignment;->CENTER:Lcom/itextpdf/layout/property/HorizontalAlignment;

    .line 52
    new-instance v3, Lcom/itextpdf/layout/property/HorizontalAlignment;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/layout/property/HorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/property/HorizontalAlignment;->RIGHT:Lcom/itextpdf/layout/property/HorizontalAlignment;

    .line 49
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/itextpdf/layout/property/HorizontalAlignment;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/itextpdf/layout/property/HorizontalAlignment;->$VALUES:[Lcom/itextpdf/layout/property/HorizontalAlignment;

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

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/property/HorizontalAlignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lcom/itextpdf/layout/property/HorizontalAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/HorizontalAlignment;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/layout/property/HorizontalAlignment;
    .locals 1

    .line 49
    sget-object v0, Lcom/itextpdf/layout/property/HorizontalAlignment;->$VALUES:[Lcom/itextpdf/layout/property/HorizontalAlignment;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/property/HorizontalAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/property/HorizontalAlignment;

    return-object v0
.end method
