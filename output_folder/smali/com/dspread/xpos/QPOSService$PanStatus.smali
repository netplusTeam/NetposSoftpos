.class public final enum Lcom/dspread/xpos/QPOSService$PanStatus;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PanStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$PanStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/dspread/xpos/QPOSService$PanStatus;

.field public static final enum ENCRYPTED:Lcom/dspread/xpos/QPOSService$PanStatus;

.field public static final enum PLAINTEXT:Lcom/dspread/xpos/QPOSService$PanStatus;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$PanStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$PanStatus;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$PanStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$PanStatus;->DEFAULT:Lcom/dspread/xpos/QPOSService$PanStatus;

    .line 5
    new-instance v0, Lcom/dspread/xpos/QPOSService$PanStatus;

    const-string v1, "PLAINTEXT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$PanStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$PanStatus;->PLAINTEXT:Lcom/dspread/xpos/QPOSService$PanStatus;

    .line 9
    new-instance v0, Lcom/dspread/xpos/QPOSService$PanStatus;

    const-string v1, "ENCRYPTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$PanStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$PanStatus;->ENCRYPTED:Lcom/dspread/xpos/QPOSService$PanStatus;

    .line 10
    invoke-static {}, Lcom/dspread/xpos/QPOSService$PanStatus;->a()[Lcom/dspread/xpos/QPOSService$PanStatus;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$PanStatus;->a:[Lcom/dspread/xpos/QPOSService$PanStatus;

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

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$PanStatus;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$PanStatus;

    sget-object v1, Lcom/dspread/xpos/QPOSService$PanStatus;->DEFAULT:Lcom/dspread/xpos/QPOSService$PanStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$PanStatus;->PLAINTEXT:Lcom/dspread/xpos/QPOSService$PanStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$PanStatus;->ENCRYPTED:Lcom/dspread/xpos/QPOSService$PanStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$PanStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$PanStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$PanStatus;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$PanStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$PanStatus;->a:[Lcom/dspread/xpos/QPOSService$PanStatus;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$PanStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$PanStatus;

    return-object v0
.end method
