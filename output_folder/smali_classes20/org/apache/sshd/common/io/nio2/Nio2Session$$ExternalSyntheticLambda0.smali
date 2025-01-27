.class public final synthetic Lorg/apache/sshd/common/io/nio2/Nio2Session$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/io/nio2/Nio2Session;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/io/nio2/Nio2Session;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/common/io/nio2/Nio2Session;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Session$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/common/io/nio2/Nio2Session;

    invoke-virtual {v0}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->lambda$doCloseGracefully$0$org-apache-sshd-common-io-nio2-Nio2Session()V

    return-void
.end method
