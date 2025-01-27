.class final enum Lcom/dspread/xpos/Service$ResetState;
.super Ljava/lang/Enum;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ResetState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/Service$ResetState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INIT:Lcom/dspread/xpos/Service$ResetState;

.field public static final enum RESETED:Lcom/dspread/xpos/Service$ResetState;

.field public static final enum RESETING:Lcom/dspread/xpos/Service$ResetState;

.field private static final synthetic a:[Lcom/dspread/xpos/Service$ResetState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/Service$ResetState;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$ResetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$ResetState;->INIT:Lcom/dspread/xpos/Service$ResetState;

    new-instance v0, Lcom/dspread/xpos/Service$ResetState;

    const-string v1, "RESETING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$ResetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$ResetState;->RESETING:Lcom/dspread/xpos/Service$ResetState;

    new-instance v0, Lcom/dspread/xpos/Service$ResetState;

    const-string v1, "RESETED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$ResetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$ResetState;->RESETED:Lcom/dspread/xpos/Service$ResetState;

    .line 2
    invoke-static {}, Lcom/dspread/xpos/Service$ResetState;->a()[Lcom/dspread/xpos/Service$ResetState;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/Service$ResetState;->a:[Lcom/dspread/xpos/Service$ResetState;

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

.method private static synthetic a()[Lcom/dspread/xpos/Service$ResetState;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dspread/xpos/Service$ResetState;

    sget-object v1, Lcom/dspread/xpos/Service$ResetState;->INIT:Lcom/dspread/xpos/Service$ResetState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$ResetState;->RESETING:Lcom/dspread/xpos/Service$ResetState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$ResetState;->RESETED:Lcom/dspread/xpos/Service$ResetState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/Service$ResetState;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/Service$ResetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/Service$ResetState;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/Service$ResetState;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/Service$ResetState;->a:[Lcom/dspread/xpos/Service$ResetState;

    invoke-virtual {v0}, [Lcom/dspread/xpos/Service$ResetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/Service$ResetState;

    return-object v0
.end method
