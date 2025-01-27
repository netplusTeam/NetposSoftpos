.class public Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;
.super Lorg/jline/terminal/impl/jna/JnaNativePty;
.source "SolarisNativePty.java"


# static fields
.field private static final C_LIBRARY:Lorg/jline/terminal/impl/jna/solaris/CLibrary;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    sget-object v0, Lcom/sun/jna/Platform;->C_LIBRARY_NAME:Ljava/lang/String;

    const-class v1, Lorg/jline/terminal/impl/jna/solaris/CLibrary;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary;

    sput-object v0, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;->C_LIBRARY:Lorg/jline/terminal/impl/jna/solaris/CLibrary;

    return-void
.end method

.method public constructor <init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p1, "master"    # I
    .param p2, "masterFD"    # Ljava/io/FileDescriptor;
    .param p3, "slave"    # I
    .param p4, "slaveFD"    # Ljava/io/FileDescriptor;
    .param p5, "slaveOut"    # I
    .param p6, "slaveOutFD"    # Ljava/io/FileDescriptor;
    .param p7, "name"    # Ljava/lang/String;

    .line 62
    invoke-direct/range {p0 .. p7}, Lorg/jline/terminal/impl/jna/JnaNativePty;-><init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p1, "master"    # I
    .param p2, "masterFD"    # Ljava/io/FileDescriptor;
    .param p3, "slave"    # I
    .param p4, "slaveFD"    # Ljava/io/FileDescriptor;
    .param p5, "name"    # Ljava/lang/String;

    .line 58
    invoke-direct/range {p0 .. p5}, Lorg/jline/terminal/impl/jna/JnaNativePty;-><init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static current()Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    const/4 v8, 0x0

    .line 32
    .local v8, "slave":I
    const/16 v0, 0x40

    new-array v9, v0, [B

    .line 33
    .local v9, "buf":[B
    sget-object v0, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;->C_LIBRARY:Lorg/jline/terminal/impl/jna/solaris/CLibrary;

    array-length v1, v9

    invoke-interface {v0, v8, v9, v1}, Lorg/jline/terminal/impl/jna/solaris/CLibrary;->ttyname_r(I[BI)V

    .line 34
    const/4 v0, 0x0

    move v10, v0

    .line 35
    .local v10, "len":I
    :goto_0
    aget-byte v0, v9, v10

    if-eqz v0, :cond_0

    .line 36
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 38
    :cond_0
    new-instance v7, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {v7, v9, v0, v10}, Ljava/lang/String;-><init>([BII)V

    .line 39
    .local v7, "name":Ljava/lang/String;
    new-instance v11, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;

    const/4 v1, -0x1

    const/4 v2, 0x0

    sget-object v4, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    const/4 v5, 0x1

    sget-object v6, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    move-object v0, v11

    move v3, v8

    invoke-direct/range {v0 .. v7}, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;-><init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V

    return-object v11
.end method

.method public static isatty(I)I
    .locals 1
    .param p0, "fd"    # I

    .line 92
    sget-object v0, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;->C_LIBRARY:Lorg/jline/terminal/impl/jna/solaris/CLibrary;

    invoke-interface {v0, p0}, Lorg/jline/terminal/impl/jna/solaris/CLibrary;->isatty(I)I

    move-result v0

    return v0
.end method

.method public static open(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;
    .locals 17
    .param p0, "attr"    # Lorg/jline/terminal/Attributes;
    .param p1, "size"    # Lorg/jline/terminal/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    new-array v9, v2, [I

    .line 44
    .local v9, "master":[I
    new-array v2, v2, [I

    .line 45
    .local v2, "slave":[I
    const/16 v3, 0x40

    new-array v10, v3, [B

    .line 46
    .local v10, "buf":[B
    sget-object v3, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;->C_LIBRARY:Lorg/jline/terminal/impl/jna/solaris/CLibrary;

    .line 47
    const/4 v4, 0x0

    if-eqz v0, :cond_0

    new-instance v5, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;

    invoke-direct {v5, v0}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;-><init>(Lorg/jline/terminal/Attributes;)V

    move-object v7, v5

    goto :goto_0

    :cond_0
    move-object v7, v4

    .line 48
    :goto_0
    if-eqz v1, :cond_1

    new-instance v4, Lorg/jline/terminal/impl/jna/solaris/CLibrary$winsize;

    invoke-direct {v4, v1}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$winsize;-><init>(Lorg/jline/terminal/Size;)V

    :cond_1
    move-object v8, v4

    .line 46
    move-object v4, v9

    move-object v5, v2

    move-object v6, v10

    invoke-interface/range {v3 .. v8}, Lorg/jline/terminal/impl/jna/solaris/CLibrary;->openpty([I[I[BLorg/jline/terminal/impl/jna/solaris/CLibrary$termios;Lorg/jline/terminal/impl/jna/solaris/CLibrary$winsize;)V

    .line 49
    const/4 v3, 0x0

    .line 50
    .local v3, "len":I
    :goto_1
    aget-byte v4, v10, v3

    if-eqz v4, :cond_2

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 53
    :cond_2
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v10, v5, v3}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v16, v4

    .line 54
    .local v16, "name":Ljava/lang/String;
    new-instance v4, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;

    aget v12, v9, v5

    aget v6, v9, v5

    invoke-static {v6}, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;->newDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v13

    aget v14, v2, v5

    aget v5, v2, v5

    invoke-static {v5}, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;->newDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v15

    move-object v11, v4

    invoke-direct/range {v11 .. v16}, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;-><init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method protected doSetAttr(Lorg/jline/terminal/Attributes;)V
    .locals 4
    .param p1, "attr"    # Lorg/jline/terminal/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;

    invoke-direct {v0, p1}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;-><init>(Lorg/jline/terminal/Attributes;)V

    .line 75
    .local v0, "termios":Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;
    sget-object v1, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;->C_LIBRARY:Lorg/jline/terminal/impl/jna/solaris/CLibrary;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;->getSlave()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lorg/jline/terminal/impl/jna/solaris/CLibrary;->tcsetattr(IILorg/jline/terminal/impl/jna/solaris/CLibrary$termios;)V

    .line 76
    return-void
.end method

.method public getAttr()Lorg/jline/terminal/Attributes;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    new-instance v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;

    invoke-direct {v0}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;-><init>()V

    .line 68
    .local v0, "termios":Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;
    sget-object v1, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;->C_LIBRARY:Lorg/jline/terminal/impl/jna/solaris/CLibrary;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;->getSlave()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lorg/jline/terminal/impl/jna/solaris/CLibrary;->tcgetattr(ILorg/jline/terminal/impl/jna/solaris/CLibrary$termios;)V

    .line 69
    invoke-virtual {v0}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->toAttributes()Lorg/jline/terminal/Attributes;

    move-result-object v1

    return-object v1
.end method

.method public getSize()Lorg/jline/terminal/Size;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$winsize;

    invoke-direct {v0}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$winsize;-><init>()V

    .line 81
    .local v0, "sz":Lorg/jline/terminal/impl/jna/solaris/CLibrary$winsize;
    sget-object v1, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;->C_LIBRARY:Lorg/jline/terminal/impl/jna/solaris/CLibrary;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;->getSlave()I

    move-result v2

    const-wide/16 v3, 0x5468

    invoke-interface {v1, v2, v3, v4, v0}, Lorg/jline/terminal/impl/jna/solaris/CLibrary;->ioctl(IJLorg/jline/terminal/impl/jna/solaris/CLibrary$winsize;)V

    .line 82
    invoke-virtual {v0}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$winsize;->toSize()Lorg/jline/terminal/Size;

    move-result-object v1

    return-object v1
.end method

.method public setSize(Lorg/jline/terminal/Size;)V
    .locals 5
    .param p1, "size"    # Lorg/jline/terminal/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$winsize;

    invoke-direct {v0, p1}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$winsize;-><init>(Lorg/jline/terminal/Size;)V

    .line 88
    .local v0, "sz":Lorg/jline/terminal/impl/jna/solaris/CLibrary$winsize;
    sget-object v1, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;->C_LIBRARY:Lorg/jline/terminal/impl/jna/solaris/CLibrary;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;->getSlave()I

    move-result v2

    const-wide/16 v3, 0x5467

    invoke-interface {v1, v2, v3, v4, v0}, Lorg/jline/terminal/impl/jna/solaris/CLibrary;->ioctl(IJLorg/jline/terminal/impl/jna/solaris/CLibrary$winsize;)V

    .line 89
    return-void
.end method
