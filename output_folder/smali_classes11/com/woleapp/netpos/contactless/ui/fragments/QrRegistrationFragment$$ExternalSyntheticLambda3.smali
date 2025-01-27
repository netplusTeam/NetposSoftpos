.class public final synthetic Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$$ExternalSyntheticLambda3;->f$0:Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$$ExternalSyntheticLambda3;->f$0:Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;

    check-cast p1, Landroidx/paging/PagedList;

    invoke-static {v0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->$r8$lambda$CfdpATjCxEGN8yTX-k_qeYPiIBs(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;Landroidx/paging/PagedList;)V

    return-void
.end method
