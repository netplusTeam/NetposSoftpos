.class public Lorg/jline/utils/OSUtils;
.super Ljava/lang/Object;
.source "OSUtils.java"


# static fields
.field public static INFOCMP_COMMAND:Ljava/lang/String;

.field public static final IS_CONEMU:Z

.field public static final IS_CYGWIN:Z

.field public static final IS_MINGW:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IS_MSYSTEM:Z

.field public static final IS_OSX:Z

.field public static final IS_WINDOWS:Z

.field public static STTY_COMMAND:Ljava/lang/String;

.field public static STTY_F_OPTION:Ljava/lang/String;

.field public static TTY_COMMAND:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 15
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "win"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lorg/jline/utils/OSUtils;->IS_WINDOWS:Z

    .line 17
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 18
    const-string v4, "PWD"

    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 19
    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    sput-boolean v4, Lorg/jline/utils/OSUtils;->IS_CYGWIN:Z

    .line 22
    const-string v5, "MINGW"

    const-string v6, "MSYSTEM"

    if-eqz v1, :cond_1

    .line 23
    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 24
    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    sput-boolean v7, Lorg/jline/utils/OSUtils;->IS_MINGW:Z

    .line 26
    if-eqz v1, :cond_3

    .line 27
    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 28
    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 29
    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "MSYS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    sput-boolean v5, Lorg/jline/utils/OSUtils;->IS_MSYSTEM:Z

    .line 31
    if-eqz v1, :cond_4

    .line 32
    const-string v1, "ConEmuPID"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    sput-boolean v2, Lorg/jline/utils/OSUtils;->IS_CONEMU:Z

    .line 34
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lorg/jline/utils/OSUtils;->IS_OSX:Z

    .line 46
    if-nez v4, :cond_7

    if-eqz v5, :cond_5

    goto :goto_4

    .line 67
    :cond_5
    const-string v1, "tty"

    .line 68
    .local v1, "tty":Ljava/lang/String;
    const-string v2, "stty"

    .line 69
    .local v2, "stty":Ljava/lang/String;
    const-string v3, "infocmp"

    .line 70
    .local v3, "infocmp":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 71
    const-string v0, "-f"

    .local v0, "sttyfopt":Ljava/lang/String;
    goto/16 :goto_7

    .line 74
    .end local v0    # "sttyfopt":Ljava/lang/String;
    :cond_6
    const-string v0, "-F"

    .restart local v0    # "sttyfopt":Ljava/lang/String;
    goto/16 :goto_7

    .line 47
    .end local v0    # "sttyfopt":Ljava/lang/String;
    .end local v1    # "tty":Ljava/lang/String;
    .end local v2    # "stty":Ljava/lang/String;
    .end local v3    # "infocmp":Ljava/lang/String;
    :cond_7
    :goto_4
    const-string v0, "tty.exe"

    .line 48
    .local v0, "tty":Ljava/lang/String;
    const-string v1, "stty.exe"

    .line 49
    .local v1, "stty":Ljava/lang/String;
    const/4 v2, 0x0

    .line 50
    .local v2, "sttyfopt":Ljava/lang/String;
    const-string v4, "infocmp.exe"

    .line 51
    .local v4, "infocmp":Ljava/lang/String;
    const-string v5, "PATH"

    invoke-static {v5}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 53
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "paths":[Ljava/lang/String;
    array-length v7, v6

    :goto_5
    if-ge v3, v7, :cond_b

    aget-object v8, v6, v3

    .line 55
    .local v8, "p":Ljava/lang/String;
    if-nez v0, :cond_8

    new-instance v9, Ljava/io/File;

    const-string v10, "tty.exe"

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 56
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_8
    if-nez v1, :cond_9

    new-instance v9, Ljava/io/File;

    const-string v10, "stty.exe"

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 59
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 61
    :cond_9
    if-nez v4, :cond_a

    new-instance v9, Ljava/io/File;

    const-string v10, "infocmp.exe"

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 62
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 54
    .end local v8    # "p":Ljava/lang/String;
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    move-object v3, v4

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_6

    .line 52
    .end local v6    # "paths":[Ljava/lang/String;
    :cond_c
    move-object v3, v4

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 66
    .end local v4    # "infocmp":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .local v0, "stty":Ljava/lang/String;
    .local v1, "tty":Ljava/lang/String;
    .restart local v3    # "infocmp":Ljava/lang/String;
    :goto_6
    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    .line 77
    .local v0, "sttyfopt":Ljava/lang/String;
    .local v2, "stty":Ljava/lang/String;
    :goto_7
    sput-object v1, Lorg/jline/utils/OSUtils;->TTY_COMMAND:Ljava/lang/String;

    .line 78
    sput-object v2, Lorg/jline/utils/OSUtils;->STTY_COMMAND:Ljava/lang/String;

    .line 79
    sput-object v0, Lorg/jline/utils/OSUtils;->STTY_F_OPTION:Ljava/lang/String;

    .line 80
    sput-object v3, Lorg/jline/utils/OSUtils;->INFOCMP_COMMAND:Ljava/lang/String;

    .line 81
    .end local v0    # "sttyfopt":Ljava/lang/String;
    .end local v1    # "tty":Ljava/lang/String;
    .end local v2    # "stty":Ljava/lang/String;
    .end local v3    # "infocmp":Ljava/lang/String;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
