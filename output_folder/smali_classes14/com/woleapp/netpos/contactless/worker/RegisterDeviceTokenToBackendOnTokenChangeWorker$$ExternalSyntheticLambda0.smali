.class public final synthetic Lcom/woleapp/netpos/contactless/worker/RegisterDeviceTokenToBackendOnTokenChangeWorker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/worker/RegisterDeviceTokenToBackendOnTokenChangeWorker$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/worker/RegisterDeviceTokenToBackendOnTokenChangeWorker$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Lcom/woleapp/netpos/contactless/model/RegisterDeviceTokenResponse;

    invoke-static {v0, p1}, Lcom/woleapp/netpos/contactless/worker/RegisterDeviceTokenToBackendOnTokenChangeWorker;->$r8$lambda$cf4vxHFxLvN6g8KLOtQp00fcbL4(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/woleapp/netpos/contactless/model/RegisterDeviceTokenResponse;)V

    return-void
.end method
