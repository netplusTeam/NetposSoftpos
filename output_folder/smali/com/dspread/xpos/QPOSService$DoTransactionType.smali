.class public final enum Lcom/dspread/xpos/QPOSService$DoTransactionType;
.super Ljava/lang/Enum;
.source "QPOSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/QPOSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DoTransactionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/QPOSService$DoTransactionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Clear:Lcom/dspread/xpos/QPOSService$DoTransactionType;

.field public static final enum ClearLast:Lcom/dspread/xpos/QPOSService$DoTransactionType;

.field public static final enum ClearOne:Lcom/dspread/xpos/QPOSService$DoTransactionType;

.field public static final enum ClearOneByBatchID:Lcom/dspread/xpos/QPOSService$DoTransactionType;

.field public static final enum GetAll:Lcom/dspread/xpos/QPOSService$DoTransactionType;

.field public static final enum GetOne:Lcom/dspread/xpos/QPOSService$DoTransactionType;

.field public static final enum GetOneByBatchID:Lcom/dspread/xpos/QPOSService$DoTransactionType;

.field private static final synthetic a:[Lcom/dspread/xpos/QPOSService$DoTransactionType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTransactionType;

    const-string v1, "Clear"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTransactionType;->Clear:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    .line 5
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTransactionType;

    const-string v1, "GetAll"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTransactionType;->GetAll:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    .line 9
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTransactionType;

    const-string v1, "GetOne"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTransactionType;->GetOne:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    .line 13
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTransactionType;

    const-string v1, "ClearOne"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTransactionType;->ClearOne:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    .line 17
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTransactionType;

    const-string v1, "ClearLast"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTransactionType;->ClearLast:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    .line 21
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTransactionType;

    const-string v1, "ClearOneByBatchID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTransactionType;->ClearOneByBatchID:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    .line 25
    new-instance v0, Lcom/dspread/xpos/QPOSService$DoTransactionType;

    const-string v1, "GetOneByBatchID"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/QPOSService$DoTransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTransactionType;->GetOneByBatchID:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    .line 26
    invoke-static {}, Lcom/dspread/xpos/QPOSService$DoTransactionType;->a()[Lcom/dspread/xpos/QPOSService$DoTransactionType;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/QPOSService$DoTransactionType;->a:[Lcom/dspread/xpos/QPOSService$DoTransactionType;

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

.method private static synthetic a()[Lcom/dspread/xpos/QPOSService$DoTransactionType;
    .locals 3

    .line 1
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/dspread/xpos/QPOSService$DoTransactionType;

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTransactionType;->Clear:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTransactionType;->GetAll:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTransactionType;->GetOne:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTransactionType;->ClearOne:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTransactionType;->ClearLast:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTransactionType;->ClearOneByBatchID:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/QPOSService$DoTransactionType;->GetOneByBatchID:Lcom/dspread/xpos/QPOSService$DoTransactionType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/QPOSService$DoTransactionType;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/QPOSService$DoTransactionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/QPOSService$DoTransactionType;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/QPOSService$DoTransactionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/QPOSService$DoTransactionType;->a:[Lcom/dspread/xpos/QPOSService$DoTransactionType;

    invoke-virtual {v0}, [Lcom/dspread/xpos/QPOSService$DoTransactionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/QPOSService$DoTransactionType;

    return-object v0
.end method
