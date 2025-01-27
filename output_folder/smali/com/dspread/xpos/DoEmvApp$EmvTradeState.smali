.class public final enum Lcom/dspread/xpos/DoEmvApp$EmvTradeState;
.super Ljava/lang/Enum;
.source "DoEmvApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/DoEmvApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "EmvTradeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/DoEmvApp$EmvTradeState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCEL:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

.field public static final enum SET:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

.field public static final enum WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

.field private static final synthetic a:[Lcom/dspread/xpos/DoEmvApp$EmvTradeState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    const-string v1, "CANCEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->CANCEL:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    .line 2
    new-instance v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    const-string v1, "SET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->SET:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    .line 3
    new-instance v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    const-string v1, "WAITING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    .line 4
    invoke-static {}, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->a()[Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->a:[Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

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

.method private static synthetic a()[Lcom/dspread/xpos/DoEmvApp$EmvTradeState;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    sget-object v1, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->CANCEL:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->SET:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->WAITING:Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/DoEmvApp$EmvTradeState;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/DoEmvApp$EmvTradeState;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->a:[Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    invoke-virtual {v0}, [Lcom/dspread/xpos/DoEmvApp$EmvTradeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/DoEmvApp$EmvTradeState;

    return-object v0
.end method
