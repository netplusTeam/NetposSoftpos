.class public final synthetic Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda5;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda5;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    check-cast p1, Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->$r8$lambda$DrewHrCTBOk_q_HLJEYtht6NHWM(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;Ljava/lang/Throwable;)V

    return-void
.end method
