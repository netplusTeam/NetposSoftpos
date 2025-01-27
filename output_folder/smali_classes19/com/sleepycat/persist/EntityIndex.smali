.class public interface abstract Lcom/sleepycat/persist/EntityIndex;
.super Ljava/lang/Object;
.source "EntityIndex.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract contains(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/LockMode;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TK;",
            "Lcom/sleepycat/je/LockMode;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract contains(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract count()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract count(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract delete(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TK;",
            "Lcom/sleepycat/je/WriteOptions;",
            ")",
            "Lcom/sleepycat/je/OperationResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract delete(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TK;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract delete(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract entities()Lcom/sleepycat/persist/EntityCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract entities(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract entities(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TK;ZTK;Z",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract entities(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/sleepycat/persist/EntityCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract get(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/persist/EntityResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TK;",
            "Lcom/sleepycat/je/Get;",
            "Lcom/sleepycat/je/ReadOptions;",
            ")",
            "Lcom/sleepycat/persist/EntityResult<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract get(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TK;",
            "Lcom/sleepycat/je/LockMode;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract getDatabase()Lcom/sleepycat/je/Database;
.end method

.method public abstract keys()Lcom/sleepycat/persist/EntityCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract keys(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract keys(Lcom/sleepycat/je/Transaction;Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/persist/EntityCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Transaction;",
            "TK;ZTK;Z",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract keys(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/sleepycat/persist/EntityCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract map()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract sortedMap()Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method
