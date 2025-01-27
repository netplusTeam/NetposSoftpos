.class final Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$checkBalance$disposable$1$2$messageString$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TransactionsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->checkBalance$lambda-26(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;Lcom/danbamitale/epmslib/entities/TransactionResponse;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/danbamitale/epmslib/entities/AccountBalance;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "accountBalance",
        "Lcom/danbamitale/epmslib/entities/AccountBalance;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$checkBalance$disposable$1$2$messageString$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$checkBalance$disposable$1$2$messageString$1;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$checkBalance$disposable$1$2$messageString$1;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$checkBalance$disposable$1$2$messageString$1;->INSTANCE:Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$checkBalance$disposable$1$2$messageString$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/danbamitale/epmslib/entities/AccountBalance;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "accountBalance"    # Lcom/danbamitale/epmslib/entities/AccountBalance;

    const-string v0, "accountBalance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/danbamitale/epmslib/entities/AccountBalance;->getAccountType()Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    invoke-virtual {p1}, Lcom/danbamitale/epmslib/entities/AccountBalance;->getAmount()J

    move-result-wide v1

    const/16 v3, 0x64

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/danbamitale/epmslib/extensions/NumberExtensionsKt;->formatCurrencyAmount$default(Ljava/lang/Number;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 433
    move-object v0, p1

    check-cast v0, Lcom/danbamitale/epmslib/entities/AccountBalance;

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$checkBalance$disposable$1$2$messageString$1;->invoke(Lcom/danbamitale/epmslib/entities/AccountBalance;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
