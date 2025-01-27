.class public final enum Lcom/itextpdf/layout/property/BaseDirection;
.super Ljava/lang/Enum;
.source "BaseDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/property/BaseDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/property/BaseDirection;

.field public static final enum DEFAULT_BIDI:Lcom/itextpdf/layout/property/BaseDirection;

.field public static final enum LEFT_TO_RIGHT:Lcom/itextpdf/layout/property/BaseDirection;

.field public static final enum NO_BIDI:Lcom/itextpdf/layout/property/BaseDirection;

.field public static final enum RIGHT_TO_LEFT:Lcom/itextpdf/layout/property/BaseDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 55
    new-instance v0, Lcom/itextpdf/layout/property/BaseDirection;

    const-string v1, "NO_BIDI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/BaseDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/property/BaseDirection;->NO_BIDI:Lcom/itextpdf/layout/property/BaseDirection;

    .line 56
    new-instance v1, Lcom/itextpdf/layout/property/BaseDirection;

    const-string v3, "DEFAULT_BIDI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/layout/property/BaseDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/property/BaseDirection;->DEFAULT_BIDI:Lcom/itextpdf/layout/property/BaseDirection;

    .line 57
    new-instance v3, Lcom/itextpdf/layout/property/BaseDirection;

    const-string v5, "LEFT_TO_RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/layout/property/BaseDirection;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/property/BaseDirection;->LEFT_TO_RIGHT:Lcom/itextpdf/layout/property/BaseDirection;

    .line 58
    new-instance v5, Lcom/itextpdf/layout/property/BaseDirection;

    const-string v7, "RIGHT_TO_LEFT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/layout/property/BaseDirection;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/layout/property/BaseDirection;->RIGHT_TO_LEFT:Lcom/itextpdf/layout/property/BaseDirection;

    .line 54
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/itextpdf/layout/property/BaseDirection;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/itextpdf/layout/property/BaseDirection;->$VALUES:[Lcom/itextpdf/layout/property/BaseDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/property/BaseDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 54
    const-class v0, Lcom/itextpdf/layout/property/BaseDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/BaseDirection;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/layout/property/BaseDirection;
    .locals 1

    .line 54
    sget-object v0, Lcom/itextpdf/layout/property/BaseDirection;->$VALUES:[Lcom/itextpdf/layout/property/BaseDirection;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/property/BaseDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/property/BaseDirection;

    return-object v0
.end method
