.class Lorg/jline/builtins/Tmux$VirtualConsole$2;
.super Ljava/io/OutputStream;
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


# direct methods
.method constructor <init>(Lorg/jline/builtins/Tmux$VirtualConsole;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jline/builtins/Tmux$VirtualConsole;

    .line 1856
    iput-object p1, p0, Lorg/jline/builtins/Tmux$VirtualConsole$2;->this$0:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1859
    iget-object v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole$2;->this$0:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-static {v0}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$1500(Lorg/jline/builtins/Tmux$VirtualConsole;)Lorg/jline/terminal/impl/LineDisciplineTerminal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->processInputByte(I)V

    .line 1860
    return-void
.end method
