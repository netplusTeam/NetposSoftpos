.class final Lcom/google/firebase/messaging/TopicsStore;
.super Ljava/lang/Object;
.source "TopicsStore.java"


# static fields
.field private static final DIVIDER_QUEUE_OPERATIONS:Ljava/lang/String; = ","

.field static final KEY_TOPIC_OPERATIONS_QUEUE:Ljava/lang/String; = "topic_operation_queue"

.field static final PREFERENCES:Ljava/lang/String; = "com.google.android.gms.appid"

.field private static topicsStoreWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/messaging/TopicsStore;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final syncExecutor:Ljava/util/concurrent/Executor;

.field private topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;


# direct methods
.method private constructor <init>(Landroid/content/SharedPreferences;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/google/firebase/messaging/TopicsStore;->syncExecutor:Ljava/util/concurrent/Executor;

    .line 51
    iput-object p1, p0, Lcom/google/firebase/messaging/TopicsStore;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 52
    return-void
.end method

.method static declared-synchronized clearCaches()V
    .locals 2

    const-class v0, Lcom/google/firebase/messaging/TopicsStore;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/TopicsStore;->topicsStoreWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    monitor-exit v0

    return-void

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/firebase/messaging/TopicsStore;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    const-class v0, Lcom/google/firebase/messaging/TopicsStore;

    monitor-enter v0

    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, "store":Lcom/google/firebase/messaging/TopicsStore;
    :try_start_0
    sget-object v2, Lcom/google/firebase/messaging/TopicsStore;->topicsStoreWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/messaging/TopicsStore;

    move-object v1, v2

    .line 75
    :cond_0
    if-nez v1, :cond_1

    .line 76
    const-string v2, "com.google.android.gms.appid"

    const/4 v3, 0x0

    .line 77
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 78
    .local v2, "sharedPrefs":Landroid/content/SharedPreferences;
    new-instance v3, Lcom/google/firebase/messaging/TopicsStore;

    invoke-direct {v3, v2, p1}, Lcom/google/firebase/messaging/TopicsStore;-><init>(Landroid/content/SharedPreferences;Ljava/util/concurrent/Executor;)V

    move-object v1, v3

    .line 79
    invoke-direct {v1}, Lcom/google/firebase/messaging/TopicsStore;->initStore()V

    .line 80
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/google/firebase/messaging/TopicsStore;->topicsStoreWeakReference:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v2    # "sharedPrefs":Landroid/content/SharedPreferences;
    :cond_1
    monitor-exit v0

    return-object v1

    .line 69
    .end local v1    # "store":Lcom/google/firebase/messaging/TopicsStore;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized initStore()V
    .locals 4

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "topic_operation_queue"

    const-string v2, ","

    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsStore;->syncExecutor:Ljava/util/concurrent/Executor;

    .line 57
    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->createInstance(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/firebase/messaging/SharedPreferencesQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 55
    .end local p0    # "this":Lcom/google/firebase/messaging/TopicsStore;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized addTopicOperation(Lcom/google/firebase/messaging/TopicOperation;)Z
    .locals 2
    .param p1, "topicOperation"    # Lcom/google/firebase/messaging/TopicOperation;

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicOperation;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->add(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 107
    .end local p0    # "this":Lcom/google/firebase/messaging/TopicsStore;
    .end local p1    # "topicOperation":Lcom/google/firebase/messaging/TopicOperation;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized clearTopicOperations()V
    .locals 1

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 151
    .end local p0    # "this":Lcom/google/firebase/messaging/TopicsStore;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getNextTopicOperation()Lcom/google/firebase/messaging/TopicOperation;
    .locals 2

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->peek()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "entry":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/firebase/messaging/TopicOperation;->from(Ljava/lang/String;)Lcom/google/firebase/messaging/TopicOperation;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 95
    .end local v0    # "entry":Ljava/lang/String;
    .end local p0    # "this":Lcom/google/firebase/messaging/TopicsStore;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getOperations()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/messaging/TopicOperation;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->toList()Ljava/util/List;

    move-result-object v0

    .line 143
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    .local v1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/messaging/TopicOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 145
    .local v3, "item":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/firebase/messaging/TopicOperation;->from(Ljava/lang/String;)Lcom/google/firebase/messaging/TopicOperation;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    nop

    .end local v3    # "item":Ljava/lang/String;
    goto :goto_0

    .line 147
    .end local p0    # "this":Lcom/google/firebase/messaging/TopicsStore;
    :cond_0
    monitor-exit p0

    return-object v1

    .line 141
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "operations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/messaging/TopicOperation;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pollTopicOperation()Lcom/google/firebase/messaging/TopicOperation;
    .locals 3

    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->remove()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/messaging/TopicOperation;->from(Ljava/lang/String;)Lcom/google/firebase/messaging/TopicOperation;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 127
    .end local p0    # "this":Lcom/google/firebase/messaging/TopicsStore;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/util/NoSuchElementException;
    :try_start_1
    const-string v1, "FirebaseMessaging"

    const-string v2, "Polling operation queue failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    nop

    .end local v0    # "e":Ljava/util/NoSuchElementException;
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 127
    :goto_0
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeTopicOperation(Lcom/google/firebase/messaging/TopicOperation;)Z
    .locals 2
    .param p1, "topicOperation"    # Lcom/google/firebase/messaging/TopicOperation;

    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicOperation;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->remove(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 117
    .end local p0    # "this":Lcom/google/firebase/messaging/TopicsStore;
    .end local p1    # "topicOperation":Lcom/google/firebase/messaging/TopicOperation;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
