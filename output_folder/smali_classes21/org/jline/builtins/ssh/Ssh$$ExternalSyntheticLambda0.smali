.class public final synthetic Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/jline/terminal/Terminal$SignalHandler;


# instance fields
.field public final synthetic f$0:Lorg/jline/terminal/Terminal;

.field public final synthetic f$1:Lorg/apache/sshd/client/channel/ChannelShell;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/terminal/Terminal;Lorg/apache/sshd/client/channel/ChannelShell;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda0;->f$0:Lorg/jline/terminal/Terminal;

    iput-object p2, p0, Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda0;->f$1:Lorg/apache/sshd/client/channel/ChannelShell;

    return-void
.end method


# virtual methods
.method public final handle(Lorg/jline/terminal/Terminal$Signal;)V
    .locals 2

    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda0;->f$0:Lorg/jline/terminal/Terminal;

    iget-object v1, p0, Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda0;->f$1:Lorg/apache/sshd/client/channel/ChannelShell;

    invoke-static {v0, v1, p1}, Lorg/jline/builtins/ssh/Ssh;->lambda$ssh$0(Lorg/jline/terminal/Terminal;Lorg/apache/sshd/client/channel/ChannelShell;Lorg/jline/terminal/Terminal$Signal;)V

    return-void
.end method
