.class public Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;
.super Lorg/jline/terminal/impl/jansi/JansiNativePty;
.source "LinuxNativePty.java"


# static fields
.field private static final B0:I = 0x0

.field private static final B110:I = 0x3

.field private static final B1200:I = 0x9

.field private static final B134:I = 0x4

.field private static final B150:I = 0x5

.field private static final B1800:I = 0xa

.field private static final B19200:I = 0xe

.field private static final B200:I = 0x6

.field private static final B2400:I = 0xb

.field private static final B300:I = 0x7

.field private static final B38400:I = 0xf

.field private static final B4800:I = 0xc

.field private static final B50:I = 0x1

.field private static final B600:I = 0x8

.field private static final B75:I = 0x2

.field private static final B9600:I = 0xd

.field private static final BRKINT:I = 0x2

.field private static final BS0:I = 0x0

.field private static final BS1:I = 0x2000

.field private static final BSDLY:I = 0x2000

.field private static final CBAUD:I = 0x100f

.field private static final CLOCAL:I = 0x800

.field private static final CR0:I = 0x0

.field private static final CR1:I = 0x200

.field private static final CR2:I = 0x400

.field private static final CR3:I = 0x600

.field private static final CRDLY:I = 0x600

.field private static final CREAD:I = 0x80

.field private static final CS5:I = 0x0

.field private static final CS6:I = 0x10

.field private static final CS7:I = 0x20

.field private static final CS8:I = 0x30

.field private static final CSIZE:I = 0x30

.field private static final CSTOPB:I = 0x40

.field private static final ECHO:I = 0x8

.field private static final ECHOCTL:I = 0x200

.field private static final ECHOE:I = 0x10

.field private static final ECHOK:I = 0x20

.field private static final ECHOKE:I = 0x800

.field private static final ECHONL:I = 0x40

.field private static final ECHOPRT:I = 0x400

.field private static final EXTA:I = 0xe

.field private static final EXTB:I = 0xf

.field private static final EXTPROC:I = 0x10000

.field private static final FF0:I = 0x0

.field private static final FF1:I = 0x8000

.field private static final FFDLY:I = 0x8000

.field private static final FLUSHO:I = 0x1000

.field private static final HUPCL:I = 0x400

.field private static final ICANON:I = 0x2

.field private static final ICRNL:I = 0x100

.field private static final IEXTEN:I = 0x8000

.field private static final IGNBRK:I = 0x1

.field private static final IGNCR:I = 0x80

.field private static final IGNPAR:I = 0x4

.field private static final IMAXBEL:I = 0x2000

.field private static final INLCR:I = 0x40

.field private static final INPCK:I = 0x10

.field private static final ISIG:I = 0x1

.field private static final ISTRIP:I = 0x20

.field private static final IUCLC:I = 0x200

.field private static final IUTF8:I = 0x4000

.field private static final IXANY:I = 0x800

.field private static final IXOFF:I = 0x1000

.field private static final IXON:I = 0x400

.field private static final NL0:I = 0x0

.field private static final NL1:I = 0x100

.field private static final NLDLY:I = 0x100

.field private static final NOFLSH:I = 0x80

.field private static final OCRNL:I = 0x8

.field private static final OFDEL:I = 0x80

.field private static final OFILL:I = 0x40

.field private static final OLCUC:I = 0x2

.field private static final ONLCR:I = 0x4

.field private static final ONLRET:I = 0x20

.field private static final ONOCR:I = 0x10

.field private static final OPOST:I = 0x1

.field private static final PARENB:I = 0x100

.field private static final PARMRK:I = 0x8

.field private static final PARODD:I = 0x200

.field private static final PENDIN:I = 0x2000

.field private static final TAB0:I = 0x0

.field private static final TAB1:I = 0x800

.field private static final TAB2:I = 0x1000

.field private static final TAB3:I = 0x1800

.field private static final TABDLY:I = 0x1800

.field private static final TOSTOP:I = 0x100

.field private static final VDISCARD:I = 0xd

.field private static final VEOF:I = 0x4

.field private static final VEOL:I = 0xb

.field private static final VEOL2:I = 0x10

.field private static final VERASE:I = 0x2

.field private static final VINTR:I = 0x0

.field private static final VKILL:I = 0x3

.field private static final VLNEXT:I = 0xf

.field private static final VMIN:I = 0x6

.field private static final VQUIT:I = 0x1

.field private static final VREPRINT:I = 0xc

.field private static final VSTART:I = 0x8

.field private static final VSTOP:I = 0x9

.field private static final VSUSP:I = 0xa

.field private static final VSWTC:I = 0x7

.field private static final VT0:I = 0x0

.field private static final VT1:I = 0x4000

.field private static final VTDLY:I = 0x4000

.field private static final VTIME:I = 0x5

.field private static final VWERASE:I = 0xe

.field private static final XCASE:I = 0x4

.field private static final XTABS:I = 0x1800


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

    .line 53
    invoke-direct/range {p0 .. p7}, Lorg/jline/terminal/impl/jansi/JansiNativePty;-><init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p1, "master"    # I
    .param p2, "masterFD"    # Ljava/io/FileDescriptor;
    .param p3, "slave"    # I
    .param p4, "slaveFD"    # Ljava/io/FileDescriptor;
    .param p5, "name"    # Ljava/lang/String;

    .line 49
    invoke-direct/range {p0 .. p5}, Lorg/jline/terminal/impl/jansi/JansiNativePty;-><init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private static addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V
    .locals 4
    .param p0, "value"    # J
    .param p4, "v"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(J",
            "Ljava/util/EnumSet<",
            "TT;>;TT;I)V"
        }
    .end annotation

    .line 363
    .local p2, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TT;>;"
    .local p3, "flag":Ljava/lang/Enum;, "TT;"
    int-to-long v0, p4

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p2, p3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_0
    return-void
.end method

.method public static current()Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    :try_start_0
    invoke-static {}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->ttyname()Ljava/lang/String;

    move-result-object v7

    .line 27
    .local v7, "name":Ljava/lang/String;
    new-instance v8, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    const/4 v5, 0x1

    sget-object v6, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;-><init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 28
    .end local v7    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not a tty"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static open(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;
    .locals 11
    .param p0, "attr"    # Lorg/jline/terminal/Attributes;
    .param p1, "size"    # Lorg/jline/terminal/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 35
    .local v1, "master":[I
    new-array v0, v0, [I

    .line 36
    .local v0, "slave":[I
    const/16 v2, 0x40

    new-array v2, v2, [B

    .line 37
    .local v2, "buf":[B
    nop

    .line 38
    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->termios(Lorg/jline/terminal/Attributes;)Lorg/fusesource/jansi/internal/CLibrary$Termios;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 39
    :goto_0
    if-eqz p1, :cond_1

    new-instance v3, Lorg/fusesource/jansi/internal/CLibrary$WinSize;

    invoke-virtual {p1}, Lorg/jline/terminal/Size;->getRows()I

    move-result v5

    int-to-short v5, v5

    invoke-virtual {p1}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v6

    int-to-short v6, v6

    invoke-direct {v3, v5, v6}, Lorg/fusesource/jansi/internal/CLibrary$WinSize;-><init>(SS)V

    .line 37
    :cond_1
    invoke-static {v1, v0, v2, v4, v3}, Lorg/fusesource/jansi/internal/CLibrary;->openpty([I[I[BLorg/fusesource/jansi/internal/CLibrary$Termios;Lorg/fusesource/jansi/internal/CLibrary$WinSize;)I

    .line 40
    const/4 v3, 0x0

    .line 41
    .local v3, "len":I
    :goto_1
    aget-byte v4, v2, v3

    if-eqz v4, :cond_2

    .line 42
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 44
    :cond_2
    new-instance v9, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v9, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    .line 45
    .local v9, "name":Ljava/lang/String;
    new-instance v10, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;

    aget v5, v1, v4

    aget v6, v1, v4

    invoke-static {v6}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->newDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v6

    aget v7, v0, v4

    aget v4, v0, v4

    invoke-static {v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->newDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v8

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;-><init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V

    return-object v10
.end method

.method private static setFlag(ZJJ)J
    .locals 2
    .param p0, "flag"    # Z
    .param p1, "value"    # J
    .param p3, "org"    # J

    .line 359
    if-eqz p0, :cond_0

    or-long v0, p3, p1

    goto :goto_0

    :cond_0
    move-wide v0, p3

    :goto_0
    return-wide v0
.end method

.method static termios(Lorg/jline/terminal/Attributes;)Lorg/fusesource/jansi/internal/CLibrary$Termios;
    .locals 15
    .param p0, "t"    # Lorg/jline/terminal/Attributes;

    .line 176
    move-object v0, p0

    new-instance v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;

    invoke-direct {v1}, Lorg/fusesource/jansi/internal/CLibrary$Termios;-><init>()V

    .line 177
    .local v1, "tio":Lorg/fusesource/jansi/internal/CLibrary$Termios;
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IGNBRK:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v5, 0x1

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 178
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->BRKINT:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v7, 0x2

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 179
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IGNPAR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v9, 0x4

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 180
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->PARMRK:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v11, 0x8

    invoke-static {v2, v11, v12, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 181
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->INPCK:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v13, 0x10

    invoke-static {v2, v13, v14, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 182
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->ISTRIP:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v7, 0x20

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 183
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->INLCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v7, 0x40

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 184
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IGNCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v7, 0x80

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 185
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->ICRNL:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v7, 0x100

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 186
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IXON:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v7, 0x400

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 187
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IXOFF:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v7, 0x1000

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 188
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IXANY:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v7, 0x800

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 189
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IMAXBEL:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v7, 0x2000

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 190
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IUTF8:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v7, 0x4000

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 192
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->OPOST:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    .line 193
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->ONLCR:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    .line 196
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->OCRNL:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    invoke-static {v2, v11, v12, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    .line 197
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->ONOCR:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    invoke-static {v2, v13, v14, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    .line 198
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->ONLRET:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    const-wide/16 v9, 0x20

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    .line 199
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->OFILL:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    const-wide/16 v9, 0x40

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    .line 200
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->NLDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    const-wide/16 v9, 0x100

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    .line 201
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->TABDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    const-wide/16 v9, 0x1800

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    .line 202
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->CRDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    const-wide/16 v9, 0x600

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    .line 203
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->FFDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    const-wide/32 v9, 0x8000

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    .line 204
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->BSDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    const-wide/16 v9, 0x2000

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    .line 205
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->VTDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    .line 206
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->OFDEL:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    const-wide/16 v7, 0x80

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    .line 209
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CS5:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    const-wide/16 v7, 0x0

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 210
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CS6:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    invoke-static {v2, v13, v14, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 211
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CS7:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    const-wide/16 v7, 0x20

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 212
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CS8:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    const-wide/16 v7, 0x30

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 213
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CSTOPB:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    const-wide/16 v7, 0x40

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 214
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CREAD:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    const-wide/16 v7, 0x80

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 215
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->PARENB:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    const-wide/16 v7, 0x100

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 216
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->PARODD:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    const-wide/16 v7, 0x200

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 217
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->HUPCL:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    const-wide/16 v9, 0x400

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 218
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CLOCAL:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    const-wide/16 v9, 0x800

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 225
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOKE:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 226
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOE:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    invoke-static {v2, v13, v14, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 227
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOK:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/16 v9, 0x20

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 228
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHO:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    invoke-static {v2, v11, v12, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 229
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHONL:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/16 v9, 0x40

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 230
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOPRT:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/16 v9, 0x400

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 231
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOCTL:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 232
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ISIG:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 233
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ICANON:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/16 v5, 0x2

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 235
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->IEXTEN:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/32 v5, 0x8000

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 236
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->EXTPROC:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/32 v5, 0x10000

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 237
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->TOSTOP:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/16 v5, 0x100

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 238
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->FLUSHO:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/16 v5, 0x1000

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 240
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->PENDIN:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/16 v5, 0x2000

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 241
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->NOFLSH:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/16 v5, 0x80

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 243
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VEOF:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x4

    aput-byte v3, v2, v4

    .line 244
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VEOL:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xb

    aput-byte v3, v2, v4

    .line 245
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VEOL2:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0x10

    aput-byte v3, v2, v4

    .line 246
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VERASE:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    .line 247
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VWERASE:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xe

    aput-byte v3, v2, v4

    .line 248
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VKILL:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    .line 249
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VREPRINT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xc

    aput-byte v3, v2, v4

    .line 250
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VINTR:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 251
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VQUIT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    .line 252
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xa

    aput-byte v3, v2, v4

    .line 253
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VSTART:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0x8

    aput-byte v3, v2, v4

    .line 254
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VSTOP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0x9

    aput-byte v3, v2, v4

    .line 255
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VLNEXT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xf

    aput-byte v3, v2, v4

    .line 256
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VDISCARD:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xd

    aput-byte v3, v2, v4

    .line 257
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VMIN:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x6

    aput-byte v3, v2, v4

    .line 258
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VTIME:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x5

    aput-byte v3, v2, v4

    .line 260
    return-object v1
.end method


# virtual methods
.method protected toAttributes(Lorg/fusesource/jansi/internal/CLibrary$Termios;)Lorg/jline/terminal/Attributes;
    .locals 16
    .param p1, "tio"    # Lorg/fusesource/jansi/internal/CLibrary$Termios;

    .line 264
    move-object/from16 v0, p1

    new-instance v1, Lorg/jline/terminal/Attributes;

    invoke-direct {v1}, Lorg/jline/terminal/Attributes;-><init>()V

    .line 266
    .local v1, "attr":Lorg/jline/terminal/Attributes;
    invoke-virtual {v1}, Lorg/jline/terminal/Attributes;->getInputFlags()Ljava/util/EnumSet;

    move-result-object v2

    .line 267
    .local v2, "iflag":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$InputFlag;>;"
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->IGNBRK:Lorg/jline/terminal/Attributes$InputFlag;

    const/4 v6, 0x1

    invoke-static {v3, v4, v2, v5, v6}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 268
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->IGNBRK:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-static {v3, v4, v2, v5, v6}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 269
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->BRKINT:Lorg/jline/terminal/Attributes$InputFlag;

    const/4 v7, 0x2

    invoke-static {v3, v4, v2, v5, v7}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 270
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->IGNPAR:Lorg/jline/terminal/Attributes$InputFlag;

    const/4 v8, 0x4

    invoke-static {v3, v4, v2, v5, v8}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 271
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->PARMRK:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v9, 0x8

    invoke-static {v3, v4, v2, v5, v9}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 272
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->INPCK:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v10, 0x10

    invoke-static {v3, v4, v2, v5, v10}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 273
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->ISTRIP:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v11, 0x20

    invoke-static {v3, v4, v2, v5, v11}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 274
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->INLCR:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v12, 0x40

    invoke-static {v3, v4, v2, v5, v12}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 275
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->IGNCR:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v13, 0x80

    invoke-static {v3, v4, v2, v5, v13}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 276
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->ICRNL:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v14, 0x100

    invoke-static {v3, v4, v2, v5, v14}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 277
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->IXON:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v15, 0x400

    invoke-static {v3, v4, v2, v5, v15}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 278
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->IXOFF:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v7, 0x1000

    invoke-static {v3, v4, v2, v5, v7}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 279
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->IXANY:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v7, 0x800

    invoke-static {v3, v4, v2, v5, v7}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 280
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->IMAXBEL:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v7, 0x2000

    invoke-static {v3, v4, v2, v5, v7}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 281
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->IUTF8:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v15, 0x4000

    invoke-static {v3, v4, v2, v5, v15}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 283
    invoke-virtual {v1}, Lorg/jline/terminal/Attributes;->getOutputFlags()Ljava/util/EnumSet;

    move-result-object v3

    .line 284
    .local v3, "oflag":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$OutputFlag;>;"
    iget-wide v4, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    sget-object v13, Lorg/jline/terminal/Attributes$OutputFlag;->OPOST:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v4, v5, v3, v13, v6}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 285
    iget-wide v4, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    sget-object v13, Lorg/jline/terminal/Attributes$OutputFlag;->ONLCR:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v4, v5, v3, v13, v8}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 288
    iget-wide v4, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    sget-object v13, Lorg/jline/terminal/Attributes$OutputFlag;->OCRNL:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v4, v5, v3, v13, v9}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 289
    iget-wide v4, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    sget-object v13, Lorg/jline/terminal/Attributes$OutputFlag;->ONOCR:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v4, v5, v3, v13, v10}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 290
    iget-wide v4, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    sget-object v13, Lorg/jline/terminal/Attributes$OutputFlag;->ONLRET:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v4, v5, v3, v13, v11}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 291
    iget-wide v4, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    sget-object v13, Lorg/jline/terminal/Attributes$OutputFlag;->OFILL:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v4, v5, v3, v13, v12}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 292
    iget-wide v4, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    sget-object v13, Lorg/jline/terminal/Attributes$OutputFlag;->NLDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v4, v5, v3, v13, v14}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 293
    iget-wide v4, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    sget-object v13, Lorg/jline/terminal/Attributes$OutputFlag;->TABDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    const/16 v8, 0x1800

    invoke-static {v4, v5, v3, v13, v8}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 294
    iget-wide v4, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    sget-object v8, Lorg/jline/terminal/Attributes$OutputFlag;->CRDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    const/16 v13, 0x600

    invoke-static {v4, v5, v3, v8, v13}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 295
    iget-wide v4, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    sget-object v8, Lorg/jline/terminal/Attributes$OutputFlag;->FFDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    const v13, 0x8000

    invoke-static {v4, v5, v3, v8, v13}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 296
    iget-wide v4, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    sget-object v8, Lorg/jline/terminal/Attributes$OutputFlag;->BSDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v4, v5, v3, v8, v7}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 297
    iget-wide v4, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    sget-object v8, Lorg/jline/terminal/Attributes$OutputFlag;->VTDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v4, v5, v3, v8, v15}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 298
    iget-wide v4, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    sget-object v8, Lorg/jline/terminal/Attributes$OutputFlag;->OFDEL:Lorg/jline/terminal/Attributes$OutputFlag;

    const/16 v15, 0x80

    invoke-static {v4, v5, v3, v8, v15}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 300
    invoke-virtual {v1}, Lorg/jline/terminal/Attributes;->getControlFlags()Ljava/util/EnumSet;

    move-result-object v4

    .line 302
    .local v4, "cflag":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$ControlFlag;>;"
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v15, Lorg/jline/terminal/Attributes$ControlFlag;->CS5:Lorg/jline/terminal/Attributes$ControlFlag;

    const/4 v5, 0x0

    invoke-static {v7, v8, v4, v15, v5}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 303
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v15, Lorg/jline/terminal/Attributes$ControlFlag;->CS6:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-static {v7, v8, v4, v15, v10}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 304
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v15, Lorg/jline/terminal/Attributes$ControlFlag;->CS7:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-static {v7, v8, v4, v15, v11}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 305
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v15, Lorg/jline/terminal/Attributes$ControlFlag;->CS8:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v5, 0x30

    invoke-static {v7, v8, v4, v15, v5}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 306
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$ControlFlag;->CSTOPB:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-static {v7, v8, v4, v5, v12}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 307
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$ControlFlag;->CREAD:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v15, 0x80

    invoke-static {v7, v8, v4, v5, v15}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 308
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$ControlFlag;->PARENB:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-static {v7, v8, v4, v5, v14}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 309
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$ControlFlag;->PARODD:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v15, 0x200

    invoke-static {v7, v8, v4, v5, v15}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 310
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$ControlFlag;->HUPCL:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v14, 0x400

    invoke-static {v7, v8, v4, v5, v14}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 311
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$ControlFlag;->CLOCAL:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v14, 0x800

    invoke-static {v7, v8, v4, v5, v14}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 317
    invoke-virtual {v1}, Lorg/jline/terminal/Attributes;->getLocalFlags()Ljava/util/EnumSet;

    move-result-object v5

    .line 318
    .local v5, "lflag":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$LocalFlag;>;"
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v13, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOKE:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v7, v8, v5, v13, v14}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 319
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v13, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOE:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v7, v8, v5, v13, v10}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 320
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v13, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOK:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v7, v8, v5, v13, v11}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 321
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v11, Lorg/jline/terminal/Attributes$LocalFlag;->ECHO:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v7, v8, v5, v11, v9}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 322
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v11, Lorg/jline/terminal/Attributes$LocalFlag;->ECHONL:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v7, v8, v5, v11, v12}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 323
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v11, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOPRT:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v12, 0x400

    invoke-static {v7, v8, v5, v11, v12}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 324
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v11, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOCTL:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v7, v8, v5, v11, v15}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 325
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v11, Lorg/jline/terminal/Attributes$LocalFlag;->ISIG:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v7, v8, v5, v11, v6}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 326
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v11, Lorg/jline/terminal/Attributes$LocalFlag;->ICANON:Lorg/jline/terminal/Attributes$LocalFlag;

    const/4 v12, 0x2

    invoke-static {v7, v8, v5, v11, v12}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 328
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v11, Lorg/jline/terminal/Attributes$LocalFlag;->IEXTEN:Lorg/jline/terminal/Attributes$LocalFlag;

    const v12, 0x8000

    invoke-static {v7, v8, v5, v11, v12}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 329
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v11, Lorg/jline/terminal/Attributes$LocalFlag;->EXTPROC:Lorg/jline/terminal/Attributes$LocalFlag;

    const/high16 v12, 0x10000

    invoke-static {v7, v8, v5, v11, v12}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 330
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v11, Lorg/jline/terminal/Attributes$LocalFlag;->TOSTOP:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v12, 0x100

    invoke-static {v7, v8, v5, v11, v12}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 331
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v11, Lorg/jline/terminal/Attributes$LocalFlag;->FLUSHO:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v12, 0x1000

    invoke-static {v7, v8, v5, v11, v12}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 333
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v11, Lorg/jline/terminal/Attributes$LocalFlag;->PENDIN:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v12, 0x2000

    invoke-static {v7, v8, v5, v11, v12}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 334
    iget-wide v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v11, Lorg/jline/terminal/Attributes$LocalFlag;->NOFLSH:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v12, 0x80

    invoke-static {v7, v8, v5, v11, v12}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 336
    invoke-virtual {v1}, Lorg/jline/terminal/Attributes;->getControlChars()Ljava/util/EnumMap;

    move-result-object v7

    .line 337
    .local v7, "cc":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lorg/jline/terminal/Attributes$ControlChar;Ljava/lang/Integer;>;"
    sget-object v8, Lorg/jline/terminal/Attributes$ControlChar;->VEOF:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/4 v12, 0x4

    aget-byte v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v8, Lorg/jline/terminal/Attributes$ControlChar;->VEOL:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/16 v12, 0xb

    aget-byte v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v8, Lorg/jline/terminal/Attributes$ControlChar;->VEOL2:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    aget-byte v10, v11, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v8, Lorg/jline/terminal/Attributes$ControlChar;->VERASE:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v10, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/4 v11, 0x2

    aget-byte v10, v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v8, Lorg/jline/terminal/Attributes$ControlChar;->VWERASE:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v10, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/16 v11, 0xe

    aget-byte v10, v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v8, Lorg/jline/terminal/Attributes$ControlChar;->VKILL:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v10, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/4 v11, 0x3

    aget-byte v10, v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v8, Lorg/jline/terminal/Attributes$ControlChar;->VREPRINT:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v10, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/16 v11, 0xc

    aget-byte v10, v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v8, Lorg/jline/terminal/Attributes$ControlChar;->VINTR:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v10, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v8, Lorg/jline/terminal/Attributes$ControlChar;->VQUIT:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v10, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    aget-byte v6, v10, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v8, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/16 v10, 0xa

    aget-byte v8, v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VSTART:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v8, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    aget-byte v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VSTOP:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v8, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/16 v9, 0x9

    aget-byte v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VLNEXT:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v8, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/16 v9, 0xf

    aget-byte v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VDISCARD:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v8, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/16 v9, 0xd

    aget-byte v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VMIN:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v8, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/4 v9, 0x6

    aget-byte v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VTIME:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v8, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/4 v9, 0x5

    aget-byte v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    return-object v1
.end method

.method protected toTermios(Lorg/jline/terminal/Attributes;)Lorg/fusesource/jansi/internal/CLibrary$Termios;
    .locals 1
    .param p1, "t"    # Lorg/jline/terminal/Attributes;

    .line 172
    invoke-static {p1}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->termios(Lorg/jline/terminal/Attributes;)Lorg/fusesource/jansi/internal/CLibrary$Termios;

    move-result-object v0

    return-object v0
.end method
