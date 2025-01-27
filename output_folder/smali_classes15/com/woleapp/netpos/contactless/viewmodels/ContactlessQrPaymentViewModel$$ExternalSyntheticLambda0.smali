.class public final synthetic Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;->$r8$lambda$uVBRZIiRR3BS4S3LXO9dH8keAjY(Lcom/woleapp/netpos/contactless/viewmodels/ContactlessQrPaymentViewModel;Lretrofit2/Response;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
