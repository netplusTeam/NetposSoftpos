.class public interface abstract Lorg/apache/sshd/server/ExitCallback;
.super Ljava/lang/Object;
.source "ExitCallback.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public onExit(I)V
    .locals 1
    .param p1, "exitValue"    # I

    .line 33
    const-string v0, ""

    invoke-interface {p0, p1, v0}, Lorg/apache/sshd/server/ExitCallback;->onExit(ILjava/lang/String;)V

    .line 34
    return-void
.end method

.method public abstract onExit(ILjava/lang/String;)V
.end method
