.class public abstract Lcom/hivemq/client/internal/util/AsyncRuntimeException;
.super Ljava/lang/RuntimeException;
.source "AsyncRuntimeException.java"


# direct methods
.method protected constructor <init>(Lcom/hivemq/client/internal/util/AsyncRuntimeException;)V
    .locals 2
    .param p1, "e"    # Lcom/hivemq/client/internal/util/AsyncRuntimeException;

    .line 62
    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    invoke-super {p0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 64
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method

.method public static fillInStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .locals 6
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 30
    instance-of v0, p0, Lcom/hivemq/client/internal/util/AsyncRuntimeException;

    if-eqz v0, :cond_2

    .line 31
    move-object v0, p0

    check-cast v0, Lcom/hivemq/client/internal/util/AsyncRuntimeException;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;->copy()Lcom/hivemq/client/internal/util/AsyncRuntimeException;

    move-result-object v0

    .line 32
    .local v0, "copy":Lcom/hivemq/client/internal/util/AsyncRuntimeException;
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 34
    .local v1, "stackTrace":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .line 35
    .local v2, "remove":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 36
    aget-object v3, v1, v2

    .line 37
    .local v3, "stackTraceElement":Ljava/lang/StackTraceElement;
    add-int/lit8 v2, v2, 0x1

    .line 38
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/hivemq/client/internal/util/AsyncRuntimeException;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fillInStackTrace"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    goto :goto_1

    .line 42
    .end local v3    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_0
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    array-length v3, v1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v3}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 44
    return-object v0

    .line 46
    .end local v0    # "copy":Lcom/hivemq/client/internal/util/AsyncRuntimeException;
    .end local v1    # "stackTrace":[Ljava/lang/StackTraceElement;
    .end local v2    # "remove":I
    :cond_2
    return-object p0
.end method


# virtual methods
.method protected abstract copy()Lcom/hivemq/client/internal/util/AsyncRuntimeException;
.end method

.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    monitor-enter p0

    .line 68
    monitor-exit p0

    return-object p0
.end method
