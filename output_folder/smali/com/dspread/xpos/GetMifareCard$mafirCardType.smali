.class public final enum Lcom/dspread/xpos/GetMifareCard$mafirCardType;
.super Ljava/lang/Enum;
.source "GetMifareCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/GetMifareCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "mafirCardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/GetMifareCard$mafirCardType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NFC_CARD_BEGIN:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_END:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_CLASSIC_1K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_CLASSIC_1K_CL2:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_CLASSIC_1K_CL2_PLUS_CL2_2K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_CLASSIC_1K_PLUS_2K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_CLASSIC_4K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_CLASSIC_4K_CL2:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_CLASSIC_4K_CL2_PLUS_CL2_4K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_CLASSIC_4K_PLUS_4K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_DESFIRE_CL1:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_DESFIRE_CL2:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_MINI:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_MINI_CL2:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_PLUS_2K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_PLUS_4K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_PLUS_CL2_2K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_PLUS_CL2_4K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_SMART_MX_1K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_SMART_MX_4K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_SMART_MX_CL2:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_TNP3xxx:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_MIFARE_ULTRALIGHT:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field public static final enum NFC_CARD_QUICK_PASS:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

.field private static final synthetic a:[Lcom/dspread/xpos/GetMifareCard$mafirCardType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_BEGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_BEGIN:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 2
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_DESFIRE_CL1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_DESFIRE_CL1:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 3
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_DESFIRE_CL2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_DESFIRE_CL2:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 4
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_ULTRALIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_ULTRALIGHT:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 5
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_MINI"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_MINI:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 6
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_MINI_CL2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_MINI_CL2:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 7
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_CLASSIC_1K"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_CLASSIC_1K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 8
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_CLASSIC_4K"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_CLASSIC_4K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 9
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_CLASSIC_1K_CL2"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_CLASSIC_1K_CL2:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 10
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_CLASSIC_4K_CL2"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_CLASSIC_4K_CL2:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 11
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_PLUS_2K"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_PLUS_2K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 12
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_PLUS_4K"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_PLUS_4K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 13
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_PLUS_CL2_2K"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_PLUS_CL2_2K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 14
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_PLUS_CL2_4K"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_PLUS_CL2_4K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 15
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_SMART_MX_1K"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_SMART_MX_1K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 16
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_SMART_MX_4K"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_SMART_MX_4K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 17
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_SMART_MX_CL2"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_SMART_MX_CL2:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 18
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_TNP3xxx"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_TNP3xxx:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 19
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_CLASSIC_1K_PLUS_2K"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_CLASSIC_1K_PLUS_2K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 20
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_CLASSIC_4K_PLUS_4K"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_CLASSIC_4K_PLUS_4K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 21
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_CLASSIC_1K_CL2_PLUS_CL2_2K"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_CLASSIC_1K_CL2_PLUS_CL2_2K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 22
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_MIFARE_CLASSIC_4K_CL2_PLUS_CL2_4K"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_CLASSIC_4K_CL2_PLUS_CL2_4K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 23
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_QUICK_PASS"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_QUICK_PASS:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 25
    new-instance v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const-string v1, "NFC_CARD_END"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_END:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    .line 26
    invoke-static {}, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->a()[Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->a:[Lcom/dspread/xpos/GetMifareCard$mafirCardType;

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

.method private static synthetic a()[Lcom/dspread/xpos/GetMifareCard$mafirCardType;
    .locals 3

    .line 1
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_BEGIN:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_DESFIRE_CL1:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_DESFIRE_CL2:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_ULTRALIGHT:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_MINI:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_MINI_CL2:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_CLASSIC_1K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_CLASSIC_4K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_CLASSIC_1K_CL2:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_CLASSIC_4K_CL2:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_PLUS_2K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_PLUS_4K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_PLUS_CL2_2K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_PLUS_CL2_4K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_SMART_MX_1K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_SMART_MX_4K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_SMART_MX_CL2:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_TNP3xxx:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_CLASSIC_1K_PLUS_2K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_CLASSIC_4K_PLUS_4K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_CLASSIC_1K_CL2_PLUS_CL2_2K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_MIFARE_CLASSIC_4K_CL2_PLUS_CL2_4K:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_QUICK_PASS:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->NFC_CARD_END:Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/GetMifareCard$mafirCardType;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/GetMifareCard$mafirCardType;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/GetMifareCard$mafirCardType;->a:[Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    invoke-virtual {v0}, [Lcom/dspread/xpos/GetMifareCard$mafirCardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/GetMifareCard$mafirCardType;

    return-object v0
.end method
