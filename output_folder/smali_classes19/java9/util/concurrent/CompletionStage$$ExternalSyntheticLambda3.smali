.class public final synthetic Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava9/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Ljava9/util/concurrent/CompletionStage;

.field public final synthetic f$1:Ljava9/util/function/Function;

.field public final synthetic f$2:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda3;->f$0:Ljava9/util/concurrent/CompletionStage;

    iput-object p2, p0, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda3;->f$1:Ljava9/util/function/Function;

    iput-object p3, p0, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda3;->f$2:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda3;->f$0:Ljava9/util/concurrent/CompletionStage;

    iget-object v1, p0, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda3;->f$1:Ljava9/util/function/Function;

    iget-object v2, p0, Ljava9/util/concurrent/CompletionStage$$ExternalSyntheticLambda3;->f$2:Ljava/util/concurrent/Executor;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, p1, p2}, Ljava9/util/concurrent/CompletionStage;->lambda$exceptionallyComposeAsync$8(Ljava9/util/concurrent/CompletionStage;Ljava9/util/function/Function;Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava9/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method
