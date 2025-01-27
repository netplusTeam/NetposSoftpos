.class public final synthetic Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/woleapp/netpos/contactless/model/TokenResp;

    invoke-static {p1}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->$r8$lambda$R0qVKb7uMy2qt_h7ZZg49pa-QN0(Lcom/woleapp/netpos/contactless/model/TokenResp;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
