.class public interface abstract Lorg/jline/terminal/spi/JnaSupport;
.super Ljava/lang/Object;
.source "JnaSupport.java"


# virtual methods
.method public abstract current()Lorg/jline/terminal/spi/Pty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isConsoleInput()Z
.end method

.method public abstract isConsoleOutput()Z
.end method

.method public abstract isWindowsConsole()Z
.end method

.method public abstract open(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)Lorg/jline/terminal/spi/Pty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract winSysTerminal(Ljava/lang/String;Ljava/lang/String;ZLjava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract winSysTerminal(Ljava/lang/String;Ljava/lang/String;ZLjava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;Z)Lorg/jline/terminal/Terminal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
