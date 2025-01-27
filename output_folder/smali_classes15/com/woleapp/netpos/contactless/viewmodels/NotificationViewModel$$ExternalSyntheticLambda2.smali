.class public final synthetic Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel$$ExternalSyntheticLambda2;
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

    check-cast p1, Lretrofit2/Response;

    invoke-static {p1}, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->$r8$lambda$DOaNgPNjNb20TpYTWhtVS9dcA9w(Lretrofit2/Response;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
