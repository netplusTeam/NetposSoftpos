.class public final synthetic Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/woleapp/netpos/contactless/model/TransactionResponseX;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/TransactionResponseX;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda8;->f$1:Lcom/woleapp/netpos/contactless/model/TransactionResponseX;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda8;->f$1:Lcom/woleapp/netpos/contactless/model/TransactionResponseX;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, v1, v2, p1}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->$r8$lambda$P4gdfKVJ8xFT8FIMcunvlu13R-I(Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/TransactionResponseX;Ljava/lang/String;Lretrofit2/Response;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
