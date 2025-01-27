.class public abstract Lorg/jline/terminal/impl/jansi/JansiNativePty;
.super Lorg/jline/terminal/impl/AbstractPty;
.source "JansiNativePty.java"

# interfaces
.implements Lorg/jline/terminal/spi/Pty;


# instance fields
.field private final master:I

.field private final masterFD:Ljava/io/FileDescriptor;

.field private final name:Ljava/lang/String;

.field private final slave:I

.field private final slaveFD:Ljava/io/FileDescriptor;

.field private final slaveOut:I

.field private final slaveOutFD:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p1, "master"    # I
    .param p2, "masterFD"    # Ljava/io/FileDescriptor;
    .param p3, "slave"    # I
    .param p4, "slaveFD"    # Ljava/io/FileDescriptor;
    .param p5, "slaveOut"    # I
    .param p6, "slaveOutFD"    # Ljava/io/FileDescriptor;
    .param p7, "name"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lorg/jline/terminal/impl/AbstractPty;-><init>()V

    .line 46
    iput p1, p0, Lorg/jline/terminal/impl/jansi/JansiNativePty;->master:I

    .line 47
    iput p3, p0, Lorg/jline/terminal/impl/jansi/JansiNativePty;->slave:I

    .line 48
    iput p5, p0, Lorg/jline/terminal/impl/jansi/JansiNativePty;->slaveOut:I

    .line 49
    iput-object p7, p0, Lorg/jline/terminal/impl/jansi/JansiNativePty;->name:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/jline/terminal/impl/jansi/JansiNativePty;->masterFD:Ljava/io/FileDescriptor;

    .line 51
    iput-object p4, p0, Lorg/jline/terminal/impl/jansi/JansiNativePty;->slaveFD:Ljava/io/FileDescriptor;

    .line 52
    iput-object p6, p0, Lorg/jline/terminal/impl/jansi/JansiNativePty;->slaveOutFD:Ljava/io/FileDescriptor;

    .line 53
    return-void
.end method

.method public constructor <init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 8
    .param p1, "master"    # I
    .param p2, "masterFD"    # Ljava/io/FileDescriptor;
    .param p3, "slave"    # I
    .param p4, "slaveFD"    # Ljava/io/FileDescriptor;
    .param p5, "name"    # Ljava/lang/String;

    .line 42
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/jline/terminal/impl/jansi/JansiNativePty;-><init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static isConsoleInput()Z
    .locals 3

    .line 180
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/fusesource/jansi/internal/CLibrary;->isatty(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method public static isConsoleOutput()Z
    .locals 2

    .line 176
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/fusesource/jansi/internal/CLibrary;->isatty(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static newDescriptor(I)Ljava/io/FileDescriptor;
    .locals 5
    .param p0, "fd"    # I

    .line 167
    :try_start_0
    const-class v0, Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 168
    .local v0, "cns":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/io/FileDescriptor;>;"
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 169
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 170
    .end local v0    # "cns":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/io/FileDescriptor;>;"
    :catchall_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create FileDescriptor"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static ttyname()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    sget v0, Lorg/jline/terminal/impl/jansi/JansiSupportImpl;->JANSI_MAJOR_VERSION:I

    const-string v1, "Not a tty"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_1

    sget v0, Lorg/jline/terminal/impl/jansi/JansiSupportImpl;->JANSI_MAJOR_VERSION:I

    if-ne v0, v3, :cond_0

    sget v0, Lorg/jline/terminal/impl/jansi/JansiSupportImpl;->JANSI_MINOR_VERSION:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    :try_start_0
    new-array v0, v3, [Ljava/lang/String;

    sget-object v4, Lorg/jline/utils/OSUtils;->TTY_COMMAND:Ljava/lang/String;

    aput-object v4, v0, v2

    invoke-static {v3, v0}, Lorg/jline/utils/ExecHelper;->exec(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .local v0, "name":Ljava/lang/String;
    goto :goto_1

    .line 62
    .end local v0    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 58
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    invoke-static {v2}, Lorg/fusesource/jansi/internal/CLibrary;->ttyname(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "name":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 72
    return-object v0

    .line 70
    :cond_3
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget v0, p0, Lorg/jline/terminal/impl/jansi/JansiNativePty;->master:I

    if-lez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lorg/jline/terminal/impl/jansi/JansiNativePty;->getMasterInput()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 80
    :cond_0
    iget v0, p0, Lorg/jline/terminal/impl/jansi/JansiNativePty;->slave:I

    if-lez v0, :cond_1

    .line 81
    invoke-virtual {p0}, Lorg/jline/terminal/impl/jansi/JansiNativePty;->getSlaveInput()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 83
    :cond_1
    return-void
.end method

.method protected doGetSlaveInput()Ljava/io/InputStream;
    .locals 2

    .line 122
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/jansi/JansiNativePty;->getSlaveFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method protected doSetAttr(Lorg/jline/terminal/Attributes;)V
    .locals 3
    .param p1, "attr"    # Lorg/jline/terminal/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0, p1}, Lorg/jline/terminal/impl/jansi/JansiNativePty;->toTermios(Lorg/jline/terminal/Attributes;)Lorg/fusesource/jansi/internal/CLibrary$Termios;

    move-result-object v0

    .line 140
    .local v0, "tios":Lorg/fusesource/jansi/internal/CLibrary$Termios;
    iget v1, p0, Lorg/jline/terminal/impl/jansi/JansiNativePty;->slave:I

    sget v2, Lorg/fusesource/jansi/internal/CLibrary;->TCSANOW:I

    invoke-static {v1, v2, v0}, Lorg/fusesource/jansi/internal/CLibrary;->tcsetattr(IILorg/fusesource/jansi/internal/CLibrary$Termios;)I

    .line 141
    return-void
.end method

.method public getAttr()Lorg/jline/terminal/Attributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    new-instance v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;

    invoke-direct {v0}, Lorg/fusesource/jansi/internal/CLibrary$Termios;-><init>()V

    .line 133
    .local v0, "tios":Lorg/fusesource/jansi/internal/CLibrary$Termios;
    iget v1, p0, Lorg/jline/terminal/impl/jansi/JansiNativePty;->slave:I

    invoke-static {v1, v0}, Lorg/fusesource/jansi/internal/CLibrary;->tcgetattr(ILorg/fusesource/jansi/internal/CLibrary$Termios;)I

    .line 134
    invoke-virtual {p0, v0}, Lorg/jline/terminal/impl/jansi/JansiNativePty;->toAttributes(Lorg/fusesource/jansi/internal/CLibrary$Termios;)Lorg/jline/terminal/Attributes;

    move-result-object v1

    return-object v1
.end method

.method public getMaster()I
    .locals 1

    .line 86
    iget v0, p0, Lorg/jline/terminal/impl/jansi/JansiNativePty;->master:I

    return v0
.end method

.method public getMasterFD()Ljava/io/FileDescriptor;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/JansiNativePty;->masterFD:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getMasterInput()Ljava/io/InputStream;
    .locals 2

    .line 114
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/jansi/JansiNativePty;->getMasterFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public getMasterOutput()Ljava/io/OutputStream;
    .locals 2

    .line 118
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/jansi/JansiNativePty;->getMasterFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/JansiNativePty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Lorg/jline/terminal/Size;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    new-instance v0, Lorg/fusesource/jansi/internal/CLibrary$WinSize;

    invoke-direct {v0}, Lorg/fusesource/jansi/internal/CLibrary$WinSize;-><init>()V

    .line 146
    .local v0, "sz":Lorg/fusesource/jansi/internal/CLibrary$WinSize;
    iget v1, p0, Lorg/jline/terminal/impl/jansi/JansiNativePty;->slave:I

    sget-wide v2, Lorg/fusesource/jansi/internal/CLibrary;->TIOCGWINSZ:J

    invoke-static {v1, v2, v3, v0}, Lorg/fusesource/jansi/internal/CLibrary;->ioctl(IJLorg/fusesource/jansi/internal/CLibrary$WinSize;)I

    .line 147
    new-instance v1, Lorg/jline/terminal/Size;

    iget-short v2, v0, Lorg/fusesource/jansi/internal/CLibrary$WinSize;->ws_col:S

    iget-short v3, v0, Lorg/fusesource/jansi/internal/CLibrary$WinSize;->ws_row:S

    invoke-direct {v1, v2, v3}, Lorg/jline/terminal/Size;-><init>(II)V

    return-object v1
.end method

.method public getSlave()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/jline/terminal/impl/jansi/JansiNativePty;->slave:I

    return v0
.end method

.method public getSlaveFD()Ljava/io/FileDescriptor;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/JansiNativePty;->slaveFD:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getSlaveOut()I
    .locals 1

    .line 94
    iget v0, p0, Lorg/jline/terminal/impl/jansi/JansiNativePty;->slaveOut:I

    return v0
.end method

.method public getSlaveOutFD()Ljava/io/FileDescriptor;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/jline/terminal/impl/jansi/JansiNativePty;->slaveOutFD:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getSlaveOutput()Ljava/io/OutputStream;
    .locals 2

    .line 126
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/jansi/JansiNativePty;->getSlaveOutFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public setSize(Lorg/jline/terminal/Size;)V
    .locals 4
    .param p1, "size"    # Lorg/jline/terminal/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    new-instance v0, Lorg/fusesource/jansi/internal/CLibrary$WinSize;

    invoke-virtual {p1}, Lorg/jline/terminal/Size;->getRows()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {p1}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v2

    int-to-short v2, v2

    invoke-direct {v0, v1, v2}, Lorg/fusesource/jansi/internal/CLibrary$WinSize;-><init>(SS)V

    .line 153
    .local v0, "sz":Lorg/fusesource/jansi/internal/CLibrary$WinSize;
    iget v1, p0, Lorg/jline/terminal/impl/jansi/JansiNativePty;->slave:I

    sget-wide v2, Lorg/fusesource/jansi/internal/CLibrary;->TIOCSWINSZ:J

    invoke-static {v1, v2, v3, v0}, Lorg/fusesource/jansi/internal/CLibrary;->ioctl(IJLorg/fusesource/jansi/internal/CLibrary$WinSize;)I

    .line 154
    return-void
.end method

.method protected abstract toAttributes(Lorg/fusesource/jansi/internal/CLibrary$Termios;)Lorg/jline/terminal/Attributes;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JansiNativePty["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jline/terminal/impl/jansi/JansiNativePty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract toTermios(Lorg/jline/terminal/Attributes;)Lorg/fusesource/jansi/internal/CLibrary$Termios;
.end method
