.class public final synthetic Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/client/SshClient;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/client/SshClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/client/SshClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/client/SshClient$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/client/SshClient;

    invoke-virtual {v0}, Lorg/apache/sshd/client/SshClient;->lambda$getInnerCloseable$1$org-apache-sshd-client-SshClient()V

    return-void
.end method
