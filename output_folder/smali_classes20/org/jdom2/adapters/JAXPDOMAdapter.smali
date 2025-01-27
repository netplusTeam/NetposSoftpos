.class public Lorg/jdom2/adapters/JAXPDOMAdapter;
.super Lorg/jdom2/adapters/AbstractDOMAdapter;
.source "JAXPDOMAdapter.java"


# static fields
.field private static final localbuilder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/xml/parsers/DocumentBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/jdom2/adapters/JAXPDOMAdapter;->localbuilder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/jdom2/adapters/AbstractDOMAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public createDocument()Lorg/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 93
    sget-object v0, Lorg/jdom2/adapters/JAXPDOMAdapter;->localbuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/parsers/DocumentBuilder;

    .line 94
    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    if-nez v1, :cond_0

    .line 96
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 97
    .local v2, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    move-object v1, v3

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v2    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Lorg/jdom2/JDOMException;

    const-string v3, "Unable to obtain a DOM parser. See cause:"

    invoke-direct {v2, v3, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 103
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method
