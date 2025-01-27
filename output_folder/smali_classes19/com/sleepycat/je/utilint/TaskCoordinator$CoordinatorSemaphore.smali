.class Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;
.super Ljava/util/concurrent/Semaphore;
.source "TaskCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/TaskCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoordinatorSemaphore"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "permits"    # I

    .line 717
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    .line 718
    return-void
.end method


# virtual methods
.method revoke(I)V
    .locals 0
    .param p1, "permits"    # I

    .line 726
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;->reducePermits(I)V

    .line 727
    return-void
.end method
