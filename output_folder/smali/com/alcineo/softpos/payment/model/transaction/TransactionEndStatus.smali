.class public final enum Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

.field public static final enum APPROVED:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

.field public static final enum COMPLETE:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

.field public static final enum DECLINED:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

.field public static final enum END_APPLICATION:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

.field public static final enum ONLINE:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

.field public static final enum SELECT_NEXT:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

.field public static final enum TRY_AGAIN:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

.field public static final enum TRY_ANOTHER_INTERFACE:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

.field public static final enum UNKNOW:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;


# instance fields
.field private final value:B


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    const-string v1, "APPROVED"

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;->APPROVED:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    new-instance v1, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    const-string v3, "DECLINED"

    const/4 v4, 0x1

    const/16 v5, 0x20

    invoke-direct {v1, v3, v4, v5}, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;->DECLINED:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    new-instance v3, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    const-string v5, "ONLINE"

    const/4 v6, 0x2

    const/16 v7, 0x30

    invoke-direct {v3, v5, v6, v7}, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v3, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;->ONLINE:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    new-instance v5, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    const-string v7, "END_APPLICATION"

    const/4 v8, 0x3

    const/16 v9, 0x40

    invoke-direct {v5, v7, v8, v9}, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v5, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;->END_APPLICATION:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    new-instance v7, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    const-string v9, "SELECT_NEXT"

    const/4 v10, 0x4

    const/16 v11, 0x50

    invoke-direct {v7, v9, v10, v11}, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v7, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;->SELECT_NEXT:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    new-instance v9, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    const-string v11, "TRY_ANOTHER_INTERFACE"

    const/4 v12, 0x5

    const/16 v13, 0x60

    invoke-direct {v9, v11, v12, v13}, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v9, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;->TRY_ANOTHER_INTERFACE:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    new-instance v11, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    const-string v13, "TRY_AGAIN"

    const/4 v14, 0x6

    const/16 v15, 0x70

    invoke-direct {v11, v13, v14, v15}, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v11, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;->TRY_AGAIN:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    new-instance v13, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    const-string v15, "COMPLETE"

    const/4 v14, 0x7

    const/16 v12, -0x80

    invoke-direct {v13, v15, v14, v12}, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v13, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;->COMPLETE:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    new-instance v12, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    const-string v15, "UNKNOW"

    const/16 v14, 0x8

    const/4 v10, -0x1

    invoke-direct {v12, v15, v14, v10}, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v12, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;->UNKNOW:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    sput-object v10, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;->$VALUES:[Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;->value:B

    return-void
.end method

.method public static getFromValue(I)Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;
    .locals 6

    invoke-static {}, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;->values()[Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-byte v4, v3, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;->value:B

    and-int/lit8 v5, p0, -0x10

    if-ne v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;->UNKNOW:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;
    .locals 1

    const-class v0, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;
    .locals 1

    sget-object v0, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;->$VALUES:[Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    invoke-virtual {v0}, [Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    return-object v0
.end method
