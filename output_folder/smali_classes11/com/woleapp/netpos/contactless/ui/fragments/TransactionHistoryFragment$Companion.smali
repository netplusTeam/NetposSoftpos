.class public final Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$Companion;
.super Ljava/lang/Object;
.source "TransactionHistoryFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$Companion;",
        "",
        "()V",
        "newInstance",
        "Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;",
        "action",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$Companion;Ljava/lang/String;ILjava/lang/Object;)Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;
    .locals 0

    .line 40
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Default"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment$Companion;->newInstance(Ljava/lang/String;)Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;)Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;
    .locals 7
    .param p1, "action"    # Ljava/lang/String;

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;-><init>()V

    move-object v1, v0

    .local v1, "$this$newInstance_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;
    const/4 v2, 0x0

    .line 42
    .local v2, "$i$a$-apply-TransactionHistoryFragment$Companion$newInstance$1":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v4, v3

    .local v4, "$this$newInstance_u24lambda_u2d1_u24lambda_u2d0":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 43
    .local v5, "$i$a$-apply-TransactionHistoryFragment$Companion$newInstance$1$1":I
    invoke-static {v1, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->access$setGlobalAction$p(Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;Ljava/lang/String;)V

    .line 44
    const-string v6, "history_action"

    invoke-virtual {v4, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    nop

    .line 42
    .end local v4    # "$this$newInstance_u24lambda_u2d1_u24lambda_u2d0":Landroid/os/Bundle;
    .end local v5    # "$i$a$-apply-TransactionHistoryFragment$Companion$newInstance$1$1":I
    invoke-virtual {v1, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    nop

    .line 41
    .end local v1    # "$this$newInstance_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/ui/fragments/TransactionHistoryFragment;
    .end local v2    # "$i$a$-apply-TransactionHistoryFragment$Companion$newInstance$1":I
    nop

    .line 46
    return-object v0
.end method
