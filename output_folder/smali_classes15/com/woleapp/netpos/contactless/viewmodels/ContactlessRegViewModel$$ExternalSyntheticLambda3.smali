.class public final synthetic Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda3;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda3;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    check-cast p1, Lcom/woleapp/netpos/contactless/model/GeneralResponse;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->$r8$lambda$dgMo3xid3P58M6GzcHdD66L8Z5E(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lcom/woleapp/netpos/contactless/model/GeneralResponse;Ljava/lang/Throwable;)V

    return-void
.end method
