.class final enum Lcom/dspread/xpos/otg/SerialInputOutputManager$State;
.super Ljava/lang/Enum;
.source "SerialInputOutputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/otg/SerialInputOutputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/otg/SerialInputOutputManager$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum RUNNING:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

.field public static final enum STOPPED:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

.field public static final enum STOPPING:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

.field private static final synthetic a:[Lcom/dspread/xpos/otg/SerialInputOutputManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;->STOPPED:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    .line 2
    new-instance v0, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;->RUNNING:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    .line 3
    new-instance v0, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    const-string v1, "STOPPING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;->STOPPING:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    .line 4
    invoke-static {}, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;->a()[Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;->a:[Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

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

.method private static synthetic a()[Lcom/dspread/xpos/otg/SerialInputOutputManager$State;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    sget-object v1, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;->STOPPED:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;->RUNNING:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;->STOPPING:Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/otg/SerialInputOutputManager$State;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/otg/SerialInputOutputManager$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/otg/SerialInputOutputManager$State;->a:[Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    invoke-virtual {v0}, [Lcom/dspread/xpos/otg/SerialInputOutputManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/otg/SerialInputOutputManager$State;

    return-object v0
.end method
