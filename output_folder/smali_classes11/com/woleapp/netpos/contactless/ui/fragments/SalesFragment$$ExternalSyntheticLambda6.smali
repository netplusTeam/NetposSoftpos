.class public final synthetic Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda6;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda6;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda6;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment$$ExternalSyntheticLambda6;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/SalesFragment;->$r8$lambda$AIUbc8_g7dzDyzSxTRxelaijfvk(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Long;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
