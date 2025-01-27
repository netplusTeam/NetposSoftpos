.class public Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transactionEndStatus:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

.field private final transactionOutcomeTlvItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/softpos/payment/model/transaction/TransactionResult$1;

    invoke-direct {v0}, Lcom/alcineo/softpos/payment/model/transaction/TransactionResult$1;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;->transactionOutcomeTlvItems:Ljava/util/List;

    const-class v1, Lcom/alcineo/utils/tlv/TlvItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;->transactionOutcomeTlvItems:Ljava/util/List;

    :goto_0
    const-class v0, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    iput-object p1, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;->transactionEndStatus:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;",
            "Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;->transactionOutcomeTlvItems:Ljava/util/List;

    iput-object p2, p0, Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;->transactionEndStatus:Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;

    return-void
.end method


# virtual methods
.method public native describeContents()I
.end method

.method public native getTransactionEndStatus()Lcom/alcineo/softpos/payment/model/transaction/TransactionEndStatus;
.end method

.method public native getTransactionOutcomeTlvItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;"
        }
    .end annotation
.end method

.method public native writeToParcel(Landroid/os/Parcel;I)V
.end method
