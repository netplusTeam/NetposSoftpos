.class public final synthetic Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lorg/jline/builtins/Tmux;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/builtins/Tmux;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda5;->f$0:Lorg/jline/builtins/Tmux;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jline/builtins/Tmux$$ExternalSyntheticLambda5;->f$0:Lorg/jline/builtins/Tmux;

    invoke-virtual {v0, p1}, Lorg/jline/builtins/Tmux;->lambda$listWindows$1$org-jline-builtins-Tmux(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
