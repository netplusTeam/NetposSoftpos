.class public final synthetic Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda10;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda10;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;

    check-cast p1, Lcom/woleapp/netpos/contactless/model/User;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->$r8$lambda$8Q8hx8VmC2BvpKzaPKB3D__DJWQ(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Lcom/woleapp/netpos/contactless/model/User;Ljava/lang/Throwable;)V

    return-void
.end method
