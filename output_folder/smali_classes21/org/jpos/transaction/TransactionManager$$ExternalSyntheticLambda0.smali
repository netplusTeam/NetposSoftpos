.class public final synthetic Lorg/jpos/transaction/TransactionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/jpos/transaction/TransactionManager;


# direct methods
.method public synthetic constructor <init>(Lorg/jpos/transaction/TransactionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jpos/transaction/TransactionManager$$ExternalSyntheticLambda0;->f$0:Lorg/jpos/transaction/TransactionManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/jpos/transaction/TransactionManager$$ExternalSyntheticLambda0;->f$0:Lorg/jpos/transaction/TransactionManager;

    invoke-virtual {v0}, Lorg/jpos/transaction/TransactionManager;->lambda$startService$0$org-jpos-transaction-TransactionManager()V

    return-void
.end method
