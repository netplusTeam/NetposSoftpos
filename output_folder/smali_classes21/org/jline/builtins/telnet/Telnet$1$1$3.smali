.class Lorg/jline/builtins/telnet/Telnet$1$1$3;
.super Ljava/lang/Object;
.source "Telnet.java"

# interfaces
.implements Lorg/jline/builtins/telnet/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jline/builtins/telnet/Telnet$1$1;->doRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/jline/builtins/telnet/Telnet$1$1;

.field final synthetic val$terminal:Lorg/jline/terminal/Terminal;


# direct methods
.method constructor <init>(Lorg/jline/builtins/telnet/Telnet$1$1;Lorg/jline/terminal/Terminal;)V
    .locals 0
    .param p1, "this$2"    # Lorg/jline/builtins/telnet/Telnet$1$1;

    .line 143
    iput-object p1, p0, Lorg/jline/builtins/telnet/Telnet$1$1$3;->this$2:Lorg/jline/builtins/telnet/Telnet$1$1;

    iput-object p2, p0, Lorg/jline/builtins/telnet/Telnet$1$1$3;->val$terminal:Lorg/jline/terminal/Terminal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionTerminalGeometryChanged(Lorg/jline/builtins/telnet/ConnectionEvent;)V
    .locals 4
    .param p1, "ce"    # Lorg/jline/builtins/telnet/ConnectionEvent;

    .line 146
    iget-object v0, p0, Lorg/jline/builtins/telnet/Telnet$1$1$3;->val$terminal:Lorg/jline/terminal/Terminal;

    new-instance v1, Lorg/jline/terminal/Size;

    iget-object v2, p0, Lorg/jline/builtins/telnet/Telnet$1$1$3;->this$2:Lorg/jline/builtins/telnet/Telnet$1$1;

    invoke-virtual {v2}, Lorg/jline/builtins/telnet/Telnet$1$1;->getConnectionData()Lorg/jline/builtins/telnet/ConnectionData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jline/builtins/telnet/ConnectionData;->getTerminalColumns()I

    move-result v2

    iget-object v3, p0, Lorg/jline/builtins/telnet/Telnet$1$1$3;->this$2:Lorg/jline/builtins/telnet/Telnet$1$1;

    invoke-virtual {v3}, Lorg/jline/builtins/telnet/Telnet$1$1;->getConnectionData()Lorg/jline/builtins/telnet/ConnectionData;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jline/builtins/telnet/ConnectionData;->getTerminalRows()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/jline/terminal/Size;-><init>(II)V

    invoke-interface {v0, v1}, Lorg/jline/terminal/Terminal;->setSize(Lorg/jline/terminal/Size;)V

    .line 147
    iget-object v0, p0, Lorg/jline/builtins/telnet/Telnet$1$1$3;->val$terminal:Lorg/jline/terminal/Terminal;

    sget-object v1, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v0, v1}, Lorg/jline/terminal/Terminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    .line 148
    return-void
.end method
