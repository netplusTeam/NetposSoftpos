.class public Lorg/jline/terminal/impl/jansi/JansiSupportImpl;
.super Ljava/lang/Object;
.source "JansiSupportImpl.java"

# interfaces
.implements Lorg/jline/terminal/spi/JansiSupport;


# static fields
.field static final JANSI_MAJOR_VERSION:I

.field static final JANSI_MINOR_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    const/4 v0, 0x0

    .local v0, "major":I
    const/4 v1, 0x0

    .line 37
    .local v1, "minor":I
    const/4 v2, 0x0

    .line 38
    .local v2, "v":Ljava/lang/String;
    :try_start_0
    const-class v3, Lorg/fusesource/jansi/AnsiConsole;

    const-string v4, "jansi.properties"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 39
    .local v3, "is":Ljava/io/InputStream;
    if-eqz v3, :cond_1

    .line 40
    :try_start_1
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 41
    .local v4, "props":Ljava/util/Properties;
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 42
    const-string v5, "version"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v5

    goto :goto_1

    .line 38
    .end local v4    # "props":Ljava/util/Properties;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "major":I
    .end local v1    # "minor":I
    .end local v2    # "v":Ljava/lang/String;
    :cond_0
    :goto_0
    throw v4

    .line 44
    .restart local v0    # "major":I
    .restart local v1    # "minor":I
    .restart local v2    # "v":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 46
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_2
    goto :goto_2

    .line 57
    .end local v2    # "v":Ljava/lang/String;
    :catchall_2
    move-exception v2

    goto :goto_3

    .line 44
    .restart local v2    # "v":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 47
    :goto_2
    if-nez v2, :cond_3

    .line 48
    :try_start_4
    const-class v3, Lorg/fusesource/jansi/AnsiConsole;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 50
    :cond_3
    if-eqz v2, :cond_4

    .line 51
    const-string v3, "([0-9]+)\\.([0-9]+)([\\.-]\\S+)?"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 52
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 53
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    .line 54
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v1, v4

    .line 59
    .end local v2    # "v":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :cond_4
    nop

    .line 60
    :goto_3
    sput v0, Lorg/jline/terminal/impl/jansi/JansiSupportImpl;->JANSI_MAJOR_VERSION:I

    .line 61
    sput v1, Lorg/jline/terminal/impl/jansi/JansiSupportImpl;->JANSI_MINOR_VERSION:I

    .line 62
    .end local v0    # "major":I
    .end local v1    # "minor":I
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJansiMajorVersion()I
    .locals 1

    .line 65
    sget v0, Lorg/jline/terminal/impl/jansi/JansiSupportImpl;->JANSI_MAJOR_VERSION:I

    return v0
.end method

.method public static getJansiMinorVersion()I
    .locals 1

    .line 69
    sget v0, Lorg/jline/terminal/impl/jansi/JansiSupportImpl;->JANSI_MINOR_VERSION:I

    return v0
.end method

.method public static isAtLeast(II)Z
    .locals 1
    .param p0, "major"    # I
    .param p1, "minor"    # I

    .line 73
    sget v0, Lorg/jline/terminal/impl/jansi/JansiSupportImpl;->JANSI_MAJOR_VERSION:I

    if-gt v0, p0, :cond_1

    if-ne v0, p0, :cond_0

    sget v0, Lorg/jline/terminal/impl/jansi/JansiSupportImpl;->JANSI_MINOR_VERSION:I

    if-lt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public current()Lorg/jline/terminal/spi/Pty;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "osName":Ljava/lang/String;
    const-string v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-static {}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->current()Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;

    move-result-object v1

    return-object v1

    .line 82
    :cond_0
    const-string v1, "Mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Darwin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    const-string v1, "Solaris"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SunOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 89
    const-string v1, "FreeBSD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/jline/terminal/impl/jansi/JansiSupportImpl;->isAtLeast(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    invoke-static {}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->current()Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;

    move-result-object v1

    return-object v1

    .line 94
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 83
    :cond_3
    :goto_0
    invoke-static {}, Lorg/jline/terminal/impl/jansi/osx/OsXNativePty;->current()Lorg/jline/terminal/impl/jansi/osx/OsXNativePty;

    move-result-object v1

    return-object v1
.end method

.method public isConsoleInput()Z
    .locals 2

    .line 156
    sget-boolean v0, Lorg/jline/utils/OSUtils;->IS_CYGWIN:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lorg/jline/utils/OSUtils;->IS_MSYSTEM:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    sget-boolean v0, Lorg/jline/utils/OSUtils;->IS_WINDOWS:Z

    if-eqz v0, :cond_1

    .line 163
    invoke-static {}, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->isConsoleInput()Z

    move-result v0

    return v0

    .line 165
    :cond_1
    invoke-static {}, Lorg/jline/terminal/impl/jansi/JansiNativePty;->isConsoleInput()Z

    move-result v0

    return v0

    .line 157
    :cond_2
    :goto_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/jline/terminal/impl/jansi/JansiSupportImpl;->isAtLeast(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    invoke-static {}, Lorg/jline/terminal/impl/jansi/JansiNativePty;->isConsoleInput()Z

    move-result v0

    return v0

    .line 160
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isConsoleOutput()Z
    .locals 2

    .line 142
    sget-boolean v0, Lorg/jline/utils/OSUtils;->IS_CYGWIN:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lorg/jline/utils/OSUtils;->IS_MSYSTEM:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    sget-boolean v0, Lorg/jline/utils/OSUtils;->IS_WINDOWS:Z

    if-eqz v0, :cond_1

    .line 149
    invoke-static {}, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->isConsoleOutput()Z

    move-result v0

    return v0

    .line 151
    :cond_1
    invoke-static {}, Lorg/jline/terminal/impl/jansi/JansiNativePty;->isConsoleOutput()Z

    move-result v0

    return v0

    .line 143
    :cond_2
    :goto_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/jline/terminal/impl/jansi/JansiSupportImpl;->isAtLeast(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    invoke-static {}, Lorg/jline/terminal/impl/jansi/JansiNativePty;->isConsoleOutput()Z

    move-result v0

    return v0

    .line 146
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isWindowsConsole()Z
    .locals 1

    .line 137
    invoke-static {}, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->isWindowsConsole()Z

    move-result v0

    return v0
.end method

.method public open(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)Lorg/jline/terminal/spi/Pty;
    .locals 2
    .param p1, "attributes"    # Lorg/jline/terminal/Attributes;
    .param p2, "size"    # Lorg/jline/terminal/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/jline/terminal/impl/jansi/JansiSupportImpl;->isAtLeast(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "osName":Ljava/lang/String;
    const-string v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-static {p1, p2}, Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;->open(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)Lorg/jline/terminal/impl/jansi/linux/LinuxNativePty;

    move-result-object v1

    return-object v1

    .line 104
    :cond_0
    const-string v1, "Mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Darwin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    const-string v1, "Solaris"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SunOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 111
    const-string v1, "FreeBSD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    invoke-static {p1, p2}, Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;->open(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)Lorg/jline/terminal/impl/jansi/freebsd/FreeBsdNativePty;

    move-result-object v1

    return-object v1

    .line 105
    :cond_2
    :goto_0
    invoke-static {p1, p2}, Lorg/jline/terminal/impl/jansi/osx/OsXNativePty;->open(Lorg/jline/terminal/Attributes;Lorg/jline/terminal/Size;)Lorg/jline/terminal/impl/jansi/osx/OsXNativePty;

    move-result-object v1

    return-object v1

    .line 115
    .end local v0    # "osName":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public winSysTerminal(Ljava/lang/String;Ljava/lang/String;ZLjava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "ansiPassThrough"    # Z
    .param p4, "encoding"    # Ljava/nio/charset/Charset;
    .param p5, "codepage"    # I
    .param p6, "nativeSignals"    # Z
    .param p7, "signalHandler"    # Lorg/jline/terminal/Terminal$SignalHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lorg/jline/terminal/impl/jansi/JansiSupportImpl;->winSysTerminal(Ljava/lang/String;Ljava/lang/String;ZLjava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;Z)Lorg/jline/terminal/Terminal;

    move-result-object v0

    return-object v0
.end method

.method public winSysTerminal(Ljava/lang/String;Ljava/lang/String;ZLjava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;Z)Lorg/jline/terminal/Terminal;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "ansiPassThrough"    # Z
    .param p4, "encoding"    # Ljava/nio/charset/Charset;
    .param p5, "codepage"    # I
    .param p6, "nativeSignals"    # Z
    .param p7, "signalHandler"    # Lorg/jline/terminal/Terminal$SignalHandler;
    .param p8, "paused"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/jline/terminal/impl/jansi/JansiSupportImpl;->isAtLeast(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    invoke-static/range {p1 .. p8}, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->createTerminal(Ljava/lang/String;Ljava/lang/String;ZLjava/nio/charset/Charset;IZLorg/jline/terminal/Terminal$SignalHandler;Z)Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;

    move-result-object v1

    .line 127
    .local v1, "terminal":Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;
    const/16 v2, 0x10

    invoke-static {v0, v2}, Lorg/jline/terminal/impl/jansi/JansiSupportImpl;->isAtLeast(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {v1}, Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;->disableScrolling()V

    .line 130
    :cond_0
    return-object v1

    .line 132
    .end local v1    # "terminal":Lorg/jline/terminal/impl/jansi/win/JansiWinSysTerminal;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
