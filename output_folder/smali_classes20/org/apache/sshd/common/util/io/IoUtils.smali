.class public final Lorg/apache/sshd/common/util/io/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# static fields
.field public static final DEFAULT_COPY_SIZE:I = 0x2000

.field public static final EMPTY_COPY_OPTIONS:[Ljava/nio/file/CopyOption;

.field public static final EMPTY_FILE_ATTRIBUTES:[Ljava/nio/file/attribute/FileAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_LINK_OPTIONS:[Ljava/nio/file/LinkOption;

.field public static final EMPTY_OPEN_OPTIONS:[Ljava/nio/file/OpenOption;

.field public static final EOL:Ljava/lang/String;

.field private static final EOL_BYTES:[B

.field private static final NO_FOLLOW_OPTIONS:[Ljava/nio/file/LinkOption;

.field public static final WINDOWS_EXECUTABLE_EXTENSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final WRITEABLE_OPEN_OPTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/StandardOpenOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 62
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/OpenOption;

    sput-object v1, Lorg/apache/sshd/common/util/io/IoUtils;->EMPTY_OPEN_OPTIONS:[Ljava/nio/file/OpenOption;

    .line 63
    new-array v1, v0, [Ljava/nio/file/CopyOption;

    sput-object v1, Lorg/apache/sshd/common/util/io/IoUtils;->EMPTY_COPY_OPTIONS:[Ljava/nio/file/CopyOption;

    .line 64
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    sput-object v1, Lorg/apache/sshd/common/util/io/IoUtils;->EMPTY_LINK_OPTIONS:[Ljava/nio/file/LinkOption;

    .line 65
    new-array v1, v0, [Ljava/nio/file/attribute/FileAttribute;

    sput-object v1, Lorg/apache/sshd/common/util/io/IoUtils;->EMPTY_FILE_ATTRIBUTES:[Ljava/nio/file/attribute/FileAttribute;

    .line 67
    const-string v1, ".bat"

    const-string v2, ".exe"

    const-string v3, ".cmd"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/apache/sshd/common/util/io/IoUtils;->WINDOWS_EXECUTABLE_EXTENSIONS:Ljava/util/List;

    .line 78
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/sshd/common/util/io/IoUtils;->EOL:Ljava/lang/String;

    .line 84
    sget-object v2, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/nio/file/StandardOpenOption;

    sget-object v4, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v4, v3, v0

    sget-object v4, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Ljava/nio/file/StandardOpenOption;->DELETE_ON_CLOSE:Ljava/nio/file/StandardOpenOption;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    sget-object v4, Ljava/nio/file/StandardOpenOption;->DSYNC:Ljava/nio/file/StandardOpenOption;

    const/4 v6, 0x3

    aput-object v4, v3, v6

    sget-object v4, Ljava/nio/file/StandardOpenOption;->SYNC:Ljava/nio/file/StandardOpenOption;

    const/4 v6, 0x4

    aput-object v4, v3, v6

    sget-object v4, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    const/4 v6, 0x5

    aput-object v4, v3, v6

    sget-object v4, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/4 v6, 0x6

    aput-object v4, v3, v6

    .line 86
    invoke-static {v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    .line 85
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lorg/apache/sshd/common/util/io/IoUtils;->WRITEABLE_OPEN_OPTIONS:Ljava/util/Set;

    .line 92
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lorg/apache/sshd/common/util/io/IoUtils;->EOL_BYTES:[B

    .line 94
    new-array v1, v5, [Ljava/nio/file/LinkOption;

    sget-object v2, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v2, v1, v0

    sput-object v1, Lorg/apache/sshd/common/util/io/IoUtils;->NO_FOLLOW_OPTIONS:[Ljava/nio/file/LinkOption;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static appendPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "component"    # Ljava/lang/String;

    .line 509
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    return-object p1

    .line 513
    :cond_0
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    return-object p0

    .line 517
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 519
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 521
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    sget-char v3, Ljava/io/File;->separatorChar:C

    const/4 v4, 0x0

    if-ne v1, v3, :cond_3

    .line 522
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-ne v1, v3, :cond_2

    .line 523
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 525
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 528
    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    if-eq v1, v2, :cond_4

    .line 529
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 531
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs checkFileExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .line 376
    invoke-static {p0, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 378
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/file/Files;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 381
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)Ljava/io/IOException;
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .line 163
    if-eqz p0, :cond_0

    .line 165
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    return-object v0

    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static closeQuietly(Ljava/util/Collection;)Ljava/io/IOException;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/io/Closeable;",
            ">;)",
            "Ljava/io/IOException;"
        }
    .end annotation

    .line 186
    .local p0, "closeables":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/io/Closeable;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const/4 v0, 0x0

    return-object v0

    .line 190
    :cond_0
    const/4 v0, 0x0

    .line 191
    .local v0, "err":Ljava/io/IOException;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    .line 193
    .local v2, "c":Ljava/io/Closeable;
    if-eqz v2, :cond_1

    .line 194
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 196
    :catch_0
    move-exception v3

    .line 197
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v0, v3}, Lorg/apache/sshd/common/util/GenericUtils;->accumulateException(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/io/IOException;

    goto :goto_2

    .line 198
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    nop

    .line 199
    .end local v2    # "c":Ljava/io/Closeable;
    :goto_2
    goto :goto_0

    .line 201
    :cond_2
    return-object v0
.end method

.method public static varargs closeQuietly([Ljava/io/Closeable;)Ljava/io/IOException;
    .locals 1
    .param p0, "closeables"    # [Ljava/io/Closeable;

    .line 148
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 148
    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/util/io/IoUtils;->closeQuietly(Ljava/util/Collection;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "sink"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    const/16 v0, 0x2000

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/util/io/IoUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 6
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "sink"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    const-wide/16 v0, 0x0

    .line 127
    .local v0, "nread":J
    new-array v2, p2, [B

    .line 128
    .local v2, "buf":[B
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-lez v3, :cond_0

    .line 129
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 130
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 128
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_0

    .line 133
    .end local v3    # "n":I
    :cond_0
    return-wide v0
.end method

.method public static varargs ensureDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .line 482
    invoke-static {p0, p1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    return-object p0

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs followLinks([Ljava/nio/file/LinkOption;)Z
    .locals 6
    .param p0, "options"    # [Ljava/nio/file/LinkOption;

    .line 496
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 497
    return v1

    .line 500
    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p0, v3

    .line 501
    .local v4, "localLinkOption":Ljava/nio/file/LinkOption;
    sget-object v5, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    if-ne v4, v5, :cond_1

    .line 502
    return v2

    .line 500
    .end local v4    # "localLinkOption":Ljava/nio/file/LinkOption;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 505
    :cond_2
    return v1
.end method

.method public static getEOLBytes()[B
    .locals 1

    .line 110
    sget-object v0, Lorg/apache/sshd/common/util/io/IoUtils;->EOL_BYTES:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static varargs getFileOwner(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Ljava/nio/file/Files;->getOwner(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v1

    .line 341
    .local v1, "principal":Ljava/nio/file/attribute/UserPrincipal;
    if-nez v1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/nio/file/attribute/UserPrincipal;->getName()Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "owner":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lorg/apache/sshd/common/util/OsUtils;->getCanonicalUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 343
    .end local v1    # "principal":Ljava/nio/file/attribute/UserPrincipal;
    .end local v2    # "owner":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    return-object v0
.end method

.method public static getLinkOptions(Z)[Ljava/nio/file/LinkOption;
    .locals 1
    .param p0, "followLinks"    # Z

    .line 114
    if-eqz p0, :cond_0

    .line 115
    sget-object v0, Lorg/apache/sshd/common/util/io/IoUtils;->EMPTY_LINK_OPTIONS:[Ljava/nio/file/LinkOption;

    return-object v0

    .line 117
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/util/io/IoUtils;->NO_FOLLOW_OPTIONS:[Ljava/nio/file/LinkOption;

    invoke-virtual {v0}, [Ljava/nio/file/LinkOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/LinkOption;

    return-object v0
.end method

.method public static varargs getPermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    .line 233
    .local v0, "fs":Ljava/nio/file/FileSystem;
    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->supportedFileAttributeViews()Ljava/util/Set;

    move-result-object v1

    .line 234
    .local v1, "views":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v2, "posix"

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    invoke-static {p0, p1}, Ljava/nio/file/Files;->getPosixFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 237
    :cond_0
    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/sshd/common/util/io/IoUtils;->getPermissionsFromFile(Ljava/io/File;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method public static getPermissionsFromFile(Ljava/io/File;)Ljava/util/Set;
    .locals 2
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation

    .line 248
    const-class v0, Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 249
    .local v0, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_1
    invoke-static {p0}, Lorg/apache/sshd/common/util/io/IoUtils;->isExecutable(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_2
    return-object v0
.end method

.method public static isExecutable(Ljava/io/File;)Z
    .locals 1
    .param p0, "f"    # Ljava/io/File;

    .line 271
    if-nez p0, :cond_0

    .line 272
    const/4 v0, 0x0

    return v0

    .line 275
    :cond_0
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isWin32()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/io/IoUtils;->isWindowsExecutable(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 278
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->canExecute()Z

    move-result v0

    return v0
.end method

.method public static isWindowsExecutable(Ljava/lang/String;)Z
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .line 209
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 212
    :cond_0
    sget-object v1, Lorg/apache/sshd/common/util/io/IoUtils;->WINDOWS_EXECUTABLE_EXTENSIONS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 213
    .local v2, "suffix":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    const/4 v0, 0x1

    return v0

    .line 216
    .end local v2    # "suffix":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 217
    :cond_2
    return v0

    .line 210
    :cond_3
    :goto_1
    return v0
.end method

.method public static read(Ljava/io/InputStream;[B)I
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/sshd/common/util/io/IoUtils;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method public static read(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    move v0, p3

    .local v0, "remaining":I
    move v1, p2

    .local v1, "curOffset":I
    :goto_0
    if-lez v0, :cond_1

    .line 442
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 443
    .local v2, "count":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 444
    sub-int v3, v1, p2

    return v3

    .line 447
    :cond_0
    sub-int/2addr v0, v2

    .line 448
    add-int/2addr v1, v2

    .line 449
    .end local v2    # "count":I
    goto :goto_0

    .line 451
    .end local v0    # "remaining":I
    .end local v1    # "curOffset":I
    :cond_1
    return p3
.end method

.method public static readAllLines(Ljava/io/BufferedReader;)Ljava/util/List;
    .locals 1
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/io/IoUtils;->readAllLines(Ljava/io/BufferedReader;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readAllLines(Ljava/io/BufferedReader;I)Ljava/util/List;
    .locals 2
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .param p1, "lineCountHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 605
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 606
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 608
    .end local v1    # "line":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static readAllLines(Ljava/io/InputStream;)Ljava/util/List;
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    new-instance v0, Ljava/io/InputStreamReader;

    .line 569
    const-string v1, "No stream instance"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 568
    .local v0, "reader":Ljava/io/Reader;
    nop

    .line 570
    :try_start_0
    invoke-static {v0}, Lorg/apache/sshd/common/util/io/IoUtils;->readAllLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 570
    return-object v1

    .line 568
    :catchall_0
    move-exception v1

    .end local v0    # "reader":Ljava/io/Reader;
    .end local p0    # "stream":Ljava/io/InputStream;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 571
    .restart local v0    # "reader":Ljava/io/Reader;
    .restart local p0    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public static readAllLines(Ljava/io/Reader;)Ljava/util/List;
    .locals 4
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    new-instance v0, Ljava/io/BufferedReader;

    .line 576
    const-string v1, "No reader instance"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 575
    .local v0, "br":Ljava/io/BufferedReader;
    nop

    .line 577
    :try_start_0
    invoke-static {v0}, Lorg/apache/sshd/common/util/io/IoUtils;->readAllLines(Ljava/io/BufferedReader;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 577
    return-object v1

    .line 575
    :catchall_0
    move-exception v1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local p0    # "reader":Ljava/io/Reader;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 578
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local p0    # "reader":Ljava/io/Reader;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public static readAllLines(Ljava/net/URL;)Ljava/util/List;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 553
    const-string v0, "No URL"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 554
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lorg/apache/sshd/common/util/io/IoUtils;->readAllLines(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 554
    :cond_0
    return-object v1

    .line 553
    :catchall_0
    move-exception v1

    .end local v0    # "stream":Ljava/io/InputStream;
    .end local p0    # "url":Ljava/net/URL;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 555
    .restart local v0    # "stream":Ljava/io/InputStream;
    .restart local p0    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public static readFully(Ljava/io/InputStream;[B)V
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/sshd/common/util/io/IoUtils;->readFully(Ljava/io/InputStream;[BII)V

    .line 395
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    invoke-static {p0, p1, p2, p3}, Lorg/apache/sshd/common/util/io/IoUtils;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 411
    .local v0, "actual":I
    if-ne v0, p3, :cond_0

    .line 414
    return-void

    .line 412
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Premature EOF - expected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setPermissions(Ljava/nio/file/Path;Ljava/util/Set;)V
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    .local p1, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    .line 293
    .local v0, "fs":Ljava/nio/file/FileSystem;
    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->supportedFileAttributeViews()Ljava/util/Set;

    move-result-object v1

    .line 294
    .local v1, "views":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v2, "posix"

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    invoke-static {p0, p1}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    goto :goto_0

    .line 297
    :cond_0
    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/sshd/common/util/io/IoUtils;->setPermissionsToFile(Ljava/io/File;Ljava/util/Collection;)V

    .line 299
    :goto_0
    return-void
.end method

.method public static setPermissionsToFile(Ljava/io/File;Ljava/util/Collection;)V
    .locals 6
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)V"
        }
    .end annotation

    .line 308
    .local p1, "perms":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/nio/file/attribute/PosixFilePermission;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    .line 309
    .local v0, "havePermissions":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    .line 310
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    .line 311
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    .line 312
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 313
    .local v3, "readable":Z
    :goto_0
    invoke-virtual {p0, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 315
    if-eqz v0, :cond_3

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 316
    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 317
    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 318
    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v4, v1

    goto :goto_1

    :cond_3
    move v4, v2

    .line 319
    .local v4, "writable":Z
    :goto_1
    invoke-virtual {p0, v4, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 321
    if-eqz v0, :cond_5

    sget-object v5, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 322
    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 323
    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 324
    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    goto :goto_2

    :cond_5
    move v1, v2

    .line 325
    .local v1, "executable":Z
    :goto_2
    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 326
    return-void
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 539
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/io/IoUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 540
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 540
    return-object v1

    .line 538
    :catchall_0
    move-exception v1

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "inStream":Ljava/io/InputStream;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 541
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "inStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public static validateExcludedPermissions(Ljava/util/Collection;Ljava/util/Collection;)Ljava/nio/file/attribute/PosixFilePermission;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)",
            "Ljava/nio/file/attribute/PosixFilePermission;"
        }
    .end annotation

    .line 462
    .local p0, "perms":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/nio/file/attribute/PosixFilePermission;>;"
    .local p1, "excluded":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/nio/file/attribute/PosixFilePermission;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 466
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/attribute/PosixFilePermission;

    .line 467
    .local v2, "p":Ljava/nio/file/attribute/PosixFilePermission;
    invoke-interface {p0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 468
    return-object v2

    .line 470
    .end local v2    # "p":Ljava/nio/file/attribute/PosixFilePermission;
    :cond_1
    goto :goto_0

    .line 472
    :cond_2
    return-object v1

    .line 463
    :cond_3
    :goto_1
    return-object v1
.end method
