.class public final enum Lcom/itextpdf/layout/property/JustifyContent;
.super Ljava/lang/Enum;
.source "JustifyContent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/property/JustifyContent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/property/JustifyContent;

.field public static final enum CENTER:Lcom/itextpdf/layout/property/JustifyContent;

.field public static final enum END:Lcom/itextpdf/layout/property/JustifyContent;

.field public static final enum FLEX_END:Lcom/itextpdf/layout/property/JustifyContent;

.field public static final enum FLEX_START:Lcom/itextpdf/layout/property/JustifyContent;

.field public static final enum LEFT:Lcom/itextpdf/layout/property/JustifyContent;

.field public static final enum NORMAL:Lcom/itextpdf/layout/property/JustifyContent;

.field public static final enum RIGHT:Lcom/itextpdf/layout/property/JustifyContent;

.field public static final enum SELF_END:Lcom/itextpdf/layout/property/JustifyContent;

.field public static final enum SELF_START:Lcom/itextpdf/layout/property/JustifyContent;

.field public static final enum START:Lcom/itextpdf/layout/property/JustifyContent;

.field public static final enum STRETCH:Lcom/itextpdf/layout/property/JustifyContent;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 29
    new-instance v0, Lcom/itextpdf/layout/property/JustifyContent;

    const-string v1, "CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/layout/property/JustifyContent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/layout/property/JustifyContent;->CENTER:Lcom/itextpdf/layout/property/JustifyContent;

    .line 30
    new-instance v1, Lcom/itextpdf/layout/property/JustifyContent;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/layout/property/JustifyContent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/layout/property/JustifyContent;->START:Lcom/itextpdf/layout/property/JustifyContent;

    .line 31
    new-instance v3, Lcom/itextpdf/layout/property/JustifyContent;

    const-string v5, "END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/layout/property/JustifyContent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/layout/property/JustifyContent;->END:Lcom/itextpdf/layout/property/JustifyContent;

    .line 32
    new-instance v5, Lcom/itextpdf/layout/property/JustifyContent;

    const-string v7, "SELF_START"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/layout/property/JustifyContent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/layout/property/JustifyContent;->SELF_START:Lcom/itextpdf/layout/property/JustifyContent;

    .line 33
    new-instance v7, Lcom/itextpdf/layout/property/JustifyContent;

    const-string v9, "SELF_END"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/itextpdf/layout/property/JustifyContent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/itextpdf/layout/property/JustifyContent;->SELF_END:Lcom/itextpdf/layout/property/JustifyContent;

    .line 34
    new-instance v9, Lcom/itextpdf/layout/property/JustifyContent;

    const-string v11, "FLEX_START"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/itextpdf/layout/property/JustifyContent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/itextpdf/layout/property/JustifyContent;->FLEX_START:Lcom/itextpdf/layout/property/JustifyContent;

    .line 35
    new-instance v11, Lcom/itextpdf/layout/property/JustifyContent;

    const-string v13, "FLEX_END"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/itextpdf/layout/property/JustifyContent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/itextpdf/layout/property/JustifyContent;->FLEX_END:Lcom/itextpdf/layout/property/JustifyContent;

    .line 36
    new-instance v13, Lcom/itextpdf/layout/property/JustifyContent;

    const-string v15, "LEFT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/itextpdf/layout/property/JustifyContent;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/itextpdf/layout/property/JustifyContent;->LEFT:Lcom/itextpdf/layout/property/JustifyContent;

    .line 37
    new-instance v15, Lcom/itextpdf/layout/property/JustifyContent;

    const-string v14, "RIGHT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/itextpdf/layout/property/JustifyContent;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/itextpdf/layout/property/JustifyContent;->RIGHT:Lcom/itextpdf/layout/property/JustifyContent;

    .line 38
    new-instance v14, Lcom/itextpdf/layout/property/JustifyContent;

    const-string v12, "NORMAL"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/itextpdf/layout/property/JustifyContent;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/itextpdf/layout/property/JustifyContent;->NORMAL:Lcom/itextpdf/layout/property/JustifyContent;

    .line 39
    new-instance v12, Lcom/itextpdf/layout/property/JustifyContent;

    const-string v10, "STRETCH"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/itextpdf/layout/property/JustifyContent;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/itextpdf/layout/property/JustifyContent;->STRETCH:Lcom/itextpdf/layout/property/JustifyContent;

    .line 28
    const/16 v10, 0xb

    new-array v10, v10, [Lcom/itextpdf/layout/property/JustifyContent;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lcom/itextpdf/layout/property/JustifyContent;->$VALUES:[Lcom/itextpdf/layout/property/JustifyContent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/property/JustifyContent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lcom/itextpdf/layout/property/JustifyContent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/JustifyContent;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/layout/property/JustifyContent;
    .locals 1

    .line 28
    sget-object v0, Lcom/itextpdf/layout/property/JustifyContent;->$VALUES:[Lcom/itextpdf/layout/property/JustifyContent;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/property/JustifyContent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/property/JustifyContent;

    return-object v0
.end method
