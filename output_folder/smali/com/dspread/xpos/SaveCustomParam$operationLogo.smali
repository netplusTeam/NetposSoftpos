.class final enum Lcom/dspread/xpos/SaveCustomParam$operationLogo;
.super Ljava/lang/Enum;
.source "SaveCustomParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/SaveCustomParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "operationLogo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/SaveCustomParam$operationLogo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum READ:Lcom/dspread/xpos/SaveCustomParam$operationLogo;

.field public static final enum WRITE:Lcom/dspread/xpos/SaveCustomParam$operationLogo;

.field private static final synthetic a:[Lcom/dspread/xpos/SaveCustomParam$operationLogo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/SaveCustomParam$operationLogo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/SaveCustomParam$operationLogo;->READ:Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    .line 2
    new-instance v0, Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    const-string v1, "WRITE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/SaveCustomParam$operationLogo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/SaveCustomParam$operationLogo;->WRITE:Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    .line 3
    invoke-static {}, Lcom/dspread/xpos/SaveCustomParam$operationLogo;->a()[Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/SaveCustomParam$operationLogo;->a:[Lcom/dspread/xpos/SaveCustomParam$operationLogo;

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

.method private static synthetic a()[Lcom/dspread/xpos/SaveCustomParam$operationLogo;
    .locals 3

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    sget-object v1, Lcom/dspread/xpos/SaveCustomParam$operationLogo;->READ:Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/SaveCustomParam$operationLogo;->WRITE:Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/SaveCustomParam$operationLogo;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/SaveCustomParam$operationLogo;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/SaveCustomParam$operationLogo;->a:[Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    invoke-virtual {v0}, [Lcom/dspread/xpos/SaveCustomParam$operationLogo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/SaveCustomParam$operationLogo;

    return-object v0
.end method
