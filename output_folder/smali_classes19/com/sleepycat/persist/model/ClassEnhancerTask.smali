.class public Lcom/sleepycat/persist/model/ClassEnhancerTask;
.super Lorg/apache/tools/ant/Task;
.source "ClassEnhancerTask.java"


# instance fields
.field private fileSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field

.field private verbose:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/model/ClassEnhancerTask;->fileSets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addConfiguredFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 1
    .param p1, "files"    # Lorg/apache/tools/ant/types/FileSet;

    .line 108
    iget-object v0, p0, Lcom/sleepycat/persist/model/ClassEnhancerTask;->fileSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public execute()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/sleepycat/persist/model/ClassEnhancerTask;->fileSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "nFiles":I
    :try_start_0
    new-instance v1, Lcom/sleepycat/persist/model/ClassEnhancer;

    invoke-direct {v1}, Lcom/sleepycat/persist/model/ClassEnhancer;-><init>()V

    .line 84
    .local v1, "enhancer":Lcom/sleepycat/persist/model/ClassEnhancer;
    iget-boolean v2, p0, Lcom/sleepycat/persist/model/ClassEnhancerTask;->verbose:Z

    invoke-virtual {v1, v2}, Lcom/sleepycat/persist/model/ClassEnhancer;->setVerbose(Z)V

    .line 85
    iget-object v2, p0, Lcom/sleepycat/persist/model/ClassEnhancerTask;->fileSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/types/FileSet;

    .line 86
    .local v3, "fileSet":Lorg/apache/tools/ant/types/FileSet;
    nop

    .line 87
    invoke-virtual {p0}, Lcom/sleepycat/persist/model/ClassEnhancerTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v4

    .line 88
    .local v4, "scanner":Lorg/apache/tools/ant/DirectoryScanner;
    invoke-virtual {v4}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "fileNames":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 90
    .local v8, "fileName":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-virtual {v4}, Lorg/apache/tools/ant/DirectoryScanner;->getBasedir()Ljava/io/File;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .local v9, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v1, v9}, Lcom/sleepycat/persist/model/ClassEnhancer;->enhanceFile(Ljava/io/File;)I

    move-result v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v0, v10

    .line 95
    nop

    .line 89
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 93
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v9    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v6, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v6, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 97
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fileSet":Lorg/apache/tools/ant/types/FileSet;
    .end local v4    # "scanner":Lorg/apache/tools/ant/DirectoryScanner;
    .end local v5    # "fileNames":[Ljava/lang/String;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 98
    :cond_1
    if-lez v0, :cond_2

    .line 99
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enhanced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 104
    .end local v0    # "nFiles":I
    .end local v1    # "enhancer":Lcom/sleepycat/persist/model/ClassEnhancer;
    :cond_2
    nop

    .line 105
    return-void

    .line 101
    :catch_1
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 103
    throw v0

    .line 79
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "At least one fileset must be specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVerbose(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 112
    iput-boolean p1, p0, Lcom/sleepycat/persist/model/ClassEnhancerTask;->verbose:Z

    .line 113
    return-void
.end method
