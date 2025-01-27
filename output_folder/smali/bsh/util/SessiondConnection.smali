.class Lbsh/util/SessiondConnection;
.super Ljava/lang/Thread;
.source "Sessiond.java"


# instance fields
.field client:Ljava/net/Socket;

.field globalNameSpace:Lbsh/NameSpace;


# direct methods
.method constructor <init>(Lbsh/NameSpace;Ljava/net/Socket;)V
    .locals 0
    .param p1, "globalNameSpace"    # Lbsh/NameSpace;
    .param p2, "client"    # Ljava/net/Socket;

    .line 77
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 78
    iput-object p2, p0, Lbsh/util/SessiondConnection;->client:Ljava/net/Socket;

    .line 79
    iput-object p1, p0, Lbsh/util/SessiondConnection;->globalNameSpace:Lbsh/NameSpace;

    .line 80
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 86
    :try_start_0
    iget-object v0, p0, Lbsh/util/SessiondConnection;->client:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 87
    .local v0, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/PrintStream;

    iget-object v1, p0, Lbsh/util/SessiondConnection;->client:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 88
    .local v3, "out":Ljava/io/PrintStream;
    new-instance v7, Lbsh/Interpreter;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/4 v5, 0x1

    iget-object v6, p0, Lbsh/util/SessiondConnection;->globalNameSpace:Lbsh/NameSpace;

    move-object v1, v7

    move-object v4, v3

    invoke-direct/range {v1 .. v6}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;)V

    move-object v1, v7

    .line 90
    .local v1, "i":Lbsh/Interpreter;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbsh/Interpreter;->setExitOnEOF(Z)V

    .line 91
    invoke-virtual {v1}, Lbsh/Interpreter;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "i":Lbsh/Interpreter;
    .end local v3    # "out":Ljava/io/PrintStream;
    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 94
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
