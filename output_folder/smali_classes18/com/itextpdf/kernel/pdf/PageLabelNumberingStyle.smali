.class public final enum Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;
.super Ljava/lang/Enum;
.source "PageLabelNumberingStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

.field public static final enum DECIMAL_ARABIC_NUMERALS:Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

.field public static final enum LOWERCASE_LETTERS:Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

.field public static final enum LOWERCASE_ROMAN_NUMERALS:Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

.field public static final enum UPPERCASE_LETTERS:Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

.field public static final enum UPPERCASE_ROMAN_NUMERALS:Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 53
    new-instance v0, Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

    const-string v1, "DECIMAL_ARABIC_NUMERALS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;->DECIMAL_ARABIC_NUMERALS:Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

    .line 57
    new-instance v1, Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

    const-string v3, "UPPERCASE_ROMAN_NUMERALS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;->UPPERCASE_ROMAN_NUMERALS:Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

    .line 61
    new-instance v3, Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

    const-string v5, "LOWERCASE_ROMAN_NUMERALS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;->LOWERCASE_ROMAN_NUMERALS:Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

    .line 65
    new-instance v5, Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

    const-string v7, "UPPERCASE_LETTERS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;->UPPERCASE_LETTERS:Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

    .line 69
    new-instance v7, Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

    const-string v9, "LOWERCASE_LETTERS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;->LOWERCASE_LETTERS:Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

    .line 49
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;->$VALUES:[Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

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

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;
    .locals 1

    .line 49
    sget-object v0, Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;->$VALUES:[Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

    invoke-virtual {v0}, [Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;

    return-object v0
.end method
