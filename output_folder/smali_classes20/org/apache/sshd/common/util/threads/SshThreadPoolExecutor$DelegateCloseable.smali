.class public Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;
.super Lorg/apache/sshd/common/util/closeable/AbstractCloseable;
.source "SshThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DelegateCloseable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;

    .line 39
    iput-object p1, p0, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;->this$0:Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;

    .line 40
    invoke-direct {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method protected doCloseGracefully()Lorg/apache/sshd/common/future/CloseFuture;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;->this$0:Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;->shutdown()V

    .line 46
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    return-object v0
.end method

.method protected doCloseImmediately()V
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;->this$0:Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 52
    invoke-super {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->doCloseImmediately()V

    .line 53
    return-void
.end method

.method protected setClosed()V
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/SshThreadPoolExecutor$DelegateCloseable;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0}, Lorg/apache/sshd/common/future/CloseFuture;->setClosed()V

    .line 57
    return-void
.end method
