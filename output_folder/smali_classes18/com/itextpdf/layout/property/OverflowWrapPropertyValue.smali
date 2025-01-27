.class public final enum Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
.super Ljava/lang/Enum;
.source "OverflowWrapPropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

.field public static final enum ANYWHERE:Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

.field public static final enum BREAK_WORD:Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

.field public static final enum NORMAL:Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    new-instance v0, Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

    const-string v1, "ANYWHERE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;->ANYWHERE:Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

    .line 28
    new-instance v1, Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

    const-string v3, "BREAK_WORD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;->BREAK_WORD:Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

    .line 29
    new-instance v3, Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

    const-string v5, "NORMAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;->NORMAL:Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

    .line 26
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;->$VALUES:[Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;
    .locals 1

    .line 26
    sget-object v0, Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;->$VALUES:[Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/property/OverflowWrapPropertyValue;

    return-object v0
.end method
