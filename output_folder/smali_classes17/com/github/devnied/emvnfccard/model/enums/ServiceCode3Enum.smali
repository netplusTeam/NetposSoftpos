.class public final enum Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;
.super Ljava/lang/Enum;
.source "ServiceCode3Enum.java"

# interfaces
.implements Lcom/github/devnied/emvnfccard/model/enums/IKeyEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;",
        ">;",
        "Lcom/github/devnied/emvnfccard/model/enums/IKeyEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

.field public static final enum ATM_ONLY:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

.field public static final enum CASH_ONLY:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

.field public static final enum GOODS_SERVICES:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

.field public static final enum GOODS_SERVICES_PIN_IF_PED:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

.field public static final enum GOODS_SERVICES_PIN_REQUIRED:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

.field public static final enum NO_RESTRICTION:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

.field public static final enum NO_RESTRICTION_PIN_IF_PED:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

.field public static final enum NO_RESTRICTION_PIN_REQUIRED:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;


# instance fields
.field private final allowedServices:Ljava/lang/String;

.field private final pinRequirements:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 23
    new-instance v6, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    const-string v1, "NO_RESTRICTION_PIN_REQUIRED"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "No restrictions"

    const-string v5, "PIN required"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;->NO_RESTRICTION_PIN_REQUIRED:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    .line 24
    new-instance v0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    const-string v8, "NO_RESTRICTION"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v11, "No restrictions"

    const-string v12, "None"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;->NO_RESTRICTION:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    .line 25
    new-instance v1, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    const-string v14, "GOODS_SERVICES"

    const/4 v15, 0x2

    const/16 v16, 0x2

    const-string v17, "Goods and services only"

    const-string v18, "None"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;->GOODS_SERVICES:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    .line 26
    new-instance v2, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    const-string v8, "ATM_ONLY"

    const/4 v9, 0x3

    const/4 v10, 0x3

    const-string v11, "ATM only"

    const-string v12, "PIN required"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;->ATM_ONLY:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    .line 27
    new-instance v3, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    const-string v14, "CASH_ONLY"

    const/4 v15, 0x4

    const/16 v16, 0x4

    const-string v17, "Cash only"

    const-string v18, "None"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;->CASH_ONLY:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    .line 28
    new-instance v4, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    const-string v8, "GOODS_SERVICES_PIN_REQUIRED"

    const/4 v9, 0x5

    const/4 v10, 0x5

    const-string v11, "Goods and services only"

    const-string v12, "PIN required"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;->GOODS_SERVICES_PIN_REQUIRED:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    .line 29
    new-instance v5, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    const-string v14, "NO_RESTRICTION_PIN_IF_PED"

    const/4 v15, 0x6

    const/16 v16, 0x6

    const-string v17, "No restrictions"

    const-string v18, "Prompt for PIN if PED present"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;->NO_RESTRICTION_PIN_IF_PED:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    .line 30
    new-instance v13, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    const-string v8, "GOODS_SERVICES_PIN_IF_PED"

    const/4 v9, 0x7

    const/4 v10, 0x7

    const-string v11, "Goods and services only"

    const-string v12, "Prompt for PIN if PED present"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;->GOODS_SERVICES_PIN_IF_PED:Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    .line 21
    const/16 v7, 0x8

    new-array v7, v7, [Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object v0, v7, v6

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const/4 v0, 0x3

    aput-object v2, v7, v0

    const/4 v0, 0x4

    aput-object v3, v7, v0

    const/4 v0, 0x5

    aput-object v4, v7, v0

    const/4 v0, 0x6

    aput-object v5, v7, v0

    const/4 v0, 0x7

    aput-object v13, v7, v0

    sput-object v7, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;->$VALUES:[Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "allowedServices"    # Ljava/lang/String;
    .param p5, "pinRequirements"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;->value:I

    .line 38
    iput-object p4, p0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;->allowedServices:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;->pinRequirements:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    return-object v0
.end method

.method public static values()[Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;
    .locals 1

    .line 21
    sget-object v0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;->$VALUES:[Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    invoke-virtual {v0}, [Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;

    return-object v0
.end method


# virtual methods
.method public getAllowedServices()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;->allowedServices:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;->value:I

    return v0
.end method

.method public getPinRequirements()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/enums/ServiceCode3Enum;->pinRequirements:Ljava/lang/String;

    return-object v0
.end method
