.class public Lorg/jpos/iso/packager/GenericPackager$GenericEntityResolver;
.super Ljava/lang/Object;
.source "GenericPackager.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/iso/packager/GenericPackager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericEntityResolver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 8
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 338
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 339
    .local v1, "cl":Ljava/lang/ClassLoader;
    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    move-object v1, v2

    .line 341
    const-string v2, "http://jpos.org/dtd/generic-packager-1.0.dtd"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 343
    const-string v0, "org/jpos/iso/packager/genericpackager.dtd"

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 344
    .local v0, "resource":Ljava/net/URL;
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 346
    .end local v0    # "resource":Ljava/net/URL;
    :cond_2
    const-string v2, "http://jpos.org/dtd/generic-validating-packager-1.0.dtd"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    const-string v0, "org/jpos/iso/packager/generic-validating-packager.dtd"

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 349
    .restart local v0    # "resource":Ljava/net/URL;
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 352
    .end local v0    # "resource":Ljava/net/URL;
    :cond_3
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 353
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 355
    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "file":Ljava/lang/String;
    const-string v4, ".dtd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 358
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v4, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 360
    .local v5, "res":Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 362
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v5, v6

    .line 364
    :cond_4
    if-nez v5, :cond_5

    .line 366
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "org/jpos/iso/packager/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 367
    .local v6, "dtdResource":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 369
    .end local v6    # "dtdResource":Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_6

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 372
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "res":Ljava/io/InputStream;
    :cond_6
    return-object v0
.end method
