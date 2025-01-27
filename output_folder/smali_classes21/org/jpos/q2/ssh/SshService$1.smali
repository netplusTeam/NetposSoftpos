.class Lorg/jpos/q2/ssh/SshService$1;
.super Ljava/lang/Thread;
.source "SshService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jpos/q2/ssh/SshService;->stopService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/q2/ssh/SshService;


# direct methods
.method constructor <init>(Lorg/jpos/q2/ssh/SshService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/q2/ssh/SshService;

    .line 75
    iput-object p1, p0, Lorg/jpos/q2/ssh/SshService$1;->this$0:Lorg/jpos/q2/ssh/SshService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 78
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/ssh/SshService$1;->this$0:Lorg/jpos/q2/ssh/SshService;

    iget-object v0, v0, Lorg/jpos/q2/ssh/SshService;->sshd:Lorg/apache/sshd/server/SshServer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/server/SshServer;->stop(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 80
    iget-object v0, p0, Lorg/jpos/q2/ssh/SshService$1;->this$0:Lorg/jpos/q2/ssh/SshService;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jpos/q2/ssh/SshService;->sshd:Lorg/apache/sshd/server/SshServer;

    .line 81
    return-void
.end method
