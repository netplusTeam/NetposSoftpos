.class public Lcom/sleepycat/je/utilint/TestHookAdapter;
.super Ljava/lang/Object;
.source "TestHookAdapter.java"

# interfaces
.implements Lcom/sleepycat/je/utilint/TestHook;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sleepycat/je/utilint/TestHook<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    .local p0, "this":Lcom/sleepycat/je/utilint/TestHookAdapter;, "Lcom/sleepycat/je/utilint/TestHookAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doHook()V
    .locals 1

    .line 32
    .local p0, "this":Lcom/sleepycat/je/utilint/TestHookAdapter;, "Lcom/sleepycat/je/utilint/TestHookAdapter<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public doHook(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/sleepycat/je/utilint/TestHookAdapter;, "Lcom/sleepycat/je/utilint/TestHookAdapter<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public doIOHook()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    .local p0, "this":Lcom/sleepycat/je/utilint/TestHookAdapter;, "Lcom/sleepycat/je/utilint/TestHookAdapter<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHookValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/sleepycat/je/utilint/TestHookAdapter;, "Lcom/sleepycat/je/utilint/TestHookAdapter<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hookSetup()V
    .locals 1

    .line 22
    .local p0, "this":Lcom/sleepycat/je/utilint/TestHookAdapter;, "Lcom/sleepycat/je/utilint/TestHookAdapter<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
