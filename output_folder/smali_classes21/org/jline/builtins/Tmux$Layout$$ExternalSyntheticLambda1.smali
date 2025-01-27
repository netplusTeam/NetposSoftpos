.class public final synthetic Lorg/jline/builtins/Tmux$Layout$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic f$0:Lorg/jline/builtins/Tmux$Layout$Type;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/builtins/Tmux$Layout$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/Tmux$Layout$$ExternalSyntheticLambda1;->f$0:Lorg/jline/builtins/Tmux$Layout$Type;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/jline/builtins/Tmux$Layout$$ExternalSyntheticLambda1;->f$0:Lorg/jline/builtins/Tmux$Layout$Type;

    check-cast p1, Lorg/jline/builtins/Tmux$Layout;

    invoke-static {v0, p1}, Lorg/jline/builtins/Tmux$Layout;->lambda$resizeCheck$1(Lorg/jline/builtins/Tmux$Layout$Type;Lorg/jline/builtins/Tmux$Layout;)I

    move-result p1

    return p1
.end method
