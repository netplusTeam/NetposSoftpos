.class final Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment$otherBanks$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NewOrExistingFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;->otherBanks()V
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment$otherBanks$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment$otherBanks$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment$otherBanks$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;

    .line 173
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 174
    nop

    .line 175
    nop

    .line 172
    const v2, 0x7f0a0071

    const-string v3, "RegisterOTP Fragment"

    invoke-virtual {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;->showFragment(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    .line 177
    return-void
.end method
