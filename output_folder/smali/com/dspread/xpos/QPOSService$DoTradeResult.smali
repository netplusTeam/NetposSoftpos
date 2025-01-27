.class public final enum Lcom/dspread/xpos/QPOSService$DoTradeResult;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DoTradeResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$DoTradeResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BAD_SWIPE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

.field public static final enum CARD_NOT_SUPPORT:Lcom/dspread/xpos/QPOSService$DoTradeResult;

.field public static final enum ICC:Lcom/dspread/xpos/QPOSService$DoTradeResult;

.field public static final enum MCR:Lcom/dspread/xpos/QPOSService$DoTradeResult;

.field public static final enum NFC_DECLINED:Lcom/dspread/xpos/QPOSService$DoTradeResult;

.field public static final enum NFC_OFFLINE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

.field public static final enum NFC_ONLINE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

.field public static final enum NONE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

.field public static final enum NOT_ICC:Lcom/dspread/xpos/QPOSService$DoTradeResult;

.field public static final enum NO_RESPONSE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

.field public static final enum NO_UPDATE_WORK_KEY:Lcom/dspread/xpos/QPOSService$DoTradeResult;

.field public static final enum PLS_SEE_PHONE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

.field public static final enum TRY_ANOTHER_INTERFACE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$DoTradeResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTradeResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NONE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    .line 5
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const-string v1, "MCR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTradeResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->MCR:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    .line 9
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const-string v1, "ICC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTradeResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->ICC:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    .line 13
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const-string v1, "NOT_ICC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTradeResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NOT_ICC:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    .line 17
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const-string v1, "BAD_SWIPE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTradeResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->BAD_SWIPE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    .line 21
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const-string v1, "NO_RESPONSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTradeResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NO_RESPONSE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    .line 25
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const-string v1, "NO_UPDATE_WORK_KEY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTradeResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NO_UPDATE_WORK_KEY:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    .line 29
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const-string v1, "NFC_ONLINE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTradeResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NFC_ONLINE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    .line 33
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const-string v1, "NFC_OFFLINE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTradeResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NFC_OFFLINE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    .line 37
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const-string v1, "NFC_DECLINED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTradeResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NFC_DECLINED:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    .line 41
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const-string v1, "TRY_ANOTHER_INTERFACE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTradeResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->TRY_ANOTHER_INTERFACE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    .line 43
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const-string v1, "CARD_NOT_SUPPORT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTradeResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->CARD_NOT_SUPPORT:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    .line 45
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const-string v1, "PLS_SEE_PHONE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTradeResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->PLS_SEE_PHONE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    .line 46
    invoke-static {}, Lcom/dspread/xpos/QPOSService$DoTradeResult;->a()[Lcom/dspread/xpos/QPOSService$DoTradeResult;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->a:[Lcom/dspread/xpos/QPOSService$DoTradeResult;

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

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$DoTradeResult;
    .locals 3

    .line 1
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$DoTradeResult;

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NONE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->MCR:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->ICC:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NOT_ICC:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->BAD_SWIPE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NO_RESPONSE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NO_UPDATE_WORK_KEY:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NFC_ONLINE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NFC_OFFLINE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->NFC_DECLINED:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->TRY_ANOTHER_INTERFACE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->CARD_NOT_SUPPORT:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTradeResult;->PLS_SEE_PHONE:Lcom/dspread/xpos/QPOSService$DoTradeResult;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$DoTradeResult;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$DoTradeResult;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$DoTradeResult;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$DoTradeResult;->a:[Lcom/dspread/xpos/QPOSService$DoTradeResult;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$DoTradeResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$DoTradeResult;

    return-object v0
.end method
