.class public final enum Lcom/dspread/xpos/Service$Display;
.super Ljava/lang/Enum;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Display"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/Service$Display;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CARD_REMOVED:Lcom/dspread/xpos/Service$Display;

.field public static final enum CLEAR_DISPLAY_MSG:Lcom/dspread/xpos/Service$Display;

.field public static final enum INPUT_OFFLINE_PIN_ONLY:Lcom/dspread/xpos/Service$Display;

.field public static final enum INPUT_PIN_ING:Lcom/dspread/xpos/Service$Display;

.field public static final enum MAG_TO_ICC_TRADE:Lcom/dspread/xpos/Service$Display;

.field public static final enum MSR_DATA_READY:Lcom/dspread/xpos/Service$Display;

.field public static final enum PIN_OK:Lcom/dspread/xpos/Service$Display;

.field public static final enum PLEASE_WAIT:Lcom/dspread/xpos/Service$Display;

.field public static final enum PROCESSING:Lcom/dspread/xpos/Service$Display;

.field public static final enum REMOVE_CARD:Lcom/dspread/xpos/Service$Display;

.field public static final enum TRANSACTION_TERMINATED:Lcom/dspread/xpos/Service$Display;

.field public static final enum TRY_ANOTHER_INTERFACE:Lcom/dspread/xpos/Service$Display;

.field private static final synthetic a:[Lcom/dspread/xpos/Service$Display;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/Service$Display;

    const-string v1, "TRY_ANOTHER_INTERFACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$Display;->TRY_ANOTHER_INTERFACE:Lcom/dspread/xpos/Service$Display;

    new-instance v0, Lcom/dspread/xpos/Service$Display;

    const-string v1, "PLEASE_WAIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$Display;->PLEASE_WAIT:Lcom/dspread/xpos/Service$Display;

    new-instance v0, Lcom/dspread/xpos/Service$Display;

    const-string v1, "REMOVE_CARD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$Display;->REMOVE_CARD:Lcom/dspread/xpos/Service$Display;

    new-instance v0, Lcom/dspread/xpos/Service$Display;

    const-string v1, "CLEAR_DISPLAY_MSG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$Display;->CLEAR_DISPLAY_MSG:Lcom/dspread/xpos/Service$Display;

    new-instance v0, Lcom/dspread/xpos/Service$Display;

    const-string v1, "PROCESSING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$Display;->PROCESSING:Lcom/dspread/xpos/Service$Display;

    new-instance v0, Lcom/dspread/xpos/Service$Display;

    const-string v1, "PIN_OK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$Display;->PIN_OK:Lcom/dspread/xpos/Service$Display;

    new-instance v0, Lcom/dspread/xpos/Service$Display;

    const-string v1, "TRANSACTION_TERMINATED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$Display;->TRANSACTION_TERMINATED:Lcom/dspread/xpos/Service$Display;

    new-instance v0, Lcom/dspread/xpos/Service$Display;

    const-string v1, "INPUT_PIN_ING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$Display;->INPUT_PIN_ING:Lcom/dspread/xpos/Service$Display;

    new-instance v0, Lcom/dspread/xpos/Service$Display;

    const-string v1, "MAG_TO_ICC_TRADE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$Display;->MAG_TO_ICC_TRADE:Lcom/dspread/xpos/Service$Display;

    new-instance v0, Lcom/dspread/xpos/Service$Display;

    const-string v1, "INPUT_OFFLINE_PIN_ONLY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$Display;->INPUT_OFFLINE_PIN_ONLY:Lcom/dspread/xpos/Service$Display;

    new-instance v0, Lcom/dspread/xpos/Service$Display;

    const-string v1, "CARD_REMOVED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$Display;->CARD_REMOVED:Lcom/dspread/xpos/Service$Display;

    .line 2
    new-instance v0, Lcom/dspread/xpos/Service$Display;

    const-string v1, "MSR_DATA_READY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$Display;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$Display;->MSR_DATA_READY:Lcom/dspread/xpos/Service$Display;

    .line 3
    invoke-static {}, Lcom/dspread/xpos/Service$Display;->a()[Lcom/dspread/xpos/Service$Display;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/Service$Display;->a:[Lcom/dspread/xpos/Service$Display;

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

.method private static synthetic a()[Lcom/dspread/xpos/Service$Display;
    .locals 3

    .line 1
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/dspread/xpos/Service$Display;

    sget-object v1, Lcom/dspread/xpos/Service$Display;->TRY_ANOTHER_INTERFACE:Lcom/dspread/xpos/Service$Display;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$Display;->PLEASE_WAIT:Lcom/dspread/xpos/Service$Display;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$Display;->REMOVE_CARD:Lcom/dspread/xpos/Service$Display;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$Display;->CLEAR_DISPLAY_MSG:Lcom/dspread/xpos/Service$Display;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$Display;->PROCESSING:Lcom/dspread/xpos/Service$Display;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$Display;->PIN_OK:Lcom/dspread/xpos/Service$Display;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$Display;->TRANSACTION_TERMINATED:Lcom/dspread/xpos/Service$Display;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$Display;->INPUT_PIN_ING:Lcom/dspread/xpos/Service$Display;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$Display;->MAG_TO_ICC_TRADE:Lcom/dspread/xpos/Service$Display;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$Display;->INPUT_OFFLINE_PIN_ONLY:Lcom/dspread/xpos/Service$Display;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$Display;->CARD_REMOVED:Lcom/dspread/xpos/Service$Display;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$Display;->MSR_DATA_READY:Lcom/dspread/xpos/Service$Display;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/Service$Display;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/Service$Display;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/Service$Display;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/Service$Display;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/Service$Display;->a:[Lcom/dspread/xpos/Service$Display;

    invoke-virtual {v0}, [Lcom/dspread/xpos/Service$Display;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/Service$Display;

    return-object v0
.end method
