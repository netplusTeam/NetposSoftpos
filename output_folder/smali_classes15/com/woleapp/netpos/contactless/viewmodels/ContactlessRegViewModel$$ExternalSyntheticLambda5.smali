.class public final synthetic Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda5;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel$$ExternalSyntheticLambda5;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->$r8$lambda$8AS2jDRdL0ivwNq75SdvsUPp82g(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;Lretrofit2/Response;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
