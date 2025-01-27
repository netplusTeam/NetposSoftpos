.class public Lbsh/util/AWTRemoteApplet;
.super Ljava/applet/Applet;
.source "AWTRemoteApplet.java"


# instance fields
.field in:Ljava/io/InputStream;

.field out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/applet/Applet;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 6

    .line 46
    const-string v0, "Center"

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {p0, v1}, Lbsh/util/AWTRemoteApplet;->setLayout(Ljava/awt/LayoutManager;)V

    .line 49
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lbsh/util/AWTRemoteApplet;->getDocumentBase()Ljava/net/URL;

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

    iput-object v4, p0, Lbsh/util/AWTRemoteApplet;->out:Ljava/io/OutputStream;

    .line 54
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lbsh/util/AWTRemoteApplet;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v2    # "base":Ljava/net/URL;
    .end local v3    # "s":Ljava/net/Socket;
    nop

    .line 60
    new-instance v1, Lbsh/util/AWTConsole;

    iget-object v2, p0, Lbsh/util/AWTRemoteApplet;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lbsh/util/AWTRemoteApplet;->out:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v3}, Lbsh/util/AWTConsole;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 61
    .local v1, "console":Ljava/awt/Component;
    invoke-virtual {p0, v0, v1}, Lbsh/util/AWTRemoteApplet;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 62
    return-void

    .line 55
    .end local v1    # "console":Ljava/awt/Component;
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/awt/Label;

    const-string v4, "Remote Connection Failed"

    invoke-direct {v3, v4, v1}, Ljava/awt/Label;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v3}, Lbsh/util/AWTRemoteApplet;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 57
    return-void
.end method
