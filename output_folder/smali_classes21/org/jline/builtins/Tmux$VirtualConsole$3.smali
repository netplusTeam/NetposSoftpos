.class Lorg/jline/builtins/Tmux$VirtualConsole$3;
.super Lorg/jline/terminal/impl/LineDisciplineTerminal;
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

.field final synthetic val$closer:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Lorg/jline/builtins/Tmux$VirtualConsole;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jline/builtins/Tmux$VirtualConsole;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "masterOutput"    # Ljava/io/OutputStream;
    .param p5, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1866
    iput-object p1, p0, Lorg/jline/builtins/Tmux$VirtualConsole$3;->this$0:Lorg/jline/builtins/Tmux$VirtualConsole;

    iput-object p6, p0, Lorg/jline/builtins/Tmux$VirtualConsole$3;->val$closer:Ljava/util/function/Consumer;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/jline/terminal/impl/LineDisciplineTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method protected doClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1869
    invoke-super {p0}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->doClose()V

    .line 1870
    iget-object v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole$3;->val$closer:Ljava/util/function/Consumer;

    iget-object v1, p0, Lorg/jline/builtins/Tmux$VirtualConsole$3;->this$0:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1871
    return-void
.end method
