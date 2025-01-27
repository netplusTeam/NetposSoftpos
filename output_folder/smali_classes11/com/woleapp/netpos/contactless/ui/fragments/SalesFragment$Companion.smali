.class public final Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;
.super Ljava/lang/Object;
.source "SalesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;",
        "",
        "()V",
        "newInstance",
        "Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;",
        "transactionType",
        "Lcom/danbamitale/epmslib/entities/TransactionType;",
        "isVend",
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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;Lcom/danbamitale/epmslib/entities/TransactionType;ZILjava/lang/Object;)Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
    .locals 0

    .line 43
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 44
    sget-object p1, Lcom/danbamitale/epmslib/entities/TransactionType;->PURCHASE:Lcom/danbamitale/epmslib/entities/TransactionType;

    .line 43
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 45
    const/4 p2, 0x0

    .line 43
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$Companion;->newInstance(Lcom/danbamitale/epmslib/entities/TransactionType;Z)Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(Lcom/danbamitale/epmslib/entities/TransactionType;Z)Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
    .locals 8
    .param p1, "transactionType"    # Lcom/danbamitale/epmslib/entities/TransactionType;
    .param p2, "isVend"    # Z

    const-string v0, "transactionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;-><init>()V

    move-object v1, v0

    .local v1, "$this$newInstance_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
    const/4 v2, 0x0

    .line 48
    .local v2, "$i$a$-apply-SalesFragment$Companion$newInstance$1":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v4, v3

    .local v4, "$this$newInstance_u24lambda_u2d1_u24lambda_u2d0":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 49
    .local v5, "$i$a$-apply-SalesFragment$Companion$newInstance$1$1":I
    invoke-virtual {p1}, Lcom/danbamitale/epmslib/entities/TransactionType;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "transaction_type"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v6, "IS_VEND"

    invoke-virtual {v4, v6, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    nop

    .line 48
    .end local v4    # "$this$newInstance_u24lambda_u2d1_u24lambda_u2d0":Landroid/os/Bundle;
    .end local v5    # "$i$a$-apply-SalesFragment$Companion$newInstance$1$1":I
    invoke-virtual {v1, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    nop

    .line 47
    .end local v1    # "$this$newInstance_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;
    .end local v2    # "$i$a$-apply-SalesFragment$Companion$newInstance$1":I
    nop

    .line 52
    return-object v0
.end method
