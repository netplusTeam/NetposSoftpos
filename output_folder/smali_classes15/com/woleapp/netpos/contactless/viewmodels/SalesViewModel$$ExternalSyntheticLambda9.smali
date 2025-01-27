.class public final synthetic Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/woleapp/netpos/contactless/model/LogToBackendResponse;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->$r8$lambda$rs05Qkr9wfyxDIdX_WceCf938ww(Lcom/woleapp/netpos/contactless/model/LogToBackendResponse;Ljava/lang/Throwable;)V

    return-void
.end method
