.class public final Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doMasterCardTransaction$2;
.super Ljava/lang/Object;
.source "NfcCardReaderViewModel.kt"

# interfaces
.implements Lcom/mastercard/terminalsdk/listeners/PaymentDataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->doMasterCardTransaction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005`\u0006H\u0016J!\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "com/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doMasterCardTransaction$2",
        "Lcom/mastercard/terminalsdk/listeners/PaymentDataProvider;",
        "getPaymentDataMap",
        "Ljava/util/HashMap;",
        "",
        "Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;",
        "Lkotlin/collections/HashMap;",
        "setPaymentDataEntry",
        "",
        "p0",
        "p1",
        "(Ljava/lang/Integer;Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;)V",
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


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doMasterCardTransaction$2;->this$0:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPaymentDataMap()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;",
            ">;"
        }
    .end annotation

    .line 522
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 523
    .local v0, "map":Ljava/util/HashMap;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doMasterCardTransaction$2;->this$0:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-object v2, v0

    .local v2, "$this$getPaymentDataMap_u24lambda_u2d0":Ljava/util/HashMap;
    const/4 v3, 0x0

    .line 524
    .local v3, "$i$a$-apply-NfcCardReaderViewModel$doMasterCardTransaction$2$getPaymentDataMap$1":I
    const v4, 0x9f02

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->access$getAmountInBytes$p(Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;)Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    const-string v5, "amountInBytes"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v6

    :cond_0
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    nop

    .line 526
    const v4, 0x9f03

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 527
    invoke-static {v1}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->access$getCashBackAmountInBytes$p(Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;)Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "cashBackAmountInBytes"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v6, v1

    .line 525
    :goto_0
    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const/16 v1, 0x5f2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    const-string v5, "0566"

    invoke-direct {v4, v5}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const v1, 0x9f1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    invoke-direct {v4, v5}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    nop

    .line 523
    .end local v2    # "$this$getPaymentDataMap_u24lambda_u2d0":Ljava/util/HashMap;
    .end local v3    # "$i$a$-apply-NfcCardReaderViewModel$doMasterCardTransaction$2$getPaymentDataMap$1":I
    nop

    .line 532
    return-object v0
.end method

.method public setPaymentDataEntry(Ljava/lang/Integer;Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;)V
    .locals 0
    .param p1, "p0"    # Ljava/lang/Integer;
    .param p2, "p1"    # Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    .line 536
    return-void
.end method
