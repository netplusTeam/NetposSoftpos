.class public final synthetic Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f$1:Landroid/app/ProgressDialog;

.field public final synthetic f$2:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Landroid/app/ProgressDialog;Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$$ExternalSyntheticLambda27;->f$0:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$$ExternalSyntheticLambda27;->f$1:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$$ExternalSyntheticLambda27;->f$2:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$$ExternalSyntheticLambda27;->f$0:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$$ExternalSyntheticLambda27;->f$1:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$$ExternalSyntheticLambda27;->f$2:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    check-cast p1, Lcom/woleapp/netpos/contactless/model/Vend;

    invoke-static {v0, v1, v2, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;->$r8$lambda$D874NkKXE9LMQf-lziSq4QgJbPc(Lkotlin/jvm/internal/Ref$IntRef;Landroid/app/ProgressDialog;Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;Lcom/woleapp/netpos/contactless/model/Vend;)V

    return-void
.end method
