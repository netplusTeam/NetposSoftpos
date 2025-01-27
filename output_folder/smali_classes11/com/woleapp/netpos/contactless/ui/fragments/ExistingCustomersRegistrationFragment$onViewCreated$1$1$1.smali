.class final Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment$onViewCreated$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ExistingCustomersRegistrationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;->onViewCreated$lambda-1(Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;Lcom/woleapp/netpos/contactless/util/Event;)V
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment$onViewCreated$1$1$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment$onViewCreated$1$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment$onViewCreated$1$1$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;

    .line 94
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/LoginFragment;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 95
    nop

    .line 96
    nop

    .line 93
    const v2, 0x7f0a0071

    const-string v3, "Login Fragment"

    invoke-virtual {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;->showFragment(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    .line 98
    return-void
.end method
