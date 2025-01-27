.class public final enum Lcom/dspread/xpos/QPOSService$MifareCardType;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MifareCardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$MifareCardType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLASSIC:Lcom/dspread/xpos/QPOSService$MifareCardType;

.field public static final enum UlTRALIGHT:Lcom/dspread/xpos/QPOSService$MifareCardType;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$MifareCardType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$MifareCardType;

    const-string v1, "CLASSIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$MifareCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$MifareCardType;->CLASSIC:Lcom/dspread/xpos/QPOSService$MifareCardType;

    new-instance v0, Lcom/dspread/xpos/QPOSService$MifareCardType;

    const-string v1, "UlTRALIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$MifareCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$MifareCardType;->UlTRALIGHT:Lcom/dspread/xpos/QPOSService$MifareCardType;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/QPOSService$MifareCardType;->a()[Lcom/dspread/xpos/QPOSService$MifareCardType;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$MifareCardType;->a:[Lcom/dspread/xpos/QPOSService$MifareCardType;

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

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$MifareCardType;
    .locals 3

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$MifareCardType;

    sget-object v1, Lcom/dspread/xpos/QPOSService$MifareCardType;->CLASSIC:Lcom/dspread/xpos/QPOSService$MifareCardType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$MifareCardType;->UlTRALIGHT:Lcom/dspread/xpos/QPOSService$MifareCardType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$MifareCardType;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$MifareCardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$MifareCardType;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$MifareCardType;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$MifareCardType;->a:[Lcom/dspread/xpos/QPOSService$MifareCardType;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$MifareCardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$MifareCardType;

    return-object v0
.end method
