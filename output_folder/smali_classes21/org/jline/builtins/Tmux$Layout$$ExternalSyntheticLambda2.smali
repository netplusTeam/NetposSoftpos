.class public final synthetic Lorg/jline/builtins/Tmux$Layout$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/jline/builtins/Tmux$Layout;

    invoke-virtual {p1}, Lorg/jline/builtins/Tmux$Layout;->countCells()I

    move-result p1

    return p1
.end method
