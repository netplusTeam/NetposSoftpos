.class public Ljavassist/tools/web/Webserver;
.super Ljava/lang/Object;
.source "Webserver.java"


# static fields
.field private static final endofline:[B

.field private static final typeClass:I = 0x2

.field private static final typeGif:I = 0x3

.field private static final typeHtml:I = 0x1

.field private static final typeJpeg:I = 0x4

.field private static final typeText:I = 0x5


# instance fields
.field private classPool:Ljavassist/ClassPool;

.field public debugDir:Ljava/lang/String;

.field public htmlfileBase:Ljava/lang/String;

.field private socket:Ljava/net/ServerSocket;

.field protected translator:Ljavassist/Translator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljavassist/tools/web/Webserver;->endofline:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/tools/web/Webserver;->debugDir:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Ljavassist/tools/web/Webserver;->htmlfileBase:Ljava/lang/String;

    .line 116
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1, p1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, p0, Ljavassist/tools/web/Webserver;->socket:Ljava/net/ServerSocket;

    .line 117
    iput-object v0, p0, Ljavassist/tools/web/Webserver;->classPool:Ljavassist/ClassPool;

    .line 118
    iput-object v0, p0, Ljavassist/tools/web/Webserver;->translator:Ljavassist/Translator;

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "port"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Ljavassist/tools/web/Webserver;-><init>(I)V

    .line 108
    return-void
.end method

.method private checkFilename(Ljava/lang/String;I)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/tools/web/BadHttpRequest;
        }
    .end annotation

    .line 331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 332
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 333
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 334
    :cond_0
    new-instance v2, Ljavassist/tools/web/BadHttpRequest;

    invoke-direct {v2}, Ljavassist/tools/web/BadHttpRequest;-><init>()V

    throw v2

    .line 331
    .end local v1    # "c":C
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "i":I
    :cond_2
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    .line 339
    return-void

    .line 338
    :cond_3
    new-instance v0, Ljavassist/tools/web/BadHttpRequest;

    invoke-direct {v0}, Ljavassist/tools/web/BadHttpRequest;-><init>()V

    throw v0
.end method

.method private letUsersSendClassfile(Ljava/io/OutputStream;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavassist/tools/web/BadHttpRequest;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Ljavassist/tools/web/Webserver;->classPool:Ljavassist/ClassPool;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 346
    return v1

    .line 349
    :cond_0
    add-int/lit8 v0, p3, -0x6

    .line 350
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "classname":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Ljavassist/tools/web/Webserver;->translator:Ljavassist/Translator;

    if-eqz v1, :cond_1

    .line 353
    iget-object v2, p0, Ljavassist/tools/web/Webserver;->classPool:Ljavassist/ClassPool;

    invoke-interface {v1, v2, v0}, Ljavassist/Translator;->onLoad(Ljavassist/ClassPool;Ljava/lang/String;)V

    .line 355
    :cond_1
    iget-object v1, p0, Ljavassist/tools/web/Webserver;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1, v0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    .line 356
    .local v1, "c":Ljavassist/CtClass;
    invoke-virtual {v1}, Ljavassist/CtClass;->toBytecode()[B

    move-result-object v2

    .line 357
    .local v2, "classfile":[B
    iget-object v3, p0, Ljavassist/tools/web/Webserver;->debugDir:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 358
    invoke-virtual {v1, v3}, Ljavassist/CtClass;->writeFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v1    # "c":Ljavassist/CtClass;
    :cond_2
    nop

    .line 364
    array-length v1, v2

    int-to-long v3, v1

    const/4 v1, 0x2

    invoke-direct {p0, p1, v3, v4, v1}, Ljavassist/tools/web/Webserver;->sendHeader(Ljava/io/OutputStream;JI)V

    .line 365
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 366
    const/4 v1, 0x1

    return v1

    .line 360
    .end local v2    # "classfile":[B
    :catch_0
    move-exception v1

    .line 361
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljavassist/tools/web/BadHttpRequest;

    invoke-direct {v2, v1}, Ljavassist/tools/web/BadHttpRequest;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 93
    new-instance v0, Ljavassist/tools/web/Webserver;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljavassist/tools/web/Webserver;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "web":Ljavassist/tools/web/Webserver;
    invoke-virtual {v0}, Ljavassist/tools/web/Webserver;->run()V

    .line 95
    .end local v0    # "web":Ljavassist/tools/web/Webserver;
    goto :goto_0

    .line 97
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: java javassist.tools.web.Webserver <port number>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void
.end method

.method private readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 227
    .local v0, "buf":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    if-ltz v1, :cond_0

    const/16 v1, 0xd

    if-eq v2, v1, :cond_0

    .line 228
    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private replyError(Ljava/io/OutputStream;Ljavassist/tools/web/BadHttpRequest;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "e"    # Ljavassist/tools/web/BadHttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljavassist/tools/web/BadHttpRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/tools/web/Webserver;->logging2(Ljava/lang/String;)V

    .line 396
    const-string v0, "HTTP/1.0 400 Bad Request"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 397
    sget-object v0, Ljavassist/tools/web/Webserver;->endofline:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 398
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 399
    const-string v0, "<H1>Bad Request</H1>"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 400
    return-void
.end method

.method private sendHeader(Ljava/io/OutputStream;JI)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "dataLength"    # J
    .param p4, "filetype"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    const-string v0, "HTTP/1.0 200 OK"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 373
    sget-object v0, Ljavassist/tools/web/Webserver;->endofline:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 374
    const-string v1, "Content-Length: "

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 375
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 376
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 377
    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    .line 378
    const-string v1, "Content-Type: application/octet-stream"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 379
    :cond_0
    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    .line 380
    const-string v1, "Content-Type: text/html"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 381
    :cond_1
    const/4 v1, 0x3

    if-ne p4, v1, :cond_2

    .line 382
    const-string v1, "Content-Type: image/gif"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 383
    :cond_2
    const/4 v1, 0x4

    if-ne p4, v1, :cond_3

    .line 384
    const-string v1, "Content-Type: image/jpg"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 385
    :cond_3
    const/4 v1, 0x5

    if-ne p4, v1, :cond_4

    .line 386
    const-string v1, "Content-Type: text/plain"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 388
    :cond_4
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 389
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 390
    return-void
.end method

.method private skipLine(Ljava/io/InputStream;)I
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "len":I
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    if-ltz v1, :cond_0

    const/16 v1, 0xd

    if-eq v2, v1, :cond_0

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 241
    return v0
.end method


# virtual methods
.method public addTranslator(Ljavassist/ClassPool;Ljavassist/Translator;)V
    .locals 0
    .param p1, "cp"    # Ljavassist/ClassPool;
    .param p2, "t"    # Ljavassist/Translator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 140
    iput-object p1, p0, Ljavassist/tools/web/Webserver;->classPool:Ljavassist/ClassPool;

    .line 141
    iput-object p2, p0, Ljavassist/tools/web/Webserver;->translator:Ljavassist/Translator;

    .line 142
    invoke-interface {p2, p1}, Ljavassist/Translator;->start(Ljavassist/ClassPool;)V

    .line 143
    return-void
.end method

.method public doReply(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 12
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavassist/tools/web/BadHttpRequest;
        }
    .end annotation

    .line 257
    const-string v0, "GET /"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 258
    const/16 v0, 0x20

    const/4 v1, 0x5

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 262
    .local v0, "filename":Ljava/lang/String;
    .local v1, "urlName":Ljava/lang/String;
    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    const/4 v2, 0x2

    .local v2, "fileType":I
    goto :goto_1

    .line 264
    .end local v2    # "fileType":I
    :cond_0
    const-string v2, ".html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ".htm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 266
    :cond_1
    const-string v2, ".gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    const/4 v2, 0x3

    .restart local v2    # "fileType":I
    goto :goto_1

    .line 268
    .end local v2    # "fileType":I
    :cond_2
    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 269
    const/4 v2, 0x4

    .restart local v2    # "fileType":I
    goto :goto_1

    .line 271
    .end local v2    # "fileType":I
    :cond_3
    const/4 v2, 0x5

    .restart local v2    # "fileType":I
    goto :goto_1

    .line 265
    .end local v2    # "fileType":I
    :cond_4
    :goto_0
    const/4 v2, 0x1

    .line 273
    .restart local v2    # "fileType":I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 274
    .local v3, "len":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    .line 275
    invoke-direct {p0, p2, v0, v3}, Ljavassist/tools/web/Webserver;->letUsersSendClassfile(Ljava/io/OutputStream;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 276
    return-void

    .line 278
    :cond_5
    invoke-direct {p0, v0, v3}, Ljavassist/tools/web/Webserver;->checkFilename(Ljava/lang/String;I)V

    .line 279
    iget-object v5, p0, Ljavassist/tools/web/Webserver;->htmlfileBase:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ljavassist/tools/web/Webserver;->htmlfileBase:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    :cond_6
    sget-char v5, Ljava/io/File;->separatorChar:C

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_7

    .line 283
    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 285
    :cond_7
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x1000

    if-eqz v6, :cond_9

    .line 287
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-direct {p0, p2, v9, v10, v2}, Ljavassist/tools/web/Webserver;->sendHeader(Ljava/io/OutputStream;JI)V

    .line 288
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v6, v4

    .line 289
    .local v6, "fin":Ljava/io/FileInputStream;
    new-array v9, v8, [B

    .line 291
    .local v9, "filebuffer":[B
    :goto_2
    invoke-virtual {v6, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 292
    if-gtz v3, :cond_8

    .line 293
    nop

    .line 297
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 298
    return-void

    .line 294
    :cond_8
    invoke-virtual {p2, v9, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 304
    .end local v6    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "filebuffer":[B
    :cond_9
    if-ne v2, v4, :cond_b

    .line 305
    nop

    .line 306
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 307
    .local v6, "fin":Ljava/io/InputStream;
    if-eqz v6, :cond_b

    .line 308
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 309
    .local v9, "barray":Ljava/io/ByteArrayOutputStream;
    new-array v8, v8, [B

    .line 311
    .local v8, "filebuffer":[B
    :goto_3
    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 312
    if-gtz v3, :cond_a

    .line 313
    nop

    .line 317
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 318
    .local v7, "classfile":[B
    array-length v10, v7

    int-to-long v10, v10

    invoke-direct {p0, p2, v10, v11, v4}, Ljavassist/tools/web/Webserver;->sendHeader(Ljava/io/OutputStream;JI)V

    .line 319
    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write([B)V

    .line 320
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 321
    return-void

    .line 314
    .end local v7    # "classfile":[B
    :cond_a
    invoke-virtual {v9, v8, v7, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 325
    .end local v6    # "fin":Ljava/io/InputStream;
    .end local v8    # "filebuffer":[B
    .end local v9    # "barray":Ljava/io/ByteArrayOutputStream;
    :cond_b
    new-instance v4, Ljavassist/tools/web/BadHttpRequest;

    invoke-direct {v4}, Ljavassist/tools/web/BadHttpRequest;-><init>()V

    throw v4

    .line 260
    .end local v0    # "filename":Ljava/lang/String;
    .end local v1    # "urlName":Ljava/lang/String;
    .end local v2    # "fileType":I
    .end local v3    # "len":I
    .end local v5    # "file":Ljava/io/File;
    :cond_c
    new-instance v0, Ljavassist/tools/web/BadHttpRequest;

    invoke-direct {v0}, Ljavassist/tools/web/BadHttpRequest;-><init>()V

    throw v0
.end method

.method public end()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Ljavassist/tools/web/Webserver;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 150
    return-void
.end method

.method public logging(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 156
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public logging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg1"    # Ljava/lang/String;
    .param p2, "msg2"    # Ljava/lang/String;

    .line 163
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 164
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 165
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public logging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg1"    # Ljava/lang/String;
    .param p2, "msg2"    # Ljava/lang/String;
    .param p3, "msg3"    # Ljava/lang/String;

    .line 172
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 173
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 174
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 175
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 176
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public logging2(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 183
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 184
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method final process(Ljava/net/Socket;)V
    .locals 4
    .param p1, "clnt"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 204
    .local v0, "in":Ljava/io/InputStream;
    invoke-direct {p0, v0}, Ljavassist/tools/web/Webserver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 206
    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {p0, v2, v3, v1}, Ljavassist/tools/web/Webserver;->logging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :goto_0
    invoke-direct {p0, v0}, Ljavassist/tools/web/Webserver;->skipLine(Ljava/io/InputStream;)I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 212
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, v0, v2, v1}, Ljavassist/tools/web/Webserver;->doReply(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/tools/web/BadHttpRequest; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_1

    .line 214
    :catch_0
    move-exception v3

    .line 215
    .local v3, "e":Ljavassist/tools/web/BadHttpRequest;
    invoke-direct {p0, v2, v3}, Ljavassist/tools/web/Webserver;->replyError(Ljava/io/OutputStream;Ljavassist/tools/web/BadHttpRequest;)V

    .line 218
    .end local v3    # "e":Ljavassist/tools/web/BadHttpRequest;
    :goto_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 219
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 220
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 221
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 222
    return-void
.end method

.method public run()V
    .locals 2

    .line 191
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "ready to service..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    :goto_0
    :try_start_0
    new-instance v0, Ljavassist/tools/web/ServiceThread;

    iget-object v1, p0, Ljavassist/tools/web/Webserver;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavassist/tools/web/ServiceThread;-><init>(Ljavassist/tools/web/Webserver;Ljava/net/Socket;)V

    .line 195
    .local v0, "th":Ljavassist/tools/web/ServiceThread;
    invoke-virtual {v0}, Ljavassist/tools/web/ServiceThread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "th":Ljavassist/tools/web/ServiceThread;
    goto :goto_1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavassist/tools/web/Webserver;->logging(Ljava/lang/String;)V

    .line 199
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    goto :goto_0
.end method

.method public setClassPool(Ljavassist/ClassPool;)V
    .locals 0
    .param p1, "loader"    # Ljavassist/ClassPool;

    .line 126
    iput-object p1, p0, Ljavassist/tools/web/Webserver;->classPool:Ljavassist/ClassPool;

    .line 127
    return-void
.end method
