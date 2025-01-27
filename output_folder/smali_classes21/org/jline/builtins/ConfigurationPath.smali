.class public Lorg/jline/builtins/ConfigurationPath;
.super Ljava/lang/Object;
.source "ConfigurationPath.java"


# instance fields
.field private appConfig:Ljava/nio/file/Path;

.field private userConfig:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 0
    .param p1, "appConfig"    # Ljava/nio/file/Path;
    .param p2, "userConfig"    # Ljava/nio/file/Path;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/jline/builtins/ConfigurationPath;->appConfig:Ljava/nio/file/Path;

    .line 25
    iput-object p2, p0, Lorg/jline/builtins/ConfigurationPath;->userConfig:Ljava/nio/file/Path;

    .line 26
    return-void
.end method


# virtual methods
.method public getConfig(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "out":Ljava/nio/file/Path;
    iget-object v1, p0, Lorg/jline/builtins/ConfigurationPath;->userConfig:Ljava/nio/file/Path;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lorg/jline/builtins/ConfigurationPath;->userConfig:Ljava/nio/file/Path;

    invoke-interface {v1, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_0
    iget-object v1, p0, Lorg/jline/builtins/ConfigurationPath;->appConfig:Ljava/nio/file/Path;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lorg/jline/builtins/ConfigurationPath;->appConfig:Ljava/nio/file/Path;

    invoke-interface {v1, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 41
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getUserConfig(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jline/builtins/ConfigurationPath;->getUserConfig(Ljava/lang/String;Z)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getUserConfig(Ljava/lang/String;Z)Ljava/nio/file/Path;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "out":Ljava/nio/file/Path;
    iget-object v1, p0, Lorg/jline/builtins/ConfigurationPath;->userConfig:Ljava/nio/file/Path;

    if-eqz v1, :cond_1

    .line 65
    invoke-interface {v1, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 66
    iget-object v1, p0, Lorg/jline/builtins/ConfigurationPath;->userConfig:Ljava/nio/file/Path;

    invoke-interface {v1, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 68
    :cond_0
    iget-object v1, p0, Lorg/jline/builtins/ConfigurationPath;->userConfig:Ljava/nio/file/Path;

    invoke-interface {v1, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lorg/jline/builtins/ConfigurationPath;->userConfig:Ljava/nio/file/Path;

    invoke-interface {v1, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 72
    :cond_1
    return-object v0
.end method
