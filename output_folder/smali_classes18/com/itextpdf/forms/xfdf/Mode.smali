.class public final enum Lcom/itextpdf/forms/xfdf/Mode;
.super Ljava/lang/Enum;
.source "Mode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/forms/xfdf/Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/forms/xfdf/Mode;

.field public static final enum FILTERED:Lcom/itextpdf/forms/xfdf/Mode;

.field public static final enum RAW:Lcom/itextpdf/forms/xfdf/Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 50
    new-instance v0, Lcom/itextpdf/forms/xfdf/Mode;

    const-string v1, "FILTERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/forms/xfdf/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/forms/xfdf/Mode;->FILTERED:Lcom/itextpdf/forms/xfdf/Mode;

    new-instance v1, Lcom/itextpdf/forms/xfdf/Mode;

    const-string v3, "RAW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/forms/xfdf/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/forms/xfdf/Mode;->RAW:Lcom/itextpdf/forms/xfdf/Mode;

    .line 49
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/itextpdf/forms/xfdf/Mode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/itextpdf/forms/xfdf/Mode;->$VALUES:[Lcom/itextpdf/forms/xfdf/Mode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lcom/itextpdf/forms/xfdf/Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/xfdf/Mode;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/forms/xfdf/Mode;
    .locals 1

    .line 49
    sget-object v0, Lcom/itextpdf/forms/xfdf/Mode;->$VALUES:[Lcom/itextpdf/forms/xfdf/Mode;

    invoke-virtual {v0}, [Lcom/itextpdf/forms/xfdf/Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/forms/xfdf/Mode;

    return-object v0
.end method
