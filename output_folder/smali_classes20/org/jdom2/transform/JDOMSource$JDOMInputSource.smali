.class Lorg/jdom2/transform/JDOMSource$JDOMInputSource;
.super Lorg/xml/sax/InputSource;
.source "JDOMSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/transform/JDOMSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JDOMInputSource"
.end annotation


# instance fields
.field private docsource:Lorg/jdom2/Document;

.field private listsource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;)V"
        }
    .end annotation

    .line 397
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    invoke-direct {p0}, Lorg/xml/sax/InputSource;-><init>()V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->docsource:Lorg/jdom2/Document;

    .line 382
    iput-object v0, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->listsource:Ljava/util/List;

    .line 398
    iput-object p1, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->listsource:Ljava/util/List;

    .line 399
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Document;)V
    .locals 1
    .param p1, "document"    # Lorg/jdom2/Document;

    .line 388
    invoke-direct {p0}, Lorg/xml/sax/InputSource;-><init>()V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->docsource:Lorg/jdom2/Document;

    .line 382
    iput-object v0, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->listsource:Ljava/util/List;

    .line 389
    iput-object p1, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->docsource:Lorg/jdom2/Document;

    .line 390
    return-void
.end method


# virtual methods
.method public getCharacterStream()Ljava/io/Reader;
    .locals 4

    .line 448
    const/4 v0, 0x0

    .line 450
    .local v0, "reader":Ljava/io/Reader;
    iget-object v1, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->docsource:Lorg/jdom2/Document;

    if-eqz v1, :cond_0

    .line 453
    new-instance v1, Ljava/io/StringReader;

    new-instance v2, Lorg/jdom2/output/XMLOutputter;

    invoke-direct {v2}, Lorg/jdom2/output/XMLOutputter;-><init>()V

    iget-object v3, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->docsource:Lorg/jdom2/Document;

    invoke-virtual {v2, v3}, Lorg/jdom2/output/XMLOutputter;->outputString(Lorg/jdom2/Document;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 456
    :cond_0
    iget-object v1, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->listsource:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 457
    new-instance v1, Ljava/io/StringReader;

    new-instance v2, Lorg/jdom2/output/XMLOutputter;

    invoke-direct {v2}, Lorg/jdom2/output/XMLOutputter;-><init>()V

    iget-object v3, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->listsource:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/jdom2/output/XMLOutputter;->outputString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 461
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getDocumentSource()Lorg/jdom2/Document;
    .locals 1

    .line 483
    iget-object v0, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->docsource:Lorg/jdom2/Document;

    return-object v0
.end method

.method public getListSource()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->listsource:Ljava/util/List;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .line 407
    iget-object v0, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->docsource:Lorg/jdom2/Document;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->listsource:Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public setByteStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "byteStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .locals 1
    .param p1, "characterStream"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 430
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
