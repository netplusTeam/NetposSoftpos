.class public final enum Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnalyseDigEnvelopMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ENCRYPT_ENV:Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;

.field public static final enum SIGNATURE_ENV:Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;

    const-string v1, "ENCRYPT_ENV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;->ENCRYPT_ENV:Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;

    .line 5
    new-instance v0, Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;

    const-string v1, "SIGNATURE_ENV"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;->SIGNATURE_ENV:Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;

    .line 6
    invoke-static {}, Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;->a()[Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;->a:[Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;

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

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;
    .locals 3

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;

    sget-object v1, Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;->ENCRYPT_ENV:Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;->SIGNATURE_ENV:Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;->a:[Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$AnalyseDigEnvelopMode;

    return-object v0
.end method
