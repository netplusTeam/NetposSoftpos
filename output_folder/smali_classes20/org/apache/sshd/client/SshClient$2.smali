.class final Lorg/apache/sshd/client/SshClient$2;
.super Ljava/lang/Object;
.source "SshClient.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/client/SshClient;->wrapAsSimpleClient(Lorg/apache/sshd/client/SshClient;)Lorg/apache/sshd/client/simple/SimpleClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$client:Lorg/apache/sshd/client/SshClient;


# direct methods
.method constructor <init>(Lorg/apache/sshd/client/SshClient;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lorg/apache/sshd/client/SshClient$2;->val$client:Lorg/apache/sshd/client/SshClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    const/4 v0, 0x0

    .line 766
    .local v0, "err":Ljava/lang/Exception;
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/client/SshClient$2;->val$client:Lorg/apache/sshd/client/SshClient;

    invoke-virtual {v1}, Lorg/apache/sshd/client/SshClient;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    goto :goto_0

    .line 767
    :catch_0
    move-exception v1

    .line 768
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->accumulateException(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Exception;

    .line 772
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/sshd/client/SshClient$2;->val$client:Lorg/apache/sshd/client/SshClient;

    invoke-virtual {v1}, Lorg/apache/sshd/client/SshClient;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 775
    goto :goto_1

    .line 773
    :catch_1
    move-exception v1

    .line 774
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->accumulateException(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Exception;

    .line 777
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v0, :cond_1

    .line 778
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 779
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 781
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 784
    :cond_1
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 759
    iget-object v0, p0, Lorg/apache/sshd/client/SshClient$2;->val$client:Lorg/apache/sshd/client/SshClient;

    invoke-virtual {v0}, Lorg/apache/sshd/client/SshClient;->isOpen()Z

    move-result v0

    return v0
.end method
