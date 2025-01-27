.class public Lbsh/util/JRemoteApplet;
.super Ljavax/swing/JApplet;
.source "JRemoteApplet.java"


# instance fields
.field in:Ljava/io/InputStream;

.field out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljavax/swing/JApplet;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 6

    .line 46
    const-string v0, "Center"

    invoke-virtual {p0}, Lbsh/util/JRemoteApplet;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    new-instance v2, Ljava/awt/BorderLayout;

    invoke-direct {v2}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v1, v2}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 49
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lbsh/util/JRemoteApplet;->getDocumentBase()Ljava/net/URL;

    move-result-object v2

    .line 52
    .local v2, "base":Ljava/net/URL;
    new-instance v3, Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v5

    add-int/2addr v5, v1

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 53
    .local v3, "s":Ljava/net/Socket;
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lbsh/util/JRemoteApplet;->out:Ljava/io/OutputStream;

    .line 54
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lbsh/util/JRemoteApplet;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v2    # "base":Ljava/net/URL;
    .end local v3    # "s":Ljava/net/Socket;
    nop

    .line 61
    new-instance v1, Lbsh/util/JConsole;

    iget-object v2, p0, Lbsh/util/JRemoteApplet;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lbsh/util/JRemoteApplet;->out:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v3}, Lbsh/util/JConsole;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 62
    .local v1, "console":Ljava/awt/Component;
    invoke-virtual {p0}, Lbsh/util/JRemoteApplet;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/awt/Container;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 63
    return-void

    .line 55
    .end local v1    # "console":Ljava/awt/Component;
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lbsh/util/JRemoteApplet;->getContentPane()Ljava/awt/Container;

    move-result-object v3

    new-instance v4, Ljava/awt/Label;

    const-string v5, "Remote Connection Failed"

    invoke-direct {v4, v5, v1}, Ljava/awt/Label;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v0, v4}, Ljava/awt/Container;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 58
    return-void
.end method
