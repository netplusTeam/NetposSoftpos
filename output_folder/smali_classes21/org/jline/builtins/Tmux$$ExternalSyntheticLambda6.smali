.class public final synthetic Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/jline/builtins/Tmux;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/builtins/Tmux;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda6;->f$0:Lorg/jline/builtins/Tmux;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda6;->f$0:Lorg/jline/builtins/Tmux;

    invoke-virtual {v0}, Lorg/jline/builtins/Tmux;->lambda$displayPanes$4$org-jline-builtins-Tmux()V

    return-void
.end method
