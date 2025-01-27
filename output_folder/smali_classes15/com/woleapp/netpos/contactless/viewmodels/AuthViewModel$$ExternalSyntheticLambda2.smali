.class public final synthetic Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda2;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda2;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    check-cast p1, Lretrofit2/Response;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->$r8$lambda$atCc9VYDFPNwWWlMZW6fjkmXiyw(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Ljava/lang/String;Lretrofit2/Response;Ljava/lang/Throwable;)V

    return-void
.end method
