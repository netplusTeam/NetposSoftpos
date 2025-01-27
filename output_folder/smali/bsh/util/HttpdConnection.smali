.class Lbsh/util/HttpdConnection;
.super Ljava/lang/Thread;
.source "Httpd.java"


# instance fields
.field client:Ljava/net/Socket;

.field in:Ljava/io/BufferedReader;

.field isHttp1:Z

.field out:Ljava/io/OutputStream;

.field pout:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Ljava/net/Socket;)V
    .locals 1
    .param p1, "client"    # Ljava/net/Socket;

    .line 82
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 83
    iput-object p1, p0, Lbsh/util/HttpdConnection;->client:Ljava/net/Socket;

    .line 84
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lbsh/util/HttpdConnection;->setPriority(I)V

    .line 85
    return-void
.end method

.method private error(ILjava/lang/String;)V
    .locals 3
    .param p1, "num"    # I
    .param p2, "s"    # Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><h1>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</h1></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 210
    iget-boolean v0, p0, Lbsh/util/HttpdConnection;->isHttp1:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lbsh/util/HttpdConnection;->pout:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP/1.0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lbsh/util/HttpdConnection;->pout:Ljava/io/PrintStream;

    const-string v1, "Content-type: text/html"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lbsh/util/HttpdConnection;->pout:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lbsh/util/HttpdConnection;->pout:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method private sendFileData(Ljava/lang/String;)V
    .locals 5
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 176
    .local v0, "fis":Ljava/io/InputStream;
    if-eqz v0, :cond_6

    .line 178
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 180
    .local v1, "data":[B
    iget-boolean v2, p0, Lbsh/util/HttpdConnection;->isHttp1:Z

    if-eqz v2, :cond_3

    .line 182
    iget-object v2, p0, Lbsh/util/HttpdConnection;->pout:Ljava/io/PrintStream;

    const-string v3, "HTTP/1.0 200 Document follows"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lbsh/util/HttpdConnection;->pout:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    const-string v2, ".gif"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lbsh/util/HttpdConnection;->pout:Ljava/io/PrintStream;

    const-string v3, "Content-type: image/gif"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 189
    :cond_0
    const-string v2, ".html"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".htm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 192
    :cond_1
    iget-object v2, p0, Lbsh/util/HttpdConnection;->pout:Ljava/io/PrintStream;

    const-string v3, "Content-Type: application/octet-stream"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 190
    :cond_2
    :goto_0
    iget-object v2, p0, Lbsh/util/HttpdConnection;->pout:Ljava/io/PrintStream;

    const-string v3, "Content-Type: text/html"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    :goto_1
    iget-object v2, p0, Lbsh/util/HttpdConnection;->pout:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 197
    :cond_3
    const/4 v2, 0x0

    .line 200
    .local v2, "bytesread":I
    :cond_4
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 201
    if-lez v2, :cond_5

    .line 202
    iget-object v3, p0, Lbsh/util/HttpdConnection;->pout:Ljava/io/PrintStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/PrintStream;->write([BII)V

    .line 203
    :cond_5
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 204
    iget-object v3, p0, Lbsh/util/HttpdConnection;->pout:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    .line 205
    return-void

    .line 177
    .end local v1    # "data":[B
    .end local v2    # "bytesread":I
    :cond_6
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private serveFile(Ljava/lang/String;)V
    .locals 5
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string p1, "/remote/remote.html"

    .line 141
    :cond_0
    const-string v0, "/remote/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/bsh/util/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    :cond_1
    const-string v0, "/java"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Object Not Found"

    const/16 v2, 0x194

    if-eqz v0, :cond_2

    .line 159
    invoke-direct {p0, v2, v1}, Lbsh/util/HttpdConnection;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_2
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, p1}, Lbsh/util/HttpdConnection;->sendFileData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-direct {p0, v2, v1}, Lbsh/util/HttpdConnection;->error(ILjava/lang/String;)V

    .line 167
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 91
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lbsh/util/HttpdConnection;->client:Ljava/net/Socket;

    .line 92
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lbsh/util/HttpdConnection;->in:Ljava/io/BufferedReader;

    .line 93
    iget-object v0, p0, Lbsh/util/HttpdConnection;->client:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/HttpdConnection;->out:Ljava/io/OutputStream;

    .line 94
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lbsh/util/HttpdConnection;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lbsh/util/HttpdConnection;->pout:Ljava/io/PrintStream;

    .line 96
    iget-object v0, p0, Lbsh/util/HttpdConnection;->in:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "request":Ljava/lang/String;
    const/16 v1, 0x190

    if-nez v0, :cond_0

    .line 98
    const-string v2, "Empty Request"

    invoke-direct {p0, v1, v2}, Lbsh/util/HttpdConnection;->error(ILjava/lang/String;)V

    .line 100
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http/1."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 103
    :goto_0
    iget-object v2, p0, Lbsh/util/HttpdConnection;->in:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "s":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lbsh/util/HttpdConnection;->isHttp1:Z

    .line 109
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    const-string v5, "Bad Request"

    if-ge v3, v4, :cond_3

    .line 111
    :try_start_1
    invoke-direct {p0, v1, v5}, Lbsh/util/HttpdConnection;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "command":Ljava/lang/String;
    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 116
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbsh/util/HttpdConnection;->serveFile(Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :cond_4
    invoke-direct {p0, v1, v5}, Lbsh/util/HttpdConnection;->error(ILjava/lang/String;)V

    .line 121
    .end local v3    # "command":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lbsh/util/HttpdConnection;->client:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    .end local v0    # "request":Ljava/lang/String;
    .end local v2    # "st":Ljava/util/StringTokenizer;
    goto :goto_3

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    :try_start_2
    iget-object v1, p0, Lbsh/util/HttpdConnection;->client:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 130
    :catch_1
    move-exception v1

    :goto_2
    nop

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method
