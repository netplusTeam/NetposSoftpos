.class public final enum Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;
.super Ljava/lang/Enum;
.source "PdfReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/PdfReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StrictnessLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

.field public static final enum CONSERVATIVE:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

.field public static final enum LENIENT:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;


# instance fields
.field private final levelValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1499
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    const-string v1, "CONSERVATIVE"

    const/4 v2, 0x0

    const/16 v3, 0x1388

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->CONSERVATIVE:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    .line 1504
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    const-string v3, "LENIENT"

    const/4 v4, 0x1

    const/16 v5, 0xbb8

    invoke-direct {v1, v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->LENIENT:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    .line 1493
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->$VALUES:[Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "levelValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1508
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1509
    iput p3, p0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->levelValue:I

    .line 1510
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1493
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;
    .locals 1

    .line 1493
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->$VALUES:[Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    invoke-virtual {v0}, [Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    return-object v0
.end method


# virtual methods
.method public isStricter(Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;)Z
    .locals 2
    .param p1, "compareWith"    # Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    .line 1521
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->levelValue:I

    iget v1, p1, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->levelValue:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
