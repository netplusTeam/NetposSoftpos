.class public final enum Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;
.super Ljava/lang/Enum;
.source "DspFingerPrint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/DspFingerPrint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DspCardTradeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ONLY_INSERT_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

.field public static final enum ONLY_SWIPE_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

.field public static final enum ONLY_TAP_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

.field public static final enum SWIPE_INSERT_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

.field public static final enum SWIPE_TAP_INSERT_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

.field public static final enum SWIPE_TAP_INSERT_CARD_UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

.field public static final enum UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

.field private static final synthetic a:[Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    const-string v1, "ONLY_INSERT_CARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->ONLY_INSERT_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    const-string v1, "ONLY_SWIPE_CARD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->ONLY_SWIPE_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    const-string v1, "SWIPE_INSERT_CARD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->SWIPE_INSERT_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    .line 2
    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    const-string v1, "UNALLOWED_LOW_TRADE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    const-string v1, "SWIPE_TAP_INSERT_CARD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->SWIPE_TAP_INSERT_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    .line 3
    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    const-string v1, "SWIPE_TAP_INSERT_CARD_UNALLOWED_LOW_TRADE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->SWIPE_TAP_INSERT_CARD_UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    .line 4
    new-instance v0, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    const-string v1, "ONLY_TAP_CARD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->ONLY_TAP_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    .line 5
    invoke-static {}, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->a()[Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->a:[Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

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

.method private static synthetic a()[Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;
    .locals 3

    .line 1
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->ONLY_INSERT_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->ONLY_SWIPE_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->SWIPE_INSERT_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->SWIPE_TAP_INSERT_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->SWIPE_TAP_INSERT_CARD_UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->ONLY_TAP_CARD:Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->a:[Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    invoke-virtual {v0}, [Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/DspFingerPrint$DspCardTradeMode;

    return-object v0
.end method
