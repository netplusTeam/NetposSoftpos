.class public Lorg/jline/reader/impl/completer/FileNameCompleter;
.super Ljava/lang/Object;
.source "FileNameCompleter.java"

# interfaces
.implements Lorg/jline/reader/Completer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected accept(Ljava/nio/file/Path;)Z
    .locals 2
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 98
    :try_start_0
    invoke-static {p1}, Ljava/nio/file/Files;->isHidden(Ljava/nio/file/Path;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V
    .locals 14
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p2, "commandLine"    # Lorg/jline/reader/ParsedLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/LineReader;",
            "Lorg/jline/reader/ParsedLine;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p3, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    if-eqz p2, :cond_4

    .line 52
    if-eqz p3, :cond_3

    .line 54
    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->word()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->wordCursor()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, "buffer":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jline/reader/impl/completer/FileNameCompleter;->getUserDir()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->getSeparator()Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, "sep":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 60
    .local v9, "lastSep":I
    if-ltz v9, :cond_2

    .line 61
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "curBuf":Ljava/lang/String;
    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lorg/jline/reader/impl/completer/FileNameCompleter;->getUserHome()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    move-object v10, v0

    move-object v11, v1

    .local v1, "current":Ljava/nio/file/Path;
    goto :goto_0

    .line 66
    .end local v1    # "current":Ljava/nio/file/Path;
    :cond_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/completer/FileNameCompleter;->getUserHome()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    move-object v10, v0

    move-object v11, v1

    .restart local v1    # "current":Ljava/nio/file/Path;
    goto :goto_0

    .line 69
    .end local v1    # "current":Ljava/nio/file/Path;
    :cond_1
    invoke-virtual {p0}, Lorg/jline/reader/impl/completer/FileNameCompleter;->getUserDir()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    move-object v10, v0

    move-object v11, v1

    .restart local v1    # "current":Ljava/nio/file/Path;
    goto :goto_0

    .line 72
    .end local v0    # "curBuf":Ljava/lang/String;
    .end local v1    # "current":Ljava/nio/file/Path;
    :cond_2
    const-string v0, ""

    .line 73
    .restart local v0    # "curBuf":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jline/reader/impl/completer/FileNameCompleter;->getUserDir()Ljava/nio/file/Path;

    move-result-object v1

    move-object v10, v0

    move-object v11, v1

    .line 76
    .end local v0    # "curBuf":Ljava/lang/String;
    .local v10, "curBuf":Ljava/lang/String;
    .local v11, "current":Ljava/nio/file/Path;
    :goto_0
    :try_start_0
    new-instance v0, Lorg/jline/reader/impl/completer/FileNameCompleter$$ExternalSyntheticLambda0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v12, p0

    :try_start_1
    invoke-direct {v0, p0}, Lorg/jline/reader/impl/completer/FileNameCompleter$$ExternalSyntheticLambda0;-><init>(Lorg/jline/reader/impl/completer/FileNameCompleter;)V

    invoke-static {v11, v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    new-instance v13, Lorg/jline/reader/impl/completer/FileNameCompleter$$ExternalSyntheticLambda1;

    move-object v1, v13

    move-object v2, p0

    move-object v3, v10

    move-object/from16 v4, p3

    move-object v5, p1

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/jline/reader/impl/completer/FileNameCompleter$$ExternalSyntheticLambda1;-><init>(Lorg/jline/reader/impl/completer/FileNameCompleter;Ljava/lang/String;Ljava/util/List;Lorg/jline/reader/LineReader;Ljava/lang/String;)V

    invoke-interface {v0, v13}, Ljava/nio/file/DirectoryStream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    goto :goto_1

    .line 91
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v12, p0

    .line 94
    :goto_1
    return-void

    .line 52
    .end local v7    # "buffer":Ljava/lang/String;
    .end local v8    # "sep":Ljava/lang/String;
    .end local v9    # "lastSep":I
    .end local v10    # "curBuf":Ljava/lang/String;
    .end local v11    # "current":Ljava/nio/file/Path;
    :cond_3
    move-object v12, p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_4
    move-object v12, p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected getDisplay(Lorg/jline/terminal/Terminal;Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 4
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p2, "p"    # Ljava/nio/file/Path;

    .line 114
    invoke-interface {p2}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 116
    new-instance v1, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v1}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 117
    .local v1, "sb":Lorg/jline/utils/AttributedStringBuilder;
    sget-object v3, Lorg/jline/utils/AttributedStyle;->BOLD:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v3, v2}, Lorg/jline/utils/AttributedStyle;->foreground(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/jline/utils/AttributedStringBuilder;->styled(Lorg/jline/utils/AttributedStyle;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 118
    const-string v2, "/"

    invoke-virtual {v1, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 119
    invoke-virtual {v1, p1}, Lorg/jline/utils/AttributedStringBuilder;->toAnsi(Lorg/jline/terminal/Terminal;)Ljava/lang/String;

    move-result-object v0

    .end local v1    # "sb":Lorg/jline/utils/AttributedStringBuilder;
    goto :goto_0

    .line 120
    :cond_0
    invoke-static {p2}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    new-instance v1, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v1}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 122
    .restart local v1    # "sb":Lorg/jline/utils/AttributedStringBuilder;
    sget-object v3, Lorg/jline/utils/AttributedStyle;->BOLD:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v3, v2}, Lorg/jline/utils/AttributedStyle;->foreground(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/jline/utils/AttributedStringBuilder;->styled(Lorg/jline/utils/AttributedStyle;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 123
    const-string v2, "@"

    invoke-virtual {v1, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 124
    invoke-virtual {v1, p1}, Lorg/jline/utils/AttributedStringBuilder;->toAnsi(Lorg/jline/terminal/Terminal;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 120
    .end local v1    # "sb":Lorg/jline/utils/AttributedStringBuilder;
    :cond_1
    :goto_0
    nop

    .line 126
    :goto_1
    return-object v0
.end method

.method protected getUserDir()Ljava/nio/file/Path;
    .locals 2

    .line 105
    const-string v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method protected getUserHome()Ljava/nio/file/Path;
    .locals 2

    .line 109
    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$complete$0$org-jline-reader-impl-completer-FileNameCompleter(Ljava/lang/String;Ljava/util/List;Lorg/jline/reader/LineReader;Ljava/lang/String;Ljava/nio/file/Path;)V
    .locals 10
    .param p1, "curBuf"    # Ljava/lang/String;
    .param p2, "candidates"    # Ljava/util/List;
    .param p3, "reader"    # Lorg/jline/reader/LineReader;
    .param p4, "sep"    # Ljava/lang/String;
    .param p5, "p"    # Ljava/nio/file/Path;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p5}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p5, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    new-instance v1, Lorg/jline/reader/Candidate;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    sget-object v3, Lorg/jline/reader/LineReader$Option;->AUTO_PARAM_SLASH:Lorg/jline/reader/LineReader$Option;

    invoke-interface {p3, v3}, Lorg/jline/reader/LineReader;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p4

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-interface {p3}, Lorg/jline/reader/LineReader;->getTerminal()Lorg/jline/terminal/Terminal;

    move-result-object v2

    invoke-virtual {p0, v2, p5}, Lorg/jline/reader/impl/completer/FileNameCompleter;->getDisplay(Lorg/jline/terminal/Terminal;Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 83
    sget-object v2, Lorg/jline/reader/LineReader$Option;->AUTO_REMOVE_SLASH:Lorg/jline/reader/LineReader$Option;

    invoke-interface {p3, v2}, Lorg/jline/reader/LineReader;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v7, p4

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move-object v7, v2

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 87
    :cond_2
    new-instance v9, Lorg/jline/reader/Candidate;

    invoke-interface {p3}, Lorg/jline/reader/LineReader;->getTerminal()Lorg/jline/terminal/Terminal;

    move-result-object v1

    invoke-virtual {p0, v1, p5}, Lorg/jline/reader/impl/completer/FileNameCompleter;->getDisplay(Lorg/jline/terminal/Terminal;Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :goto_2
    return-void
.end method
