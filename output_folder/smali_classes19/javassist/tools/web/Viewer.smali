.class public Ljavassist/tools/web/Viewer;
.super Ljava/lang/ClassLoader;
.source "Viewer.java"


# instance fields
.field private port:I

.field private server:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "p"    # I

    .line 78
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 79
    iput-object p1, p0, Ljavassist/tools/web/Viewer;->server:Ljava/lang/String;

    .line 80
    iput p2, p0, Ljavassist/tools/web/Viewer;->port:I

    .line 81
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 61
    array-length v0, p0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 62
    new-instance v0, Ljavassist/tools/web/Viewer;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    const/4 v4, 0x1

    aget-object v4, p0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v3, v4}, Ljavassist/tools/web/Viewer;-><init>(Ljava/lang/String;I)V

    .line 63
    .local v0, "cl":Ljavassist/tools/web/Viewer;
    array-length v3, p0

    sub-int/2addr v3, v1

    new-array v3, v3, [Ljava/lang/String;

    .line 64
    .local v3, "args2":[Ljava/lang/String;
    array-length v4, p0

    sub-int/2addr v4, v1

    invoke-static {p0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    const/4 v1, 0x2

    aget-object v1, p0, v1

    invoke-virtual {v0, v1, v3}, Ljavassist/tools/web/Viewer;->run(Ljava/lang/String;[Ljava/lang/String;)V

    .line 66
    .end local v0    # "cl":Ljavassist/tools/web/Viewer;
    .end local v3    # "args2":[Ljava/lang/String;
    goto :goto_0

    .line 68
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: java javassist.tools.web.Viewer <host> <port> class [args ...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void
.end method

.method private readStream(Ljava/io/InputStream;)[B
    .locals 5
    .param p1, "fin"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 196
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 197
    .local v1, "size":I
    const/4 v2, 0x0

    .line 199
    .local v2, "len":I
    :goto_0
    add-int/2addr v1, v2

    .line 200
    array-length v3, v0

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    if-gtz v3, :cond_0

    .line 201
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    .line 202
    .local v3, "newbuf":[B
    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    move-object v0, v3

    .line 206
    .end local v3    # "newbuf":[B
    :cond_0
    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 207
    if-gez v2, :cond_1

    .line 209
    new-array v3, v1, [B

    .line 210
    .local v3, "result":[B
    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    return-object v3

    .line 207
    .end local v3    # "result":[B
    :cond_1
    goto :goto_0
.end method


# virtual methods
.method protected fetchClass(Ljava/lang/String;)[B
    .locals 10
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Ljavassist/tools/web/Viewer;->server:Ljava/lang/String;

    iget v2, p0, Ljavassist/tools/web/Viewer;->port:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 169
    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-direct {v0, v4, v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 170
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 171
    .local v1, "con":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 172
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    .line 173
    .local v2, "size":I
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 174
    .local v3, "s":Ljava/io/InputStream;
    if-gtz v2, :cond_0

    .line 175
    invoke-direct {p0, v3}, Ljavassist/tools/web/Viewer;->readStream(Ljava/io/InputStream;)[B

    move-result-object v4

    .local v4, "b":[B
    goto :goto_0

    .line 177
    .end local v4    # "b":[B
    :cond_0
    new-array v4, v2, [B

    .line 178
    .restart local v4    # "b":[B
    const/4 v5, 0x0

    .line 180
    .local v5, "len":I
    :cond_1
    sub-int v6, v2, v5

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 181
    .local v6, "n":I
    if-ltz v6, :cond_2

    .line 186
    add-int/2addr v5, v6

    .line 187
    .end local v6    # "n":I
    if-lt v5, v2, :cond_1

    .line 190
    .end local v5    # "len":I
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 191
    return-object v4

    .line 182
    .restart local v5    # "len":I
    .restart local v6    # "n":I
    :cond_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 183
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the stream was closed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "java."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "javax."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const-string v1, "javassist.tools.web.Viewer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/tools/web/Viewer;->findSystemClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 149
    :cond_1
    if-nez v0, :cond_3

    .line 151
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/tools/web/Viewer;->fetchClass(Ljava/lang/String;)[B

    move-result-object v1

    .line 152
    .local v1, "b":[B
    if-eqz v1, :cond_2

    .line 153
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {p0, p1, v1, v2, v3}, Ljavassist/tools/web/Viewer;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 156
    .end local v1    # "b":[B
    :cond_2
    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 158
    :cond_3
    :goto_0
    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 91
    iget v0, p0, Ljavassist/tools/web/Viewer;->port:I

    return v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Ljavassist/tools/web/Viewer;->server:Ljava/lang/String;

    return-object v0
.end method

.method protected declared-synchronized loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 119
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/tools/web/Viewer;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 120
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Ljavassist/tools/web/Viewer;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 123
    .end local p0    # "this":Ljavassist/tools/web/Viewer;
    :cond_0
    if-eqz v0, :cond_2

    .line 126
    if-eqz p2, :cond_1

    .line 127
    invoke-virtual {p0, v0}, Ljavassist/tools/web/Viewer;->resolveClass(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_1
    monitor-exit p0

    return-object v0

    .line 124
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/ClassNotFoundException;

    invoke-direct {v1, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "resolve":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Ljavassist/tools/web/Viewer;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 104
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v1, "main"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    .line 105
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    nop

    .line 110
    return-void

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    throw v2
.end method
