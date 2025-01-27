.class public final enum Lcom/itextpdf/layout/property/ClearPropertyValue;
.super Ljava/lang/Enum;
.source "ClearPropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/property/ClearPropertyValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/property/ClearPropertyValue;

.field public static final enum BOTH:Lcom/itextpdf/layout/property/ClearPropertyValue;

.field public static final enum LEFT:Lcom/itextpdf/layout/property/ClearPropertyValue;

.field public static final enum NONE:Lcom/itextpdf/layout/property/ClearPropertyValue;

.field public static final enum RIGHT:Lcom/itextpdf/layout/property/ClearPropertyValue;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 49
    new-instance v0, Lcom/itextpdf/layout/property/ClearPropertyValue;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/ClearPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/property/ClearPropertyValue;->LEFT:Lcom/itextpdf/layout/property/ClearPropertyValue;

    .line 50
    new-instance v1, Lcom/itextpdf/layout/property/ClearPropertyValue;

    const-string v3, "NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/layout/property/ClearPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/property/ClearPropertyValue;->NONE:Lcom/itextpdf/layout/property/ClearPropertyValue;

    .line 51
    new-instance v3, Lcom/itextpdf/layout/property/ClearPropertyValue;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/layout/property/ClearPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/property/ClearPropertyValue;->RIGHT:Lcom/itextpdf/layout/property/ClearPropertyValue;

    .line 52
    new-instance v5, Lcom/itextpdf/layout/property/ClearPropertyValue;

    const-string v7, "BOTH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/layout/property/ClearPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/layout/property/ClearPropertyValue;->BOTH:Lcom/itextpdf/layout/property/ClearPropertyValue;

    .line 48
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/itextpdf/layout/property/ClearPropertyValue;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/itextpdf/layout/property/ClearPropertyValue;->$VALUES:[Lcom/itextpdf/layout/property/ClearPropertyValue;

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

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/property/ClearPropertyValue;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 48
    const-class v0, Lcom/itextpdf/layout/property/ClearPropertyValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/ClearPropertyValue;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/layout/property/ClearPropertyValue;
    .locals 1

    .line 48
    sget-object v0, Lcom/itextpdf/layout/property/ClearPropertyValue;->$VALUES:[Lcom/itextpdf/layout/property/ClearPropertyValue;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/property/ClearPropertyValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/property/ClearPropertyValue;

    return-object v0
.end method
