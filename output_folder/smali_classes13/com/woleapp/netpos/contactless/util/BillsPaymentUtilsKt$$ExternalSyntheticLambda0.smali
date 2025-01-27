.class public final synthetic Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/network/StormApiService;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/network/StormApiService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt$$ExternalSyntheticLambda0;->f$0:Lcom/woleapp/netpos/contactless/network/StormApiService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt$$ExternalSyntheticLambda0;->f$0:Lcom/woleapp/netpos/contactless/network/StormApiService;

    check-cast p1, Lcom/woleapp/netpos/contactless/model/TokenResp;

    invoke-static {v0, p1}, Lcom/woleapp/netpos/contactless/util/BillsPaymentUtilsKt;->$r8$lambda$cYd9f3G6o5TmDtvQqT454nUtkvA(Lcom/woleapp/netpos/contactless/network/StormApiService;Lcom/woleapp/netpos/contactless/model/TokenResp;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
