.class public final enum Lcom/itextpdf/layout/property/AlignmentPropertyValue;
.super Ljava/lang/Enum;
.source "AlignmentPropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/property/AlignmentPropertyValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/property/AlignmentPropertyValue;

.field public static final enum BASELINE:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

.field public static final enum CENTER:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

.field public static final enum END:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

.field public static final enum FLEX_END:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

.field public static final enum FLEX_START:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

.field public static final enum NORMAL:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

.field public static final enum SELF_END:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

.field public static final enum SELF_START:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

.field public static final enum START:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

.field public static final enum STRETCH:Lcom/itextpdf/layout/property/AlignmentPropertyValue;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 50
    new-instance v0, Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    const-string v1, "CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->CENTER:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    .line 51
    new-instance v1, Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->START:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    .line 52
    new-instance v3, Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    const-string v5, "END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->END:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    .line 53
    new-instance v5, Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    const-string v7, "SELF_START"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->SELF_START:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    .line 54
    new-instance v7, Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    const-string v9, "SELF_END"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->SELF_END:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    .line 55
    new-instance v9, Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    const-string v11, "FLEX_START"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->FLEX_START:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    .line 56
    new-instance v11, Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    const-string v13, "FLEX_END"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->FLEX_END:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    .line 57
    new-instance v13, Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    const-string v15, "BASELINE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->BASELINE:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    .line 58
    new-instance v15, Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    const-string v14, "STRETCH"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->STRETCH:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    .line 59
    new-instance v14, Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    const-string v12, "NORMAL"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/itextpdf/layout/property/AlignmentPropertyValue;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->NORMAL:Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    .line 49
    const/16 v12, 0xa

    new-array v12, v12, [Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->$VALUES:[Lcom/itextpdf/layout/property/AlignmentPropertyValue;

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

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/property/AlignmentPropertyValue;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/layout/property/AlignmentPropertyValue;
    .locals 1

    .line 49
    sget-object v0, Lcom/itextpdf/layout/property/AlignmentPropertyValue;->$VALUES:[Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/property/AlignmentPropertyValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/property/AlignmentPropertyValue;

    return-object v0
.end method
