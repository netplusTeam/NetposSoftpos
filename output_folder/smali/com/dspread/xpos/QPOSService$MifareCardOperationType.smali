.class public final enum Lcom/dspread/xpos/QPOSService$MifareCardOperationType;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MifareCardOperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$MifareCardOperationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADD:Lcom/dspread/xpos/QPOSService$MifareCardOperationType;

.field public static final enum REDUCE:Lcom/dspread/xpos/QPOSService$MifareCardOperationType;

.field public static final enum RESTORE:Lcom/dspread/xpos/QPOSService$MifareCardOperationType;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$MifareCardOperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$MifareCardOperationType;

    const-string v1, "ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$MifareCardOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$MifareCardOperationType;->ADD:Lcom/dspread/xpos/QPOSService$MifareCardOperationType;

    new-instance v0, Lcom/dspread/xpos/QPOSService$MifareCardOperationType;

    const-string v1, "REDUCE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$MifareCardOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$MifareCardOperationType;->REDUCE:Lcom/dspread/xpos/QPOSService$MifareCardOperationType;

    new-instance v0, Lcom/dspread/xpos/QPOSService$MifareCardOperationType;

    const-string v1, "RESTORE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$MifareCardOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$MifareCardOperationType;->RESTORE:Lcom/dspread/xpos/QPOSService$MifareCardOperationType;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/QPOSService$MifareCardOperationType;->a()[Lcom/dspread/xpos/QPOSService$MifareCardOperationType;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$MifareCardOperationType;->a:[Lcom/dspread/xpos/QPOSService$MifareCardOperationType;

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

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$MifareCardOperationType;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$MifareCardOperationType;

    sget-object v1, Lcom/dspread/xpos/QPOSService$MifareCardOperationType;->ADD:Lcom/dspread/xpos/QPOSService$MifareCardOperationType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$MifareCardOperationType;->REDUCE:Lcom/dspread/xpos/QPOSService$MifareCardOperationType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$MifareCardOperationType;->RESTORE:Lcom/dspread/xpos/QPOSService$MifareCardOperationType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$MifareCardOperationType;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$MifareCardOperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$MifareCardOperationType;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$MifareCardOperationType;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$MifareCardOperationType;->a:[Lcom/dspread/xpos/QPOSService$MifareCardOperationType;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$MifareCardOperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$MifareCardOperationType;

    return-object v0
.end method
