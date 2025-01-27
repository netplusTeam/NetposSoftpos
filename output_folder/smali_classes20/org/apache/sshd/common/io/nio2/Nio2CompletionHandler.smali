.class public abstract Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;
.super Ljava/lang/Object;
.source "Nio2CompletionHandler.java"

# interfaces
.implements Ljava/nio/channels/CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/nio/channels/CompletionHandler<",
        "TV;TA;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 32
    .local p0, "this":Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;, "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<TV;TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public completed(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TA;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;, "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<TV;TA;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    .local p2, "attachment":Ljava/lang/Object;, "TA;"
    new-instance v0, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler$$ExternalSyntheticLambda1;-><init>(Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public failed(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "exc"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "TA;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;, "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<TV;TA;>;"
    .local p2, "attachment":Ljava/lang/Object;, "TA;"
    new-instance v0, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;Ljava/lang/Throwable;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method synthetic lambda$completed$0$org-apache-sshd-common-io-nio2-Nio2CompletionHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "attachment"    # Ljava/lang/Object;

    .line 38
    .local p0, "this":Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;, "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<TV;TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;->onCompleted(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$failed$1$org-apache-sshd-common-io-nio2-Nio2CompletionHandler(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "exc"    # Ljava/lang/Throwable;
    .param p2, "attachment"    # Ljava/lang/Object;

    .line 46
    .local p0, "this":Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;, "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<TV;TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;->onFailed(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract onCompleted(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TA;)V"
        }
    .end annotation
.end method

.method protected abstract onFailed(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "TA;)V"
        }
    .end annotation
.end method
