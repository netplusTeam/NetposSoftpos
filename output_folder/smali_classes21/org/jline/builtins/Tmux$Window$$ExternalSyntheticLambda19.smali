.class public final synthetic Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic f$0:Lorg/jline/builtins/Tmux$Window;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/builtins/Tmux$Window;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda19;->f$0:Lorg/jline/builtins/Tmux$Window;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/jline/builtins/Tmux$Window$$ExternalSyntheticLambda19;->f$0:Lorg/jline/builtins/Tmux$Window;

    check-cast p1, Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-virtual {v0, p1}, Lorg/jline/builtins/Tmux$Window;->lambda$selectPane$16$org-jline-builtins-Tmux$Window(Lorg/jline/builtins/Tmux$VirtualConsole;)I

    move-result p1

    return p1
.end method
