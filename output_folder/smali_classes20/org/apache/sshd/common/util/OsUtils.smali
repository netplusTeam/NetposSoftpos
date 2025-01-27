.class public final Lorg/apache/sshd/common/util/OsUtils;
.super Ljava/lang/Object;
.source "OsUtils.java"


# static fields
.field private static final CURRENT_USER_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURRENT_USER_OVERRIDE_PROP:Ljava/lang/String; = "org.apache.sshd.currentUser"

.field private static final JAVA_VERSION_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/common/util/VersionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final JAVA_VERSION_OVERRIDE_PROP:Ljava/lang/String; = "org.apache.sshd.javaVersion"

.field public static final LINUX_COMMAND:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LINUX_SHELL_COMMAND_NAME:Ljava/lang/String; = "/bin/sh"

.field private static final OS_TYPE_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final OS_TYPE_OVERRIDE_PROP:Ljava/lang/String; = "org.apache.sshd.osType"

.field public static final ROOT_USER:Ljava/lang/String; = "root"

.field public static final WINDOWS_COMMAND:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final WINDOWS_SHELL_COMMAND_NAME:Ljava/lang/String; = "cmd.exe"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    const-string v0, "/bin/sh"

    const-string v1, "-i"

    const-string v2, "-l"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/util/OsUtils;->LINUX_COMMAND:Ljava/util/List;

    .line 58
    nop

    .line 59
    const-string v0, "cmd.exe"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/util/OsUtils;->WINDOWS_COMMAND:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/sshd/common/util/OsUtils;->CURRENT_USER_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/sshd/common/util/OsUtils;->JAVA_VERSION_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/sshd/common/util/OsUtils;->OS_TYPE_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCanonicalUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "user"    # Ljava/lang/String;

    .line 157
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    return-object p0

    .line 162
    :cond_0
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isWin32()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 164
    .local v0, "pos":I
    if-lez v0, :cond_1

    .line 165
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 168
    :cond_1
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 169
    if-lez v0, :cond_2

    .line 170
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 174
    .end local v0    # "pos":I
    :cond_2
    return-object p0
.end method

.method public static getComparablePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 262
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 263
    .local v0, "p":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isWin32()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public static getCurrentUser()Ljava/lang/String;
    .locals 4

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "username":Ljava/lang/String;
    sget-object v1, Lorg/apache/sshd/common/util/OsUtils;->CURRENT_USER_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 137
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 138
    if-eqz v0, :cond_0

    .line 139
    monitor-exit v1

    return-object v0

    .line 142
    :cond_0
    const-string v2, "org.apache.sshd.currentUser"

    const-string/jumbo v3, "user.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/sshd/common/util/OsUtils;->getCanonicalUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 143
    const-string v2, "No username available"

    invoke-static {v0, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 145
    monitor-exit v1

    .line 147
    return-object v0

    .line 145
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getJavaVersion()Lorg/apache/sshd/common/util/VersionInfo;
    .locals 7

    .line 218
    sget-object v0, Lorg/apache/sshd/common/util/OsUtils;->JAVA_VERSION_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 219
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/util/VersionInfo;

    .line 220
    .local v1, "version":Lorg/apache/sshd/common/util/VersionInfo;
    if-eqz v1, :cond_0

    .line 221
    monitor-exit v0

    return-object v1

    .line 224
    :cond_0
    const-string v2, "org.apache.sshd.javaVersion"

    const-string v3, "java.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "value":Ljava/lang/String;
    const-string v3, "No configured Java version value"

    invoke-static {v2, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5f

    const/16 v5, 0x2e

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 228
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 230
    .local v4, "ch":C
    if-eq v4, v5, :cond_2

    const/16 v6, 0x30

    if-lt v4, v6, :cond_1

    const/16 v6, 0x39

    if-gt v4, v6, :cond_1

    .line 231
    goto :goto_1

    .line 234
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 235
    goto :goto_2

    .line 228
    .end local v4    # "ch":C
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    .end local v3    # "index":I
    :cond_3
    :goto_2
    invoke-static {v2}, Lorg/apache/sshd/common/util/VersionInfo;->parse(Ljava/lang/String;)Lorg/apache/sshd/common/util/VersionInfo;

    move-result-object v3

    const-string v4, "No version parsed for %s"

    invoke-static {v3, v4, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/util/VersionInfo;

    move-object v1, v3

    .line 239
    sget-object v3, Lorg/apache/sshd/common/util/OsUtils;->JAVA_VERSION_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 240
    .end local v2    # "value":Ljava/lang/String;
    monitor-exit v0

    .line 242
    return-object v1

    .line 240
    .end local v1    # "version":Lorg/apache/sshd/common/util/VersionInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isUNIX()Z
    .locals 1

    .line 73
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isWin32()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isWin32()Z
    .locals 5

    .line 83
    sget-object v0, Lorg/apache/sshd/common/util/OsUtils;->OS_TYPE_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 84
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 85
    .local v1, "typeValue":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 89
    :cond_0
    const-string v2, "org.apache.sshd.osType"

    const-string v3, "os.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "windows"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v1, v3

    .line 91
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 92
    .end local v2    # "value":Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 92
    .end local v1    # "typeValue":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static resolveCanonicalGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "group"    # Ljava/lang/String;
    .param p1, "user"    # Ljava/lang/String;

    .line 185
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isUNIX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    return-object p0

    .line 190
    :cond_0
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 191
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x5c

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 192
    .local v0, "pos":I
    :goto_0
    if-lez v0, :cond_2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    return-object v1

    .line 195
    .end local v0    # "pos":I
    :cond_3
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 196
    .restart local v0    # "pos":I
    if-gez v0, :cond_4

    move-object v1, p0

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public static resolveDefaultInteractiveCommandElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isWin32()Z

    move-result v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/OsUtils;->resolveDefaultInteractiveCommandElements(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static resolveDefaultInteractiveCommandElements(Z)Ljava/util/List;
    .locals 1
    .param p0, "winOS"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    if-eqz p0, :cond_0

    .line 122
    sget-object v0, Lorg/apache/sshd/common/util/OsUtils;->WINDOWS_COMMAND:Ljava/util/List;

    return-object v0

    .line 124
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/util/OsUtils;->LINUX_COMMAND:Ljava/util/List;

    return-object v0
.end method

.method public static resolveDefaultInteractiveShellCommand()Ljava/lang/String;
    .locals 1

    .line 109
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isWin32()Z

    move-result v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/OsUtils;->resolveDefaultInteractiveShellCommand(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resolveDefaultInteractiveShellCommand(Z)Ljava/lang/String;
    .locals 1
    .param p0, "winOS"    # Z

    .line 113
    if-eqz p0, :cond_0

    const-string v0, "cmd.exe"

    goto :goto_0

    :cond_0
    const-string v0, "/bin/sh -i -l"

    :goto_0
    return-object v0
.end method

.method public static setCurrentUser(Ljava/lang/String;)V
    .locals 2
    .param p0, "username"    # Ljava/lang/String;

    .line 205
    sget-object v0, Lorg/apache/sshd/common/util/OsUtils;->CURRENT_USER_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 206
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 207
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setJavaVersion(Lorg/apache/sshd/common/util/VersionInfo;)V
    .locals 2
    .param p0, "version"    # Lorg/apache/sshd/common/util/VersionInfo;

    .line 250
    sget-object v0, Lorg/apache/sshd/common/util/OsUtils;->JAVA_VERSION_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 251
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 252
    monitor-exit v0

    .line 253
    return-void

    .line 252
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setWin32(Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "win32"    # Ljava/lang/Boolean;

    .line 103
    sget-object v0, Lorg/apache/sshd/common/util/OsUtils;->OS_TYPE_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 104
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 105
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
