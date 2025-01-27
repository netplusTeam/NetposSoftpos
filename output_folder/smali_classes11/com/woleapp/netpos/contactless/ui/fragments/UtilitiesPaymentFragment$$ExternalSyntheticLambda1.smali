.class public final synthetic Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

.field public final synthetic f$1:Lcom/woleapp/netpos/contactless/databinding/DialogBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;Lcom/woleapp/netpos/contactless/databinding/DialogBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$$ExternalSyntheticLambda1;->f$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$$ExternalSyntheticLambda1;->f$1:Lcom/woleapp/netpos/contactless/databinding/DialogBinding;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$$ExternalSyntheticLambda1;->f$0:Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment$$ExternalSyntheticLambda1;->f$1:Lcom/woleapp/netpos/contactless/databinding/DialogBinding;

    check-cast p1, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-static {v0, v1, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;->$r8$lambda$Ad9UlI04-JYUALkUGN96HTwLHx8(Lcom/woleapp/netpos/contactless/ui/fragments/UtilitiesPaymentFragment;Lcom/woleapp/netpos/contactless/databinding/DialogBinding;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method
