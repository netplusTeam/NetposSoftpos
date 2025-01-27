.class public Lcom/sleepycat/je/utilint/JETaskCoordinator;
.super Lcom/sleepycat/je/utilint/TaskCoordinator;
.source "JETaskCoordinator.java"


# static fields
.field public static final JE_STORAGE_STATS_TASK:Lcom/sleepycat/je/utilint/TaskCoordinator$Task;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;

    const-string v1, "JENetworkRestore"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/utilint/JETaskCoordinator;->JE_STORAGE_STATS_TASK:Lcom/sleepycat/je/utilint/TaskCoordinator$Task;

    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Logger;Ljava/util/Set;Z)V
    .locals 0
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p3, "active"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Logger;",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/utilint/TaskCoordinator$Task;",
            ">;Z)V"
        }
    .end annotation

    .line 50
    .local p2, "tasks":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/utilint/TaskCoordinator$Task;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/utilint/TaskCoordinator;-><init>(Ljava/util/logging/Logger;Ljava/util/Set;Z)V

    .line 51
    return-void
.end method
