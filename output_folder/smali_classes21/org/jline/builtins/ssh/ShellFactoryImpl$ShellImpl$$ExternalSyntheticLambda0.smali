.class public final synthetic Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/server/SignalListener;


# instance fields
.field public final synthetic f$0:Lorg/jline/terminal/Terminal;

.field public final synthetic f$1:Lorg/apache/sshd/server/Environment;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/terminal/Terminal;Lorg/apache/sshd/server/Environment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl$$ExternalSyntheticLambda0;->f$0:Lorg/jline/terminal/Terminal;

    iput-object p2, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl$$ExternalSyntheticLambda0;->f$1:Lorg/apache/sshd/server/Environment;

    return-void
.end method


# virtual methods
.method public final signal(Lorg/apache/sshd/server/Signal;)V
    .locals 2

    iget-object v0, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl$$ExternalSyntheticLambda0;->f$0:Lorg/jline/terminal/Terminal;

    iget-object v1, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl$$ExternalSyntheticLambda0;->f$1:Lorg/apache/sshd/server/Environment;

    invoke-static {v0, v1, p1}, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->lambda$run$1(Lorg/jline/terminal/Terminal;Lorg/apache/sshd/server/Environment;Lorg/apache/sshd/server/Signal;)V

    return-void
.end method
