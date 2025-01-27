.class public Lcom/alcineo/softpos/inolaec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alcineo/softpos/inolaec$acileon;
    }
.end annotation


# static fields
.field private static final lneaico:Ljava/lang/String; = "inolaec"

.field private static final ocleina:I


# instance fields
.field private final acileon:Lcom/alcineo/softpos/aenciol;

.field private final aoleinc:Lcom/alcineo/softpos/loaicen;

.field private enolcai:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;"
        }
    .end annotation
.end field

.field private nacieol:Lcom/alcineo/softpos/payment/api/interfaces/TransactionEventListener;

.field private final noaceli:Lcom/alcineo/softpos/nacielo;

.field private noelcai:Z

.field private ocenlai:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;


# direct methods
.method public static synthetic $r8$lambda$ABRHS-zvk4BUOSKJsc8OhERBpeg(Lcom/alcineo/softpos/inolaec;Lcom/alcineo/softpos/aceinlo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/inolaec;->acileon(Lcom/alcineo/softpos/aceinlo;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/loaicen;Lcom/alcineo/softpos/aenciol;Lcom/alcineo/softpos/ioecnla;Lcom/alcineo/softpos/nacielo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alcineo/softpos/inolaec;->acileon:Lcom/alcineo/softpos/aenciol;

    iput-object p1, p0, Lcom/alcineo/softpos/inolaec;->aoleinc:Lcom/alcineo/softpos/loaicen;

    iput-object p4, p0, Lcom/alcineo/softpos/inolaec;->noaceli:Lcom/alcineo/softpos/nacielo;

    invoke-direct {p0}, Lcom/alcineo/softpos/inolaec;->enolcai()V

    new-instance p4, Lcom/alcineo/softpos/inolaec$acileon;

    invoke-direct {p4, p0}, Lcom/alcineo/softpos/inolaec$acileon;-><init>(Lcom/alcineo/softpos/inolaec;)V

    invoke-virtual {p2, p4}, Lcom/alcineo/softpos/aenciol;->acileon(Lcom/alcineo/softpos/laiocne;)V

    invoke-virtual {p3}, Lcom/alcineo/softpos/ioecnla;->noaceli()V

    invoke-virtual {p3, p4}, Lcom/alcineo/softpos/ioecnla;->acileon(Lcom/alcineo/softpos/aieconl;)V

    invoke-virtual {p1}, Lcom/alcineo/softpos/loaicen;->aoleinc()Lcom/alcineo/softpos/aleonci;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alcineo/softpos/aleonci;->aoleinc()Lcom/alcineo/softpos/lniaeoc;

    move-result-object p2

    sget-object p3, Lcom/alcineo/softpos/aceinlo;->enolcai:Lcom/alcineo/softpos/oalecni;

    const/16 p4, 0x80

    invoke-virtual {p2, p4, p3}, Lcom/alcineo/softpos/lniaeoc;->acileon(ILcom/alcineo/softpos/oalecni;)V

    new-instance p2, Lcom/alcineo/softpos/inolaec$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/alcineo/softpos/inolaec$$ExternalSyntheticLambda0;-><init>(Lcom/alcineo/softpos/inolaec;)V

    invoke-virtual {p1}, Lcom/alcineo/softpos/loaicen;->aoleinc()Lcom/alcineo/softpos/aleonci;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alcineo/softpos/aleonci;->aoleinc()Lcom/alcineo/softpos/lniaeoc;

    move-result-object p1

    const-class p3, Lcom/alcineo/softpos/aceinlo;

    invoke-virtual {p1, p3, p2}, Lcom/alcineo/softpos/lniaeoc;->acileon(Ljava/lang/Class;Lcom/alcineo/softpos/ociealn;)V

    return-void
.end method

.method public static native synthetic acileon(Lcom/alcineo/softpos/inolaec;Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;)Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;
.end method

.method public static native synthetic acileon()Ljava/lang/String;
.end method

.method public static native synthetic acileon(Lcom/alcineo/softpos/inolaec;)Ljava/util/List;
.end method

.method public static native synthetic acileon(Lcom/alcineo/softpos/inolaec;Ljava/util/List;)Ljava/util/List;
.end method

.method private native acileon(I)V
.end method

.method private acileon(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    new-instance v0, Lcom/alcineo/softpos/payment/observer/LibraryLifecycleObserver;

    invoke-direct {v0, p0}, Lcom/alcineo/softpos/payment/observer/LibraryLifecycleObserver;-><init>(Lcom/alcineo/softpos/inolaec;)V

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private native acileon(Lcom/alcineo/softpos/aceinlo;)V
.end method

.method private acileon(Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;)V
    .locals 3

    iget-object v0, p0, Lcom/alcineo/softpos/inolaec;->acileon:Lcom/alcineo/softpos/aenciol;

    invoke-virtual {p1}, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alcineo/softpos/aenciol;->acileon(Ljava/math/BigDecimal;)V

    iget-object v0, p0, Lcom/alcineo/softpos/inolaec;->acileon:Lcom/alcineo/softpos/aenciol;

    invoke-virtual {p1}, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->getAmountOther()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alcineo/softpos/aenciol;->aoleinc(Ljava/math/BigDecimal;)V

    iget-object v0, p0, Lcom/alcineo/softpos/inolaec;->acileon:Lcom/alcineo/softpos/aenciol;

    invoke-virtual {p1}, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->getBalanceBefore()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alcineo/softpos/aenciol;->enolcai(Ljava/math/BigDecimal;)V

    iget-object v0, p0, Lcom/alcineo/softpos/inolaec;->acileon:Lcom/alcineo/softpos/aenciol;

    invoke-virtual {p1}, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->getBalanceAfter()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alcineo/softpos/aenciol;->noaceli(Ljava/math/BigDecimal;)V

    iget-object v0, p0, Lcom/alcineo/softpos/inolaec;->acileon:Lcom/alcineo/softpos/aenciol;

    invoke-virtual {p1}, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->getCategoryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/alcineo/softpos/aenciol;->aoleinc(B)V

    iget-object v0, p0, Lcom/alcineo/softpos/inolaec;->acileon:Lcom/alcineo/softpos/aenciol;

    invoke-virtual {p1}, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->getType()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alcineo/softpos/aenciol;->noaceli(B)V

    iget-object v0, p0, Lcom/alcineo/softpos/inolaec;->acileon:Lcom/alcineo/softpos/aenciol;

    invoke-virtual {p1}, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->getCurrencyCode()Lcom/neovisionaries/i18n/CurrencyCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neovisionaries/i18n/CurrencyCode;->getNumeric()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alcineo/softpos/aenciol;->acileon(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alcineo/softpos/inolaec;->acileon:Lcom/alcineo/softpos/aenciol;

    invoke-virtual {p1}, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->getCurrencyCode()Lcom/neovisionaries/i18n/CurrencyCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neovisionaries/i18n/CurrencyCode;->getMinorUnit()I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alcineo/softpos/aenciol;->acileon(Ljava/lang/Byte;)V

    iget-object v0, p0, Lcom/alcineo/softpos/inolaec;->acileon:Lcom/alcineo/softpos/aenciol;

    invoke-virtual {p1}, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;->getMerchantData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alcineo/softpos/aenciol;->aoleinc(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alcineo/softpos/inolaec;->acileon:Lcom/alcineo/softpos/aenciol;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alcineo/softpos/aenciol;->aoleinc(Z)V

    iget-object p1, p0, Lcom/alcineo/softpos/inolaec;->acileon:Lcom/alcineo/softpos/aenciol;

    invoke-virtual {p1, v2}, Lcom/alcineo/softpos/aenciol;->noaceli(Z)V

    iget-object p1, p0, Lcom/alcineo/softpos/inolaec;->acileon:Lcom/alcineo/softpos/aenciol;

    invoke-virtual {p1, v2}, Lcom/alcineo/softpos/aenciol;->enolcai(Z)V

    iget-object p1, p0, Lcom/alcineo/softpos/inolaec;->acileon:Lcom/alcineo/softpos/aenciol;

    invoke-virtual {p1, v2}, Lcom/alcineo/softpos/aenciol;->acileon(Z)V

    return-void
.end method

.method private native acileon(Z)V
.end method

.method public static native synthetic acileon(Lcom/alcineo/softpos/inolaec;Z)Z
.end method

.method public static native synthetic aoleinc(Lcom/alcineo/softpos/inolaec;)Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;
.end method

.method public static native synthetic enolcai(Lcom/alcineo/softpos/inolaec;)Lcom/alcineo/softpos/loaicen;
.end method

.method private enolcai()V
    .locals 3

    iget-object v0, p0, Lcom/alcineo/softpos/inolaec;->aoleinc:Lcom/alcineo/softpos/loaicen;

    invoke-virtual {v0}, Lcom/alcineo/softpos/loaicen;->aoleinc()Lcom/alcineo/softpos/aleonci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alcineo/softpos/aleonci;->aoleinc()Lcom/alcineo/softpos/lniaeoc;

    move-result-object v0

    iget-object v1, p0, Lcom/alcineo/softpos/inolaec;->aoleinc:Lcom/alcineo/softpos/loaicen;

    invoke-virtual {v1}, Lcom/alcineo/softpos/loaicen;->aoleinc()Lcom/alcineo/softpos/aleonci;

    move-result-object v1

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alcineo/administrative/commands/SetDateTime;->getExecutor(Lcom/alcineo/softpos/lniaeoc;Lcom/alcineo/softpos/coalnie;Ljava/util/Date;)Lcom/alcineo/softpos/alineco;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alcineo/softpos/oaeclin;->aoleinc()V

    return-void
.end method

.method public static native synthetic noaceli(Lcom/alcineo/softpos/inolaec;)Lcom/alcineo/softpos/payment/api/interfaces/TransactionEventListener;
.end method


# virtual methods
.method public native acileon(Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;Lcom/alcineo/softpos/payment/api/interfaces/TransactionEventListener;Landroidx/lifecycle/LifecycleOwner;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/payment/error/TransactionException;
        }
    .end annotation
.end method

.method public native aoleinc()Z
.end method

.method public native noaceli()Z
.end method
