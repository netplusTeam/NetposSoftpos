.class public final synthetic Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;

.field public final synthetic f$1:Lorg/apache/sshd/server/Environment;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;Lorg/apache/sshd/server/Environment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl$$ExternalSyntheticLambda2;->f$0:Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;

    iput-object p2, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl$$ExternalSyntheticLambda2;->f$1:Lorg/apache/sshd/server/Environment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl$$ExternalSyntheticLambda2;->f$0:Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;

    iget-object v1, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl$$ExternalSyntheticLambda2;->f$1:Lorg/apache/sshd/server/Environment;

    invoke-virtual {v0, v1}, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;->lambda$start$0$org-jline-builtins-ssh-ShellFactoryImpl$ShellImpl(Lorg/apache/sshd/server/Environment;)V

    return-void
.end method
