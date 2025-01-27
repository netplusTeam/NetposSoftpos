.class public final Lcom/woleapp/netpos/contactless/viewmodels/DashBoardViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "DashBoardViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/viewmodels/DashBoardViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "transactionResponseDao",
        "Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;",
        "setDao",
        "",
        "dao",
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
.field private transactionResponseDao:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public final setDao(Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;)V
    .locals 1
    .param p1, "dao"    # Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    const-string v0, "dao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/DashBoardViewModel;->transactionResponseDao:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    .line 12
    return-void
.end method
