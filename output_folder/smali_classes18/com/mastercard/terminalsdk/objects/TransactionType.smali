.class public final enum Lcom/mastercard/terminalsdk/objects/TransactionType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/objects/TransactionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TRANSACTION_TYPE_12:Lcom/mastercard/terminalsdk/objects/TransactionType;

.field public static final enum TRANSACTION_TYPE_50:Lcom/mastercard/terminalsdk/objects/TransactionType;

.field public static final enum TRANSACTION_TYPE_88:Lcom/mastercard/terminalsdk/objects/TransactionType;

.field public static final enum TRANSACTION_TYPE_ADMINISTRATIVE:Lcom/mastercard/terminalsdk/objects/TransactionType;

.field public static final enum TRANSACTION_TYPE_BALANCE_INQUIRY:Lcom/mastercard/terminalsdk/objects/TransactionType;

.field public static final enum TRANSACTION_TYPE_CASH_DEPOSIT:Lcom/mastercard/terminalsdk/objects/TransactionType;

.field public static final enum TRANSACTION_TYPE_CASH_DISBURSEMENT:Lcom/mastercard/terminalsdk/objects/TransactionType;

.field public static final enum TRANSACTION_TYPE_INQUIRY:Lcom/mastercard/terminalsdk/objects/TransactionType;

.field public static final enum TRANSACTION_TYPE_PAYMENT:Lcom/mastercard/terminalsdk/objects/TransactionType;

.field public static final enum TRANSACTION_TYPE_PINCHANGE:Lcom/mastercard/terminalsdk/objects/TransactionType;

.field public static final enum TRANSACTION_TYPE_PINUNBLOCK:Lcom/mastercard/terminalsdk/objects/TransactionType;

.field public static final enum TRANSACTION_TYPE_PURCHASE:Lcom/mastercard/terminalsdk/objects/TransactionType;

.field public static final enum TRANSACTION_TYPE_PURCHASE_WITH_CASHBACK:Lcom/mastercard/terminalsdk/objects/TransactionType;

.field public static final enum TRANSACTION_TYPE_REFUND:Lcom/mastercard/terminalsdk/objects/TransactionType;

.field public static final enum TRANSACTION_TYPE_TRANSFER:Lcom/mastercard/terminalsdk/objects/TransactionType;

.field public static final enum TRANSACTION_TYPE_UNATTENDED_CASH:Lcom/mastercard/terminalsdk/objects/TransactionType;

.field private static final synthetic b:[Lcom/mastercard/terminalsdk/objects/TransactionType;

.field private static final d:Ljava/util/Map;


# instance fields
.field private final c:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lcom/mastercard/terminalsdk/objects/TransactionType;

    const-string v1, "TRANSACTION_TYPE_UNATTENDED_CASH"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mastercard/terminalsdk/objects/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mastercard/terminalsdk/objects/TransactionType;->TRANSACTION_TYPE_UNATTENDED_CASH:Lcom/mastercard/terminalsdk/objects/TransactionType;

    new-instance v1, Lcom/mastercard/terminalsdk/objects/TransactionType;

    const-string v5, "TRANSACTION_TYPE_PURCHASE"

    invoke-direct {v1, v5, v3, v2, v4}, Lcom/mastercard/terminalsdk/objects/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/mastercard/terminalsdk/objects/TransactionType;->TRANSACTION_TYPE_PURCHASE:Lcom/mastercard/terminalsdk/objects/TransactionType;

    new-instance v5, Lcom/mastercard/terminalsdk/objects/TransactionType;

    const-string v6, "TRANSACTION_TYPE_CASH_DISBURSEMENT"

    const/4 v7, 0x2

    const/16 v8, 0x17

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/mastercard/terminalsdk/objects/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/mastercard/terminalsdk/objects/TransactionType;->TRANSACTION_TYPE_CASH_DISBURSEMENT:Lcom/mastercard/terminalsdk/objects/TransactionType;

    new-instance v6, Lcom/mastercard/terminalsdk/objects/TransactionType;

    const-string v8, "TRANSACTION_TYPE_PURCHASE_WITH_CASHBACK"

    const/4 v9, 0x3

    const/16 v10, 0x9

    invoke-direct {v6, v8, v9, v10, v4}, Lcom/mastercard/terminalsdk/objects/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/mastercard/terminalsdk/objects/TransactionType;->TRANSACTION_TYPE_PURCHASE_WITH_CASHBACK:Lcom/mastercard/terminalsdk/objects/TransactionType;

    new-instance v8, Lcom/mastercard/terminalsdk/objects/TransactionType;

    const-string v11, "TRANSACTION_TYPE_REFUND"

    const/4 v12, 0x4

    const/16 v13, 0x20

    invoke-direct {v8, v11, v12, v13, v4}, Lcom/mastercard/terminalsdk/objects/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/mastercard/terminalsdk/objects/TransactionType;->TRANSACTION_TYPE_REFUND:Lcom/mastercard/terminalsdk/objects/TransactionType;

    new-instance v11, Lcom/mastercard/terminalsdk/objects/TransactionType;

    const-string v13, "TRANSACTION_TYPE_88"

    const/4 v14, 0x5

    const/16 v15, 0x88

    invoke-direct {v11, v13, v14, v15, v4}, Lcom/mastercard/terminalsdk/objects/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/mastercard/terminalsdk/objects/TransactionType;->TRANSACTION_TYPE_88:Lcom/mastercard/terminalsdk/objects/TransactionType;

    new-instance v13, Lcom/mastercard/terminalsdk/objects/TransactionType;

    const-string v15, "TRANSACTION_TYPE_CASH_DEPOSIT"

    const/4 v14, 0x6

    const/16 v12, 0x21

    invoke-direct {v13, v15, v14, v12, v4}, Lcom/mastercard/terminalsdk/objects/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/mastercard/terminalsdk/objects/TransactionType;->TRANSACTION_TYPE_CASH_DEPOSIT:Lcom/mastercard/terminalsdk/objects/TransactionType;

    new-instance v12, Lcom/mastercard/terminalsdk/objects/TransactionType;

    const-string v15, "TRANSACTION_TYPE_12"

    const/4 v14, 0x7

    const/16 v9, 0x12

    invoke-direct {v12, v15, v14, v9, v4}, Lcom/mastercard/terminalsdk/objects/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/mastercard/terminalsdk/objects/TransactionType;->TRANSACTION_TYPE_12:Lcom/mastercard/terminalsdk/objects/TransactionType;

    new-instance v9, Lcom/mastercard/terminalsdk/objects/TransactionType;

    const-string v15, "TRANSACTION_TYPE_INQUIRY"

    const/16 v14, 0x8

    const/16 v7, 0x30

    invoke-direct {v9, v15, v14, v7, v4}, Lcom/mastercard/terminalsdk/objects/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/mastercard/terminalsdk/objects/TransactionType;->TRANSACTION_TYPE_INQUIRY:Lcom/mastercard/terminalsdk/objects/TransactionType;

    new-instance v7, Lcom/mastercard/terminalsdk/objects/TransactionType;

    const-string v15, "TRANSACTION_TYPE_BALANCE_INQUIRY"

    const/16 v14, 0x31

    invoke-direct {v7, v15, v10, v14, v4}, Lcom/mastercard/terminalsdk/objects/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/mastercard/terminalsdk/objects/TransactionType;->TRANSACTION_TYPE_BALANCE_INQUIRY:Lcom/mastercard/terminalsdk/objects/TransactionType;

    new-instance v14, Lcom/mastercard/terminalsdk/objects/TransactionType;

    const-string v15, "TRANSACTION_TYPE_TRANSFER"

    const/16 v10, 0xa

    const/16 v3, 0x40

    invoke-direct {v14, v15, v10, v3, v4}, Lcom/mastercard/terminalsdk/objects/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v14, Lcom/mastercard/terminalsdk/objects/TransactionType;->TRANSACTION_TYPE_TRANSFER:Lcom/mastercard/terminalsdk/objects/TransactionType;

    new-instance v3, Lcom/mastercard/terminalsdk/objects/TransactionType;

    const-string v15, "TRANSACTION_TYPE_50"

    const/16 v10, 0xb

    const/16 v2, 0x50

    invoke-direct {v3, v15, v10, v2, v4}, Lcom/mastercard/terminalsdk/objects/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/mastercard/terminalsdk/objects/TransactionType;->TRANSACTION_TYPE_50:Lcom/mastercard/terminalsdk/objects/TransactionType;

    new-instance v2, Lcom/mastercard/terminalsdk/objects/TransactionType;

    const-string v15, "TRANSACTION_TYPE_ADMINISTRATIVE"

    const/16 v10, 0xc

    move-object/from16 v16, v3

    const/16 v3, 0x93

    invoke-direct {v2, v15, v10, v3, v4}, Lcom/mastercard/terminalsdk/objects/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/mastercard/terminalsdk/objects/TransactionType;->TRANSACTION_TYPE_ADMINISTRATIVE:Lcom/mastercard/terminalsdk/objects/TransactionType;

    new-instance v3, Lcom/mastercard/terminalsdk/objects/TransactionType;

    const-string v15, "TRANSACTION_TYPE_PINUNBLOCK"

    const/16 v10, 0xd

    move-object/from16 v17, v2

    const/16 v2, 0x91

    invoke-direct {v3, v15, v10, v2, v4}, Lcom/mastercard/terminalsdk/objects/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/mastercard/terminalsdk/objects/TransactionType;->TRANSACTION_TYPE_PINUNBLOCK:Lcom/mastercard/terminalsdk/objects/TransactionType;

    new-instance v2, Lcom/mastercard/terminalsdk/objects/TransactionType;

    const-string v15, "TRANSACTION_TYPE_PAYMENT"

    const/16 v10, 0xe

    move-object/from16 v18, v3

    const/16 v3, 0x28

    invoke-direct {v2, v15, v10, v3, v4}, Lcom/mastercard/terminalsdk/objects/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/mastercard/terminalsdk/objects/TransactionType;->TRANSACTION_TYPE_PAYMENT:Lcom/mastercard/terminalsdk/objects/TransactionType;

    new-instance v3, Lcom/mastercard/terminalsdk/objects/TransactionType;

    const-string v15, "TRANSACTION_TYPE_PINCHANGE"

    const/16 v10, 0xf

    move-object/from16 v19, v2

    const/16 v2, 0x92

    invoke-direct {v3, v15, v10, v2, v4}, Lcom/mastercard/terminalsdk/objects/TransactionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/mastercard/terminalsdk/objects/TransactionType;->TRANSACTION_TYPE_PINCHANGE:Lcom/mastercard/terminalsdk/objects/TransactionType;

    const/16 v2, 0x10

    new-array v2, v2, [Lcom/mastercard/terminalsdk/objects/TransactionType;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v5, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v11, v2, v0

    const/4 v0, 0x6

    aput-object v13, v2, v0

    const/4 v0, 0x7

    aput-object v12, v2, v0

    const/16 v0, 0x8

    aput-object v9, v2, v0

    const/16 v0, 0x9

    aput-object v7, v2, v0

    const/16 v0, 0xa

    aput-object v14, v2, v0

    const/16 v0, 0xb

    aput-object v16, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v18, v2, v0

    const/16 v0, 0xe

    aput-object v19, v2, v0

    aput-object v3, v2, v10

    sput-object v2, Lcom/mastercard/terminalsdk/objects/TransactionType;->b:[Lcom/mastercard/terminalsdk/objects/TransactionType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mastercard/terminalsdk/objects/TransactionType;->d:Ljava/util/Map;

    const-class v0, Lcom/mastercard/terminalsdk/objects/TransactionType;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mastercard/terminalsdk/objects/TransactionType;

    sget-object v2, Lcom/mastercard/terminalsdk/objects/TransactionType;->d:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/objects/TransactionType;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/mastercard/terminalsdk/objects/TransactionType;->e:Ljava/lang/String;

    iput p3, p0, Lcom/mastercard/terminalsdk/objects/TransactionType;->c:I

    return-void
.end method

.method public static get(I)Lcom/mastercard/terminalsdk/objects/TransactionType;
    .locals 1

    sget-object v0, Lcom/mastercard/terminalsdk/objects/TransactionType;->d:Ljava/util/Map;

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/objects/TransactionType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/objects/TransactionType;
    .locals 1

    const-class v0, Lcom/mastercard/terminalsdk/objects/TransactionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/objects/TransactionType;

    return-object p0
.end method

.method public static values()[Lcom/mastercard/terminalsdk/objects/TransactionType;
    .locals 1

    sget-object v0, Lcom/mastercard/terminalsdk/objects/TransactionType;->b:[Lcom/mastercard/terminalsdk/objects/TransactionType;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/objects/TransactionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/objects/TransactionType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/mastercard/terminalsdk/objects/TransactionType;->c:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteToHexString(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/TransactionType;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getIntCode()I
    .locals 1

    iget v0, p0, Lcom/mastercard/terminalsdk/objects/TransactionType;->c:I

    return v0
.end method
