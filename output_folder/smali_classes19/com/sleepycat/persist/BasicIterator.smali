.class Lcom/sleepycat/persist/BasicIterator;
.super Ljava/lang/Object;
.source "BasicIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private entityCursor:Lcom/sleepycat/persist/EntityCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/persist/EntityCursor<",
            "TV;>;"
        }
    .end annotation
.end field

.field private forwardCursor:Lcom/sleepycat/persist/ForwardCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/persist/ForwardCursor<",
            "TV;>;"
        }
    .end annotation
.end field

.field private lockMode:Lcom/sleepycat/je/LockMode;

.field private nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/EntityCursor;Lcom/sleepycat/je/LockMode;)V
    .locals 0
    .param p2, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TV;>;",
            "Lcom/sleepycat/je/LockMode;",
            ")V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/sleepycat/persist/BasicIterator;, "Lcom/sleepycat/persist/BasicIterator<TV;>;"
    .local p1, "entityCursor":Lcom/sleepycat/persist/EntityCursor;, "Lcom/sleepycat/persist/EntityCursor<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sleepycat/persist/BasicIterator;->entityCursor:Lcom/sleepycat/persist/EntityCursor;

    .line 40
    iput-object p1, p0, Lcom/sleepycat/persist/BasicIterator;->forwardCursor:Lcom/sleepycat/persist/ForwardCursor;

    .line 41
    iput-object p2, p0, Lcom/sleepycat/persist/BasicIterator;->lockMode:Lcom/sleepycat/je/LockMode;

    .line 42
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/persist/ForwardCursor;Lcom/sleepycat/je/LockMode;)V
    .locals 0
    .param p2, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/persist/ForwardCursor<",
            "TV;>;",
            "Lcom/sleepycat/je/LockMode;",
            ")V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/sleepycat/persist/BasicIterator;, "Lcom/sleepycat/persist/BasicIterator<TV;>;"
    .local p1, "forwardCursor":Lcom/sleepycat/persist/ForwardCursor;, "Lcom/sleepycat/persist/ForwardCursor<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/sleepycat/persist/BasicIterator;->forwardCursor:Lcom/sleepycat/persist/ForwardCursor;

    .line 49
    iput-object p2, p0, Lcom/sleepycat/persist/BasicIterator;->lockMode:Lcom/sleepycat/je/LockMode;

    .line 50
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 53
    .local p0, "this":Lcom/sleepycat/persist/BasicIterator;, "Lcom/sleepycat/persist/BasicIterator<TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/BasicIterator;->nextValue:Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/BasicIterator;->forwardCursor:Lcom/sleepycat/persist/ForwardCursor;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicIterator;->lockMode:Lcom/sleepycat/je/LockMode;

    invoke-interface {v0, v2}, Lcom/sleepycat/persist/ForwardCursor;->next(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/BasicIterator;->nextValue:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    nop

    .line 59
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-static {v0}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 61
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_1
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/sleepycat/persist/BasicIterator;, "Lcom/sleepycat/persist/BasicIterator<TV;>;"
    invoke-virtual {p0}, Lcom/sleepycat/persist/BasicIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sleepycat/persist/BasicIterator;->nextValue:Ljava/lang/Object;

    .line 68
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/persist/BasicIterator;->nextValue:Ljava/lang/Object;

    .line 69
    return-object v0

    .line 71
    .end local v0    # "v":Ljava/lang/Object;, "TV;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 76
    .local p0, "this":Lcom/sleepycat/persist/BasicIterator;, "Lcom/sleepycat/persist/BasicIterator<TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/BasicIterator;->entityCursor:Lcom/sleepycat/persist/EntityCursor;

    if-eqz v0, :cond_1

    .line 80
    :try_start_0
    invoke-interface {v0}, Lcom/sleepycat/persist/EntityCursor;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    nop

    .line 87
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Record at cursor position is already deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-static {v0}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 77
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
