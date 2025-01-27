.class public final enum Lcom/dspread/xpos/Service$TransactionType;
.super Ljava/lang/Enum;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransactionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dspread/xpos/Service$TransactionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADMIN:Lcom/dspread/xpos/Service$TransactionType;

.field public static final enum CASH:Lcom/dspread/xpos/Service$TransactionType;

.field public static final enum CASHBACK:Lcom/dspread/xpos/Service$TransactionType;

.field public static final enum CASHDEPOSIT:Lcom/dspread/xpos/Service$TransactionType;

.field public static final enum ECQ_CASH_LOAD:Lcom/dspread/xpos/Service$TransactionType;

.field public static final enum ECQ_CASH_LOAD_VOID:Lcom/dspread/xpos/Service$TransactionType;

.field public static final enum ECQ_DESIGNATED_LOAD:Lcom/dspread/xpos/Service$TransactionType;

.field public static final enum ECQ_INQUIRE_LOG:Lcom/dspread/xpos/Service$TransactionType;

.field public static final enum ECQ_UNDESIGNATED_LOAD:Lcom/dspread/xpos/Service$TransactionType;

.field public static final enum GOODS:Lcom/dspread/xpos/Service$TransactionType;

.field public static final enum INQUIRY:Lcom/dspread/xpos/Service$TransactionType;

.field public static final enum PAYMENT:Lcom/dspread/xpos/Service$TransactionType;

.field public static final enum PBOCLOG:Lcom/dspread/xpos/Service$TransactionType;

.field public static final enum PREAUTH:Lcom/dspread/xpos/Service$TransactionType;

.field public static final enum REFUND:Lcom/dspread/xpos/Service$TransactionType;

.field public static final enum SALE:Lcom/dspread/xpos/Service$TransactionType;

.field public static final enum SERVICES:Lcom/dspread/xpos/Service$TransactionType;

.field public static final enum TRANSFER:Lcom/dspread/xpos/Service$TransactionType;

.field public static final enum UPDATE_PIN:Lcom/dspread/xpos/Service$TransactionType;

.field private static final synthetic a:[Lcom/dspread/xpos/Service$TransactionType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/xpos/Service$TransactionType;

    const-string v1, "GOODS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$TransactionType;->GOODS:Lcom/dspread/xpos/Service$TransactionType;

    .line 2
    new-instance v0, Lcom/dspread/xpos/Service$TransactionType;

    const-string v1, "SERVICES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$TransactionType;->SERVICES:Lcom/dspread/xpos/Service$TransactionType;

    .line 3
    new-instance v0, Lcom/dspread/xpos/Service$TransactionType;

    const-string v1, "CASH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$TransactionType;->CASH:Lcom/dspread/xpos/Service$TransactionType;

    .line 4
    new-instance v0, Lcom/dspread/xpos/Service$TransactionType;

    const-string v1, "CASHBACK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$TransactionType;->CASHBACK:Lcom/dspread/xpos/Service$TransactionType;

    .line 5
    new-instance v0, Lcom/dspread/xpos/Service$TransactionType;

    const-string v1, "INQUIRY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$TransactionType;->INQUIRY:Lcom/dspread/xpos/Service$TransactionType;

    .line 6
    new-instance v0, Lcom/dspread/xpos/Service$TransactionType;

    const-string v1, "TRANSFER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$TransactionType;->TRANSFER:Lcom/dspread/xpos/Service$TransactionType;

    .line 7
    new-instance v0, Lcom/dspread/xpos/Service$TransactionType;

    const-string v1, "ADMIN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$TransactionType;->ADMIN:Lcom/dspread/xpos/Service$TransactionType;

    .line 8
    new-instance v0, Lcom/dspread/xpos/Service$TransactionType;

    const-string v1, "CASHDEPOSIT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$TransactionType;->CASHDEPOSIT:Lcom/dspread/xpos/Service$TransactionType;

    .line 9
    new-instance v0, Lcom/dspread/xpos/Service$TransactionType;

    const-string v1, "PAYMENT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$TransactionType;->PAYMENT:Lcom/dspread/xpos/Service$TransactionType;

    .line 11
    new-instance v0, Lcom/dspread/xpos/Service$TransactionType;

    const-string v1, "PBOCLOG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$TransactionType;->PBOCLOG:Lcom/dspread/xpos/Service$TransactionType;

    .line 12
    new-instance v0, Lcom/dspread/xpos/Service$TransactionType;

    const-string v1, "SALE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$TransactionType;->SALE:Lcom/dspread/xpos/Service$TransactionType;

    .line 13
    new-instance v0, Lcom/dspread/xpos/Service$TransactionType;

    const-string v1, "PREAUTH"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$TransactionType;->PREAUTH:Lcom/dspread/xpos/Service$TransactionType;

    .line 15
    new-instance v0, Lcom/dspread/xpos/Service$TransactionType;

    const-string v1, "ECQ_DESIGNATED_LOAD"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$TransactionType;->ECQ_DESIGNATED_LOAD:Lcom/dspread/xpos/Service$TransactionType;

    .line 16
    new-instance v0, Lcom/dspread/xpos/Service$TransactionType;

    const-string v1, "ECQ_UNDESIGNATED_LOAD"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$TransactionType;->ECQ_UNDESIGNATED_LOAD:Lcom/dspread/xpos/Service$TransactionType;

    .line 17
    new-instance v0, Lcom/dspread/xpos/Service$TransactionType;

    const-string v1, "ECQ_CASH_LOAD"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$TransactionType;->ECQ_CASH_LOAD:Lcom/dspread/xpos/Service$TransactionType;

    .line 18
    new-instance v0, Lcom/dspread/xpos/Service$TransactionType;

    const-string v1, "ECQ_CASH_LOAD_VOID"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$TransactionType;->ECQ_CASH_LOAD_VOID:Lcom/dspread/xpos/Service$TransactionType;

    .line 19
    new-instance v0, Lcom/dspread/xpos/Service$TransactionType;

    const-string v1, "ECQ_INQUIRE_LOG"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$TransactionType;->ECQ_INQUIRE_LOG:Lcom/dspread/xpos/Service$TransactionType;

    .line 20
    new-instance v0, Lcom/dspread/xpos/Service$TransactionType;

    const-string v1, "REFUND"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$TransactionType;->REFUND:Lcom/dspread/xpos/Service$TransactionType;

    .line 21
    new-instance v0, Lcom/dspread/xpos/Service$TransactionType;

    const-string v1, "UPDATE_PIN"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dspread/xpos/Service$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dspread/xpos/Service$TransactionType;->UPDATE_PIN:Lcom/dspread/xpos/Service$TransactionType;

    .line 22
    invoke-static {}, Lcom/dspread/xpos/Service$TransactionType;->a()[Lcom/dspread/xpos/Service$TransactionType;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/Service$TransactionType;->a:[Lcom/dspread/xpos/Service$TransactionType;

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

.method private static synthetic a()[Lcom/dspread/xpos/Service$TransactionType;
    .locals 3

    .line 1
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/dspread/xpos/Service$TransactionType;

    sget-object v1, Lcom/dspread/xpos/Service$TransactionType;->GOODS:Lcom/dspread/xpos/Service$TransactionType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$TransactionType;->SERVICES:Lcom/dspread/xpos/Service$TransactionType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$TransactionType;->CASH:Lcom/dspread/xpos/Service$TransactionType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$TransactionType;->CASHBACK:Lcom/dspread/xpos/Service$TransactionType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$TransactionType;->INQUIRY:Lcom/dspread/xpos/Service$TransactionType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$TransactionType;->TRANSFER:Lcom/dspread/xpos/Service$TransactionType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$TransactionType;->ADMIN:Lcom/dspread/xpos/Service$TransactionType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$TransactionType;->CASHDEPOSIT:Lcom/dspread/xpos/Service$TransactionType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$TransactionType;->PAYMENT:Lcom/dspread/xpos/Service$TransactionType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$TransactionType;->PBOCLOG:Lcom/dspread/xpos/Service$TransactionType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$TransactionType;->SALE:Lcom/dspread/xpos/Service$TransactionType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$TransactionType;->PREAUTH:Lcom/dspread/xpos/Service$TransactionType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$TransactionType;->ECQ_DESIGNATED_LOAD:Lcom/dspread/xpos/Service$TransactionType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$TransactionType;->ECQ_UNDESIGNATED_LOAD:Lcom/dspread/xpos/Service$TransactionType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$TransactionType;->ECQ_CASH_LOAD:Lcom/dspread/xpos/Service$TransactionType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$TransactionType;->ECQ_CASH_LOAD_VOID:Lcom/dspread/xpos/Service$TransactionType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$TransactionType;->ECQ_INQUIRE_LOG:Lcom/dspread/xpos/Service$TransactionType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$TransactionType;->REFUND:Lcom/dspread/xpos/Service$TransactionType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/dspread/xpos/Service$TransactionType;->UPDATE_PIN:Lcom/dspread/xpos/Service$TransactionType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dspread/xpos/Service$TransactionType;
    .locals 1

    .line 1
    const-class v0, Lcom/dspread/xpos/Service$TransactionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dspread/xpos/Service$TransactionType;

    return-object p0
.end method

.method public static values()[Lcom/dspread/xpos/Service$TransactionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->a:[Lcom/dspread/xpos/Service$TransactionType;

    invoke-virtual {v0}, [Lcom/dspread/xpos/Service$TransactionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dspread/xpos/Service$TransactionType;

    return-object v0
.end method
