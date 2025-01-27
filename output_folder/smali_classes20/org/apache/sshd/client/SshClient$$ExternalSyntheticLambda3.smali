.class public final synthetic Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/client/SshClient;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/client/SshClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda3;->f$0:Lorg/apache/sshd/client/SshClient;

    return-void
.end method


# virtual methods
.method public final getFilePasswordProvider()Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda3;->f$0:Lorg/apache/sshd/client/SshClient;

    invoke-virtual {v0}, Lorg/apache/sshd/client/SshClient;->getFilePasswordProvider()Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    move-result-object v0

    return-object v0
.end method
