.class public final synthetic Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;

    check-cast p1, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    invoke-static {v0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;->$r8$lambda$3tcEYZzdL2F0bxb_GQTk1sS1EtE(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V

    return-void
.end method
