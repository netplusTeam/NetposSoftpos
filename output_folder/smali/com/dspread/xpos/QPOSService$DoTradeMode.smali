.class public final enum Lcom/dspread/xpos/QPOSService$DoTradeMode;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DoTradeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$DoTradeMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHECK_CARD_NO_IPNUT_PIN:Lcom/dspread/xpos/QPOSService$DoTradeMode;

.field public static final enum COMMON:Lcom/dspread/xpos/QPOSService$DoTradeMode;

.field public static final enum IS_DEBIT_OR_CREDIT:Lcom/dspread/xpos/QPOSService$DoTradeMode;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$DoTradeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTradeMode;

    const-string v1, "COMMON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTradeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTradeMode;->COMMON:Lcom/dspread/xpos/QPOSService$DoTradeMode;

    .line 5
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTradeMode;

    const-string v1, "CHECK_CARD_NO_IPNUT_PIN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTradeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTradeMode;->CHECK_CARD_NO_IPNUT_PIN:Lcom/dspread/xpos/QPOSService$DoTradeMode;

    .line 9
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTradeMode;

    const-string v1, "IS_DEBIT_OR_CREDIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTradeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTradeMode;->IS_DEBIT_OR_CREDIT:Lcom/dspread/xpos/QPOSService$DoTradeMode;

    .line 10
    invoke-static {}, Lcom/dspread/xpos/QPOSService$DoTradeMode;->a()[Lcom/dspread/xpos/QPOSService$DoTradeMode;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTradeMode;->a:[Lcom/dspread/xpos/QPOSService$DoTradeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$DoTradeMode;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$DoTradeMode;

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeMode;->COMMON:Lcom/dspread/xpos/QPOSService$DoTradeMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeMode;->CHECK_CARD_NO_IPNUT_PIN:Lcom/dspread/xpos/QPOSService$DoTradeMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeMode;->IS_DEBIT_OR_CREDIT:Lcom/dspread/xpos/QPOSService$DoTradeMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$DoTradeMode;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$DoTradeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$DoTradeMode;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$DoTradeMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$DoTradeMode;->a:[Lcom/dspread/xpos/QPOSService$DoTradeMode;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$DoTradeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$DoTradeMode;

    return-object v0
.end method
