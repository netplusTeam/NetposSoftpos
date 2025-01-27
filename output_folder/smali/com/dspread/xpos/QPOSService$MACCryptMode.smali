.class public final enum Lcom/dspread/xpos/QPOSService$MACCryptMode;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MACCryptMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$MACCryptMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DES_CBC:Lcom/dspread/xpos/QPOSService$MACCryptMode;

.field public static final enum DES_ECB:Lcom/dspread/xpos/QPOSService$MACCryptMode;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$MACCryptMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$MACCryptMode;

    const-string v1, "DES_CBC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$MACCryptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$MACCryptMode;->DES_CBC:Lcom/dspread/xpos/QPOSService$MACCryptMode;

    .line 2
    new-instance v0, Lcom/dspread/xpos/QPOSService$MACCryptMode;

    const-string v1, "DES_ECB"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$MACCryptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$MACCryptMode;->DES_ECB:Lcom/dspread/xpos/QPOSService$MACCryptMode;

    .line 3
    invoke-static {}, Lcom/dspread/xpos/QPOSService$MACCryptMode;->a()[Lcom/dspread/xpos/QPOSService$MACCryptMode;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$MACCryptMode;->a:[Lcom/dspread/xpos/QPOSService$MACCryptMode;

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

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$MACCryptMode;
    .locals 3

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$MACCryptMode;

    sget-object v1, Lcom/dspread/xpos/QPOSService$MACCryptMode;->DES_CBC:Lcom/dspread/xpos/QPOSService$MACCryptMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$MACCryptMode;->DES_ECB:Lcom/dspread/xpos/QPOSService$MACCryptMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$MACCryptMode;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$MACCryptMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$MACCryptMode;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$MACCryptMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$MACCryptMode;->a:[Lcom/dspread/xpos/QPOSService$MACCryptMode;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$MACCryptMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$MACCryptMode;

    return-object v0
.end method
