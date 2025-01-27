.class public Lcom/sleepycat/je/utilint/TestHookExecute;
.super Ljava/lang/Object;
.source "TestHookExecute.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "*>;)Z"
        }
    .end annotation

    .line 42
    .local p0, "testHook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<*>;"
    if-eqz p0, :cond_0

    .line 43
    invoke-interface {p0}, Lcom/sleepycat/je/utilint/TestHook;->doHook()V

    .line 45
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 49
    .local p0, "testHook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 50
    invoke-interface {p0, p1}, Lcom/sleepycat/je/utilint/TestHook;->doHook(Ljava/lang/Object;)V

    .line 52
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static doHookSetupIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "*>;)Z"
        }
    .end annotation

    .line 26
    .local p0, "testHook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<*>;"
    if-eqz p0, :cond_0

    .line 27
    invoke-interface {p0}, Lcom/sleepycat/je/utilint/TestHook;->hookSetup()V

    .line 29
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static doIOHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    .local p0, "testHook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<*>;"
    if-eqz p0, :cond_0

    .line 36
    invoke-interface {p0}, Lcom/sleepycat/je/utilint/TestHook;->doIOHook()V

    .line 38
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
