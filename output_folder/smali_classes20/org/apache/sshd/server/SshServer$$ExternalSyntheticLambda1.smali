.class public final synthetic Lorg/apache/sshd/server/SshServer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/server/SshServer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/server/SshServer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/server/SshServer$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/server/SshServer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/server/SshServer$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/server/SshServer;

    invoke-virtual {v0}, Lorg/apache/sshd/server/SshServer;->lambda$getInnerCloseable$0$org-apache-sshd-server-SshServer()V

    return-void
.end method
