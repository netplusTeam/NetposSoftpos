.class public final synthetic Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda4;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda4;->f$0:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    check-cast p1, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-static {v0, v1, p1}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->$r8$lambda$ZXR0Ep4cDnyV05sXQEaEDAXN6rM(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;Landroid/content/Context;Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
