.class public final synthetic Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;Lkotlin/jvm/internal/Ref$LongRef;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker$$ExternalSyntheticLambda0;->f$0:Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker$$ExternalSyntheticLambda0;->f$0:Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/CountDownLatch;

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;->$r8$lambda$01COcKTuEnzJoJHf32GjLmP0fWc(Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;Lkotlin/jvm/internal/Ref$LongRef;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Long;Ljava/lang/Throwable;)V

    return-void
.end method
