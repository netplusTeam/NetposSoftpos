.class public final enum Lcom/itextpdf/layout/property/ObjectFit;
.super Ljava/lang/Enum;
.source "ObjectFit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/property/ObjectFit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/property/ObjectFit;

.field public static final enum CONTAIN:Lcom/itextpdf/layout/property/ObjectFit;

.field public static final enum COVER:Lcom/itextpdf/layout/property/ObjectFit;

.field public static final enum FILL:Lcom/itextpdf/layout/property/ObjectFit;

.field public static final enum NONE:Lcom/itextpdf/layout/property/ObjectFit;

.field public static final enum SCALE_DOWN:Lcom/itextpdf/layout/property/ObjectFit;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 54
    new-instance v0, Lcom/itextpdf/layout/property/ObjectFit;

    const-string v1, "FILL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/ObjectFit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/property/ObjectFit;->FILL:Lcom/itextpdf/layout/property/ObjectFit;

    .line 60
    new-instance v1, Lcom/itextpdf/layout/property/ObjectFit;

    const-string v3, "CONTAIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/layout/property/ObjectFit;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/property/ObjectFit;->CONTAIN:Lcom/itextpdf/layout/property/ObjectFit;

    .line 65
    new-instance v3, Lcom/itextpdf/layout/property/ObjectFit;

    const-string v5, "COVER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/layout/property/ObjectFit;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/property/ObjectFit;->COVER:Lcom/itextpdf/layout/property/ObjectFit;

    .line 72
    new-instance v5, Lcom/itextpdf/layout/property/ObjectFit;

    const-string v7, "SCALE_DOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/layout/property/ObjectFit;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/layout/property/ObjectFit;->SCALE_DOWN:Lcom/itextpdf/layout/property/ObjectFit;

    .line 78
    new-instance v7, Lcom/itextpdf/layout/property/ObjectFit;

    const-string v9, "NONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/itextpdf/layout/property/ObjectFit;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/itextpdf/layout/property/ObjectFit;->NONE:Lcom/itextpdf/layout/property/ObjectFit;

    .line 49
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/itextpdf/layout/property/ObjectFit;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/itextpdf/layout/property/ObjectFit;->$VALUES:[Lcom/itextpdf/layout/property/ObjectFit;

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

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/property/ObjectFit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lcom/itextpdf/layout/property/ObjectFit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/ObjectFit;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/layout/property/ObjectFit;
    .locals 1

    .line 49
    sget-object v0, Lcom/itextpdf/layout/property/ObjectFit;->$VALUES:[Lcom/itextpdf/layout/property/ObjectFit;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/property/ObjectFit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/property/ObjectFit;

    return-object v0
.end method
