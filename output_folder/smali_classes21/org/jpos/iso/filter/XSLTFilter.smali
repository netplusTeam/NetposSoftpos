.class public Lorg/jpos/iso/filter/XSLTFilter;
.super Ljava/lang/Object;
.source "XSLTFilter.java"

# interfaces
.implements Lorg/jpos/iso/ISOFilter;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field packager:Lorg/jpos/iso/packager/XMLPackager;

.field reread:Z

.field tfactory:Ljavax/xml/transform/TransformerFactory;

.field transformer:Ljavax/xml/transform/Transformer;

.field xsltfile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lorg/jpos/iso/packager/XMLPackager;

    invoke-direct {v0}, Lorg/jpos/iso/packager/XMLPackager;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/filter/XSLTFilter;->packager:Lorg/jpos/iso/packager/XMLPackager;

    .line 58
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/filter/XSLTFilter;->tfactory:Ljavax/xml/transform/TransformerFactory;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/filter/XSLTFilter;->transformer:Ljavax/xml/transform/Transformer;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/filter/XSLTFilter;->reread:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "xsltfile"    # Ljava/lang/String;
    .param p2, "reread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lorg/jpos/iso/filter/XSLTFilter;-><init>()V

    .line 73
    :try_start_0
    iput-object p1, p0, Lorg/jpos/iso/filter/XSLTFilter;->xsltfile:Ljava/lang/String;

    .line 74
    iput-boolean p2, p0, Lorg/jpos/iso/filter/XSLTFilter;->reread:Z

    .line 75
    iget-object v0, p0, Lorg/jpos/iso/filter/XSLTFilter;->tfactory:Ljavax/xml/transform/TransformerFactory;

    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v1, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/filter/XSLTFilter;->transformer:Ljavax/xml/transform/Transformer;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    nop

    .line 81
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljavax/xml/transform/TransformerConfigurationException;
    new-instance v1, Lorg/jpos/iso/ISOException;

    invoke-direct {v1, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public filter(Lorg/jpos/iso/ISOChannel;Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;
    .locals 5
    .param p1, "channel"    # Lorg/jpos/iso/ISOChannel;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "evt"    # Lorg/jpos/util/LogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOFilter$VetoException;
        }
    .end annotation

    .line 118
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/filter/XSLTFilter;->packager:Lorg/jpos/iso/packager/XMLPackager;

    invoke-virtual {p2, v0}, Lorg/jpos/iso/ISOMsg;->setPackager(Lorg/jpos/iso/ISOPackager;)V

    .line 119
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    iget-boolean v1, p0, Lorg/jpos/iso/filter/XSLTFilter;->reread:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/jpos/iso/filter/XSLTFilter;->transformer:Ljavax/xml/transform/Transformer;

    if-nez v1, :cond_1

    .line 122
    :cond_0
    iget-object v1, p0, Lorg/jpos/iso/filter/XSLTFilter;->tfactory:Ljavax/xml/transform/TransformerFactory;

    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    iget-object v3, p0, Lorg/jpos/iso/filter/XSLTFilter;->xsltfile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/iso/filter/XSLTFilter;->transformer:Ljavax/xml/transform/Transformer;

    .line 125
    :cond_1
    iget-object v1, p0, Lorg/jpos/iso/filter/XSLTFilter;->transformer:Ljavax/xml/transform/Transformer;

    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 126
    invoke-virtual {p2}, Lorg/jpos/iso/ISOMsg;->pack()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 125
    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 129
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jpos/iso/ISOMsg;->unpack([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    nop

    .line 133
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    return-object p2

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOFilter$VetoException;

    invoke-direct {v1, v0}, Lorg/jpos/iso/ISOFilter$VetoException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 97
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/filter/XSLTFilter;->tfactory:Ljavax/xml/transform/TransformerFactory;

    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    const-string v2, "xsltfile"

    .line 98
    invoke-interface {p1, v2}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/filter/XSLTFilter;->transformer:Ljavax/xml/transform/Transformer;

    .line 100
    const-string v0, "reread"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lorg/jpos/iso/filter/XSLTFilter;->reread:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0    # "s":Ljava/lang/String;
    nop

    .line 105
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v1, v0}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
