.class public Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;
.super Lorg/jline/terminal/impl/jansi/JansiNativePty;
.source "FreeBsdNativePty.java"


# static fields
.field private static final ALTWERASE:I = 0x200

.field private static final BRKINT:I = 0x2

.field private static final CIGNORE:I = 0x1

.field private static final CLOCAL:I = 0x8000

.field private static final CREAD:I = 0x800

.field private static final CS5:I = 0x0

.field private static final CS6:I = 0x100

.field private static final CS7:I = 0x200

.field private static final CS8:I = 0x300

.field private static final CSIZE:I = 0x300

.field private static final CSTOPB:I = 0x400

.field private static final ECHO:I = 0x8

.field private static final ECHOCTL:I = 0x40

.field private static final ECHOE:I = 0x2

.field private static final ECHOK:I = 0x4

.field private static final ECHOKE:I = 0x1

.field private static final ECHONL:I = 0x10

.field private static final ECHOPRT:I = 0x20

.field private static final EXTPROC:I = 0x800

.field private static final FLUSHO:I = 0x800000

.field private static final HUPCL:I = 0x4000

.field private static final ICANON:I = 0x100

.field private static final ICRNL:I = 0x100

.field private static final IEXTEN:I = 0x400

.field private static final IGNBRK:I = 0x1

.field private static final IGNCR:I = 0x80

.field private static final IGNPAR:I = 0x4

.field private static final IMAXBEL:I = 0x2000

.field private static final INLCR:I = 0x40

.field private static final INPCK:I = 0x10

.field private static final ISIG:I = 0x80

.field private static final ISTRIP:I = 0x20

.field private static final IXANY:I = 0x800

.field private static final IXOFF:I = 0x400

.field private static final IXON:I = 0x200

.field private static final NOFLSH:I = 0x8000000

.field private static final OCRNL:I = 0x10

.field private static final ONLCR:I = 0x2

.field private static final ONLRET:I = 0x40

.field private static final ONOEOT:I = 0x8

.field private static final OPOST:I = 0x1

.field private static final PARENB:I = 0x1000

.field private static final PARMRK:I = 0x8

.field private static final PARODD:I = 0x2000

.field private static final PENDIN:I = 0x2000000

.field private static final TAB0:I = 0x0

.field private static final TAB3:I = 0x4

.field private static final TABDLY:I = 0x4

.field private static final TOSTOP:I = 0x400000

.field private static final VDISCARD:I = 0xf

.field private static final VDSUSP:I = 0xb

.field private static final VEOF:I = 0x0

.field private static final VEOL:I = 0x1

.field private static final VEOL2:I = 0x2

.field private static final VERASE:I = 0x3

.field private static final VERASE2:I = 0x7

.field private static final VINTR:I = 0x8

.field private static final VKILL:I = 0x5

.field private static final VLNEXT:I = 0xe

.field private static final VMIN:I = 0x10

.field private static final VQUIT:I = 0x9

.field private static final VREPRINT:I = 0x6

.field private static final VSTART:I = 0xc

.field private static final VSTATUS:I = 0x12

.field private static final VSTOP:I = 0xd

.field private static final VSUSP:I = 0xa

.field private static final VTIME:I = 0x11

.field private static final VWERASE:I = 0x4


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

    .line 52
    invoke-direct/range {p0 .. p7}, Lorg/jline/terminal/impl/jansi/JansiNativePty;-><init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p1, "master"    # I
    .param p2, "masterFD"    # Ljava/io/FileDescriptor;
    .param p3, "slave"    # I
    .param p4, "slaveFD"    # Ljava/io/FileDescriptor;
    .param p5, "name"    # Ljava/lang/String;

    .line 48
    invoke-direct/range {p0 .. p5}, Lorg/jline/terminal/impl/jansi/JansiNativePty;-><init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V

    .line 49
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

    .line 323
    .local p2, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TT;>;"
    .local p3, "flag":Ljava/lang/Enum;, "TT;"
    int-to-long v0, p4

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p2, p3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_0
    return-void
.end method

.method public static current()Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    :try_start_0
    invoke-static {}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->ttyname()Ljava/lang/String;

    move-result-object v7

    .line 26
    .local v7, "name":Ljava/lang/String;
    new-instance v8, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    const/4 v5, 0x1

    sget-object v6, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;-><init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 27
    .end local v7    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not a tty"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static open(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;
    .locals 11
    .param p0, "attr"    # Lorg/jline/terminal/Attributes;
    .param p1, "size"    # Lorg/jline/terminal/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 34
    .local v1, "master":[I
    new-array v0, v0, [I

    .line 35
    .local v0, "slave":[I
    const/16 v2, 0x40

    new-array v2, v2, [B

    .line 36
    .local v2, "buf":[B
    nop

    .line 37
    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->termios(Lorg/jline/terminal/Attributes;)Lorg/fusesource/jansi/internal/CLibrary$Termios;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 38
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

    .line 36
    :cond_1
    invoke-static {v1, v0, v2, v4, v3}, Lorg/fusesource/jansi/internal/CLibrary;->openpty([I[I[BLorg/fusesource/jansi/internal/CLibrary$Termios;Lorg/fusesource/jansi/internal/CLibrary$WinSize;)I

    .line 39
    const/4 v3, 0x0

    .line 40
    .local v3, "len":I
    :goto_1
    aget-byte v4, v2, v3

    if-eqz v4, :cond_2

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 43
    :cond_2
    new-instance v9, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v9, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    .line 44
    .local v9, "name":Ljava/lang/String;
    new-instance v10, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;

    aget v5, v1, v4

    aget v6, v1, v4

    invoke-static {v6}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->newDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v6

    aget v7, v0, v4

    aget v4, v0, v4

    invoke-static {v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->newDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v8

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;-><init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V

    return-object v10
.end method

.method private static setFlag(ZJJ)J
    .locals 2
    .param p0, "flag"    # Z
    .param p1, "value"    # J
    .param p3, "org"    # J

    .line 319
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

    .line 134
    move-object v0, p0

    new-instance v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;

    invoke-direct {v1}, Lorg/fusesource/jansi/internal/CLibrary$Termios;-><init>()V

    .line 135
    .local v1, "tio":Lorg/fusesource/jansi/internal/CLibrary$Termios;
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IGNBRK:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v5, 0x1

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 136
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->BRKINT:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v7, 0x2

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 137
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IGNPAR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v9, 0x4

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 138
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->PARMRK:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v11, 0x8

    invoke-static {v2, v11, v12, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 139
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->INPCK:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v13, 0x10

    invoke-static {v2, v13, v14, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 140
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->ISTRIP:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v9, 0x20

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 141
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->INLCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v9, 0x40

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 142
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IGNCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v9, 0x80

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 143
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->ICRNL:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v9, 0x100

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 144
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IXON:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v9, 0x200

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 145
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IXOFF:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v9, 0x400

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 146
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IXANY:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v9, 0x800

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 147
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IMAXBEL:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    const-wide/16 v9, 0x2000

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    .line 150
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->OPOST:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    .line 151
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->ONLCR:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    .line 153
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->ONOEOT:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    invoke-static {v2, v11, v12, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    .line 154
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->OCRNL:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    invoke-static {v2, v13, v14, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    .line 156
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->ONLRET:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    const-wide/16 v13, 0x40

    invoke-static {v2, v13, v14, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    .line 159
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->TABDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    const-wide/16 v13, 0x4

    invoke-static {v2, v13, v14, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    .line 166
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CIGNORE:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 167
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CS5:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    const-wide/16 v13, 0x0

    invoke-static {v2, v13, v14, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 168
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CS6:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    const-wide/16 v13, 0x100

    invoke-static {v2, v13, v14, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 169
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CS7:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    const-wide/16 v13, 0x200

    invoke-static {v2, v13, v14, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 170
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CS8:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    const-wide/16 v13, 0x300

    invoke-static {v2, v13, v14, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 171
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CSTOPB:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    const-wide/16 v13, 0x400

    invoke-static {v2, v13, v14, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 172
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CREAD:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    const-wide/16 v13, 0x800

    invoke-static {v2, v13, v14, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 173
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->PARENB:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    const-wide/16 v13, 0x1000

    invoke-static {v2, v13, v14, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 174
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->PARODD:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 175
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->HUPCL:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    const-wide/16 v9, 0x4000

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 176
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CLOCAL:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    const-wide/32 v9, 0x8000

    invoke-static {v2, v9, v10, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    .line 183
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOKE:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 184
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOE:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    invoke-static {v2, v7, v8, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 185
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOK:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/16 v5, 0x4

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 186
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHO:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    invoke-static {v2, v11, v12, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 187
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHONL:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/16 v5, 0x10

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 188
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOPRT:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/16 v5, 0x20

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 189
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOCTL:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/16 v5, 0x40

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 190
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ISIG:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/16 v5, 0x80

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 191
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ICANON:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/16 v5, 0x100

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 192
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ALTWERASE:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/16 v5, 0x200

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 193
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->IEXTEN:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/16 v5, 0x400

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 194
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->EXTPROC:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/16 v5, 0x800

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 195
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->TOSTOP:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/32 v5, 0x400000

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 196
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->FLUSHO:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/32 v5, 0x800000

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 198
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->PENDIN:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/32 v5, 0x2000000

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 199
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->NOFLSH:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {p0, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-wide v3, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    const-wide/32 v5, 0x8000000

    invoke-static {v2, v5, v6, v3, v4}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->setFlag(ZJJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    .line 201
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VEOF:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 202
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VEOL:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    .line 203
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VEOL2:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    .line 204
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VERASE:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    .line 205
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VWERASE:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x4

    aput-byte v3, v2, v4

    .line 206
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VKILL:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x5

    aput-byte v3, v2, v4

    .line 207
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VREPRINT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x6

    aput-byte v3, v2, v4

    .line 208
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VINTR:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0x8

    aput-byte v3, v2, v4

    .line 209
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VQUIT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0x9

    aput-byte v3, v2, v4

    .line 210
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xa

    aput-byte v3, v2, v4

    .line 212
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VSTART:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xc

    aput-byte v3, v2, v4

    .line 213
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VSTOP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xd

    aput-byte v3, v2, v4

    .line 214
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VLNEXT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xe

    aput-byte v3, v2, v4

    .line 215
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VDISCARD:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xf

    aput-byte v3, v2, v4

    .line 216
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VMIN:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0x10

    aput-byte v3, v2, v4

    .line 217
    iget-object v2, v1, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VTIME:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0x11

    aput-byte v3, v2, v4

    .line 219
    return-object v1
.end method


# virtual methods
.method protected toAttributes(Lorg/fusesource/jansi/internal/CLibrary$Termios;)Lorg/jline/terminal/Attributes;
    .locals 16
    .param p1, "tio"    # Lorg/fusesource/jansi/internal/CLibrary$Termios;

    .line 223
    move-object/from16 v0, p1

    new-instance v1, Lorg/jline/terminal/Attributes;

    invoke-direct {v1}, Lorg/jline/terminal/Attributes;-><init>()V

    .line 225
    .local v1, "attr":Lorg/jline/terminal/Attributes;
    invoke-virtual {v1}, Lorg/jline/terminal/Attributes;->getInputFlags()Ljava/util/EnumSet;

    move-result-object v2

    .line 226
    .local v2, "iflag":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$InputFlag;>;"
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->IGNBRK:Lorg/jline/terminal/Attributes$InputFlag;

    const/4 v6, 0x1

    invoke-static {v3, v4, v2, v5, v6}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 227
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->IGNBRK:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-static {v3, v4, v2, v5, v6}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 228
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->BRKINT:Lorg/jline/terminal/Attributes$InputFlag;

    const/4 v7, 0x2

    invoke-static {v3, v4, v2, v5, v7}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 229
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->IGNPAR:Lorg/jline/terminal/Attributes$InputFlag;

    const/4 v8, 0x4

    invoke-static {v3, v4, v2, v5, v8}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 230
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->PARMRK:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v9, 0x8

    invoke-static {v3, v4, v2, v5, v9}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 231
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->INPCK:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v10, 0x10

    invoke-static {v3, v4, v2, v5, v10}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 232
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->ISTRIP:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v11, 0x20

    invoke-static {v3, v4, v2, v5, v11}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 233
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->INLCR:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v12, 0x40

    invoke-static {v3, v4, v2, v5, v12}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 234
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->IGNCR:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v13, 0x80

    invoke-static {v3, v4, v2, v5, v13}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 235
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->ICRNL:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v14, 0x100

    invoke-static {v3, v4, v2, v5, v14}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 236
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->IXON:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v15, 0x200

    invoke-static {v3, v4, v2, v5, v15}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 237
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->IXOFF:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v13, 0x400

    invoke-static {v3, v4, v2, v5, v13}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 238
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->IXANY:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v11, 0x800

    invoke-static {v3, v4, v2, v5, v11}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 239
    iget-wide v3, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_iflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->IMAXBEL:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v11, 0x2000

    invoke-static {v3, v4, v2, v5, v11}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 242
    invoke-virtual {v1}, Lorg/jline/terminal/Attributes;->getOutputFlags()Ljava/util/EnumSet;

    move-result-object v3

    .line 243
    .local v3, "oflag":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$OutputFlag;>;"
    iget-wide v4, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    sget-object v11, Lorg/jline/terminal/Attributes$OutputFlag;->OPOST:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v4, v5, v3, v11, v6}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 244
    iget-wide v4, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    sget-object v11, Lorg/jline/terminal/Attributes$OutputFlag;->ONLCR:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v4, v5, v3, v11, v7}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 246
    iget-wide v4, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    sget-object v11, Lorg/jline/terminal/Attributes$OutputFlag;->ONOEOT:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v4, v5, v3, v11, v9}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 247
    iget-wide v4, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    sget-object v11, Lorg/jline/terminal/Attributes$OutputFlag;->OCRNL:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v4, v5, v3, v11, v10}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 249
    iget-wide v4, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    sget-object v11, Lorg/jline/terminal/Attributes$OutputFlag;->ONLRET:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v4, v5, v3, v11, v12}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 252
    iget-wide v4, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_oflag:J

    sget-object v11, Lorg/jline/terminal/Attributes$OutputFlag;->TABDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v4, v5, v3, v11, v8}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 259
    invoke-virtual {v1}, Lorg/jline/terminal/Attributes;->getControlFlags()Ljava/util/EnumSet;

    move-result-object v4

    .line 260
    .local v4, "cflag":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$ControlFlag;>;"
    iget-wide v10, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$ControlFlag;->CIGNORE:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-static {v10, v11, v4, v5, v6}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 261
    iget-wide v10, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$ControlFlag;->CS5:Lorg/jline/terminal/Attributes$ControlFlag;

    const/4 v12, 0x0

    invoke-static {v10, v11, v4, v5, v12}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 262
    iget-wide v10, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$ControlFlag;->CS6:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-static {v10, v11, v4, v5, v14}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 263
    iget-wide v10, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$ControlFlag;->CS7:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-static {v10, v11, v4, v5, v15}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 264
    iget-wide v10, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$ControlFlag;->CS8:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v12, 0x300

    invoke-static {v10, v11, v4, v5, v12}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 265
    iget-wide v10, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$ControlFlag;->CSTOPB:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-static {v10, v11, v4, v5, v13}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 266
    iget-wide v10, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$ControlFlag;->CREAD:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v12, 0x800

    invoke-static {v10, v11, v4, v5, v12}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 267
    iget-wide v10, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$ControlFlag;->PARENB:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v12, 0x1000

    invoke-static {v10, v11, v4, v5, v12}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 268
    iget-wide v10, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$ControlFlag;->PARODD:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v12, 0x2000

    invoke-static {v10, v11, v4, v5, v12}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 269
    iget-wide v10, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$ControlFlag;->HUPCL:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v12, 0x4000

    invoke-static {v10, v11, v4, v5, v12}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 270
    iget-wide v10, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$ControlFlag;->CLOCAL:Lorg/jline/terminal/Attributes$ControlFlag;

    const v12, 0x8000

    invoke-static {v10, v11, v4, v5, v12}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 276
    invoke-virtual {v1}, Lorg/jline/terminal/Attributes;->getLocalFlags()Ljava/util/EnumSet;

    move-result-object v10

    .line 277
    .local v10, "lflag":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$LocalFlag;>;"
    iget-wide v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOKE:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v11, v12, v10, v5, v6}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 278
    iget-wide v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOE:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v11, v12, v10, v5, v7}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 279
    iget-wide v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOK:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v11, v12, v10, v5, v8}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 280
    iget-wide v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$LocalFlag;->ECHO:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v11, v12, v10, v5, v9}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 281
    iget-wide v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$LocalFlag;->ECHONL:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v9, 0x10

    invoke-static {v11, v12, v10, v5, v9}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 282
    iget-wide v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v9, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOPRT:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v5, 0x20

    invoke-static {v11, v12, v10, v9, v5}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 283
    iget-wide v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOCTL:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v9, 0x40

    invoke-static {v11, v12, v10, v5, v9}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 284
    iget-wide v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$LocalFlag;->ISIG:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v9, 0x80

    invoke-static {v11, v12, v10, v5, v9}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 285
    iget-wide v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$LocalFlag;->ICANON:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v11, v12, v10, v5, v14}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 286
    iget-wide v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$LocalFlag;->ALTWERASE:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v11, v12, v10, v5, v15}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 287
    iget-wide v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$LocalFlag;->IEXTEN:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v11, v12, v10, v5, v13}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 288
    iget-wide v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$LocalFlag;->EXTPROC:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v9, 0x800

    invoke-static {v11, v12, v10, v5, v9}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 289
    iget-wide v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$LocalFlag;->TOSTOP:Lorg/jline/terminal/Attributes$LocalFlag;

    const/high16 v9, 0x400000

    invoke-static {v11, v12, v10, v5, v9}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 290
    iget-wide v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$LocalFlag;->FLUSHO:Lorg/jline/terminal/Attributes$LocalFlag;

    const/high16 v9, 0x800000

    invoke-static {v11, v12, v10, v5, v9}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 292
    iget-wide v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$LocalFlag;->PENDIN:Lorg/jline/terminal/Attributes$LocalFlag;

    const/high16 v9, 0x2000000

    invoke-static {v11, v12, v10, v5, v9}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 293
    iget-wide v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_lflag:J

    sget-object v5, Lorg/jline/terminal/Attributes$LocalFlag;->NOFLSH:Lorg/jline/terminal/Attributes$LocalFlag;

    const/high16 v9, 0x8000000

    invoke-static {v11, v12, v10, v5, v9}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 295
    invoke-virtual {v1}, Lorg/jline/terminal/Attributes;->getControlChars()Ljava/util/EnumMap;

    move-result-object v5

    .line 296
    .local v5, "cc":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lorg/jline/terminal/Attributes$ControlChar;Ljava/lang/Integer;>;"
    sget-object v9, Lorg/jline/terminal/Attributes$ControlChar;->VEOF:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v9, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v9, Lorg/jline/terminal/Attributes$ControlChar;->VEOL:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v11, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    aget-byte v6, v11, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VEOL2:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v9, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    aget-byte v7, v9, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VERASE:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/4 v9, 0x3

    aget-byte v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VWERASE:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    aget-byte v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VKILL:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/4 v8, 0x5

    aget-byte v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VREPRINT:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/4 v8, 0x6

    aget-byte v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VINTR:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/16 v8, 0x8

    aget-byte v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VQUIT:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/16 v8, 0x9

    aget-byte v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/16 v8, 0xa

    aget-byte v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VSTART:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/16 v8, 0xc

    aget-byte v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VSTOP:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/16 v8, 0xd

    aget-byte v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VLNEXT:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/16 v8, 0xe

    aget-byte v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VDISCARD:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/16 v8, 0xf

    aget-byte v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VMIN:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/16 v8, 0x10

    aget-byte v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VTIME:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v7, v0, Lorg/fusesource/jansi/internal/CLibrary$Termios;->c_cc:[B

    const/16 v8, 0x11

    aget-byte v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-object v1
.end method

.method protected toTermios(Lorg/jline/terminal/Attributes;)Lorg/fusesource/jansi/internal/CLibrary$Termios;
    .locals 1
    .param p1, "t"    # Lorg/jline/terminal/Attributes;

    .line 130
    invoke-static {p1}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->termios(Lorg/jline/terminal/Attributes;)Lorg/fusesource/jansi/internal/CLibrary$Termios;

    move-result-object v0

    return-object v0
.end method
