.class final Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$onViewCreated$3$onTextChanged$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RegistrationOTPFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$onViewCreated$3;->onTextChanged(Ljava/lang/CharSequence;III)V
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$onViewCreated$3$onTextChanged$1$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$onViewCreated$3$onTextChanged$1$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$onViewCreated$3$onTextChanged$1$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    .line 133
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 134
    nop

    .line 135
    nop

    .line 132
    const v2, 0x7f0a0071

    const-string v3, "Register Existing Customer Fragment"

    invoke-virtual {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->showFragment(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment$onViewCreated$3$onTextChanged$1$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/RegistrationOTPFragment;)Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->clearOTPResponseLiveData()V

    .line 138
    return-void
.end method
