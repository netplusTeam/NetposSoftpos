.class final Ljavassist/JarDirClassPath;
.super Ljava/lang/Object;
.source "ClassPoolTail.java"

# interfaces
.implements Ljavassist/ClassPath;


# instance fields
.field jars:[Ljavassist/JarClassPath;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "dirName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljavassist/JarDirClassPath$1;

    invoke-direct {v1, p0}, Ljavassist/JarDirClassPath$1;-><init>(Ljavassist/JarDirClassPath;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 98
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 99
    array-length v1, v0

    new-array v1, v1, [Ljavassist/JarClassPath;

    iput-object v1, p0, Ljavassist/JarDirClassPath;->jars:[Ljavassist/JarClassPath;

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 101
    iget-object v2, p0, Ljavassist/JarDirClassPath;->jars:[Ljavassist/JarClassPath;

    new-instance v3, Ljavassist/JarClassPath;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavassist/JarClassPath;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public find(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "classname"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Ljavassist/JarDirClassPath;->jars:[Ljavassist/JarClassPath;

    if-eqz v0, :cond_1

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljavassist/JarDirClassPath;->jars:[Ljavassist/JarClassPath;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 121
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljavassist/JarClassPath;->find(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 122
    .local v1, "url":Ljava/net/URL;
    if-eqz v1, :cond_0

    .line 123
    return-object v1

    .line 120
    .end local v1    # "url":Ljava/net/URL;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public openClassfile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Ljavassist/JarDirClassPath;->jars:[Ljavassist/JarClassPath;

    if-eqz v0, :cond_1

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljavassist/JarDirClassPath;->jars:[Ljavassist/JarClassPath;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 109
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljavassist/JarClassPath;->openClassfile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 110
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 111
    return-object v1

    .line 108
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
