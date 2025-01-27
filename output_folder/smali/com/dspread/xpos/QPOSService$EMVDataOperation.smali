.class public final enum Lcom/dspread/xpos/QPOSService$EMVDataOperation;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMVDataOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$EMVDataOperation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Add:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

.field public static final enum AttainList:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

.field public static final enum Clear:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

.field public static final enum Delete:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$EMVDataOperation;

.field public static final enum getCustomEmv:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

.field public static final enum getEmv:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

.field public static final enum update:Lcom/dspread/xpos/QPOSService$EMVDataOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    const-string v1, "Clear"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$EMVDataOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->Clear:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    .line 5
    new-instance v0, Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    const-string v1, "Add"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$EMVDataOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->Add:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    .line 9
    new-instance v0, Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    const-string v1, "Delete"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$EMVDataOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->Delete:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    .line 13
    new-instance v0, Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    const-string v1, "AttainList"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$EMVDataOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->AttainList:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    .line 17
    new-instance v0, Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    const-string/jumbo v1, "update"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$EMVDataOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->update:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    .line 21
    new-instance v0, Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    const-string v1, "getEmv"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$EMVDataOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->getEmv:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    .line 25
    new-instance v0, Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    const-string v1, "getCustomEmv"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$EMVDataOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->getCustomEmv:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    .line 26
    invoke-static {}, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->a()[Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->a:[Lcom/dspread/xpos/QPOSService$EMVDataOperation;

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

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$EMVDataOperation;
    .locals 3

    .line 1
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    sget-object v1, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->Clear:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->Add:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->Delete:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->AttainList:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->update:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->getEmv:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->getCustomEmv:Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$EMVDataOperation;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$EMVDataOperation;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$EMVDataOperation;->a:[Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$EMVDataOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$EMVDataOperation;

    return-object v0
.end method
