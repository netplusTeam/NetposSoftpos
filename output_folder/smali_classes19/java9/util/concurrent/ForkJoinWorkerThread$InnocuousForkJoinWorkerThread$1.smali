.class final Ljava9/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread$1;
.super Ljava/lang/Object;
.source "ForkJoinWorkerThread.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/ThreadGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 184
    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread$1;->run()Ljava/lang/ThreadGroup;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/ThreadGroup;
    .locals 3

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 187
    .local v0, "group":Ljava/lang/ThreadGroup;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v1

    move-object v2, v1

    .local v2, "p":Ljava/lang/ThreadGroup;
    if-eqz v1, :cond_0

    .line 188
    move-object v0, v2

    goto :goto_0

    .line 189
    .end local v2    # "p":Ljava/lang/ThreadGroup;
    :cond_0
    new-instance v1, Ljava/lang/ThreadGroup;

    const-string v2, "InnocuousForkJoinWorkerThreadGroup"

    invoke-direct {v1, v0, v2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    return-object v1
.end method
