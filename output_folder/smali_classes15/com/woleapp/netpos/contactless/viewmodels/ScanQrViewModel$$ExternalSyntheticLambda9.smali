.class public final synthetic Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda9;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel$$ExternalSyntheticLambda9;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    check-cast p1, Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->$r8$lambda$TCdbwW9OdmUVfu8FP3XuZSrZPbE(Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;Ljava/lang/Throwable;)V

    return-void
.end method
