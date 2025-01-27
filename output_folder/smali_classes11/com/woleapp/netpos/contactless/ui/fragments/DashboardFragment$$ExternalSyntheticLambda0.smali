.class public final synthetic Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$$ExternalSyntheticLambda0;->f$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$$ExternalSyntheticLambda0;->f$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    check-cast p1, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;

    invoke-static {v0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;->$r8$lambda$Gwx0gZUtxiYdwOuvMZ7O-0pp7gQ(Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;)V

    return-void
.end method
