.class public final enum Lcom/dspread/xpos/QPOSService$QposStatus;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QposStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$QposStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ENGINEERING_MODE:Lcom/dspread/xpos/QPOSService$QposStatus;

.field public static final enum NORMAL_MODE:Lcom/dspread/xpos/QPOSService$QposStatus;

.field public static final enum SELF_DESTRUCTION_MODE:Lcom/dspread/xpos/QPOSService$QposStatus;

.field public static final enum UNKOWN:Lcom/dspread/xpos/QPOSService$QposStatus;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$QposStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$QposStatus;

    const-string v1, "SELF_DESTRUCTION_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$QposStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$QposStatus;->SELF_DESTRUCTION_MODE:Lcom/dspread/xpos/QPOSService$QposStatus;

    new-instance v0, Lcom/dspread/xpos/QPOSService$QposStatus;

    const-string v1, "ENGINEERING_MODE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$QposStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$QposStatus;->ENGINEERING_MODE:Lcom/dspread/xpos/QPOSService$QposStatus;

    new-instance v0, Lcom/dspread/xpos/QPOSService$QposStatus;

    const-string v1, "NORMAL_MODE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$QposStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$QposStatus;->NORMAL_MODE:Lcom/dspread/xpos/QPOSService$QposStatus;

    new-instance v0, Lcom/dspread/xpos/QPOSService$QposStatus;

    const-string v1, "UNKOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$QposStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$QposStatus;->UNKOWN:Lcom/dspread/xpos/QPOSService$QposStatus;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/QPOSService$QposStatus;->a()[Lcom/dspread/xpos/QPOSService$QposStatus;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$QposStatus;->a:[Lcom/dspread/xpos/QPOSService$QposStatus;

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

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$QposStatus;
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$QposStatus;

    sget-object v1, Lcom/dspread/xpos/QPOSService$QposStatus;->SELF_DESTRUCTION_MODE:Lcom/dspread/xpos/QPOSService$QposStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$QposStatus;->ENGINEERING_MODE:Lcom/dspread/xpos/QPOSService$QposStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$QposStatus;->NORMAL_MODE:Lcom/dspread/xpos/QPOSService$QposStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$QposStatus;->UNKOWN:Lcom/dspread/xpos/QPOSService$QposStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$QposStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$QposStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$QposStatus;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$QposStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$QposStatus;->a:[Lcom/dspread/xpos/QPOSService$QposStatus;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$QposStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$QposStatus;

    return-object v0
.end method
