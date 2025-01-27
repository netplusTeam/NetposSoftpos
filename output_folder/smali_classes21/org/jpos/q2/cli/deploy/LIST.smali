.class public Lorg/jpos/q2/cli/deploy/LIST;
.super Ljava/lang/Object;
.source "LIST.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIndentString(I)Ljava/lang/String;
    .locals 3
    .param p0, "indent"    # I

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 84
    const-string v2, "|  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static printDirectoryTree(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "folder"    # Ljava/io/File;

    .line 46
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "indent":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0, v1}, Lorg/jpos/q2/cli/deploy/LIST;->printDirectoryTree(Ljava/io/File;ILjava/lang/StringBuilder;)V

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 47
    .end local v0    # "indent":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "folder is not a Directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static printDirectoryTree(Ljava/io/File;ILjava/lang/StringBuilder;)V
    .locals 5
    .param p0, "folder"    # Ljava/io/File;
    .param p1, "indent"    # I
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-static {p1}, Lorg/jpos/q2/cli/deploy/LIST;->getIndentString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v0, "+--"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 65
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    add-int/lit8 v4, p1, 0x1

    invoke-static {v3, v4, p2}, Lorg/jpos/q2/cli/deploy/LIST;->printDirectoryTree(Ljava/io/File;ILjava/lang/StringBuilder;)V

    goto :goto_1

    .line 68
    :cond_0
    add-int/lit8 v4, p1, 0x1

    invoke-static {v3, v4, p2}, Lorg/jpos/q2/cli/deploy/LIST;->printFile(Ljava/io/File;ILjava/lang/StringBuilder;)V

    .line 64
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_1
    return-void

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "folder is not a Directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static printFile(Ljava/io/File;ILjava/lang/StringBuilder;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "indent"    # I
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 75
    invoke-static {p1}, Lorg/jpos/q2/cli/deploy/LIST;->getIndentString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v0, "+--"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 3
    .param p1, "ctx"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-virtual {p1}, Lorg/jpos/q2/CLIContext;->getCLI()Lorg/jpos/q2/CLI;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/q2/CLI;->getQ2()Lorg/jpos/q2/Q2;

    move-result-object v0

    .line 36
    .local v0, "q2":Lorg/jpos/q2/Q2;
    invoke-virtual {v0}, Lorg/jpos/q2/Q2;->getDeployDir()Ljava/io/File;

    move-result-object v1

    .line 38
    .local v1, "deployDir":Ljava/io/File;
    invoke-static {v1}, Lorg/jpos/q2/cli/deploy/LIST;->printDirectoryTree(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 39
    return-void
.end method
