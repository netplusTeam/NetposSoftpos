.class public final enum Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;
.super Ljava/lang/Enum;
.source "PdfUserProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

.field public static final enum BOOLEAN:Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

.field public static final enum NUMBER:Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

.field public static final enum TEXT:Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

.field public static final enum UNKNOWN:Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 58
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;->UNKNOWN:Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

    .line 59
    new-instance v1, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

    const-string v3, "TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;->TEXT:Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

    .line 60
    new-instance v3, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

    const-string v5, "NUMBER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;->NUMBER:Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

    .line 61
    new-instance v5, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

    const-string v7, "BOOLEAN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;->BOOLEAN:Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

    .line 57
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;->$VALUES:[Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 57
    const-class v0, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;
    .locals 1

    .line 57
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;->$VALUES:[Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

    invoke-virtual {v0}, [Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/kernel/pdf/tagging/PdfUserProperty$ValueType;

    return-object v0
.end method
