.class final Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "TransactionProcessorWrapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/gateway/TransactionProcessorWrapper;->processIswTransaction(Lcom/danbamitale/epmslib/entities/CardData;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "Lio/reactivex/SingleSource<",
        "+",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a*\u0012\u000e\u0008\u0001\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0014\u0012\u000e\u0008\u0001\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/SingleSource;",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "kotlin.jvm.PlatformType",
        "it",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isw/gateway/TransactionProcessorWrapper;


# direct methods
.method constructor <init>(Lcom/isw/gateway/TransactionProcessorWrapper;)V
    .locals 1

    iput-object p1, p0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$3;->this$0:Lcom/isw/gateway/TransactionProcessorWrapper;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/SingleSource;
    .locals 2
    .param p1, "it"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ")",
            "Lio/reactivex/SingleSource<",
            "+",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attempt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$3;->this$0:Lcom/isw/gateway/TransactionProcessorWrapper;

    invoke-static {v1}, Lcom/isw/gateway/TransactionProcessorWrapper;->access$getAttempt$p(Lcom/isw/gateway/TransactionProcessorWrapper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 204
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "failed on isw but can\'t re-route to nibss"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 205
    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    check-cast v0, Lio/reactivex/SingleSource;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 202
    move-object v0, p1

    check-cast v0, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-virtual {p0, v0}, Lcom/isw/gateway/TransactionProcessorWrapper$processIswTransaction$1$3;->invoke(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/SingleSource;

    move-result-object v0

    return-object v0
.end method
