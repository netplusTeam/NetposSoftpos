.class public final synthetic Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda12;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment$$ExternalSyntheticLambda12;->f$0:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-static {v0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;->$r8$lambda$Han2mK9-VFndBB5OFYZJJRWCRRc(Lkotlin/jvm/functions/Function1;Lcom/woleapp/netpos/contactless/util/Event;)V

    return-void
.end method
