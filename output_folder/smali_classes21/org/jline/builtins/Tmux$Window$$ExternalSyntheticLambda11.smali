.class public final synthetic Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/jline/builtins/Tmux;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/builtins/Tmux;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda11;->f$0:Lorg/jline/builtins/Tmux;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda11;->f$0:Lorg/jline/builtins/Tmux;

    check-cast p1, Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-static {v0, p1}, Lorg/jline/builtins/Tmux$Window;->lambda$splitPane$5(Lorg/jline/builtins/Tmux;Lorg/jline/builtins/Tmux$VirtualConsole;)V

    return-void
.end method
