.class public final enum Lcom/dspread/xpos/QPOSService$FORMATID;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FORMATID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$FORMATID;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DUKPT:Lcom/dspread/xpos/QPOSService$FORMATID;

.field public static final enum DUKPT_MKSK:Lcom/dspread/xpos/QPOSService$FORMATID;

.field public static final enum LP:Lcom/dspread/xpos/QPOSService$FORMATID;

.field public static final enum MKSK:Lcom/dspread/xpos/QPOSService$FORMATID;

.field public static final enum MKSK_PLAIN:Lcom/dspread/xpos/QPOSService$FORMATID;

.field public static final enum MOSAMBEE:Lcom/dspread/xpos/QPOSService$FORMATID;

.field public static final enum SOFTPAY:Lcom/dspread/xpos/QPOSService$FORMATID;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$FORMATID;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$FORMATID;

    const-string v1, "MKSK"

    const/4 v2, 0x0

    const-string v3, "0002"

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/QPOSService$FORMATID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$FORMATID;->MKSK:Lcom/dspread/xpos/QPOSService$FORMATID;

    new-instance v0, Lcom/dspread/xpos/QPOSService$FORMATID;

    const-string v1, "LP"

    const/4 v2, 0x1

    const-string v3, "0007"

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/QPOSService$FORMATID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$FORMATID;->LP:Lcom/dspread/xpos/QPOSService$FORMATID;

    new-instance v0, Lcom/dspread/xpos/QPOSService$FORMATID;

    const-string v1, "MKSK_PLAIN"

    const/4 v2, 0x2

    const-string v3, "0008"

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/QPOSService$FORMATID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$FORMATID;->MKSK_PLAIN:Lcom/dspread/xpos/QPOSService$FORMATID;

    new-instance v0, Lcom/dspread/xpos/QPOSService$FORMATID;

    const-string v1, "MOSAMBEE"

    const/4 v2, 0x3

    const-string v3, "0018"

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/QPOSService$FORMATID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$FORMATID;->MOSAMBEE:Lcom/dspread/xpos/QPOSService$FORMATID;

    new-instance v0, Lcom/dspread/xpos/QPOSService$FORMATID;

    const-string v1, "SOFTPAY"

    const/4 v2, 0x4

    const-string v3, "0020"

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/QPOSService$FORMATID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$FORMATID;->SOFTPAY:Lcom/dspread/xpos/QPOSService$FORMATID;

    new-instance v0, Lcom/dspread/xpos/QPOSService$FORMATID;

    const-string v1, "DUKPT"

    const/4 v2, 0x5

    const-string v4, "0000"

    invoke-direct {v0, v1, v2, v4}, Lcom/dspread/xpos/QPOSService$FORMATID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$FORMATID;->DUKPT:Lcom/dspread/xpos/QPOSService$FORMATID;

    new-instance v0, Lcom/dspread/xpos/QPOSService$FORMATID;

    const-string v1, "DUKPT_MKSK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/dspread/xpos/QPOSService$FORMATID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$FORMATID;->DUKPT_MKSK:Lcom/dspread/xpos/QPOSService$FORMATID;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/QPOSService$FORMATID;->a()[Lcom/dspread/xpos/QPOSService$FORMATID;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$FORMATID;->a:[Lcom/dspread/xpos/QPOSService$FORMATID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/dspread/xpos/QPOSService$FORMATID;->id:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$FORMATID;
    .locals 3

    .line 1
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$FORMATID;

    sget-object v1, Lcom/dspread/xpos/QPOSService$FORMATID;->MKSK:Lcom/dspread/xpos/QPOSService$FORMATID;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$FORMATID;->LP:Lcom/dspread/xpos/QPOSService$FORMATID;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$FORMATID;->MKSK_PLAIN:Lcom/dspread/xpos/QPOSService$FORMATID;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$FORMATID;->MOSAMBEE:Lcom/dspread/xpos/QPOSService$FORMATID;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$FORMATID;->SOFTPAY:Lcom/dspread/xpos/QPOSService$FORMATID;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$FORMATID;->DUKPT:Lcom/dspread/xpos/QPOSService$FORMATID;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$FORMATID;->DUKPT_MKSK:Lcom/dspread/xpos/QPOSService$FORMATID;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static synthetic access$100(Lcom/dspread/xpos/QPOSService$FORMATID;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/QPOSService$FORMATID;->id:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$FORMATID;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$FORMATID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$FORMATID;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$FORMATID;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$FORMATID;->a:[Lcom/dspread/xpos/QPOSService$FORMATID;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$FORMATID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$FORMATID;

    return-object v0
.end method
