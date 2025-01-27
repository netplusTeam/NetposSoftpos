.class public final synthetic Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda15;
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

    check-cast p1, Lcom/woleapp/netpos/contactless/model/NibssQRResponse;

    invoke-static {p1}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->$r8$lambda$UZee6ZPQMaMdOdWRch8peOPLcJI(Lcom/woleapp/netpos/contactless/model/NibssQRResponse;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
