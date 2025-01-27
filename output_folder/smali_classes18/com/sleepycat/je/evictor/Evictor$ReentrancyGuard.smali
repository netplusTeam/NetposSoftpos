.class Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;
.super Ljava/lang/Object;
.source "Evictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/evictor/Evictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReentrancyGuard"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final activeThreads:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Thread;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3249
    const-class v0, Lcom/sleepycat/je/evictor/Evictor;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Logger;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "logger"    # Ljava/util/logging/Logger;

    .line 3254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3255
    iput-object p1, p0, Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 3256
    iput-object p2, p0, Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;->logger:Ljava/util/logging/Logger;

    .line 3257
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;->activeThreads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3258
    return-void
.end method


# virtual methods
.method enter()Z
    .locals 6

    .line 3261
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 3262
    .local v0, "thisThread":Ljava/lang/Thread;
    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;->activeThreads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3274
    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;->activeThreads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3275
    const/4 v1, 0x1

    return v1

    .line 3264
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reentrant call to eviction from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3266
    invoke-static {}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3264
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 3269
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3270
    invoke-static {}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method leave()V
    .locals 2

    .line 3279
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;->activeThreads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3280
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$ReentrancyGuard;->activeThreads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3281
    return-void

    .line 3279
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
