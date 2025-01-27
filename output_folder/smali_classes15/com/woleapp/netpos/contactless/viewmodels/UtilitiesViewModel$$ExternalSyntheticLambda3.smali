.class public final synthetic Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

.field public final synthetic f$1:Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda3;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda3;->f$1:Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda3;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda3;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda3;->f$1:Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda3;->f$2:Landroid/content/Context;

    check-cast p1, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->$r8$lambda$D-zioxWgbSBltYKrvXI0tIYGcb4(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;Landroid/content/Context;Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;Ljava/lang/Throwable;)V

    return-void
.end method
