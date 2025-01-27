.class final Ljavassist/ClassPoolTail;
.super Ljava/lang/Object;
.source "ClassPoolTail.java"


# instance fields
.field protected pathList:Ljavassist/ClassPathList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    .line 199
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .param p0, "fin"    # Ljava/io/InputStream;
    .param p1, "fout"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    const/16 v0, 0x1000

    .line 424
    .local v0, "bufsize":I
    const/4 v1, 0x0

    .line 425
    .local v1, "buf":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_3

    .line 426
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 427
    mul-int/lit8 v0, v0, 0x2

    .line 428
    new-array v1, v0, [B

    .line 430
    :cond_0
    const/4 v3, 0x0

    .line 431
    .local v3, "size":I
    const/4 v4, 0x0

    .line 433
    .local v4, "len":I
    :cond_1
    sub-int v5, v0, v3

    invoke-virtual {p0, v1, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 434
    if-ltz v4, :cond_2

    .line 435
    add-int/2addr v3, v4

    .line 440
    if-lt v3, v0, :cond_1

    .line 441
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 425
    .end local v3    # "size":I
    .end local v4    # "len":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    .restart local v3    # "size":I
    .restart local v4    # "len":I
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 438
    return-void

    .line 444
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "len":I
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "too much data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static makePathObject(Ljava/lang/String;)Ljavassist/ClassPath;
    .locals 4
    .param p0, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "lower":Ljava/lang/String;
    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 277
    .local v1, "len":I
    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v1, -0x2

    .line 278
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_1

    add-int/lit8 v2, v1, -0x2

    .line 279
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-ne v2, v3, :cond_2

    .line 280
    :cond_1
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "dir":Ljava/lang/String;
    new-instance v3, Ljavassist/JarDirClassPath;

    invoke-direct {v3, v2}, Ljavassist/JarDirClassPath;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 284
    .end local v2    # "dir":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljavassist/DirClassPath;

    invoke-direct {v2, p0}, Ljavassist/DirClassPath;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 274
    .end local v1    # "len":I
    :cond_3
    :goto_0
    new-instance v1, Ljavassist/JarClassPath;

    invoke-direct {v1, p0}, Ljavassist/JarClassPath;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static readStream(Ljava/io/InputStream;)[B
    .locals 11
    .param p0, "fin"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    const/16 v0, 0x8

    new-array v1, v0, [[B

    .line 387
    .local v1, "bufs":[[B
    const/16 v2, 0x1000

    .line 389
    .local v2, "bufsize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 390
    new-array v4, v2, [B

    aput-object v4, v1, v3

    .line 391
    const/4 v4, 0x0

    .line 392
    .local v4, "size":I
    const/4 v5, 0x0

    .line 394
    .local v5, "len":I
    :cond_0
    aget-object v6, v1, v3

    sub-int v7, v2, v4

    invoke-virtual {p0, v6, v4, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 395
    if-ltz v5, :cond_1

    .line 396
    add-int/2addr v4, v5

    .line 408
    if-lt v4, v2, :cond_0

    .line 409
    mul-int/lit8 v2, v2, 0x2

    .line 389
    .end local v4    # "size":I
    .end local v5    # "len":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    .restart local v4    # "size":I
    .restart local v5    # "len":I
    :cond_1
    add-int/lit16 v0, v2, -0x1000

    add-int/2addr v0, v4

    new-array v0, v0, [B

    .line 399
    .local v0, "result":[B
    const/4 v6, 0x0

    .line 400
    .local v6, "s":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    const/4 v8, 0x0

    if-ge v7, v3, :cond_2

    .line 401
    aget-object v9, v1, v7

    add-int/lit16 v10, v6, 0x1000

    invoke-static {v9, v8, v0, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    add-int v8, v6, v6

    add-int/lit16 v6, v8, 0x1000

    .line 400
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 405
    .end local v7    # "j":I
    :cond_2
    aget-object v7, v1, v3

    invoke-static {v7, v8, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    return-object v0

    .line 412
    .end local v0    # "result":[B
    .end local v3    # "i":I
    .end local v4    # "size":I
    .end local v5    # "len":I
    .end local v6    # "s":I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v3, "too much data"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public appendClassPath(Ljava/lang/String;)Ljavassist/ClassPath;
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 266
    invoke-static {p1}, Ljavassist/ClassPoolTail;->makePathObject(Ljava/lang/String;)Ljavassist/ClassPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/ClassPoolTail;->appendClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized appendClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;
    .locals 3
    .param p1, "cp"    # Ljavassist/ClassPath;

    monitor-enter p0

    .line 222
    :try_start_0
    new-instance v0, Ljavassist/ClassPathList;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljavassist/ClassPathList;-><init>(Ljavassist/ClassPath;Ljavassist/ClassPathList;)V

    .line 223
    .local v0, "tail":Ljavassist/ClassPathList;
    iget-object v1, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    .line 224
    .local v1, "list":Ljavassist/ClassPathList;
    if-nez v1, :cond_0

    .line 225
    iput-object v0, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    goto :goto_1

    .line 227
    .end local p0    # "this":Ljavassist/ClassPoolTail;
    :cond_0
    :goto_0
    iget-object v2, v1, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    if-eqz v2, :cond_1

    .line 228
    iget-object v2, v1, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    move-object v1, v2

    goto :goto_0

    .line 230
    :cond_1
    iput-object v0, v1, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :goto_1
    monitor-exit p0

    return-object p1

    .line 221
    .end local v0    # "tail":Ljavassist/ClassPathList;
    .end local v1    # "list":Ljavassist/ClassPathList;
    .end local p1    # "cp":Ljavassist/ClassPath;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public appendSystemPath()Ljavassist/ClassPath;
    .locals 2

    .line 251
    sget v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    const/16 v1, 0x35

    if-ge v0, v1, :cond_0

    .line 252
    new-instance v0, Ljavassist/ClassClassPath;

    invoke-direct {v0}, Ljavassist/ClassClassPath;-><init>()V

    invoke-virtual {p0, v0}, Ljavassist/ClassPoolTail;->appendClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    move-result-object v0

    return-object v0

    .line 253
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 254
    .local v0, "cl":Ljava/lang/ClassLoader;
    new-instance v1, Ljavassist/LoaderClassPath;

    invoke-direct {v1, v0}, Ljavassist/LoaderClassPath;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, v1}, Ljavassist/ClassPoolTail;->appendClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    move-result-object v1

    return-object v1
.end method

.method public find(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "classname"    # Ljava/lang/String;

    .line 367
    iget-object v0, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    .line 368
    .local v0, "list":Ljavassist/ClassPathList;
    const/4 v1, 0x0

    .line 369
    .local v1, "url":Ljava/net/URL;
    :goto_0
    if-eqz v0, :cond_1

    .line 370
    iget-object v2, v0, Ljavassist/ClassPathList;->path:Ljavassist/ClassPath;

    invoke-interface {v2, p1}, Ljavassist/ClassPath;->find(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 371
    if-nez v1, :cond_0

    .line 372
    iget-object v0, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    goto :goto_0

    .line 374
    :cond_0
    return-object v1

    .line 377
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public insertClassPath(Ljava/lang/String;)Ljavassist/ClassPath;
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 260
    invoke-static {p1}, Ljavassist/ClassPoolTail;->makePathObject(Ljava/lang/String;)Ljavassist/ClassPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/ClassPoolTail;->insertClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized insertClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;
    .locals 2
    .param p1, "cp"    # Ljavassist/ClassPath;

    monitor-enter p0

    .line 217
    :try_start_0
    new-instance v0, Ljavassist/ClassPathList;

    iget-object v1, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    invoke-direct {v0, p1, v1}, Ljavassist/ClassPathList;-><init>(Ljavassist/ClassPath;Ljavassist/ClassPathList;)V

    iput-object v0, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-object p1

    .line 216
    .end local p0    # "this":Ljavassist/ClassPoolTail;
    .end local p1    # "cp":Ljavassist/ClassPath;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method openClassfile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    .line 336
    .local v0, "list":Ljavassist/ClassPathList;
    const/4 v1, 0x0

    .line 337
    .local v1, "ins":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 338
    .local v2, "error":Ljavassist/NotFoundException;
    :goto_0
    if-eqz v0, :cond_2

    .line 340
    :try_start_0
    iget-object v3, v0, Ljavassist/ClassPathList;->path:Ljavassist/ClassPath;

    invoke-interface {v3, p1}, Ljavassist/ClassPath;->openClassfile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 345
    goto :goto_1

    .line 342
    :catch_0
    move-exception v3

    .line 343
    .local v3, "e":Ljavassist/NotFoundException;
    if-nez v2, :cond_0

    .line 344
    move-object v2, v3

    .line 347
    .end local v3    # "e":Ljavassist/NotFoundException;
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 348
    iget-object v0, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    goto :goto_0

    .line 350
    :cond_1
    return-object v1

    .line 353
    :cond_2
    if-nez v2, :cond_3

    .line 355
    const/4 v3, 0x0

    return-object v3

    .line 354
    :cond_3
    throw v2
.end method

.method public declared-synchronized removeClassPath(Ljavassist/ClassPath;)V
    .locals 2
    .param p1, "cp"    # Ljavassist/ClassPath;

    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    .line 238
    .local v0, "list":Ljavassist/ClassPathList;
    if-eqz v0, :cond_2

    .line 239
    iget-object v1, v0, Ljavassist/ClassPathList;->path:Ljavassist/ClassPath;

    if-ne v1, p1, :cond_0

    .line 240
    iget-object v1, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    iput-object v1, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    goto :goto_1

    .line 242
    .end local p0    # "this":Ljavassist/ClassPoolTail;
    :cond_0
    :goto_0
    iget-object v1, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    if-eqz v1, :cond_2

    .line 243
    iget-object v1, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    iget-object v1, v1, Ljavassist/ClassPathList;->path:Ljavassist/ClassPath;

    if-ne v1, p1, :cond_1

    .line 244
    iget-object v1, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    iget-object v1, v1, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    iput-object v1, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    goto :goto_0

    .line 246
    :cond_1
    iget-object v1, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 248
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 236
    .end local v0    # "list":Ljavassist/ClassPathList;
    .end local p1    # "cp":Ljavassist/ClassPath;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 203
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 204
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "[class path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    iget-object v1, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    .line 206
    .local v1, "list":Ljavassist/ClassPathList;
    :goto_0
    if-eqz v1, :cond_0

    .line 207
    iget-object v2, v1, Ljavassist/ClassPathList;->path:Ljavassist/ClassPath;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    sget-char v2, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 209
    iget-object v1, v1, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    goto :goto_0

    .line 212
    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method writeClassfile(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;,
            Ljava/io/IOException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 293
    invoke-virtual {p0, p1}, Ljavassist/ClassPoolTail;->openClassfile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 294
    .local v0, "fin":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 298
    :try_start_0
    invoke-static {v0, p2}, Ljavassist/ClassPoolTail;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 302
    nop

    .line 303
    return-void

    .line 301
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 302
    throw v1

    .line 295
    :cond_0
    new-instance v1, Ljavassist/NotFoundException;

    invoke-direct {v1, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
