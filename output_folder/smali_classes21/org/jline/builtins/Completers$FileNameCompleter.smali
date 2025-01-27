.class public Lorg/jline/builtins/Completers$FileNameCompleter;
.super Ljava/lang/Object;
.source "Completers.java"

# interfaces
.implements Lorg/jline/reader/Completer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Completers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileNameCompleter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static resolver:Lorg/jline/utils/StyleResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 332
    const-class v0, Lorg/jline/builtins/Completers;

    .line 334
    invoke-static {}, Lorg/jline/builtins/Styles;->lsStyle()Lorg/jline/utils/StyleResolver;

    move-result-object v0

    sput-object v0, Lorg/jline/builtins/Completers$FileNameCompleter;->resolver:Lorg/jline/utils/StyleResolver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected accept(Ljava/nio/file/Path;)Z
    .locals 2
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 385
    :try_start_0
    invoke-static {p1}, Ljava/nio/file/Files;->isHidden(Ljava/nio/file/Path;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V
    .locals 15
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

    .line 337
    .local p3, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    move-object v7, p0

    const-string v0, "~"

    if-eqz p2, :cond_6

    .line 338
    if-eqz p3, :cond_5

    .line 340
    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->word()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Lorg/jline/reader/ParsedLine;->wordCursor()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 344
    .local v8, "buffer":Ljava/lang/String;
    sget-object v1, Lorg/jline/reader/LineReader$Option;->USE_FORWARD_SLASH:Lorg/jline/reader/LineReader$Option;

    move-object/from16 v9, p1

    invoke-interface {v9, v1}, Lorg/jline/reader/LineReader;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jline/builtins/Completers$FileNameCompleter;->getSeparator(Z)Ljava/lang/String;

    move-result-object v10

    .line 345
    .local v10, "sep":Ljava/lang/String;
    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 347
    .local v11, "lastSep":I
    if-ltz v11, :cond_2

    .line 348
    add-int/lit8 v1, v11, 0x1

    :try_start_0
    invoke-virtual {v8, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "curBuf":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lorg/jline/builtins/Completers$FileNameCompleter;->getUserHome()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    move-object v12, v0

    move-object v13, v1

    .local v0, "current":Ljava/nio/file/Path;
    goto :goto_0

    .line 353
    .end local v0    # "current":Ljava/nio/file/Path;
    :cond_0
    invoke-virtual {p0}, Lorg/jline/builtins/Completers$FileNameCompleter;->getUserHome()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    move-object v12, v0

    move-object v13, v1

    .restart local v0    # "current":Ljava/nio/file/Path;
    goto :goto_0

    .line 356
    .end local v0    # "current":Ljava/nio/file/Path;
    :cond_1
    invoke-virtual {p0}, Lorg/jline/builtins/Completers$FileNameCompleter;->getUserDir()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    move-object v12, v0

    move-object v13, v1

    .restart local v0    # "current":Ljava/nio/file/Path;
    goto :goto_0

    .line 359
    .end local v0    # "current":Ljava/nio/file/Path;
    .end local v1    # "curBuf":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    move-object v1, v0

    .line 360
    .restart local v1    # "curBuf":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jline/builtins/Completers$FileNameCompleter;->getUserDir()Ljava/nio/file/Path;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v12, v0

    move-object v13, v1

    .line 362
    .end local v1    # "curBuf":Ljava/lang/String;
    .local v12, "current":Ljava/nio/file/Path;
    .local v13, "curBuf":Ljava/lang/String;
    :goto_0
    :try_start_1
    new-instance v0, Lorg/jline/builtins/Completers$FileNameCompleter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/jline/builtins/Completers$FileNameCompleter$$ExternalSyntheticLambda0;-><init>(Lorg/jline/builtins/Completers$FileNameCompleter;)V

    invoke-static {v12, v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v14, v0

    .line 363
    .local v14, "directory":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_2
    new-instance v0, Lorg/jline/builtins/Completers$FileNameCompleter$$ExternalSyntheticLambda1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, v13

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lorg/jline/builtins/Completers$FileNameCompleter$$ExternalSyntheticLambda1;-><init>(Lorg/jline/builtins/Completers$FileNameCompleter;Ljava/lang/String;Ljava/util/List;Lorg/jline/reader/LineReader;Ljava/lang/String;)V

    invoke-interface {v14, v0}, Ljava/nio/file/DirectoryStream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 375
    if-eqz v14, :cond_3

    :try_start_3
    invoke-interface {v14}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 377
    .end local v14    # "directory":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_3
    goto :goto_2

    .line 362
    .restart local v14    # "directory":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v14, :cond_4

    :try_start_4
    invoke-interface {v14}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v8    # "buffer":Ljava/lang/String;
    .end local v10    # "sep":Ljava/lang/String;
    .end local v11    # "lastSep":I
    .end local v12    # "current":Ljava/nio/file/Path;
    .end local v13    # "curBuf":Ljava/lang/String;
    .end local p1    # "reader":Lorg/jline/reader/LineReader;
    .end local p2    # "commandLine":Lorg/jline/reader/ParsedLine;
    .end local p3    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    :cond_4
    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 375
    .end local v14    # "directory":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v8    # "buffer":Ljava/lang/String;
    .restart local v10    # "sep":Ljava/lang/String;
    .restart local v11    # "lastSep":I
    .restart local v12    # "current":Ljava/nio/file/Path;
    .restart local v13    # "curBuf":Ljava/lang/String;
    .restart local p1    # "reader":Lorg/jline/reader/LineReader;
    .restart local p2    # "commandLine":Lorg/jline/reader/ParsedLine;
    .restart local p3    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    :catch_0
    move-exception v0

    .line 380
    :goto_2
    goto :goto_3

    .line 378
    .end local v12    # "current":Ljava/nio/file/Path;
    .end local v13    # "curBuf":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 381
    :goto_3
    return-void

    .line 338
    .end local v8    # "buffer":Ljava/lang/String;
    .end local v10    # "sep":Ljava/lang/String;
    .end local v11    # "lastSep":I
    :cond_5
    move-object/from16 v9, p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 337
    :cond_6
    move-object/from16 v9, p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected getDisplay(Lorg/jline/terminal/Terminal;Ljava/nio/file/Path;Lorg/jline/utils/StyleResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p2, "p"    # Ljava/nio/file/Path;
    .param p3, "resolver"    # Lorg/jline/utils/StyleResolver;
    .param p4, "separator"    # Ljava/lang/String;

    .line 404
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 405
    .local v0, "sb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-interface {p2}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "name":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 407
    .local v2, "idx":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 408
    .local v3, "type":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 409
    const-string v4, ".ln"

    invoke-virtual {p3, v4}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lorg/jline/utils/AttributedStringBuilder;->styled(Lorg/jline/utils/AttributedStyle;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_1

    .line 410
    :cond_1
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v5}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 411
    const-string v4, ".di"

    invoke-virtual {p3, v4}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lorg/jline/utils/AttributedStringBuilder;->styled(Lorg/jline/utils/AttributedStyle;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_1

    .line 412
    :cond_2
    invoke-static {p2}, Ljava/nio/file/Files;->isExecutable(Ljava/nio/file/Path;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-boolean v5, Lorg/jline/utils/OSUtils;->IS_WINDOWS:Z

    if-nez v5, :cond_3

    .line 413
    const-string v4, ".ex"

    invoke-virtual {p3, v4}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lorg/jline/utils/AttributedStringBuilder;->styled(Lorg/jline/utils/AttributedStyle;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_1

    .line 414
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {p3, v3}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jline/utils/AttributedStyle;->getStyle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    .line 415
    invoke-virtual {p3, v3}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lorg/jline/utils/AttributedStringBuilder;->styled(Lorg/jline/utils/AttributedStyle;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_1

    .line 416
    :cond_4
    new-array v4, v4, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v4}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 417
    const-string v4, ".fi"

    invoke-virtual {p3, v4}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lorg/jline/utils/AttributedStringBuilder;->styled(Lorg/jline/utils/AttributedStyle;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_1

    .line 419
    :cond_5
    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 421
    :goto_1
    invoke-virtual {v0, p1}, Lorg/jline/utils/AttributedStringBuilder;->toAnsi(Lorg/jline/terminal/Terminal;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected getSeparator(Z)Ljava/lang/String;
    .locals 1
    .param p1, "useForwardSlash"    # Z

    .line 400
    if-eqz p1, :cond_0

    const-string v0, "/"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jline/builtins/Completers$FileNameCompleter;->getUserDir()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->getSeparator()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getUserDir()Ljava/nio/file/Path;
    .locals 2

    .line 392
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

    .line 396
    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$complete$0$org-jline-builtins-Completers$FileNameCompleter(Ljava/lang/String;Ljava/util/List;Lorg/jline/reader/LineReader;Ljava/lang/String;Ljava/nio/file/Path;)V
    .locals 10
    .param p1, "curBuf"    # Ljava/lang/String;
    .param p2, "candidates"    # Ljava/util/List;
    .param p3, "reader"    # Lorg/jline/reader/LineReader;
    .param p4, "sep"    # Ljava/lang/String;
    .param p5, "p"    # Ljava/nio/file/Path;

    .line 364
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

    .line 365
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p5, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 366
    new-instance v1, Lorg/jline/reader/Candidate;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 367
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

    .line 368
    invoke-interface {p3}, Lorg/jline/reader/LineReader;->getTerminal()Lorg/jline/terminal/Terminal;

    move-result-object v2

    sget-object v4, Lorg/jline/builtins/Completers$FileNameCompleter;->resolver:Lorg/jline/utils/StyleResolver;

    invoke-virtual {p0, v2, p5, v4, p4}, Lorg/jline/builtins/Completers$FileNameCompleter;->getDisplay(Lorg/jline/terminal/Terminal;Ljava/nio/file/Path;Lorg/jline/utils/StyleResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 369
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

    .line 366
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 371
    :cond_2
    new-instance v9, Lorg/jline/reader/Candidate;

    invoke-interface {p3}, Lorg/jline/reader/LineReader;->getTerminal()Lorg/jline/terminal/Terminal;

    move-result-object v1

    sget-object v2, Lorg/jline/builtins/Completers$FileNameCompleter;->resolver:Lorg/jline/utils/StyleResolver;

    invoke-virtual {p0, v1, p5, v2, p4}, Lorg/jline/builtins/Completers$FileNameCompleter;->getDisplay(Lorg/jline/terminal/Terminal;Ljava/nio/file/Path;Lorg/jline/utils/StyleResolver;Ljava/lang/String;)Ljava/lang/String;

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

    .line 374
    :goto_2
    return-void
.end method
