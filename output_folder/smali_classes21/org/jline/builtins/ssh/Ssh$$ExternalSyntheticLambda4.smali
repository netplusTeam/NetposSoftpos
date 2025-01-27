.class public final synthetic Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/server/command/CommandFactory;


# instance fields
.field public final synthetic f$0:Lorg/jline/builtins/ssh/Ssh;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/builtins/ssh/Ssh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda4;->f$0:Lorg/jline/builtins/ssh/Ssh;

    return-void
.end method


# virtual methods
.method public final createCommand(Ljava/lang/String;)Lorg/apache/sshd/server/command/Command;
    .locals 1

    iget-object v0, p0, Lorg/jline/builtins/ssh/Ssh$$ExternalSyntheticLambda4;->f$0:Lorg/jline/builtins/ssh/Ssh;

    invoke-virtual {v0, p1}, Lorg/jline/builtins/ssh/Ssh;->lambda$start$4$org-jline-builtins-ssh-Ssh(Ljava/lang/String;)Lorg/apache/sshd/server/command/Command;

    move-result-object p1

    return-object p1
.end method
