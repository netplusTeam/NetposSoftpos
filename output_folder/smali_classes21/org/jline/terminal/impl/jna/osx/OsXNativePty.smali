.class public Lorg/jline/terminal/impl/jna/osx/OsXNativePty;
.super Lorg/jline/terminal/impl/jna/JnaNativePty;
.source "OsXNativePty.java"


# static fields
.field private static final C_LIBRARY:Lorg/jline/terminal/impl/jna/osx/CLibrary;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    sget-object v0, Lcom/sun/jna/Platform;->C_LIBRARY_NAME:Ljava/lang/String;

    const-class v1, Lorg/jline/terminal/impl/jna/osx/CLibrary;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/impl/jna/osx/CLibrary;

    sput-object v0, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;->C_LIBRARY:Lorg/jline/terminal/impl/jna/osx/CLibrary;

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

    .line 63
    invoke-direct/range {p0 .. p7}, Lorg/jline/terminal/impl/jna/JnaNativePty;-><init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p1, "master"    # I
    .param p2, "masterFD"    # Ljava/io/FileDescriptor;
    .param p3, "slave"    # I
    .param p4, "slaveFD"    # Ljava/io/FileDescriptor;
    .param p5, "name"    # Ljava/lang/String;

    .line 59
    invoke-direct/range {p0 .. p5}, Lorg/jline/terminal/impl/jna/JnaNativePty;-><init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static current()Lorg/jline/terminal/impl/jna/osx/OsXNativePty;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    const/4 v8, 0x0

    .line 33
    .local v8, "slave":I
    const/16 v0, 0x40

    new-array v9, v0, [B

    .line 34
    .local v9, "buf":[B
    sget-object v0, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;->C_LIBRARY:Lorg/jline/terminal/impl/jna/osx/CLibrary;

    array-length v1, v9

    invoke-interface {v0, v8, v9, v1}, Lorg/jline/terminal/impl/jna/osx/CLibrary;->ttyname_r(I[BI)V

    .line 35
    const/4 v0, 0x0

    move v10, v0

    .line 36
    .local v10, "len":I
    :goto_0
    aget-byte v0, v9, v10

    if-eqz v0, :cond_0

    .line 37
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 39
    :cond_0
    new-instance v7, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {v7, v9, v0, v10}, Ljava/lang/String;-><init>([BII)V

    .line 40
    .local v7, "name":Ljava/lang/String;
    new-instance v11, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;

    const/4 v1, -0x1

    const/4 v2, 0x0

    sget-object v4, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    const/4 v5, 0x1

    sget-object v6, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    move-object v0, v11

    move v3, v8

    invoke-direct/range {v0 .. v7}, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;-><init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V

    return-object v11
.end method

.method public static isatty(I)I
    .locals 1
    .param p0, "fd"    # I

    .line 93
    sget-object v0, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;->C_LIBRARY:Lorg/jline/terminal/impl/jna/osx/CLibrary;

    invoke-interface {v0, p0}, Lorg/jline/terminal/impl/jna/osx/CLibrary;->isatty(I)I

    move-result v0

    return v0
.end method

.method public static open(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)Lorg/jline/terminal/impl/jna/osx/OsXNativePty;
    .locals 17
    .param p0, "attr"    # Lorg/jline/terminal/Attributes;
    .param p1, "size"    # Lorg/jline/terminal/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    new-array v9, v2, [I

    .line 45
    .local v9, "master":[I
    new-array v2, v2, [I

    .line 46
    .local v2, "slave":[I
    const/16 v3, 0x40

    new-array v10, v3, [B

    .line 47
    .local v10, "buf":[B
    sget-object v3, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;->C_LIBRARY:Lorg/jline/terminal/impl/jna/osx/CLibrary;

    .line 48
    const/4 v4, 0x0

    if-eqz v0, :cond_0

    new-instance v5, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;

    invoke-direct {v5, v0}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;-><init>(Lorg/jline/terminal/Attributes;)V

    move-object v7, v5

    goto :goto_0

    :cond_0
    move-object v7, v4

    .line 49
    :goto_0
    if-eqz v1, :cond_1

    new-instance v4, Lorg/jline/terminal/impl/jna/osx/CLibrary$winsize;

    invoke-direct {v4, v1}, Lorg/jline/terminal/impl/jna/osx/CLibrary$winsize;-><init>(Lorg/jline/terminal/Size;)V

    :cond_1
    move-object v8, v4

    .line 47
    move-object v4, v9

    move-object v5, v2

    move-object v6, v10

    invoke-interface/range {v3 .. v8}, Lorg/jline/terminal/impl/jna/osx/CLibrary;->openpty([I[I[BLorg/jline/terminal/impl/jna/osx/CLibrary$termios;Lorg/jline/terminal/impl/jna/osx/CLibrary$winsize;)V

    .line 50
    const/4 v3, 0x0

    .line 51
    .local v3, "len":I
    :goto_1
    aget-byte v4, v10, v3

    if-eqz v4, :cond_2

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 54
    :cond_2
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v10, v5, v3}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v16, v4

    .line 55
    .local v16, "name":Ljava/lang/String;
    new-instance v4, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;

    aget v12, v9, v5

    aget v6, v9, v5

    invoke-static {v6}, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;->newDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v13

    aget v14, v2, v5

    aget v5, v2, v5

    invoke-static {v5}, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;->newDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v15

    move-object v11, v4

    invoke-direct/range {v11 .. v16}, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;-><init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V

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

    .line 75
    new-instance v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;

    invoke-direct {v0, p1}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;-><init>(Lorg/jline/terminal/Attributes;)V

    .line 76
    .local v0, "termios":Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;
    sget-object v1, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;->C_LIBRARY:Lorg/jline/terminal/impl/jna/osx/CLibrary;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;->getSlave()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lorg/jline/terminal/impl/jna/osx/CLibrary;->tcsetattr(IILorg/jline/terminal/impl/jna/osx/CLibrary$termios;)V

    .line 77
    return-void
.end method

.method public getAttr()Lorg/jline/terminal/Attributes;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;

    invoke-direct {v0}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;-><init>()V

    .line 69
    .local v0, "termios":Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;
    sget-object v1, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;->C_LIBRARY:Lorg/jline/terminal/impl/jna/osx/CLibrary;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;->getSlave()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lorg/jline/terminal/impl/jna/osx/CLibrary;->tcgetattr(ILorg/jline/terminal/impl/jna/osx/CLibrary$termios;)V

    .line 70
    invoke-virtual {v0}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->toAttributes()Lorg/jline/terminal/Attributes;

    move-result-object v1

    return-object v1
.end method

.method public getSize()Lorg/jline/terminal/Size;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$winsize;

    invoke-direct {v0}, Lorg/jline/terminal/impl/jna/osx/CLibrary$winsize;-><init>()V

    .line 82
    .local v0, "sz":Lorg/jline/terminal/impl/jna/osx/CLibrary$winsize;
    sget-object v1, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;->C_LIBRARY:Lorg/jline/terminal/impl/jna/osx/CLibrary;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;->getSlave()I

    move-result v2

    new-instance v3, Lcom/sun/jna/NativeLong;

    const-wide/32 v4, 0x40087468

    invoke-direct {v3, v4, v5}, Lcom/sun/jna/NativeLong;-><init>(J)V

    invoke-interface {v1, v2, v3, v0}, Lorg/jline/terminal/impl/jna/osx/CLibrary;->ioctl(ILcom/sun/jna/NativeLong;Lorg/jline/terminal/impl/jna/osx/CLibrary$winsize;)V

    .line 83
    invoke-virtual {v0}, Lorg/jline/terminal/impl/jna/osx/CLibrary$winsize;->toSize()Lorg/jline/terminal/Size;

    move-result-object v1

    return-object v1
.end method

.method public setSize(Lorg/jline/terminal/Size;)V
    .locals 6
    .param p1, "size"    # Lorg/jline/terminal/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    new-instance v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$winsize;

    invoke-direct {v0, p1}, Lorg/jline/terminal/impl/jna/osx/CLibrary$winsize;-><init>(Lorg/jline/terminal/Size;)V

    .line 89
    .local v0, "sz":Lorg/jline/terminal/impl/jna/osx/CLibrary$winsize;
    sget-object v1, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;->C_LIBRARY:Lorg/jline/terminal/impl/jna/osx/CLibrary;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;->getSlave()I

    move-result v2

    new-instance v3, Lcom/sun/jna/NativeLong;

    const-wide v4, 0x80087467L

    invoke-direct {v3, v4, v5}, Lcom/sun/jna/NativeLong;-><init>(J)V

    invoke-interface {v1, v2, v3, v0}, Lorg/jline/terminal/impl/jna/osx/CLibrary;->ioctl(ILcom/sun/jna/NativeLong;Lorg/jline/terminal/impl/jna/osx/CLibrary$winsize;)V

    .line 90
    return-void
.end method
