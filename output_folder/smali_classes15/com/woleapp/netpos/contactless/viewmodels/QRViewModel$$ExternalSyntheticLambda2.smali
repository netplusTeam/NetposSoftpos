.class public final synthetic Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$$ExternalSyntheticLambda2;
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

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-static {p1}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->$r8$lambda$c_pclXof0LgKf3fn4MuPzMxjtPw(Lokhttp3/ResponseBody;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
