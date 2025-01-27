.class public final enum Lcom/dspread/xpos/QPOSService$Display;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Display"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$Display;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CARD_REMOVED:Lcom/dspread/xpos/QPOSService$Display;

.field public static final enum CLEAR_DISPLAY_MSG:Lcom/dspread/xpos/QPOSService$Display;

.field public static final enum INPUT_LAST_OFFLINE_PIN:Lcom/dspread/xpos/QPOSService$Display;

.field public static final enum INPUT_OFFLINE_PIN_ONLY:Lcom/dspread/xpos/QPOSService$Display;

.field public static final enum INPUT_PIN_ING:Lcom/dspread/xpos/QPOSService$Display;

.field public static final enum MAG_TO_ICC_TRADE:Lcom/dspread/xpos/QPOSService$Display;

.field public static final enum MSR_DATA_READY:Lcom/dspread/xpos/QPOSService$Display;

.field public static final enum NOT_ALLOWED_LOW_TRADE:Lcom/dspread/xpos/QPOSService$Display;

.field public static final enum PIN_OK:Lcom/dspread/xpos/QPOSService$Display;

.field public static final enum PLEASE_WAIT:Lcom/dspread/xpos/QPOSService$Display;

.field public static final enum PROCESSING:Lcom/dspread/xpos/QPOSService$Display;

.field public static final enum PlEASE_TAP_CARD_AGAIN:Lcom/dspread/xpos/QPOSService$Display;

.field public static final enum REMOVE_CARD:Lcom/dspread/xpos/QPOSService$Display;

.field public static final enum TRANSACTION_TERMINATED:Lcom/dspread/xpos/QPOSService$Display;

.field public static final enum TRY_ANOTHER_INTERFACE:Lcom/dspread/xpos/QPOSService$Display;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$Display;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$Display;

    const-string v1, "TRY_ANOTHER_INTERFACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Display;->TRY_ANOTHER_INTERFACE:Lcom/dspread/xpos/QPOSService$Display;

    new-instance v0, Lcom/dspread/xpos/QPOSService$Display;

    const-string v1, "PLEASE_WAIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Display;->PLEASE_WAIT:Lcom/dspread/xpos/QPOSService$Display;

    new-instance v0, Lcom/dspread/xpos/QPOSService$Display;

    const-string v1, "REMOVE_CARD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Display;->REMOVE_CARD:Lcom/dspread/xpos/QPOSService$Display;

    new-instance v0, Lcom/dspread/xpos/QPOSService$Display;

    const-string v1, "CLEAR_DISPLAY_MSG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Display;->CLEAR_DISPLAY_MSG:Lcom/dspread/xpos/QPOSService$Display;

    new-instance v0, Lcom/dspread/xpos/QPOSService$Display;

    const-string v1, "PROCESSING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Display;->PROCESSING:Lcom/dspread/xpos/QPOSService$Display;

    new-instance v0, Lcom/dspread/xpos/QPOSService$Display;

    const-string v1, "PIN_OK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Display;->PIN_OK:Lcom/dspread/xpos/QPOSService$Display;

    new-instance v0, Lcom/dspread/xpos/QPOSService$Display;

    const-string v1, "TRANSACTION_TERMINATED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Display;->TRANSACTION_TERMINATED:Lcom/dspread/xpos/QPOSService$Display;

    new-instance v0, Lcom/dspread/xpos/QPOSService$Display;

    const-string v1, "INPUT_PIN_ING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Display;->INPUT_PIN_ING:Lcom/dspread/xpos/QPOSService$Display;

    new-instance v0, Lcom/dspread/xpos/QPOSService$Display;

    const-string v1, "MAG_TO_ICC_TRADE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Display;->MAG_TO_ICC_TRADE:Lcom/dspread/xpos/QPOSService$Display;

    new-instance v0, Lcom/dspread/xpos/QPOSService$Display;

    const-string v1, "INPUT_OFFLINE_PIN_ONLY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Display;->INPUT_OFFLINE_PIN_ONLY:Lcom/dspread/xpos/QPOSService$Display;

    new-instance v0, Lcom/dspread/xpos/QPOSService$Display;

    const-string v1, "CARD_REMOVED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Display;->CARD_REMOVED:Lcom/dspread/xpos/QPOSService$Display;

    new-instance v0, Lcom/dspread/xpos/QPOSService$Display;

    const-string v1, "INPUT_LAST_OFFLINE_PIN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Display;->INPUT_LAST_OFFLINE_PIN:Lcom/dspread/xpos/QPOSService$Display;

    new-instance v0, Lcom/dspread/xpos/QPOSService$Display;

    const-string v1, "MSR_DATA_READY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Display;->MSR_DATA_READY:Lcom/dspread/xpos/QPOSService$Display;

    new-instance v0, Lcom/dspread/xpos/QPOSService$Display;

    const-string v1, "NOT_ALLOWED_LOW_TRADE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Display;->NOT_ALLOWED_LOW_TRADE:Lcom/dspread/xpos/QPOSService$Display;

    new-instance v0, Lcom/dspread/xpos/QPOSService$Display;

    const-string v1, "PlEASE_TAP_CARD_AGAIN"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$Display;->PlEASE_TAP_CARD_AGAIN:Lcom/dspread/xpos/QPOSService$Display;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/QPOSService$Display;->a()[Lcom/dspread/xpos/QPOSService$Display;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$Display;->a:[Lcom/dspread/xpos/QPOSService$Display;

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

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$Display;
    .locals 3

    .line 1
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$Display;

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->TRY_ANOTHER_INTERFACE:Lcom/dspread/xpos/QPOSService$Display;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->PLEASE_WAIT:Lcom/dspread/xpos/QPOSService$Display;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->REMOVE_CARD:Lcom/dspread/xpos/QPOSService$Display;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->CLEAR_DISPLAY_MSG:Lcom/dspread/xpos/QPOSService$Display;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->PROCESSING:Lcom/dspread/xpos/QPOSService$Display;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->PIN_OK:Lcom/dspread/xpos/QPOSService$Display;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->TRANSACTION_TERMINATED:Lcom/dspread/xpos/QPOSService$Display;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->INPUT_PIN_ING:Lcom/dspread/xpos/QPOSService$Display;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->MAG_TO_ICC_TRADE:Lcom/dspread/xpos/QPOSService$Display;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->INPUT_OFFLINE_PIN_ONLY:Lcom/dspread/xpos/QPOSService$Display;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->CARD_REMOVED:Lcom/dspread/xpos/QPOSService$Display;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->INPUT_LAST_OFFLINE_PIN:Lcom/dspread/xpos/QPOSService$Display;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->MSR_DATA_READY:Lcom/dspread/xpos/QPOSService$Display;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->NOT_ALLOWED_LOW_TRADE:Lcom/dspread/xpos/QPOSService$Display;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$Display;->PlEASE_TAP_CARD_AGAIN:Lcom/dspread/xpos/QPOSService$Display;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$Display;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$Display;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$Display;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$Display;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$Display;->a:[Lcom/dspread/xpos/QPOSService$Display;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$Display;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$Display;

    return-object v0
.end method
