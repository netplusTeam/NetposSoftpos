.class public abstract Lorg/apache/sshd/common/file/util/BaseFileSystem;
.super Ljava/nio/file/FileSystem;
.source "BaseFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/nio/file/Path;",
        ">",
        "Ljava/nio/file/FileSystem;"
    }
.end annotation


# instance fields
.field private final fileSystemProvider:Ljava/nio/file/spi/FileSystemProvider;

.field protected final log:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Ljava/nio/file/spi/FileSystemProvider;)V
    .locals 1
    .param p1, "fileSystemProvider"    # Ljava/nio/file/spi/FileSystemProvider;

    .line 44
    .local p0, "this":Lorg/apache/sshd/common/file/util/BaseFileSystem;, "Lorg/apache/sshd/common/file/util/BaseFileSystem<TT;>;"
    invoke-direct {p0}, Ljava/nio/file/FileSystem;-><init>()V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/file/util/BaseFileSystem;->log:Lorg/slf4j/Logger;

    .line 46
    const-string v0, "No file system provider"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/spi/FileSystemProvider;

    iput-object v0, p0, Lorg/apache/sshd/common/file/util/BaseFileSystem;->fileSystemProvider:Ljava/nio/file/spi/FileSystemProvider;

    .line 47
    return-void
.end method

.method static synthetic lambda$getPathMatcher$0(Ljava/util/regex/Pattern;Ljava/nio/file/Path;)Z
    .locals 2
    .param p0, "regex"    # Ljava/util/regex/Pattern;
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 150
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 151
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected appendDedupSep(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Ljava/lang/CharSequence;

    .line 116
    .local p0, "this":Lorg/apache/sshd/common/file/util/BaseFileSystem;, "Lorg/apache/sshd/common/file/util/BaseFileSystem<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 117
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 118
    .local v1, "ch":C
    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_1

    .line 119
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .end local v1    # "ch":C
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method protected create(Ljava/lang/String;Ljava/util/Collection;)Ljava/nio/file/Path;
    .locals 1
    .param p1, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 252
    .local p0, "this":Lorg/apache/sshd/common/file/util/BaseFileSystem;, "Lorg/apache/sshd/common/file/util/BaseFileSystem<TT;>;"
    .local p2, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->unmodifiableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/file/util/BaseFileSystem;->create(Ljava/lang/String;Ljava/util/List;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method protected abstract create(Ljava/lang/String;Ljava/util/List;)Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation
.end method

.method protected varargs create(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1
    .param p1, "root"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 248
    .local p0, "this":Lorg/apache/sshd/common/file/util/BaseFileSystem;, "Lorg/apache/sshd/common/file/util/BaseFileSystem<TT;>;"
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->unmodifiableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/common/file/util/BaseFileSystem;->create(Ljava/lang/String;Ljava/util/List;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDir()Ljava/nio/file/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/apache/sshd/common/file/util/BaseFileSystem;, "Lorg/apache/sshd/common/file/util/BaseFileSystem<TT;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {p0, v1, v0}, Lorg/apache/sshd/common/file/util/BaseFileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getFileStores()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/nio/file/FileStore;",
            ">;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/apache/sshd/common/file/util/BaseFileSystem;, "Lorg/apache/sshd/common/file/util/BaseFileSystem<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No file stores available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 9
    .param p1, "first"    # Ljava/lang/String;
    .param p2, "more"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/apache/sshd/common/file/util/BaseFileSystem;, "Lorg/apache/sshd/common/file/util/BaseFileSystem<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x5c

    const/16 v3, 0x2f

    if-nez v1, :cond_0

    .line 82
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/common/file/util/BaseFileSystem;->appendDedupSep(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->length([Ljava/lang/Object;)I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v1, :cond_2

    .line 86
    array-length v1, p2

    move v6, v4

    :goto_0
    if-ge v6, v1, :cond_2

    aget-object v7, p2, v6

    .line 87
    .local v7, "segment":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-eq v8, v3, :cond_1

    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_1
    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v0, v8}, Lorg/apache/sshd/common/file/util/BaseFileSystem;->appendDedupSep(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 86
    .end local v7    # "segment":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_3

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 99
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 101
    .local v2, "root":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 102
    const-string v2, "/"

    .line 103
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_4
    invoke-static {v1, v3}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "names":[Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lorg/apache/sshd/common/file/util/BaseFileSystem;->create(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    .line 108
    .local v6, "p":Ljava/nio/file/Path;, "TT;"
    iget-object v7, p0, Lorg/apache/sshd/common/file/util/BaseFileSystem;->log:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 109
    iget-object v7, p0, Lorg/apache/sshd/common/file/util/BaseFileSystem;->log:Lorg/slf4j/Logger;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v4

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v5

    const/4 v4, 0x2

    aput-object v6, v8, v4

    const-string v4, "getPath({}, {}): {}"

    invoke-interface {v7, v4, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :cond_5
    return-object v6
.end method

.method public getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;
    .locals 7
    .param p1, "syntaxAndPattern"    # Ljava/lang/String;

    .line 126
    .local p0, "this":Lorg/apache/sshd/common/file/util/BaseFileSystem;, "Lorg/apache/sshd/common/file/util/BaseFileSystem<TT;>;"
    const-string v0, "No argument"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 127
    .local v0, "colonIndex":I
    if-lez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_2

    .line 131
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "syntax":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "pattern":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "regex"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :sswitch_1
    const-string v2, "glob"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_1

    :goto_0
    move v2, v5

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 142
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported path matcher syntax: \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :pswitch_0
    move-object v1, v4

    .line 140
    .local v1, "expr":Ljava/lang/String;
    goto :goto_2

    .line 136
    .end local v1    # "expr":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0, v4}, Lorg/apache/sshd/common/file/util/BaseFileSystem;->globToRegex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .restart local v1    # "expr":Ljava/lang/String;
    nop

    .line 144
    :goto_2
    iget-object v2, p0, Lorg/apache/sshd/common/file/util/BaseFileSystem;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    iget-object v2, p0, Lorg/apache/sshd/common/file/util/BaseFileSystem;->log:Lorg/slf4j/Logger;

    const-string v5, "getPathMatcher({}): {}"

    invoke-interface {v2, v5, p1, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    :cond_1
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 149
    .local v2, "regex":Ljava/util/regex/Pattern;
    new-instance v5, Lorg/apache/sshd/common/file/util/BaseFileSystem$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lorg/apache/sshd/common/file/util/BaseFileSystem$$ExternalSyntheticLambda0;-><init>(Ljava/util/regex/Pattern;)V

    return-object v5

    .line 128
    .end local v1    # "expr":Ljava/lang/String;
    .end local v2    # "regex":Ljava/util/regex/Pattern;
    .end local v3    # "syntax":Ljava/lang/String;
    .end local v4    # "pattern":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syntaxAndPattern must have form \"syntax:pattern\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x307578 -> :sswitch_1
        0x675f047 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRootDirectories()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/apache/sshd/common/file/util/BaseFileSystem;, "Lorg/apache/sshd/common/file/util/BaseFileSystem<TT;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {p0, v1, v0}, Lorg/apache/sshd/common/file/util/BaseFileSystem;->create(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSeparator()Ljava/lang/String;
    .locals 1

    .line 65
    .local p0, "this":Lorg/apache/sshd/common/file/util/BaseFileSystem;, "Lorg/apache/sshd/common/file/util/BaseFileSystem<TT;>;"
    const-string v0, "/"

    return-object v0
.end method

.method protected globToRegex(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "pattern"    # Ljava/lang/String;

    .line 156
    .local p0, "this":Lorg/apache/sshd/common/file/util/BaseFileSystem;, "Lorg/apache/sshd/common/file/util/BaseFileSystem<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No pattern"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 157
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 158
    .local v1, "inGroup":I
    const/4 v2, 0x0

    .line 159
    .local v2, "inClass":I
    const/4 v3, -0x1

    .line 160
    .local v3, "firstIndexInClass":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 161
    .local v4, "arr":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_7

    .line 162
    aget-char v6, v4, v5

    .line 163
    .local v6, "ch":C
    const/16 v7, 0x5e

    const/16 v8, 0x5c

    sparse-switch v6, :sswitch_data_0

    .line 230
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 223
    :sswitch_0
    add-int/lit8 v1, v1, -0x1

    .line 224
    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    goto/16 :goto_6

    .line 219
    :sswitch_1
    add-int/lit8 v1, v1, 0x1

    .line 220
    const/16 v7, 0x28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    goto/16 :goto_6

    .line 198
    :sswitch_2
    add-int/lit8 v2, v2, -0x1

    .line 199
    const/16 v7, 0x5d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    goto/16 :goto_6

    .line 165
    :sswitch_3
    add-int/lit8 v5, v5, 0x1

    .line 166
    array-length v7, v4

    if-lt v5, v7, :cond_0

    .line 167
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 169
    :cond_0
    aget-char v7, v4, v5

    .line 170
    .local v7, "next":C
    sparse-switch v7, :sswitch_data_1

    .line 180
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 177
    :sswitch_4
    const-string v8, "\\\\"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    goto :goto_1

    .line 173
    :sswitch_5
    nop

    .line 183
    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    .end local v7    # "next":C
    goto :goto_6

    .line 193
    :sswitch_6
    add-int/lit8 v2, v2, 0x1

    .line 194
    add-int/lit8 v3, v5, 0x1

    .line 195
    const/16 v7, 0x5b

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    goto :goto_6

    .line 190
    :sswitch_7
    if-nez v2, :cond_1

    const/16 v7, 0x2e

    goto :goto_2

    :cond_1
    const/16 v7, 0x3f

    :goto_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    goto :goto_6

    .line 227
    :sswitch_8
    if-lez v1, :cond_2

    const/16 v7, 0x7c

    goto :goto_3

    :cond_2
    const/16 v7, 0x2c

    :goto_3
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    goto :goto_6

    .line 187
    :sswitch_9
    if-nez v2, :cond_3

    const-string v7, ".*"

    goto :goto_4

    :cond_3
    const-string v7, "*"

    :goto_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    goto :goto_6

    .line 210
    :sswitch_a
    if-eqz v2, :cond_4

    if-ne v3, v5, :cond_5

    if-ne v6, v7, :cond_5

    .line 211
    :cond_4
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    :cond_5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    goto :goto_6

    .line 216
    :sswitch_b
    if-ne v3, v5, :cond_6

    goto :goto_5

    :cond_6
    const/16 v7, 0x21

    :goto_5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    nop

    .line 161
    .end local v6    # "ch":C
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 234
    .end local v5    # "i":I
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 235
    .local v5, "regex":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/sshd/common/file/util/BaseFileSystem;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 236
    iget-object v6, p0, Lorg/apache/sshd/common/file/util/BaseFileSystem;->log:Lorg/slf4j/Logger;

    const-string v7, "globToRegex({}): {}"

    invoke-interface {v6, v7, p1, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    :cond_8
    return-object v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_b
        0x24 -> :sswitch_a
        0x25 -> :sswitch_a
        0x28 -> :sswitch_a
        0x29 -> :sswitch_a
        0x2a -> :sswitch_9
        0x2b -> :sswitch_a
        0x2c -> :sswitch_8
        0x2e -> :sswitch_a
        0x3f -> :sswitch_7
        0x40 -> :sswitch_a
        0x5b -> :sswitch_6
        0x5c -> :sswitch_3
        0x5d -> :sswitch_2
        0x5e -> :sswitch_a
        0x7b -> :sswitch_1
        0x7c -> :sswitch_a
        0x7d -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_5
        0x45 -> :sswitch_4
        0x51 -> :sswitch_4
    .end sparse-switch
.end method

.method public isReadOnly()Z
    .locals 1

    .line 55
    .local p0, "this":Lorg/apache/sshd/common/file/util/BaseFileSystem;, "Lorg/apache/sshd/common/file/util/BaseFileSystem<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public newWatchService()Ljava/nio/file/WatchService;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    .local p0, "this":Lorg/apache/sshd/common/file/util/BaseFileSystem;, "Lorg/apache/sshd/common/file/util/BaseFileSystem<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Watch service N/A"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public provider()Ljava/nio/file/spi/FileSystemProvider;
    .locals 1

    .line 60
    .local p0, "this":Lorg/apache/sshd/common/file/util/BaseFileSystem;, "Lorg/apache/sshd/common/file/util/BaseFileSystem<TT;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/file/util/BaseFileSystem;->fileSystemProvider:Ljava/nio/file/spi/FileSystemProvider;

    return-object v0
.end method
