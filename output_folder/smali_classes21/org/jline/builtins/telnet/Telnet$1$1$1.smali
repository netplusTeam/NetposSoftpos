.class Lorg/jline/builtins/telnet/Telnet$1$1$1;
.super Ljava/io/InputStream;
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

    .line 109
    iput-object p1, p0, Lorg/jline/builtins/telnet/Telnet$1$1$1;->this$2:Lorg/jline/builtins/telnet/Telnet$1$1;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/jline/builtins/telnet/Telnet$1$1$1;->this$2:Lorg/jline/builtins/telnet/Telnet$1$1;

    iget-object v0, v0, Lorg/jline/builtins/telnet/Telnet$1$1;->telnetIO:Lorg/jline/builtins/telnet/TelnetIO;

    invoke-virtual {v0}, Lorg/jline/builtins/telnet/TelnetIO;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/Telnet$1$1$1;->read()I

    move-result v0

    .line 117
    .local v0, "r":I
    if-ltz v0, :cond_0

    .line 118
    int-to-byte v1, v0

    aput-byte v1, p1, p2

    .line 119
    const/4 v1, 0x1

    return v1

    .line 121
    :cond_0
    const/4 v1, -0x1

    return v1
.end method
