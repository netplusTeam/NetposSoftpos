.class public Lcom/alcineo/softpos/aoceiln;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private acileon:Ljava/util/concurrent/CountDownLatch;

.field private aoleinc:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field private enolcai:Ljava/lang/Throwable;

.field private noaceli:Z


# direct methods
.method public static synthetic $r8$lambda$AN2TXFP0nSM1fBSAFq_7CU7vbpY(Lcom/alcineo/softpos/aoceiln;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/aoceiln;->acileon(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ophD6YhCdLa4XWADd8yWreFP-ac(Lcom/alcineo/softpos/aoceiln;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/aoceiln;->acileon(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zLewtZ1DPA-3HRO64vRmXjR9vOI(Lcom/alcineo/softpos/aoceiln;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/aoceiln;->aoleinc(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native synthetic acileon(Ljava/lang/Object;)V
.end method

.method private native acileon(Ljava/lang/Throwable;)V
.end method

.method private native synthetic aoleinc(Ljava/lang/Object;)V
.end method


# virtual methods
.method public acileon(Lcom/alcineo/softpos/alineco;ILjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/alineco<",
            "**>;I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/payment/error/ExecutorException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alcineo/softpos/aoceiln;->noaceli:Z

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/alcineo/softpos/aoceiln;->acileon:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1, p2, p3}, Lcom/alcineo/softpos/alineco;->acileon(ILjava/util/concurrent/TimeUnit;)Lcom/alcineo/softpos/alineco;

    new-instance p2, Lcom/alcineo/softpos/aoceiln$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/alcineo/softpos/aoceiln$$ExternalSyntheticLambda0;-><init>(Lcom/alcineo/softpos/aoceiln;)V

    invoke-virtual {p1, p2}, Lcom/alcineo/softpos/oaeclin;->acileon(Lcom/alcineo/softpos/oaeclin$acileon;)Lcom/alcineo/softpos/oaeclin;

    new-instance p2, Lcom/alcineo/softpos/aoceiln$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/alcineo/softpos/aoceiln$$ExternalSyntheticLambda2;-><init>(Lcom/alcineo/softpos/aoceiln;)V

    invoke-virtual {p1, p2}, Lcom/alcineo/softpos/oaeclin;->acileon(Lcom/alcineo/softpos/oaeclin$noaceli;)Lcom/alcineo/softpos/oaeclin;

    invoke-virtual {p1}, Lcom/alcineo/softpos/oaeclin;->aoleinc()V

    :try_start_0
    iget-object p1, p0, Lcom/alcineo/softpos/aoceiln;->acileon:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean p1, p0, Lcom/alcineo/softpos/aoceiln;->noaceli:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/alcineo/softpos/aoceiln;->aoleinc:Ljava/lang/Object;

    return-object p1

    :cond_0
    new-instance p1, Lcom/alcineo/softpos/payment/error/ExecutorException;

    iget-object p2, p0, Lcom/alcineo/softpos/aoceiln;->enolcai:Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Lcom/alcineo/softpos/payment/error/ExecutorException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/alcineo/softpos/payment/error/ExecutorException;

    invoke-direct {p2, p1}, Lcom/alcineo/softpos/payment/error/ExecutorException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public acileon(Lcom/alcineo/softpos/oaeclin;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alcineo/softpos/oaeclin<",
            "*>;)TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/payment/error/ExecutorException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alcineo/softpos/aoceiln;->noaceli:Z

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/alcineo/softpos/aoceiln;->acileon:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Lcom/alcineo/softpos/aoceiln$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/alcineo/softpos/aoceiln$$ExternalSyntheticLambda0;-><init>(Lcom/alcineo/softpos/aoceiln;)V

    invoke-virtual {p1, v0}, Lcom/alcineo/softpos/oaeclin;->acileon(Lcom/alcineo/softpos/oaeclin$acileon;)Lcom/alcineo/softpos/oaeclin;

    new-instance v0, Lcom/alcineo/softpos/aoceiln$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/alcineo/softpos/aoceiln$$ExternalSyntheticLambda1;-><init>(Lcom/alcineo/softpos/aoceiln;)V

    invoke-virtual {p1, v0}, Lcom/alcineo/softpos/oaeclin;->acileon(Lcom/alcineo/softpos/oaeclin$noaceli;)Lcom/alcineo/softpos/oaeclin;

    invoke-virtual {p1}, Lcom/alcineo/softpos/oaeclin;->aoleinc()V

    :try_start_0
    iget-object p1, p0, Lcom/alcineo/softpos/aoceiln;->acileon:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean p1, p0, Lcom/alcineo/softpos/aoceiln;->noaceli:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/alcineo/softpos/aoceiln;->aoleinc:Ljava/lang/Object;

    return-object p1

    :cond_0
    new-instance p1, Lcom/alcineo/softpos/payment/error/ExecutorException;

    iget-object v0, p0, Lcom/alcineo/softpos/aoceiln;->enolcai:Ljava/lang/Throwable;

    invoke-direct {p1, v0}, Lcom/alcineo/softpos/payment/error/ExecutorException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/alcineo/softpos/payment/error/ExecutorException;

    invoke-direct {v0, p1}, Lcom/alcineo/softpos/payment/error/ExecutorException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
