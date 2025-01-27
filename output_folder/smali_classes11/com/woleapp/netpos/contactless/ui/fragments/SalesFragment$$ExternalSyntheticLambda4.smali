.class public final synthetic Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/net/Socket;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Ljava/net/Socket;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda4;->f$0:Ljava/net/Socket;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda4;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda4;->f$0:Ljava/net/Socket;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda4;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1, v2}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->$r8$lambda$qpYaCSg8mbSWz-qBFarrLwnEvNo(Ljava/net/Socket;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
