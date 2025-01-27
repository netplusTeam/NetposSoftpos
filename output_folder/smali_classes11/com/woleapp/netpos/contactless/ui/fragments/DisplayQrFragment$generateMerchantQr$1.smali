.class final Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment$generateMerchantQr$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DisplayQrFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->generateMerchantQr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment$generateMerchantQr$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment$generateMerchantQr$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment$generateMerchantQr$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;

    .line 141
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrResultFragment;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrResultFragment;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 142
    nop

    .line 143
    nop

    .line 140
    const v2, 0x7f0a00e8

    const-string v3, "Display QR Result"

    invoke-virtual {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/DisplayQrFragment;->showFragment(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    .line 145
    return-void
.end method
