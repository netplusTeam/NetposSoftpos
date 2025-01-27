.class public final enum Lcom/itextpdf/layout/property/ListNumberingType;
.super Ljava/lang/Enum;
.source "ListNumberingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/property/ListNumberingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/property/ListNumberingType;

.field public static final enum DECIMAL:Lcom/itextpdf/layout/property/ListNumberingType;

.field public static final enum DECIMAL_LEADING_ZERO:Lcom/itextpdf/layout/property/ListNumberingType;

.field public static final enum ENGLISH_LOWER:Lcom/itextpdf/layout/property/ListNumberingType;

.field public static final enum ENGLISH_UPPER:Lcom/itextpdf/layout/property/ListNumberingType;

.field public static final enum GREEK_LOWER:Lcom/itextpdf/layout/property/ListNumberingType;

.field public static final enum GREEK_UPPER:Lcom/itextpdf/layout/property/ListNumberingType;

.field public static final enum ROMAN_LOWER:Lcom/itextpdf/layout/property/ListNumberingType;

.field public static final enum ROMAN_UPPER:Lcom/itextpdf/layout/property/ListNumberingType;

.field public static final enum ZAPF_DINGBATS_1:Lcom/itextpdf/layout/property/ListNumberingType;

.field public static final enum ZAPF_DINGBATS_2:Lcom/itextpdf/layout/property/ListNumberingType;

.field public static final enum ZAPF_DINGBATS_3:Lcom/itextpdf/layout/property/ListNumberingType;

.field public static final enum ZAPF_DINGBATS_4:Lcom/itextpdf/layout/property/ListNumberingType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 55
    new-instance v0, Lcom/itextpdf/layout/property/ListNumberingType;

    const-string v1, "DECIMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/property/ListNumberingType;->DECIMAL:Lcom/itextpdf/layout/property/ListNumberingType;

    .line 56
    new-instance v1, Lcom/itextpdf/layout/property/ListNumberingType;

    const-string v3, "DECIMAL_LEADING_ZERO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/layout/property/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/property/ListNumberingType;->DECIMAL_LEADING_ZERO:Lcom/itextpdf/layout/property/ListNumberingType;

    .line 57
    new-instance v3, Lcom/itextpdf/layout/property/ListNumberingType;

    const-string v5, "ROMAN_LOWER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/layout/property/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/property/ListNumberingType;->ROMAN_LOWER:Lcom/itextpdf/layout/property/ListNumberingType;

    .line 58
    new-instance v5, Lcom/itextpdf/layout/property/ListNumberingType;

    const-string v7, "ROMAN_UPPER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/layout/property/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/layout/property/ListNumberingType;->ROMAN_UPPER:Lcom/itextpdf/layout/property/ListNumberingType;

    .line 59
    new-instance v7, Lcom/itextpdf/layout/property/ListNumberingType;

    const-string v9, "ENGLISH_LOWER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/itextpdf/layout/property/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/itextpdf/layout/property/ListNumberingType;->ENGLISH_LOWER:Lcom/itextpdf/layout/property/ListNumberingType;

    .line 60
    new-instance v9, Lcom/itextpdf/layout/property/ListNumberingType;

    const-string v11, "ENGLISH_UPPER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/itextpdf/layout/property/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/itextpdf/layout/property/ListNumberingType;->ENGLISH_UPPER:Lcom/itextpdf/layout/property/ListNumberingType;

    .line 61
    new-instance v11, Lcom/itextpdf/layout/property/ListNumberingType;

    const-string v13, "GREEK_LOWER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/itextpdf/layout/property/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/itextpdf/layout/property/ListNumberingType;->GREEK_LOWER:Lcom/itextpdf/layout/property/ListNumberingType;

    .line 62
    new-instance v13, Lcom/itextpdf/layout/property/ListNumberingType;

    const-string v15, "GREEK_UPPER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/itextpdf/layout/property/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/itextpdf/layout/property/ListNumberingType;->GREEK_UPPER:Lcom/itextpdf/layout/property/ListNumberingType;

    .line 64
    new-instance v15, Lcom/itextpdf/layout/property/ListNumberingType;

    const-string v14, "ZAPF_DINGBATS_1"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/itextpdf/layout/property/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/itextpdf/layout/property/ListNumberingType;->ZAPF_DINGBATS_1:Lcom/itextpdf/layout/property/ListNumberingType;

    .line 66
    new-instance v14, Lcom/itextpdf/layout/property/ListNumberingType;

    const-string v12, "ZAPF_DINGBATS_2"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/itextpdf/layout/property/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/itextpdf/layout/property/ListNumberingType;->ZAPF_DINGBATS_2:Lcom/itextpdf/layout/property/ListNumberingType;

    .line 68
    new-instance v12, Lcom/itextpdf/layout/property/ListNumberingType;

    const-string v10, "ZAPF_DINGBATS_3"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/itextpdf/layout/property/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/itextpdf/layout/property/ListNumberingType;->ZAPF_DINGBATS_3:Lcom/itextpdf/layout/property/ListNumberingType;

    .line 70
    new-instance v10, Lcom/itextpdf/layout/property/ListNumberingType;

    const-string v8, "ZAPF_DINGBATS_4"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/itextpdf/layout/property/ListNumberingType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/itextpdf/layout/property/ListNumberingType;->ZAPF_DINGBATS_4:Lcom/itextpdf/layout/property/ListNumberingType;

    .line 54
    const/16 v8, 0xc

    new-array v8, v8, [Lcom/itextpdf/layout/property/ListNumberingType;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Lcom/itextpdf/layout/property/ListNumberingType;->$VALUES:[Lcom/itextpdf/layout/property/ListNumberingType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/property/ListNumberingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 54
    const-class v0, Lcom/itextpdf/layout/property/ListNumberingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/ListNumberingType;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/layout/property/ListNumberingType;
    .locals 1

    .line 54
    sget-object v0, Lcom/itextpdf/layout/property/ListNumberingType;->$VALUES:[Lcom/itextpdf/layout/property/ListNumberingType;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/property/ListNumberingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/property/ListNumberingType;

    return-object v0
.end method
