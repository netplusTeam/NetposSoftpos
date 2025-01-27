.class public final Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;
.super Ljava/lang/Object;
.source "TransactionFullDataDto.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\rH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;",
        "Landroid/os/Parcelable;",
        "in",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "transaction",
        "Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;",
        "transactionResult",
        "Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;",
        "(Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;)V",
        "getTransactionResult",
        "()Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;",
        "describeContents",
        "",
        "writeToParcel",
        "",
        "dest",
        "flags",
        "Companion",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto$Companion;


# instance fields
.field private transaction:Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;

.field private final transactionResult:Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;->Companion:Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto$Companion;

    .line 32
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    nop

    .line 14
    const-class v0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;

    .line 15
    const-class v1, Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;-><init>(Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;)V
    .locals 0
    .param p1, "transaction"    # Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;
    .param p2, "transactionResult"    # Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;->transaction:Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;

    .line 10
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;->transactionResult:Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;

    .line 8
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public final getTransactionResult()Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;->transactionResult:Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;->transaction:Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;->transactionResult:Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 26
    return-void
.end method
