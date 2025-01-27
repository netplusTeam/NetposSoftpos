.class public Lcom/alcineo/softpos/ocneila;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aoleinc:Lorg/slf4j/Logger;


# instance fields
.field private acileon:Lorg/w3c/dom/Document;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-class v0, Lcom/alcineo/softpos/ocneila;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/alcineo/softpos/ocneila;->aoleinc:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    iput-object p1, p0, Lcom/alcineo/softpos/ocneila;->acileon:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->normalize()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private native acileon()Lcom/alcineo/softpos/inelcao;
.end method

.method private native acileon(Lorg/w3c/dom/Element;)Lcom/alcineo/softpos/inelcao;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/oncleia;
        }
    .end annotation
.end method

.method private native acileon(Lcom/alcineo/softpos/inelcao;Lorg/w3c/dom/Element;)V
.end method

.method private native aoleinc(Lorg/w3c/dom/Element;)Lcom/alcineo/softpos/neiaclo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/oncleia;
        }
    .end annotation
.end method

.method private native enolcai(Lorg/w3c/dom/Element;)Lcom/alcineo/softpos/oaclnei;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/oncleia;
        }
    .end annotation
.end method

.method private native icloane(Lorg/w3c/dom/Element;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List<",
            "Lcom/alcineo/softpos/aielocn;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/oncleia;
        }
    .end annotation
.end method

.method private native lneaico(Lorg/w3c/dom/Element;)Lcom/alcineo/softpos/eniolac;
.end method

.method private native nacieol(Lorg/w3c/dom/Element;)Lcom/alcineo/softpos/oinlcae;
.end method

.method private native noaceli(Lorg/w3c/dom/Element;)Lcom/alcineo/softpos/liocnea;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/oncleia;
        }
    .end annotation
.end method

.method private noelcai(Lorg/w3c/dom/Element;)Lcom/alcineo/softpos/ilencoa;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/oncleia;
        }
    .end annotation

    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "label"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "group"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "kernel"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "display_size"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v2, "display_tag"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    move v8, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v1

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p1, Lcom/alcineo/softpos/oncleia;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid \'kernel\' attribute: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alcineo/softpos/oncleia;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move-object v6, v2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    :try_start_1
    invoke-static {v0}, Lcom/alcineo/utils/common/StringUtils;->convertHexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alcineo/utils/tlv/TlvTag;->fromBytes([BI)Lcom/alcineo/utils/tlv/TlvTag;

    move-result-object v0
    :try_end_1
    .catch Lcom/alcineo/utils/tlv/TlvException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v1, Lcom/alcineo/softpos/ilencoa;

    move-object v2, v1

    move-object v3, v0

    invoke-direct/range {v2 .. v8}, Lcom/alcineo/softpos/ilencoa;-><init>(Lcom/alcineo/utils/tlv/TlvTag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Byte;ZZ)V

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/ocneila;->ocleina(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "container"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lcom/alcineo/utils/tlv/TlvTag;->isConstructed()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/alcineo/softpos/ilencoa$acileon;->acileon:Lcom/alcineo/softpos/ilencoa$acileon;

    goto :goto_3

    :cond_3
    :goto_2
    sget-object p1, Lcom/alcineo/softpos/ilencoa$acileon;->aoleinc:Lcom/alcineo/softpos/ilencoa$acileon;

    :goto_3
    invoke-virtual {v1, p1}, Lcom/alcineo/softpos/ilencoa;->acileon(Lcom/alcineo/softpos/ilencoa$acileon;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Lcom/alcineo/softpos/liocnea;

    invoke-direct {p1}, Lcom/alcineo/softpos/liocnea;-><init>()V

    invoke-virtual {v1, p1}, Lcom/alcineo/softpos/ilencoa;->acileon(Lcom/alcineo/softpos/inelcao;)V

    goto :goto_5

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {p0, v0}, Lcom/alcineo/softpos/ocneila;->acileon(Lorg/w3c/dom/Element;)Lcom/alcineo/softpos/inelcao;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alcineo/softpos/ilencoa;->acileon(Lcom/alcineo/softpos/inelcao;)V

    goto :goto_4

    :cond_5
    :goto_5
    return-object v1

    :catch_1
    move-exception p1

    sget-object v0, Lcom/alcineo/softpos/ocneila;->aoleinc:Lorg/slf4j/Logger;

    const-string v1, "Found a <tag> for \'{}\' which is not a valid TLV tag, ignoring it."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_6
    new-instance p1, Lcom/alcineo/softpos/oncleia;

    const-string v0, "The <tag> name can\'t be empty"

    invoke-direct {p1, v0}, Lcom/alcineo/softpos/oncleia;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native ocenlai(Lorg/w3c/dom/Element;)Lcom/alcineo/softpos/nclaoei;
.end method

.method private native ocleina(Lorg/w3c/dom/Element;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation
.end method


# virtual methods
.method public native aoleinc()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/alcineo/utils/tlv/TlvTag;",
            "Ljava/util/List<",
            "Lcom/alcineo/softpos/ilencoa;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/oncleia;
        }
    .end annotation
.end method
