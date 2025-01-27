.class public abstract Lorg/osgi/service/url/AbstractURLStreamHandlerService;
.super Ljava/net/URLStreamHandler;
.source "AbstractURLStreamHandlerService.java"

# interfaces
.implements Lorg/osgi/service/url/URLStreamHandlerService;


# instance fields
.field protected volatile realHandler:Lorg/osgi/service/url/URLStreamHandlerSetter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 1
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    .line 81
    invoke-super {p0, p1, p2}, Ljava/net/URLStreamHandler;->equals(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method public getDefaultPort()I
    .locals 1

    .line 91
    invoke-super {p0}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    move-result v0

    return v0
.end method

.method public getHostAddress(Ljava/net/URL;)Ljava/net/InetAddress;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;

    .line 101
    invoke-super {p0, p1}, Ljava/net/URLStreamHandler;->getHostAddress(Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public hashCode(Ljava/net/URL;)I
    .locals 1
    .param p1, "u"    # Ljava/net/URL;

    .line 111
    invoke-super {p0, p1}, Ljava/net/URLStreamHandler;->hashCode(Ljava/net/URL;)I

    move-result v0

    return v0
.end method

.method public hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 1
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    .line 121
    invoke-super {p0, p1, p2}, Ljava/net/URLStreamHandler;->hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method public abstract openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public parseURL(Lorg/osgi/service/url/URLStreamHandlerSetter;Ljava/net/URL;Ljava/lang/String;II)V
    .locals 0
    .param p1, "realHandler"    # Lorg/osgi/service/url/URLStreamHandlerSetter;
    .param p2, "u"    # Ljava/net/URL;
    .param p3, "spec"    # Ljava/lang/String;
    .param p4, "start"    # I
    .param p5, "limit"    # I

    .line 60
    iput-object p1, p0, Lorg/osgi/service/url/AbstractURLStreamHandlerService;->realHandler:Lorg/osgi/service/url/URLStreamHandlerSetter;

    .line 61
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/osgi/service/url/AbstractURLStreamHandlerService;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V

    .line 62
    return-void
.end method

.method public sameFile(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 1
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    .line 131
    invoke-super {p0, p1, p2}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method protected setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "file"    # Ljava/lang/String;
    .param p6, "ref"    # Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lorg/osgi/service/url/AbstractURLStreamHandlerService;->realHandler:Lorg/osgi/service/url/URLStreamHandlerSetter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/osgi/service/url/URLStreamHandlerSetter;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method protected setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "auth"    # Ljava/lang/String;
    .param p6, "user"    # Ljava/lang/String;
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "query"    # Ljava/lang/String;
    .param p9, "ref"    # Ljava/lang/String;

    .line 156
    move-object v0, p0

    iget-object v1, v0, Lorg/osgi/service/url/AbstractURLStreamHandlerService;->realHandler:Lorg/osgi/service/url/URLStreamHandlerSetter;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lorg/osgi/service/url/URLStreamHandlerSetter;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public toExternalForm(Ljava/net/URL;)Ljava/lang/String;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;

    .line 71
    invoke-super {p0, p1}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
