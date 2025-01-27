.class public final synthetic Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda35;->f$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda35;->f$0:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    check-cast p1, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;

    invoke-static {v0, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->$r8$lambda$bDKdg28lWW1jujrTOkbt53ObKyc(Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;)V

    return-void
.end method
