.class public final enum Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;
.super Ljava/lang/Enum;
.source "BackgroundRepeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/property/BackgroundRepeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackgroundRepeatValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

.field public static final enum NO_REPEAT:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

.field public static final enum REPEAT:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

.field public static final enum ROUND:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

.field public static final enum SPACE:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 190
    new-instance v0, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    const-string v1, "NO_REPEAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->NO_REPEAT:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    .line 195
    new-instance v1, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    const-string v3, "REPEAT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->REPEAT:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    .line 202
    new-instance v3, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    const-string v5, "ROUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->ROUND:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    .line 208
    new-instance v5, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    const-string v7, "SPACE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->SPACE:Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    .line 185
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->$VALUES:[Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 185
    const-class v0, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;
    .locals 1

    .line 185
    sget-object v0, Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->$VALUES:[Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/property/BackgroundRepeat$BackgroundRepeatValue;

    return-object v0
.end method
