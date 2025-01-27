.class final Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$onCreateView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "QRFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/woleapp/netpos/contactless/model/Service;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/woleapp/netpos/contactless/model/Service;",
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


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 46
    move-object v0, p1

    check-cast v0, Lcom/woleapp/netpos/contactless/model/Service;

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$onCreateView$1;->invoke(Lcom/woleapp/netpos/contactless/model/Service;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lcom/woleapp/netpos/contactless/model/Service;)V
    .locals 2
    .param p1, "it"    # Lcom/woleapp/netpos/contactless/model/Service;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/Service;->getId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->access$showZenithQrDialog(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/Service;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;->access$showAmountDialog(Lcom/woleapp/netpos/contactless/ui/fragments/QRFragment;I)V

    .line 52
    :goto_0
    return-void
.end method
