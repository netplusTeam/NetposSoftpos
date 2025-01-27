.class public Lcom/alcineo/softpos/ecnaiol;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final acileon:Ljavax/xml/parsers/DocumentBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/alcineo/softpos/ecnaiol;->acileon:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private native acileon(Lorg/w3c/dom/Document;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation
.end method

.method private acileon(Lorg/w3c/dom/Element;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/utils/tlv/TlvException;
        }
    .end annotation

    const-string v0, "TAG"

    invoke-direct {p0, p1, v0}, Lcom/alcineo/softpos/ecnaiol;->acileon(Lorg/w3c/dom/Element;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "LEN"

    invoke-direct {p0, p1, v1}, Lcom/alcineo/softpos/ecnaiol;->acileon(Lorg/w3c/dom/Element;Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "VAL"

    invoke-direct {p0, p1, v2}, Lcom/alcineo/softpos/ecnaiol;->acileon(Lorg/w3c/dom/Element;Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/ecnaiol;->aoleinc(Lorg/w3c/dom/Element;)[B

    move-result-object v2

    :cond_0
    array-length p1, v0

    array-length v3, v1

    add-int/2addr p1, v3

    array-length v3, v2

    add-int/2addr p1, v3

    new-array p1, p1, [B

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v0

    array-length v5, v1

    invoke-static {v1, v4, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v1, v1

    add-int/2addr v0, v1

    array-length v1, v2

    invoke-static {v2, v4, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/alcineo/utils/tlv/TlvException;

    const-string v0, "There is no <LEN> XML tag, or it\'s wrongly formatted."

    invoke-direct {p1, v0}, Lcom/alcineo/utils/tlv/TlvException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/alcineo/utils/tlv/TlvException;

    const-string v0, "There is no <TAG> XML tag, or it\'s wrongly formatted."

    invoke-direct {p1, v0}, Lcom/alcineo/utils/tlv/TlvException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native acileon(Lorg/w3c/dom/Element;Ljava/lang/String;)[B
.end method

.method private aoleinc(Lorg/w3c/dom/Element;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/utils/tlv/TlvException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct {p0, v5}, Lcom/alcineo/softpos/ecnaiol;->acileon(Lorg/w3c/dom/Element;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v5, v5

    add-int/2addr v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v4, [B

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v4, v3

    invoke-static {v3, v2, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v1, v3

    goto :goto_1

    :cond_2
    return-object p1
.end method


# virtual methods
.method public native acileon(Ljava/io/InputStream;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
