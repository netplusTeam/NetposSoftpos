.class public final synthetic Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Landroidx/lifecycle/LiveData;

.field public final synthetic f$2:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/lifecycle/LiveData;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda36;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda36;->f$1:Landroidx/lifecycle/LiveData;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda36;->f$2:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda36;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda36;->f$1:Landroidx/lifecycle/LiveData;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity$$ExternalSyntheticLambda36;->f$2:Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;->$r8$lambda$gOV2PVyslsm89WEnhOynDTAP3lM(Lkotlin/jvm/functions/Function1;Landroidx/lifecycle/LiveData;Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;Ljava/util/List;)V

    return-void
.end method
