.class public final enum Lcom/dspread/xpos/QPOSService$CardsType;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$CardsType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CARD_FELICA:Lcom/dspread/xpos/QPOSService$CardsType;

.field public static final enum CARD_IC:Lcom/dspread/xpos/QPOSService$CardsType;

.field public static final enum CARD_IC_CARD_MAG:Lcom/dspread/xpos/QPOSService$CardsType;

.field public static final enum CARD_MAG:Lcom/dspread/xpos/QPOSService$CardsType;

.field public static final enum CARD_MIFARE:Lcom/dspread/xpos/QPOSService$CardsType;

.field public static final enum CARD_NFC:Lcom/dspread/xpos/QPOSService$CardsType;

.field public static final enum CARD_NFC_A:Lcom/dspread/xpos/QPOSService$CardsType;

.field public static final enum CARD_NFC_B:Lcom/dspread/xpos/QPOSService$CardsType;

.field public static final enum CARD_PSAM:Lcom/dspread/xpos/QPOSService$CardsType;

.field public static final enum CARD_SIM:Lcom/dspread/xpos/QPOSService$CardsType;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$CardsType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$CardsType;

    const-string v1, "CARD_NFC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CardsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_NFC:Lcom/dspread/xpos/QPOSService$CardsType;

    .line 2
    new-instance v0, Lcom/dspread/xpos/QPOSService$CardsType;

    const-string v1, "CARD_IC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CardsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_IC:Lcom/dspread/xpos/QPOSService$CardsType;

    .line 3
    new-instance v0, Lcom/dspread/xpos/QPOSService$CardsType;

    const-string v1, "CARD_MAG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CardsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_MAG:Lcom/dspread/xpos/QPOSService$CardsType;

    .line 4
    new-instance v0, Lcom/dspread/xpos/QPOSService$CardsType;

    const-string v1, "CARD_MIFARE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CardsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_MIFARE:Lcom/dspread/xpos/QPOSService$CardsType;

    .line 5
    new-instance v0, Lcom/dspread/xpos/QPOSService$CardsType;

    const-string v1, "CARD_PSAM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CardsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_PSAM:Lcom/dspread/xpos/QPOSService$CardsType;

    .line 6
    new-instance v0, Lcom/dspread/xpos/QPOSService$CardsType;

    const-string v1, "CARD_SIM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CardsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_SIM:Lcom/dspread/xpos/QPOSService$CardsType;

    .line 7
    new-instance v0, Lcom/dspread/xpos/QPOSService$CardsType;

    const-string v1, "CARD_FELICA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CardsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_FELICA:Lcom/dspread/xpos/QPOSService$CardsType;

    .line 8
    new-instance v0, Lcom/dspread/xpos/QPOSService$CardsType;

    const-string v1, "CARD_NFC_A"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CardsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_NFC_A:Lcom/dspread/xpos/QPOSService$CardsType;

    .line 9
    new-instance v0, Lcom/dspread/xpos/QPOSService$CardsType;

    const-string v1, "CARD_NFC_B"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CardsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_NFC_B:Lcom/dspread/xpos/QPOSService$CardsType;

    .line 10
    new-instance v0, Lcom/dspread/xpos/QPOSService$CardsType;

    const-string v1, "CARD_IC_CARD_MAG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$CardsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_IC_CARD_MAG:Lcom/dspread/xpos/QPOSService$CardsType;

    .line 11
    invoke-static {}, Lcom/dspread/xpos/QPOSService$CardsType;->a()[Lcom/dspread/xpos/QPOSService$CardsType;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$CardsType;->a:[Lcom/dspread/xpos/QPOSService$CardsType;

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

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$CardsType;
    .locals 3

    .line 1
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$CardsType;

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_NFC:Lcom/dspread/xpos/QPOSService$CardsType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_IC:Lcom/dspread/xpos/QPOSService$CardsType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_MAG:Lcom/dspread/xpos/QPOSService$CardsType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_MIFARE:Lcom/dspread/xpos/QPOSService$CardsType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_PSAM:Lcom/dspread/xpos/QPOSService$CardsType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_SIM:Lcom/dspread/xpos/QPOSService$CardsType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_FELICA:Lcom/dspread/xpos/QPOSService$CardsType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_NFC_A:Lcom/dspread/xpos/QPOSService$CardsType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_NFC_B:Lcom/dspread/xpos/QPOSService$CardsType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$CardsType;->CARD_IC_CARD_MAG:Lcom/dspread/xpos/QPOSService$CardsType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$CardsType;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$CardsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$CardsType;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$CardsType;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$CardsType;->a:[Lcom/dspread/xpos/QPOSService$CardsType;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$CardsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$CardsType;

    return-object v0
.end method
