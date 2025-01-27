.class public Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_MODE_AMOUNT_KNOW_BEFORE_CVM:Z = false

.field public static final IS_MODE_ENABLE_ENTRYPOINT:Z = true

.field public static final IS_MODE_FORCE_ONLINE:Z = false

.field public static final IS_MODE_SIMULATE_OFFLINESERVER:Z = false


# instance fields
.field private final amount:Ljava/math/BigDecimal;

.field private final amountOther:Ljava/math/BigDecimal;

.field private final balanceAfter:Ljava/math/BigDecimal;

.field private final balanceBefore:Ljava/math/BigDecimal;

.field private final cardInteractionWaitingTime:I

.field private final categoryCode:Ljava/lang/String;

.field private final currencyCode:Lcom/neovisionaries/i18n/CurrencyCode;

.field private final ledDelayEnable:Z

.field private final merchantData:Ljava/lang/String;

.field private final transactionType:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters$1;

    invoke-direct {v0}, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters$1;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;BLcom/neovisionaries/i18n/CurrencyCode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->cardInteractionWaitingTime:I

    iput-object p2, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->amount:Ljava/math/BigDecimal;

    iput-object p3, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->amountOther:Ljava/math/BigDecimal;

    iput-object p4, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->balanceBefore:Ljava/math/BigDecimal;

    iput-object p5, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->balanceAfter:Ljava/math/BigDecimal;

    iput-byte p6, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->transactionType:B

    iput-object p7, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->currencyCode:Lcom/neovisionaries/i18n/CurrencyCode;

    iput-object p8, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->categoryCode:Ljava/lang/String;

    iput-object p9, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->merchantData:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->ledDelayEnable:Z

    return-void
.end method

.method public constructor <init>(ILjava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;BLcom/neovisionaries/i18n/CurrencyCode;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->cardInteractionWaitingTime:I

    iput-object p2, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->amount:Ljava/math/BigDecimal;

    iput-object p3, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->amountOther:Ljava/math/BigDecimal;

    iput-object p4, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->balanceBefore:Ljava/math/BigDecimal;

    iput-object p5, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->balanceAfter:Ljava/math/BigDecimal;

    iput-byte p6, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->transactionType:B

    iput-object p7, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->currencyCode:Lcom/neovisionaries/i18n/CurrencyCode;

    iput-object p8, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->categoryCode:Ljava/lang/String;

    iput-object p9, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->merchantData:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->ledDelayEnable:Z

    return-void
.end method

.method public constructor <init>(ILjava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Lcom/alcineo/transaction/TransactionType;Lcom/neovisionaries/i18n/CurrencyCode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->cardInteractionWaitingTime:I

    iput-object p2, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->amount:Ljava/math/BigDecimal;

    iput-object p3, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->amountOther:Ljava/math/BigDecimal;

    iput-object p4, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->balanceBefore:Ljava/math/BigDecimal;

    iput-object p5, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->balanceAfter:Ljava/math/BigDecimal;

    invoke-virtual {p6}, Lcom/alcineo/transaction/TransactionType;->getValue()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->transactionType:B

    iput-object p7, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->currencyCode:Lcom/neovisionaries/i18n/CurrencyCode;

    iput-object p8, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->categoryCode:Ljava/lang/String;

    iput-object p9, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->merchantData:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->ledDelayEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->cardInteractionWaitingTime:I

    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    iput-object v0, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->amount:Ljava/math/BigDecimal;

    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    iput-object v0, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->amountOther:Ljava/math/BigDecimal;

    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    iput-object v0, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->balanceBefore:Ljava/math/BigDecimal;

    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    iput-object v0, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->balanceAfter:Ljava/math/BigDecimal;

    const-class v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->transactionType:B

    const-class v0, Lcom/neovisionaries/i18n/CurrencyCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neovisionaries/i18n/CurrencyCode;

    iput-object v0, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->currencyCode:Lcom/neovisionaries/i18n/CurrencyCode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->categoryCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->merchantData:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->ledDelayEnable:Z

    return-void
.end method


# virtual methods
.method public native describeContents()I
.end method

.method public native getAmount()Ljava/math/BigDecimal;
.end method

.method public native getAmountOther()Ljava/math/BigDecimal;
.end method

.method public native getBalanceAfter()Ljava/math/BigDecimal;
.end method

.method public native getBalanceBefore()Ljava/math/BigDecimal;
.end method

.method public native getCardInteractionWaitingTime()I
.end method

.method public native getCategoryCode()Ljava/lang/String;
.end method

.method public native getCurrencyCode()Lcom/neovisionaries/i18n/CurrencyCode;
.end method

.method public native getMerchantData()Ljava/lang/String;
.end method

.method public native getType()B
.end method

.method public native isLedDelayEnable()Z
.end method

.method public native writeToParcel(Landroid/os/Parcel;I)V
.end method
