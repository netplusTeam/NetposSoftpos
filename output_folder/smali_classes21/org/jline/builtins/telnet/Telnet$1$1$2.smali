.class Lorg/jline/builtins/telnet/Telnet$1$1$2;
.super Ljava/io/OutputStream;
.source "Telnet.java"


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


# direct methods
.method constructor <init>(Lorg/jline/builtins/telnet/Telnet$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/jline/builtins/telnet/Telnet$1$1;

    .line 125
    iput-object p1, p0, Lorg/jline/builtins/telnet/Telnet$1$1$2;->this$2:Lorg/jline/builtins/telnet/Telnet$1$1;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/jline/builtins/telnet/Telnet$1$1$2;->this$2:Lorg/jline/builtins/telnet/Telnet$1$1;

    iget-object v0, v0, Lorg/jline/builtins/telnet/Telnet$1$1;->telnetIO:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-virtual {v0}, Lorg/jline/builtins/telnet/TelnetIO;->flush()V

    .line 133
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/jline/builtins/telnet/Telnet$1$1$2;->this$2:Lorg/jline/builtins/telnet/Telnet$1$1;

    iget-object v0, v0, Lorg/jline/builtins/telnet/Telnet$1$1;->telnetIO:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-virtual {v0, p1}, Lorg/jline/builtins/telnet/TelnetIO;->write(I)V

    .line 129
    return-void
.end method
