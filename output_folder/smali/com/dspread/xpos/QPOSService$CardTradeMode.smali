.class public final enum Lcom/dspread/xpos/QPOSService$CardTradeMode;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardTradeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$CardTradeMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ONLY_INSERT_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

.field public static final enum ONLY_INSERT_CARD_NOPIN:Lcom/dspread/xpos/QPOSService$CardTradeMode;

.field public static final enum ONLY_SWIPE_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

.field public static final enum ONLY_TAP_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

.field public static final enum ONLY_TAP_CARD_QF:Lcom/dspread/xpos/QPOSService$CardTradeMode;

.field public static final enum SWIPE_INSERT_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

.field public static final enum SWIPE_INSERT_CARD_UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/QPOSService$CardTradeMode;

.field public static final enum SWIPE_TAP_INSERT_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

.field public static final enum SWIPE_TAP_INSERT_CARD_DOWN:Lcom/dspread/xpos/QPOSService$CardTradeMode;

.field public static final enum SWIPE_TAP_INSERT_CARD_NOTUP:Lcom/dspread/xpos/QPOSService$CardTradeMode;

.field public static final enum SWIPE_TAP_INSERT_CARD_NOTUP_DELAY:Lcom/dspread/xpos/QPOSService$CardTradeMode;

.field public static final enum SWIPE_TAP_INSERT_CARD_NOTUP_UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/QPOSService$CardTradeMode;

.field public static final enum SWIPE_TAP_INSERT_CARD_UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/QPOSService$CardTradeMode;

.field public static final enum SWIPE_TAP_INSERT_CARD_UNALLOWED_LOW_TRADE_NEW:Lcom/dspread/xpos/QPOSService$CardTradeMode;

.field public static final enum TAP_INSERT_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

.field public static final enum TAP_INSERT_CARD_NOTUP:Lcom/dspread/xpos/QPOSService$CardTradeMode;

.field public static final enum UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/QPOSService$CardTradeMode;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$CardTradeMode;


# instance fields
.field protected cardTradeModeValue:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const-string v1, "ONLY_INSERT_CARD"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/QPOSService$CardTradeMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;->ONLY_INSERT_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    new-instance v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const-string v1, "ONLY_SWIPE_CARD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/dspread/xpos/QPOSService$CardTradeMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;->ONLY_SWIPE_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    new-instance v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const-string v1, "TAP_INSERT_CARD"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/QPOSService$CardTradeMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;->TAP_INSERT_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    new-instance v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const-string v1, "TAP_INSERT_CARD_NOTUP"

    const/4 v2, 0x3

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v4}, Lcom/dspread/xpos/QPOSService$CardTradeMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;->TAP_INSERT_CARD_NOTUP:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    new-instance v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const-string v1, "SWIPE_TAP_INSERT_CARD"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v5, v2}, Lcom/dspread/xpos/QPOSService$CardTradeMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    new-instance v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const-string v1, "UNALLOWED_LOW_TRADE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v5}, Lcom/dspread/xpos/QPOSService$CardTradeMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;->UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    new-instance v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const-string v1, "SWIPE_INSERT_CARD"

    const/4 v6, 0x6

    invoke-direct {v0, v1, v6, v2}, Lcom/dspread/xpos/QPOSService$CardTradeMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_INSERT_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    new-instance v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const-string v1, "SWIPE_TAP_INSERT_CARD_UNALLOWED_LOW_TRADE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v6}, Lcom/dspread/xpos/QPOSService$CardTradeMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD_UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    .line 2
    new-instance v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const-string v1, "SWIPE_TAP_INSERT_CARD_NOTUP_UNALLOWED_LOW_TRADE"

    const/16 v7, 0x8

    const/16 v8, 0x9

    invoke-direct {v0, v1, v7, v8}, Lcom/dspread/xpos/QPOSService$CardTradeMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD_NOTUP_UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    new-instance v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const-string v1, "ONLY_TAP_CARD"

    invoke-direct {v0, v1, v8, v2}, Lcom/dspread/xpos/QPOSService$CardTradeMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;->ONLY_TAP_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    .line 3
    new-instance v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const-string v1, "ONLY_TAP_CARD_QF"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v4, v2}, Lcom/dspread/xpos/QPOSService$CardTradeMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;->ONLY_TAP_CARD_QF:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    new-instance v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const-string v1, "SWIPE_TAP_INSERT_CARD_NOTUP"

    invoke-direct {v0, v1, v3, v7}, Lcom/dspread/xpos/QPOSService$CardTradeMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD_NOTUP:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    .line 4
    new-instance v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const-string v1, "SWIPE_TAP_INSERT_CARD_DOWN"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v3}, Lcom/dspread/xpos/QPOSService$CardTradeMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD_DOWN:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    new-instance v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const-string v1, "SWIPE_INSERT_CARD_UNALLOWED_LOW_TRADE"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3, v6}, Lcom/dspread/xpos/QPOSService$CardTradeMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_INSERT_CARD_UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    .line 5
    new-instance v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const-string v1, "SWIPE_TAP_INSERT_CARD_UNALLOWED_LOW_TRADE_NEW"

    invoke-direct {v0, v1, v2, v5}, Lcom/dspread/xpos/QPOSService$CardTradeMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD_UNALLOWED_LOW_TRADE_NEW:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    new-instance v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const-string v1, "ONLY_INSERT_CARD_NOPIN"

    const/16 v2, 0xf

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v4}, Lcom/dspread/xpos/QPOSService$CardTradeMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;->ONLY_INSERT_CARD_NOPIN:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    .line 6
    new-instance v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const-string v1, "SWIPE_TAP_INSERT_CARD_NOTUP_DELAY"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/QPOSService$CardTradeMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD_NOTUP_DELAY:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    .line 7
    invoke-static {}, Lcom/dspread/xpos/QPOSService$CardTradeMode;->a()[Lcom/dspread/xpos/QPOSService$CardTradeMode;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;->a:[Lcom/dspread/xpos/QPOSService$CardTradeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-byte p3, p0, Lcom/dspread/xpos/QPOSService$CardTradeMode;->cardTradeModeValue:B

    return-void
.end method

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$CardTradeMode;
    .locals 3

    .line 1
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$CardTradeMode;

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardTradeMode;->ONLY_INSERT_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardTradeMode;->ONLY_SWIPE_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardTradeMode;->TAP_INSERT_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardTradeMode;->TAP_INSERT_CARD_NOTUP:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardTradeMode;->UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_INSERT_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD_UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD_NOTUP_UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardTradeMode;->ONLY_TAP_CARD:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardTradeMode;->ONLY_TAP_CARD_QF:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD_NOTUP:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD_DOWN:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_INSERT_CARD_UNALLOWED_LOW_TRADE:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD_UNALLOWED_LOW_TRADE_NEW:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardTradeMode;->ONLY_INSERT_CARD_NOPIN:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardTradeMode;->SWIPE_TAP_INSERT_CARD_NOTUP_DELAY:Lcom/dspread/xpos/QPOSService$CardTradeMode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$CardTradeMode;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$CardTradeMode;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$CardTradeMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$CardTradeMode;->a:[Lcom/dspread/xpos/QPOSService$CardTradeMode;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$CardTradeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$CardTradeMode;

    return-object v0
.end method
