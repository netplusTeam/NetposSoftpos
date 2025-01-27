.class public Lcom/sleepycat/util/ExceptionUnwrapper;
.super Ljava/lang/Object;
.source "ExceptionUnwrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unwrap(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 4
    .param p0, "e"    # Ljava/lang/Exception;

    .line 41
    invoke-static {p0}, Lcom/sleepycat/util/ExceptionUnwrapper;->unwrapAny(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 42
    .local v0, "t":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 43
    move-object v1, v0

    check-cast v1, Ljava/lang/Exception;

    return-object v1

    .line 44
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 45
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 47
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not Exception or Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static unwrapAny(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 61
    :goto_0
    instance-of v0, p0, Lcom/sleepycat/util/ExceptionWrapper;

    if-eqz v0, :cond_1

    .line 62
    move-object v0, p0

    check-cast v0, Lcom/sleepycat/util/ExceptionWrapper;

    invoke-interface {v0}, Lcom/sleepycat/util/ExceptionWrapper;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 63
    .local v0, "e2":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 64
    return-object p0

    .line 66
    :cond_0
    move-object p0, v0

    .line 68
    .end local v0    # "e2":Ljava/lang/Throwable;
    goto :goto_0

    .line 69
    :cond_1
    return-object p0
.end method
