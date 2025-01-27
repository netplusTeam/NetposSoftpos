.class public abstract Lorg/jline/terminal/impl/jna/JnaNativePty;
.super Lorg/jline/terminal/impl/AbstractPty;
.source "JnaNativePty.java"

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
.method protected constructor <init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p1, "master"    # I
    .param p2, "masterFD"    # Ljava/io/FileDescriptor;
    .param p3, "slave"    # I
    .param p4, "slaveFD"    # Ljava/io/FileDescriptor;
    .param p5, "slaveOut"    # I
    .param p6, "slaveOutFD"    # Ljava/io/FileDescriptor;
    .param p7, "name"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Lorg/jline/terminal/impl/AbstractPty;-><init>()V

    .line 72
    iput p1, p0, Lorg/jline/terminal/impl/jna/JnaNativePty;->master:I

    .line 73
    iput p3, p0, Lorg/jline/terminal/impl/jna/JnaNativePty;->slave:I

    .line 74
    iput p5, p0, Lorg/jline/terminal/impl/jna/JnaNativePty;->slaveOut:I

    .line 75
    iput-object p7, p0, Lorg/jline/terminal/impl/jna/JnaNativePty;->name:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lorg/jline/terminal/impl/jna/JnaNativePty;->masterFD:Ljava/io/FileDescriptor;

    .line 77
    iput-object p4, p0, Lorg/jline/terminal/impl/jna/JnaNativePty;->slaveFD:Ljava/io/FileDescriptor;

    .line 78
    iput-object p6, p0, Lorg/jline/terminal/impl/jna/JnaNativePty;->slaveOutFD:Ljava/io/FileDescriptor;

    .line 79
    return-void
.end method

.method protected constructor <init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 8
    .param p1, "master"    # I
    .param p2, "masterFD"    # Ljava/io/FileDescriptor;
    .param p3, "slave"    # I
    .param p4, "slaveFD"    # Ljava/io/FileDescriptor;
    .param p5, "name"    # Ljava/lang/String;

    .line 68
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/jline/terminal/impl/jna/JnaNativePty;-><init>(ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;ILjava/io/FileDescriptor;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static current()Lorg/jline/terminal/impl/jna/JnaNativePty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;->current()Lorg/jline/terminal/impl/jna/osx/OsXNativePty;

    move-result-object v0

    return-object v0

    .line 42
    :cond_0
    invoke-static {}, Lcom/sun/jna/Platform;->isLinux()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-static {}, Lorg/jline/terminal/impl/jna/linux/LinuxNativePty;->current()Lorg/jline/terminal/impl/jna/linux/LinuxNativePty;

    move-result-object v0

    return-object v0

    .line 44
    :cond_1
    invoke-static {}, Lcom/sun/jna/Platform;->isSolaris()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    invoke-static {}, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;->current()Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;

    move-result-object v0

    return-object v0

    .line 46
    :cond_2
    invoke-static {}, Lcom/sun/jna/Platform;->isFreeBSD()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    invoke-static {}, Lorg/jline/terminal/impl/jna/freebsd/FreeBsdNativePty;->current()Lorg/jline/terminal/impl/jna/freebsd/FreeBsdNativePty;

    move-result-object v0

    return-object v0

    .line 49
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static isConsoleInput()Z
    .locals 1

    .line 155
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/jline/terminal/impl/jna/JnaNativePty;->isatty(I)Z

    move-result v0

    return v0
.end method

.method public static isConsoleOutput()Z
    .locals 1

    .line 151
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/jline/terminal/impl/jna/JnaNativePty;->isatty(I)Z

    move-result v0

    return v0
.end method

.method private static isatty(I)Z
    .locals 3
    .param p0, "fd"    # I

    .line 159
    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 160
    invoke-static {p0}, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;->isatty(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 161
    :cond_1
    invoke-static {}, Lcom/sun/jna/Platform;->isLinux()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    invoke-static {p0}, Lorg/jline/terminal/impl/jna/linux/LinuxNativePty;->isatty(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 163
    :cond_3
    invoke-static {}, Lcom/sun/jna/Platform;->isSolaris()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 164
    invoke-static {p0}, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;->isatty(I)I

    move-result v0

    if-ne v0, v2, :cond_4

    move v1, v2

    :cond_4
    return v1

    .line 165
    :cond_5
    invoke-static {}, Lcom/sun/jna/Platform;->isFreeBSD()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 166
    invoke-static {p0}, Lorg/jline/terminal/impl/jna/freebsd/FreeBsdNativePty;->isatty(I)I

    move-result v0

    if-ne v0, v2, :cond_6

    move v1, v2

    :cond_6
    return v1

    .line 168
    :cond_7
    return v1
.end method

.method protected static newDescriptor(I)Ljava/io/FileDescriptor;
    .locals 5
    .param p0, "fd"    # I

    .line 137
    :try_start_0
    const-class v0, Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 138
    .local v0, "cns":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/io/FileDescriptor;>;"
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 139
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

    .line 140
    .end local v0    # "cns":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/io/FileDescriptor;>;"
    :catchall_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create FileDescriptor"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static open(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)Lorg/jline/terminal/impl/jna/JnaNativePty;
    .locals 1
    .param p0, "attr"    # Lorg/jline/terminal/Attributes;
    .param p1, "size"    # Lorg/jline/terminal/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0, p1}, Lorg/jline/terminal/impl/jna/osx/OsXNativePty;->open(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)Lorg/jline/terminal/impl/jna/osx/OsXNativePty;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    invoke-static {}, Lcom/sun/jna/Platform;->isLinux()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-static {p0, p1}, Lorg/jline/terminal/impl/jna/linux/LinuxNativePty;->open(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)Lorg/jline/terminal/impl/jna/linux/LinuxNativePty;

    move-result-object v0

    return-object v0

    .line 58
    :cond_1
    invoke-static {}, Lcom/sun/jna/Platform;->isSolaris()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-static {p0, p1}, Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;->open(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)Lorg/jline/terminal/impl/jna/solaris/SolarisNativePty;

    move-result-object v0

    return-object v0

    .line 60
    :cond_2
    invoke-static {}, Lcom/sun/jna/Platform;->isFreeBSD()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    invoke-static {p0, p1}, Lorg/jline/terminal/impl/jna/freebsd/FreeBsdNativePty;->open(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)Lorg/jline/terminal/impl/jna/freebsd/FreeBsdNativePty;

    move-result-object v0

    return-object v0

    .line 63
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget v0, p0, Lorg/jline/terminal/impl/jna/JnaNativePty;->master:I

    if-lez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lorg/jline/terminal/impl/jna/JnaNativePty;->getMasterInput()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 86
    :cond_0
    iget v0, p0, Lorg/jline/terminal/impl/jna/JnaNativePty;->slave:I

    if-lez v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lorg/jline/terminal/impl/jna/JnaNativePty;->getSlaveInput()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 89
    :cond_1
    return-void
.end method

.method protected doGetSlaveInput()Ljava/io/InputStream;
    .locals 2

    .line 128
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/jna/JnaNativePty;->getSlaveFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public getMaster()I
    .locals 1

    .line 92
    iget v0, p0, Lorg/jline/terminal/impl/jna/JnaNativePty;->master:I

    return v0
.end method

.method public getMasterFD()Ljava/io/FileDescriptor;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/JnaNativePty;->masterFD:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getMasterInput()Ljava/io/InputStream;
    .locals 2

    .line 120
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/jna/JnaNativePty;->getMasterFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public getMasterOutput()Ljava/io/OutputStream;
    .locals 2

    .line 124
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/jna/JnaNativePty;->getMasterFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/JnaNativePty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSlave()I
    .locals 1

    .line 96
    iget v0, p0, Lorg/jline/terminal/impl/jna/JnaNativePty;->slave:I

    return v0
.end method

.method public getSlaveFD()Ljava/io/FileDescriptor;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/JnaNativePty;->slaveFD:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getSlaveOut()I
    .locals 1

    .line 100
    iget v0, p0, Lorg/jline/terminal/impl/jna/JnaNativePty;->slaveOut:I

    return v0
.end method

.method public getSlaveOutFD()Ljava/io/FileDescriptor;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/JnaNativePty;->slaveOutFD:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getSlaveOutput()Ljava/io/OutputStream;
    .locals 2

    .line 132
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lorg/jline/terminal/impl/jna/JnaNativePty;->getSlaveOutFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JnaNativePty["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jline/terminal/impl/jna/JnaNativePty;->getName()Ljava/lang/String;

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
