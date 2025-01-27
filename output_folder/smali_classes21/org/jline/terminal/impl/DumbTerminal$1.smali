.class Lorg/jline/terminal/impl/DumbTerminal$1;
.super Lorg/jline/utils/NonBlockingInputStream;
.source "DumbTerminal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jline/terminal/impl/DumbTerminal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/jline/terminal/Terminal$SignalHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jline/terminal/impl/DumbTerminal;

.field final synthetic val$nbis:Lorg/jline/utils/NonBlockingInputStream;


# direct methods
.method constructor <init>(Lorg/jline/terminal/impl/DumbTerminal;Lorg/jline/utils/NonBlockingInputStream;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jline/terminal/impl/DumbTerminal;

    .line 45
    iput-object p1, p0, Lorg/jline/terminal/impl/DumbTerminal$1;->this$0:Lorg/jline/terminal/impl/DumbTerminal;

    iput-object p2, p0, Lorg/jline/terminal/impl/DumbTerminal$1;->val$nbis:Lorg/jline/utils/NonBlockingInputStream;

    invoke-direct {p0}, Lorg/jline/utils/NonBlockingInputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read(JZ)I
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "isPeek"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    :goto_0
    iget-object v0, p0, Lorg/jline/terminal/impl/DumbTerminal$1;->val$nbis:Lorg/jline/utils/NonBlockingInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jline/utils/NonBlockingInputStream;->read(JZ)I

    move-result v0

    .line 50
    .local v0, "c":I
    iget-object v1, p0, Lorg/jline/terminal/impl/DumbTerminal$1;->this$0:Lorg/jline/terminal/impl/DumbTerminal;

    invoke-static {v1}, Lorg/jline/terminal/impl/DumbTerminal;->access$000(Lorg/jline/terminal/impl/DumbTerminal;)Lorg/jline/terminal/Attributes;

    move-result-object v1

    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ISIG:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    iget-object v1, p0, Lorg/jline/terminal/impl/DumbTerminal$1;->this$0:Lorg/jline/terminal/impl/DumbTerminal;

    invoke-static {v1}, Lorg/jline/terminal/impl/DumbTerminal;->access$000(Lorg/jline/terminal/impl/DumbTerminal;)Lorg/jline/terminal/Attributes;

    move-result-object v1

    sget-object v2, Lorg/jline/terminal/Attributes$ControlChar;->VINTR:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 52
    iget-object v1, p0, Lorg/jline/terminal/impl/DumbTerminal$1;->this$0:Lorg/jline/terminal/impl/DumbTerminal;

    sget-object v2, Lorg/jline/terminal/Terminal$Signal;->INT:Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/impl/DumbTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Lorg/jline/terminal/impl/DumbTerminal$1;->this$0:Lorg/jline/terminal/impl/DumbTerminal;

    invoke-static {v1}, Lorg/jline/terminal/impl/DumbTerminal;->access$000(Lorg/jline/terminal/impl/DumbTerminal;)Lorg/jline/terminal/Attributes;

    move-result-object v1

    sget-object v2, Lorg/jline/terminal/Attributes$ControlChar;->VQUIT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 55
    iget-object v1, p0, Lorg/jline/terminal/impl/DumbTerminal$1;->this$0:Lorg/jline/terminal/impl/DumbTerminal;

    sget-object v2, Lorg/jline/terminal/Terminal$Signal;->QUIT:Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/impl/DumbTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v1, p0, Lorg/jline/terminal/impl/DumbTerminal$1;->this$0:Lorg/jline/terminal/impl/DumbTerminal;

    invoke-static {v1}, Lorg/jline/terminal/impl/DumbTerminal;->access$000(Lorg/jline/terminal/impl/DumbTerminal;)Lorg/jline/terminal/Attributes;

    move-result-object v1

    sget-object v2, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 58
    iget-object v1, p0, Lorg/jline/terminal/impl/DumbTerminal$1;->this$0:Lorg/jline/terminal/impl/DumbTerminal;

    sget-object v2, Lorg/jline/terminal/Terminal$Signal;->TSTP:Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/impl/DumbTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object v1, p0, Lorg/jline/terminal/impl/DumbTerminal$1;->this$0:Lorg/jline/terminal/impl/DumbTerminal;

    invoke-static {v1}, Lorg/jline/terminal/impl/DumbTerminal;->access$000(Lorg/jline/terminal/impl/DumbTerminal;)Lorg/jline/terminal/Attributes;

    move-result-object v1

    sget-object v2, Lorg/jline/terminal/Attributes$ControlChar;->VSTATUS:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 61
    iget-object v1, p0, Lorg/jline/terminal/impl/DumbTerminal$1;->this$0:Lorg/jline/terminal/impl/DumbTerminal;

    sget-object v2, Lorg/jline/terminal/Terminal$Signal;->INFO:Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/impl/DumbTerminal;->raise(Lorg/jline/terminal/Terminal$Signal;)V

    .line 62
    goto :goto_0

    .line 65
    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 66
    iget-object v1, p0, Lorg/jline/terminal/impl/DumbTerminal$1;->this$0:Lorg/jline/terminal/impl/DumbTerminal;

    invoke-static {v1}, Lorg/jline/terminal/impl/DumbTerminal;->access$000(Lorg/jline/terminal/impl/DumbTerminal;)Lorg/jline/terminal/Attributes;

    move-result-object v1

    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IGNCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 67
    goto :goto_0

    .line 69
    :cond_4
    iget-object v1, p0, Lorg/jline/terminal/impl/DumbTerminal$1;->this$0:Lorg/jline/terminal/impl/DumbTerminal;

    invoke-static {v1}, Lorg/jline/terminal/impl/DumbTerminal;->access$000(Lorg/jline/terminal/impl/DumbTerminal;)Lorg/jline/terminal/Attributes;

    move-result-object v1

    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->ICRNL:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 70
    const/16 v0, 0xa

    goto :goto_1

    .line 72
    :cond_5
    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lorg/jline/terminal/impl/DumbTerminal$1;->this$0:Lorg/jline/terminal/impl/DumbTerminal;

    invoke-static {v1}, Lorg/jline/terminal/impl/DumbTerminal;->access$000(Lorg/jline/terminal/impl/DumbTerminal;)Lorg/jline/terminal/Attributes;

    move-result-object v1

    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->INLCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 73
    const/16 v0, 0xd

    .line 75
    :cond_6
    :goto_1
    return v0
.end method
