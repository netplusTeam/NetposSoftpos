.class public final synthetic Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt$$ExternalSyntheticLambda1;->f$0:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt$$ExternalSyntheticLambda1;->f$0:Landroidx/lifecycle/MutableLiveData;

    check-cast p1, Lcom/woleapp/netpos/contactless/model/TokenResp;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt;->$r8$lambda$UNgMsJozrawb2UezAeHjw8Rev7U(Landroidx/lifecycle/MutableLiveData;Lcom/woleapp/netpos/contactless/model/TokenResp;Ljava/lang/Throwable;)V

    return-void
.end method
