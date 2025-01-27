.class public final synthetic Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda14;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda14;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    check-cast p1, Lcom/woleapp/netpos/contactless/model/NibssQRResponse;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->$r8$lambda$Y-E17_nKY-9vFXJzzspmjHMD6dQ(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;Lcom/woleapp/netpos/contactless/model/NibssQRResponse;Ljava/lang/Throwable;)V

    return-void
.end method
