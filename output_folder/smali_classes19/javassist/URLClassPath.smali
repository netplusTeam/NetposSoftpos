.class public Ljavassist/URLClassPath;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljavassist/ClassPath;


# instance fields
.field protected directory:Ljava/lang/String;

.field protected hostname:Ljava/lang/String;

.field protected packageName:Ljava/lang/String;

.field protected port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "directory"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Ljavassist/URLClassPath;->hostname:Ljava/lang/String;

    .line 66
    iput p2, p0, Ljavassist/URLClassPath;->port:I

    .line 67
    iput-object p3, p0, Ljavassist/URLClassPath;->directory:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Ljavassist/URLClassPath;->packageName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static fetchClass(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)[B
    .locals 9
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "directory"    # Ljava/lang/String;
    .param p3, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {p0, p1, v0}, Ljavassist/URLClassPath;->fetchClass0(Ljava/lang/String;ILjava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    .line 137
    .local v0, "con":Ljava/net/URLConnection;
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    .line 138
    .local v1, "size":I
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 140
    .local v2, "s":Ljava/io/InputStream;
    if-gtz v1, :cond_0

    .line 141
    :try_start_0
    invoke-static {v2}, Ljavassist/ClassPoolTail;->readStream(Ljava/io/InputStream;)[B

    move-result-object v3

    .local v3, "b":[B
    goto :goto_0

    .line 143
    .end local v3    # "b":[B
    :cond_0
    new-array v3, v1, [B

    .line 144
    .restart local v3    # "b":[B
    const/4 v4, 0x0

    .line 146
    .local v4, "len":I
    :cond_1
    sub-int v5, v1, v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .local v5, "n":I
    if-ltz v5, :cond_2

    .line 151
    add-int/2addr v4, v5

    .line 152
    .end local v5    # "n":I
    if-lt v4, v1, :cond_1

    .line 156
    .end local v4    # "len":I
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 157
    nop

    .line 159
    return-object v3

    .line 148
    .restart local v4    # "len":I
    .restart local v5    # "n":I
    :cond_2
    :try_start_1
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the stream was closed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "con":Ljava/net/URLConnection;
    .end local v1    # "size":I
    .end local v2    # "s":Ljava/io/InputStream;
    .end local p0    # "host":Ljava/lang/String;
    .end local p1    # "port":I
    .end local p2    # "directory":Ljava/lang/String;
    .end local p3    # "classname":Ljava/lang/String;
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .end local v3    # "b":[B
    .end local v4    # "len":I
    .end local v5    # "n":I
    .restart local v0    # "con":Ljava/net/URLConnection;
    .restart local v1    # "size":I
    .restart local v2    # "s":Ljava/io/InputStream;
    .restart local p0    # "host":Ljava/lang/String;
    .restart local p1    # "port":I
    .restart local p2    # "directory":Ljava/lang/String;
    .restart local p3    # "classname":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 157
    throw v3
.end method

.method private static fetchClass0(Ljava/lang/String;ILjava/lang/String;)Ljava/net/URLConnection;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http"

    invoke-direct {v0, v1, p0, p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .local v0, "url":Ljava/net/URL;
    nop

    .line 175
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 176
    .local v1, "con":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 177
    return-object v1

    .line 170
    .end local v0    # "url":Ljava/net/URL;
    .end local v1    # "con":Ljava/net/URLConnection;
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "invalid URL?"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private openClassfile0(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 3
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Ljavassist/URLClassPath;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljavassist/URLClassPath;->directory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    .line 95
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "jarname":Ljava/lang/String;
    iget-object v1, p0, Ljavassist/URLClassPath;->hostname:Ljava/lang/String;

    iget v2, p0, Ljavassist/URLClassPath;->port:I

    invoke-static {v1, v2, v0}, Ljavassist/URLClassPath;->fetchClass0(Ljava/lang/String;ILjava/lang/String;)Ljava/net/URLConnection;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public find(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "classname"    # Ljava/lang/String;

    .line 109
    :try_start_0
    invoke-direct {p0, p1}, Ljavassist/URLClassPath;->openClassfile0(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    .line 110
    .local v0, "con":Ljava/net/URLConnection;
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 111
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 113
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 111
    .end local v0    # "con":Ljava/net/URLConnection;
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public openClassfile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "classname"    # Ljava/lang/String;

    .line 84
    :try_start_0
    invoke-direct {p0, p1}, Ljavassist/URLClassPath;->openClassfile0(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    .line 85
    .local v0, "con":Ljava/net/URLConnection;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 85
    .end local v0    # "con":Ljava/net/URLConnection;
    :cond_0
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljavassist/URLClassPath;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavassist/URLClassPath;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavassist/URLClassPath;->directory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
