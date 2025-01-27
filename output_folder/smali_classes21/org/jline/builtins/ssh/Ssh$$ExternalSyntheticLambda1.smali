.class public final synthetic Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/jline/terminal/Terminal$SignalHandler;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/client/channel/ChannelShell;

.field public final synthetic f$1:Lorg/jline/terminal/Attributes;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/client/channel/ChannelShell;Lorg/jline/terminal/Attributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/client/channel/ChannelShell;

    iput-object p2, p0, Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda1;->f$1:Lorg/jline/terminal/Attributes;

    return-void
.end method


# virtual methods
.method public final handle(Lorg/jline/terminal/Terminal$Signal;)V
    .locals 2

    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/client/channel/ChannelShell;

    iget-object v1, p0, Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda1;->f$1:Lorg/jline/terminal/Attributes;

    invoke-static {v0, v1, p1}, Lorg/jline/builtins/ssh/Ssh;->lambda$ssh$1(Lorg/apache/sshd/client/channel/ChannelShell;Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Terminal$Signal;)V

    return-void
.end method
