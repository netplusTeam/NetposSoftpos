.class Lcom/sleepycat/utilint/ActivityCounter$GetStackTraces;
.super Ljava/lang/Object;
.source "ActivityCounter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/utilint/ActivityCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetStackTraces"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/sleepycat/utilint/ActivityCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    const-class v0, Lcom/sleepycat/utilint/ActivityCounter;

    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/utilint/ActivityCounter;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/sleepycat/utilint/ActivityCounter$GetStackTraces;->this$0:Lcom/sleepycat/utilint/ActivityCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/utilint/ActivityCounter;Lcom/sleepycat/utilint/ActivityCounter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/utilint/ActivityCounter;
    .param p2, "x1"    # Lcom/sleepycat/utilint/ActivityCounter$1;

    .line 131
    invoke-direct {p0, p1}, Lcom/sleepycat/utilint/ActivityCounter$GetStackTraces;-><init>(Lcom/sleepycat/utilint/ActivityCounter;)V

    return-void
.end method

.method private dumpThreads()V
    .locals 12

    .line 157
    iget-object v0, p0, Lcom/sleepycat/utilint/ActivityCounter$GetStackTraces;->this$0:Lcom/sleepycat/utilint/ActivityCounter;

    invoke-static {v0}, Lcom/sleepycat/utilint/ActivityCounter;->access$500(Lcom/sleepycat/utilint/ActivityCounter;)I

    move-result v0

    .line 159
    .local v0, "whichDump":I
    iget-object v1, p0, Lcom/sleepycat/utilint/ActivityCounter$GetStackTraces;->this$0:Lcom/sleepycat/utilint/ActivityCounter;

    invoke-static {v1}, Lcom/sleepycat/utilint/ActivityCounter;->access$300(Lcom/sleepycat/utilint/ActivityCounter;)Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Dump "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " --Dumping stack traces for all threads]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v1

    .line 166
    .local v1, "stackTraces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 167
    .local v4, "stme":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 168
    goto :goto_0

    .line 170
    :cond_0
    iget-object v5, p0, Lcom/sleepycat/utilint/ActivityCounter$GetStackTraces;->this$0:Lcom/sleepycat/utilint/ActivityCounter;

    invoke-static {v5}, Lcom/sleepycat/utilint/ActivityCounter;->access$300(Lcom/sleepycat/utilint/ActivityCounter;)Ljava/util/logging/Logger;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 171
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/StackTraceElement;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 172
    .local v8, "ste":Ljava/lang/StackTraceElement;
    iget-object v9, p0, Lcom/sleepycat/utilint/ActivityCounter$GetStackTraces;->this$0:Lcom/sleepycat/utilint/ActivityCounter;

    invoke-static {v9}, Lcom/sleepycat/utilint/ActivityCounter;->access$300(Lcom/sleepycat/utilint/ActivityCounter;)Ljava/util/logging/Logger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "     "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 171
    .end local v8    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 174
    .end local v4    # "stme":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    :cond_1
    goto :goto_0

    .line 176
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/utilint/ActivityCounter$GetStackTraces;->this$0:Lcom/sleepycat/utilint/ActivityCounter;

    invoke-static {v2}, Lcom/sleepycat/utilint/ActivityCounter;->access$300(Lcom/sleepycat/utilint/ActivityCounter;)Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --Thread dump completed]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 177
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 135
    const-string v0, "ThreadDump should have been in progress"

    iget-object v1, p0, Lcom/sleepycat/utilint/ActivityCounter$GetStackTraces;->this$0:Lcom/sleepycat/utilint/ActivityCounter;

    invoke-static {v1}, Lcom/sleepycat/utilint/ActivityCounter;->access$100(Lcom/sleepycat/utilint/ActivityCounter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    return-void

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/utilint/ActivityCounter$GetStackTraces;->this$0:Lcom/sleepycat/utilint/ActivityCounter;

    invoke-static {v1}, Lcom/sleepycat/utilint/ActivityCounter;->access$200(Lcom/sleepycat/utilint/ActivityCounter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/sleepycat/utilint/ActivityCounter$GetStackTraces;->this$0:Lcom/sleepycat/utilint/ActivityCounter;

    invoke-static {v0}, Lcom/sleepycat/utilint/ActivityCounter;->access$300(Lcom/sleepycat/utilint/ActivityCounter;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Unexpected: ActivityCounter stack trace dumper saw threadDumpInProgress flag set."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 142
    return-void

    .line 146
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/utilint/ActivityCounter$GetStackTraces;->this$0:Lcom/sleepycat/utilint/ActivityCounter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/sleepycat/utilint/ActivityCounter;->access$402(Lcom/sleepycat/utilint/ActivityCounter;J)J

    .line 147
    invoke-direct {p0}, Lcom/sleepycat/utilint/ActivityCounter$GetStackTraces;->dumpThreads()V

    .line 148
    iget-object v1, p0, Lcom/sleepycat/utilint/ActivityCounter$GetStackTraces;->this$0:Lcom/sleepycat/utilint/ActivityCounter;

    invoke-static {v1}, Lcom/sleepycat/utilint/ActivityCounter;->access$508(Lcom/sleepycat/utilint/ActivityCounter;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object v1, p0, Lcom/sleepycat/utilint/ActivityCounter$GetStackTraces;->this$0:Lcom/sleepycat/utilint/ActivityCounter;

    invoke-static {v1}, Lcom/sleepycat/utilint/ActivityCounter;->access$200(Lcom/sleepycat/utilint/ActivityCounter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    .line 151
    .local v1, "reset":Z
    if-eqz v1, :cond_2

    .line 152
    .end local v1    # "reset":Z
    nop

    .line 153
    return-void

    .line 151
    .restart local v1    # "reset":Z
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 150
    .end local v1    # "reset":Z
    :catchall_0
    move-exception v1

    iget-object v4, p0, Lcom/sleepycat/utilint/ActivityCounter$GetStackTraces;->this$0:Lcom/sleepycat/utilint/ActivityCounter;

    invoke-static {v4}, Lcom/sleepycat/utilint/ActivityCounter;->access$200(Lcom/sleepycat/utilint/ActivityCounter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    .line 151
    .local v2, "reset":Z
    if-nez v2, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 152
    .end local v2    # "reset":Z
    :cond_3
    throw v1
.end method
