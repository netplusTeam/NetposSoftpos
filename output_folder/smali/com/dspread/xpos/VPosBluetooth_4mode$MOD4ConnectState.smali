.class final enum Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;
.super Ljava/lang/Enum;
.source "VPosBluetooth_4mode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/VPosBluetooth_4mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MOD4ConnectState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

.field public static final enum connecting:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

.field public static final enum fail:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

.field public static final enum noconnect:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

.field public static final enum success:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    const-string v1, "noconnect"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;->noconnect:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    new-instance v0, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    const-string v1, "connecting"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;->connecting:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    new-instance v0, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    const-string v1, "fail"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;->fail:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    new-instance v0, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    const-string/jumbo v1, "success"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;->success:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;->a()[Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;->a:[Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

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

.method private static synthetic a()[Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    sget-object v1, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;->noconnect:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;->connecting:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;->fail:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;->success:Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;->a:[Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    invoke-virtual {v0}, [Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/VPosBluetooth_4mode$MOD4ConnectState;

    return-object v0
.end method
