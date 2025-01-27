.class public final enum Lcom/itextpdf/layout/property/FlexWrapPropertyValue;
.super Ljava/lang/Enum;
.source "FlexWrapPropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/property/FlexWrapPropertyValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/property/FlexWrapPropertyValue;

.field public static final enum NOWRAP:Lcom/itextpdf/layout/property/FlexWrapPropertyValue;

.field public static final enum WRAP:Lcom/itextpdf/layout/property/FlexWrapPropertyValue;

.field public static final enum WRAP_REVERSE:Lcom/itextpdf/layout/property/FlexWrapPropertyValue;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 49
    new-instance v0, Lcom/itextpdf/layout/property/FlexWrapPropertyValue;

    const-string v1, "NOWRAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/FlexWrapPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/property/FlexWrapPropertyValue;->NOWRAP:Lcom/itextpdf/layout/property/FlexWrapPropertyValue;

    .line 50
    new-instance v1, Lcom/itextpdf/layout/property/FlexWrapPropertyValue;

    const-string v3, "WRAP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/layout/property/FlexWrapPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/property/FlexWrapPropertyValue;->WRAP:Lcom/itextpdf/layout/property/FlexWrapPropertyValue;

    .line 51
    new-instance v3, Lcom/itextpdf/layout/property/FlexWrapPropertyValue;

    const-string v5, "WRAP_REVERSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/layout/property/FlexWrapPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/property/FlexWrapPropertyValue;->WRAP_REVERSE:Lcom/itextpdf/layout/property/FlexWrapPropertyValue;

    .line 48
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/itextpdf/layout/property/FlexWrapPropertyValue;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/itextpdf/layout/property/FlexWrapPropertyValue;->$VALUES:[Lcom/itextpdf/layout/property/FlexWrapPropertyValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/property/FlexWrapPropertyValue;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 48
    const-class v0, Lcom/itextpdf/layout/property/FlexWrapPropertyValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/FlexWrapPropertyValue;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/layout/property/FlexWrapPropertyValue;
    .locals 1

    .line 48
    sget-object v0, Lcom/itextpdf/layout/property/FlexWrapPropertyValue;->$VALUES:[Lcom/itextpdf/layout/property/FlexWrapPropertyValue;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/property/FlexWrapPropertyValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/property/FlexWrapPropertyValue;

    return-object v0
.end method
