.class Lorg/apache/sshd/client/SshClient$1;
.super Ljava/lang/Object;
.source "SshClient.java"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/client/SshClient;->createConnectCompletionListener(Lorg/apache/sshd/client/future/ConnectFuture;Ljava/lang/String;Ljava/net/SocketAddress;Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;Z)Lorg/apache/sshd/common/future/SshFutureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/future/SshFutureListener<",
        "Lorg/apache/sshd/common/io/IoConnectFuture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/sshd/client/SshClient;

.field final synthetic val$address:Ljava/net/SocketAddress;

.field final synthetic val$connectFuture:Lorg/apache/sshd/client/future/ConnectFuture;

.field final synthetic val$identities:Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

.field final synthetic val$useDefaultIdentities:Z

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/sshd/client/SshClient;Lorg/apache/sshd/client/future/ConnectFuture;Ljava/lang/String;Ljava/net/SocketAddress;Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/client/SshClient;

    .line 604
    iput-object p1, p0, Lorg/apache/sshd/client/SshClient$1;->this$0:Lorg/apache/sshd/client/SshClient;

    iput-object p2, p0, Lorg/apache/sshd/client/SshClient$1;->val$connectFuture:Lorg/apache/sshd/client/future/ConnectFuture;

    iput-object p3, p0, Lorg/apache/sshd/client/SshClient$1;->val$username:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/sshd/client/SshClient$1;->val$address:Ljava/net/SocketAddress;

    iput-object p5, p0, Lorg/apache/sshd/client/SshClient$1;->val$identities:Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    iput-boolean p6, p0, Lorg/apache/sshd/client/SshClient$1;->val$useDefaultIdentities:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 0

    .line 604
    check-cast p1, Lorg/apache/sshd/common/io/IoConnectFuture;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/SshClient$1;->operationComplete(Lorg/apache/sshd/common/io/IoConnectFuture;)V

    return-void
.end method

.method public operationComplete(Lorg/apache/sshd/common/io/IoConnectFuture;)V
    .locals 14
    .param p1, "future"    # Lorg/apache/sshd/common/io/IoConnectFuture;

    .line 608
    invoke-interface {p1}, Lorg/apache/sshd/common/io/IoConnectFuture;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient$1;->val$connectFuture:Lorg/apache/sshd/client/future/ConnectFuture;

    invoke-interface {v0}, Lorg/apache/sshd/client/future/ConnectFuture;->cancel()V

    .line 610
    return-void

    .line 613
    :cond_0
    invoke-interface {p1}, Lorg/apache/sshd/common/io/IoConnectFuture;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 614
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 615
    iget-object v6, p0, Lorg/apache/sshd/client/SshClient$1;->this$0:Lorg/apache/sshd/client/SshClient;

    invoke-static {v6}, Lorg/apache/sshd/client/SshClient;->access$000(Lorg/apache/sshd/client/SshClient;)Lorg/slf4j/Logger;

    move-result-object v6

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 616
    iget-object v6, p0, Lorg/apache/sshd/client/SshClient$1;->this$0:Lorg/apache/sshd/client/SshClient;

    invoke-static {v6}, Lorg/apache/sshd/client/SshClient;->access$100(Lorg/apache/sshd/client/SshClient;)Lorg/slf4j/Logger;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/apache/sshd/client/SshClient$1;->val$username:Ljava/lang/String;

    aput-object v7, v4, v3

    iget-object v3, p0, Lorg/apache/sshd/client/SshClient$1;->val$address:Ljava/net/SocketAddress;

    aput-object v3, v4, v5

    .line 617
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 616
    const-string v1, "operationComplete({}@{}) failed ({}): {}"

    invoke-interface {v6, v1, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    :cond_1
    iget-object v1, p0, Lorg/apache/sshd/client/SshClient$1;->val$connectFuture:Lorg/apache/sshd/client/future/ConnectFuture;

    invoke-interface {v1, v0}, Lorg/apache/sshd/client/future/ConnectFuture;->setException(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 621
    :cond_2
    invoke-interface {p1}, Lorg/apache/sshd/common/io/IoConnectFuture;->getSession()Lorg/apache/sshd/common/io/IoSession;

    move-result-object v13

    .line 623
    .local v13, "ioSession":Lorg/apache/sshd/common/io/IoSession;
    :try_start_0
    iget-object v6, p0, Lorg/apache/sshd/client/SshClient$1;->this$0:Lorg/apache/sshd/client/SshClient;

    iget-object v8, p0, Lorg/apache/sshd/client/SshClient$1;->val$connectFuture:Lorg/apache/sshd/client/future/ConnectFuture;

    iget-object v9, p0, Lorg/apache/sshd/client/SshClient$1;->val$username:Ljava/lang/String;

    iget-object v10, p0, Lorg/apache/sshd/client/SshClient$1;->val$address:Ljava/net/SocketAddress;

    iget-object v11, p0, Lorg/apache/sshd/client/SshClient$1;->val$identities:Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;

    iget-boolean v12, p0, Lorg/apache/sshd/client/SshClient$1;->val$useDefaultIdentities:Z

    move-object v7, v13

    invoke-virtual/range {v6 .. v12}, Lorg/apache/sshd/client/SshClient;->onConnectOperationComplete(Lorg/apache/sshd/common/io/IoSession;Lorg/apache/sshd/client/future/ConnectFuture;Ljava/lang/String;Ljava/net/SocketAddress;Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    goto :goto_0

    .line 624
    :catch_0
    move-exception v6

    .line 625
    .local v6, "e":Ljava/lang/RuntimeException;
    iget-object v7, p0, Lorg/apache/sshd/client/SshClient$1;->this$0:Lorg/apache/sshd/client/SshClient;

    invoke-static {v7}, Lorg/apache/sshd/client/SshClient;->access$200(Lorg/apache/sshd/client/SshClient;)Lorg/slf4j/Logger;

    move-result-object v7

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/apache/sshd/client/SshClient$1;->val$username:Ljava/lang/String;

    aput-object v9, v8, v3

    iget-object v3, p0, Lorg/apache/sshd/client/SshClient$1;->val$address:Ljava/net/SocketAddress;

    aput-object v3, v8, v5

    .line 626
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    aput-object v13, v8, v1

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v4

    .line 625
    const-string v1, "operationComplete({}@{}) failed ({}) to signal completion of session={}: {}"

    invoke-interface {v7, v1, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    iget-object v1, p0, Lorg/apache/sshd/client/SshClient$1;->this$0:Lorg/apache/sshd/client/SshClient;

    invoke-static {v1}, Lorg/apache/sshd/client/SshClient;->access$300(Lorg/apache/sshd/client/SshClient;)Lorg/slf4j/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 628
    iget-object v1, p0, Lorg/apache/sshd/client/SshClient$1;->this$0:Lorg/apache/sshd/client/SshClient;

    invoke-static {v1}, Lorg/apache/sshd/client/SshClient;->access$400(Lorg/apache/sshd/client/SshClient;)Lorg/slf4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operationComplete("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/sshd/client/SshClient$1;->val$username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/sshd/client/SshClient$1;->val$address:Ljava/net/SocketAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " completion signal failure details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 630
    :cond_3
    iget-object v1, p0, Lorg/apache/sshd/client/SshClient$1;->val$connectFuture:Lorg/apache/sshd/client/future/ConnectFuture;

    invoke-interface {v1, v6}, Lorg/apache/sshd/client/future/ConnectFuture;->setException(Ljava/lang/Throwable;)V

    .line 632
    invoke-interface {v13, v5}, Lorg/apache/sshd/common/io/IoSession;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 635
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v13    # "ioSession":Lorg/apache/sshd/common/io/IoSession;
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectCompletionListener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/client/SshClient$1;->val$username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/client/SshClient$1;->val$address:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
