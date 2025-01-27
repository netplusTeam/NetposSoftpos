.class Lorg/jline/builtins/Tmux$VirtualConsole$1;
.super Lorg/jline/builtins/ScreenTerminal;
.source "Tmux.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jline/builtins/Tmux$VirtualConsole;-><init>(ILjava/lang/String;IIIILjava/lang/Runnable;Ljava/util/function/Consumer;Lorg/jline/builtins/Tmux$Layout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jline/builtins/Tmux$VirtualConsole;

.field final synthetic val$dirty:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/jline/builtins/Tmux$VirtualConsole;IILjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jline/builtins/Tmux$VirtualConsole;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1848
    iput-object p1, p0, Lorg/jline/builtins/Tmux$VirtualConsole$1;->this$0:Lorg/jline/builtins/Tmux$VirtualConsole;

    iput-object p4, p0, Lorg/jline/builtins/Tmux$VirtualConsole$1;->val$dirty:Ljava/lang/Runnable;

    invoke-direct {p0, p2, p3}, Lorg/jline/builtins/ScreenTerminal;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected setDirty()V
    .locals 1

    .line 1851
    invoke-super {p0}, Lorg/jline/builtins/ScreenTerminal;->setDirty()V

    .line 1852
    iget-object v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole$1;->val$dirty:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1853
    return-void
.end method
