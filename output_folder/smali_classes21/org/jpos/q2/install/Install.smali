.class public Lorg/jpos/q2/install/Install;
.super Ljava/lang/Object;
.source "Install.java"


# static fields
.field private static final DEFAULT_PREFIX:Ljava/lang/String; = "META-INF/q2/installs/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private copyResourceToFile(Ljava/lang/String;Ljava/io/File;Z)V
    .locals 6
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "verbose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    .line 103
    .local v0, "source":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 104
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 105
    .local v1, "output":Ljava/io/FileOutputStream;
    if-eqz p3, :cond_0

    .line 106
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extracting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    :cond_0
    const/16 v2, 0x1000

    :try_start_1
    new-array v2, v2, [B

    .line 112
    .local v2, "buffer":[B
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "n":I
    if-eq v3, v4, :cond_1

    .line 114
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    .end local v2    # "buffer":[B
    .end local v5    # "n":I
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 121
    goto :goto_1

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, "ex":Ljava/io/IOException;
    :try_start_3
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    .end local v2    # "ex":Ljava/io/IOException;
    nop

    .line 126
    .end local v1    # "output":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 127
    .local v1, "ex":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 129
    .end local v1    # "ex":Ljava/io/IOException;
    goto :goto_3

    .line 128
    :cond_2
    :goto_2
    nop

    .line 130
    :goto_3
    return-void

    .line 119
    .local v1, "output":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 121
    goto :goto_4

    .line 119
    :catch_2
    move-exception v3

    .line 120
    .local v3, "ex":Ljava/io/IOException;
    :try_start_6
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 122
    .end local v3    # "ex":Ljava/io/IOException;
    :goto_4
    nop

    .end local v0    # "source":Ljava/io/InputStream;
    .end local p1    # "resource":Ljava/lang/String;
    .end local p2    # "destination":Ljava/io/File;
    .end local p3    # "verbose":Z
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 126
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .restart local v0    # "source":Ljava/io/InputStream;
    .restart local p1    # "resource":Ljava/lang/String;
    .restart local p2    # "destination":Ljava/io/File;
    .restart local p3    # "verbose":Z
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_3
    move-exception v2

    .line 127
    .restart local v2    # "ex":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_6

    .line 128
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_3
    :goto_5
    nop

    .line 129
    :goto_6
    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 14
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/apache/commons/cli/DefaultParser;

    invoke-direct {v0}, Lorg/apache/commons/cli/DefaultParser;-><init>()V

    .line 39
    .local v0, "parser":Lorg/apache/commons/cli/CommandLineParser;
    new-instance v1, Lorg/apache/commons/cli/Options;

    invoke-direct {v1}, Lorg/apache/commons/cli/Options;-><init>()V

    .line 40
    .local v1, "options":Lorg/apache/commons/cli/Options;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "META-INF/q2/installs/"

    aput-object v5, v3, v4

    const-string v6, "prefix, defaults to \'%s\'"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "p"

    const-string v7, "prefix"

    invoke-virtual {v1, v6, v7, v2, v3}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 41
    const-string v3, "q"

    const-string v8, "quiet"

    const-string v9, "do not show information about files being extracted"

    invoke-virtual {v1, v3, v8, v4, v9}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 42
    const-string v8, "f"

    const-string v9, "force"

    const-string v10, "override existing files in output directory"

    invoke-virtual {v1, v8, v9, v4, v10}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 43
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "output directory, defaults to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    const-string v11, "."

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "o"

    const-string v12, "outputDir"

    invoke-virtual {v1, v10, v12, v2, v9}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 44
    const-string v9, "h"

    const-string v12, "help"

    const-string v13, "Usage information"

    invoke-virtual {v1, v9, v12, v4, v13}, Lorg/apache/commons/cli/Options;->addOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/cli/Options;

    .line 46
    invoke-interface {v0, v1, p0}, Lorg/apache/commons/cli/CommandLineParser;->parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;)Lorg/apache/commons/cli/CommandLine;

    move-result-object v4

    .line 47
    .local v4, "line":Lorg/apache/commons/cli/CommandLine;
    invoke-virtual {v4, v9}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 48
    new-instance v2, Lorg/apache/commons/cli/HelpFormatter;

    invoke-direct {v2}, Lorg/apache/commons/cli/HelpFormatter;-><init>()V

    .line 49
    .local v2, "helpFormatter":Lorg/apache/commons/cli/HelpFormatter;
    const-string v3, "install"

    invoke-virtual {v2, v3, v1}, Lorg/apache/commons/cli/HelpFormatter;->printHelp(Ljava/lang/String;Lorg/apache/commons/cli/Options;)V

    .line 50
    return-void

    .line 52
    .end local v2    # "helpFormatter":Lorg/apache/commons/cli/HelpFormatter;
    :cond_0
    invoke-virtual {v4, v6}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v7}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, "prefix":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, v10}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v10}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_2
    move-object v6, v11

    .line 54
    .local v6, "outputBasePath":Ljava/lang/String;
    new-instance v7, Lorg/jpos/q2/install/Install;

    invoke-direct {v7}, Lorg/jpos/q2/install/Install;-><init>()V

    .line 55
    invoke-virtual {v4, v8}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v4, v3}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v3

    .line 54
    xor-int/2addr v2, v3

    invoke-virtual {v7, v8, v9, v2, v5}, Lorg/jpos/q2/install/Install;->install(ZLjava/io/File;ZLjava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public install(ZLjava/io/File;ZLjava/lang/String;)V
    .locals 14
    .param p1, "allowOverride"    # Z
    .param p2, "outputBasePath"    # Ljava/io/File;
    .param p3, "verbose"    # Z
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdirs()Z

    .line 69
    :cond_0
    invoke-static/range {p4 .. p4}, Lorg/jpos/q2/install/ModuleUtils;->getModuleEntries(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 70
    .local v2, "moduleConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 72
    .local v4, "resource":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "s":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 74
    .local v7, "end":I
    const/4 v8, 0x0

    if-gez v7, :cond_2

    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 75
    .local v9, "dirPrefix":Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_4

    .line 77
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .local v10, "dir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    .line 79
    if-eqz v1, :cond_3

    .line 80
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Created "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 84
    .end local v10    # "dir":Ljava/io/File;
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\\"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "path":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    .local v10, "outputFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    if-nez p1, :cond_5

    .line 88
    if-eqz v1, :cond_1

    .line 89
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v10, v12, v8

    const-string v8, "%s exists, use --force to override%n"

    invoke-virtual {v11, v8, v12}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto/16 :goto_0

    .line 94
    :cond_5
    move-object v8, p0

    invoke-direct {p0, v4, v10, v1}, Lorg/jpos/q2/install/Install;->copyResourceToFile(Ljava/lang/String;Ljava/io/File;Z)V

    .line 95
    .end local v4    # "resource":Ljava/lang/String;
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "end":I
    .end local v9    # "dirPrefix":Ljava/lang/String;
    .end local v10    # "outputFile":Ljava/io/File;
    goto/16 :goto_0

    .line 96
    :cond_6
    move-object v8, p0

    return-void
.end method
