.class public Lcom/google/common/base/FinalizableReferenceQueue;
.super Ljava/lang/Object;
.source "FinalizableReferenceQueue.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/FinalizableReferenceQueue$DirectLoader;,
        Lcom/google/common/base/FinalizableReferenceQueue$DecoupledLoader;,
        Lcom/google/common/base/FinalizableReferenceQueue$SystemLoader;,
        Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;
    }
.end annotation


# static fields
.field private static final FINALIZER_CLASS_NAME:Ljava/lang/String; = "com.google.common.base.internal.Finalizer"

.field private static final logger:Ljava/util/logging/Logger;

.field private static final startFinalizer:Ljava/lang/reflect/Method;


# instance fields
.field final frqRef:Ljava/lang/ref/PhantomReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/PhantomReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final threadStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 134
    const-class v0, Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/FinalizableReferenceQueue;->logger:Ljava/util/logging/Logger;

    .line 142
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;

    new-instance v1, Lcom/google/common/base/FinalizableReferenceQueue$SystemLoader;

    invoke-direct {v1}, Lcom/google/common/base/FinalizableReferenceQueue$SystemLoader;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/common/base/FinalizableReferenceQueue$DecoupledLoader;

    invoke-direct {v1}, Lcom/google/common/base/FinalizableReferenceQueue$DecoupledLoader;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/common/base/FinalizableReferenceQueue$DirectLoader;

    invoke-direct {v1}, Lcom/google/common/base/FinalizableReferenceQueue$DirectLoader;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 143
    invoke-static {v0}, Lcom/google/common/base/FinalizableReferenceQueue;->loadFinalizer([Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 144
    .local v0, "finalizer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/google/common/base/FinalizableReferenceQueue;->getStartFinalizer(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/common/base/FinalizableReferenceQueue;->startFinalizer:Ljava/lang/reflect/Method;

    .line 145
    .end local v0    # "finalizer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/google/common/base/FinalizableReferenceQueue;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 159
    new-instance v1, Ljava/lang/ref/PhantomReference;

    invoke-direct {v1, p0, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v1, p0, Lcom/google/common/base/FinalizableReferenceQueue;->frqRef:Ljava/lang/ref/PhantomReference;

    .line 160
    const/4 v2, 0x0

    .line 162
    .local v2, "threadStarted":Z
    :try_start_0
    sget-object v3, Lcom/google/common/base/FinalizableReferenceQueue;->startFinalizer:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-class v7, Lcom/google/common/base/FinalizableReference;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    const/4 v2, 0x1

    .line 172
    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/google/common/base/FinalizableReferenceQueue;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Failed to start reference finalizer thread. Reference cleanup will only occur when new references are created."

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    iput-boolean v2, p0, Lcom/google/common/base/FinalizableReferenceQueue;->threadStarted:Z

    .line 175
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "impossible":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 93
    sget-object v0, Lcom/google/common/base/FinalizableReferenceQueue;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static getStartFinalizer(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 349
    .local p0, "finalizer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v0, "startFinalizer"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/ref/ReferenceQueue;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/ref/PhantomReference;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static varargs loadFinalizer([Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;)Ljava/lang/Class;
    .locals 4
    .param p0, "loaders"    # [Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 214
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 215
    .local v2, "loader":Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;
    invoke-interface {v2}, Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;->loadFinalizer()Ljava/lang/Class;

    move-result-object v3

    .line 216
    .local v3, "finalizer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_0

    .line 217
    return-object v3

    .line 214
    .end local v2    # "loader":Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;
    .end local v3    # "finalizer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method cleanUp()V
    .locals 5

    .line 189
    iget-boolean v0, p0, Lcom/google/common/base/FinalizableReferenceQueue;->threadStarted:Z

    if-eqz v0, :cond_0

    .line 190
    return-void

    .line 194
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/base/FinalizableReferenceQueue;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    move-object v1, v0

    .local v1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 201
    :try_start_0
    move-object v0, v1

    check-cast v0, Lcom/google/common/base/FinalizableReference;

    invoke-interface {v0}, Lcom/google/common/base/FinalizableReference;->finalizeReferent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 202
    :catchall_0
    move-exception v0

    .line 203
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/google/common/base/FinalizableReferenceQueue;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Error cleaning up after reference."

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 206
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/common/base/FinalizableReferenceQueue;->frqRef:Ljava/lang/ref/PhantomReference;

    invoke-virtual {v0}, Ljava/lang/ref/PhantomReference;->enqueue()Z

    .line 180
    invoke-virtual {p0}, Lcom/google/common/base/FinalizableReferenceQueue;->cleanUp()V

    .line 181
    return-void
.end method
