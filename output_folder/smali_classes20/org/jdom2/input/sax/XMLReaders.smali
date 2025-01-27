.class public final enum Lorg/jdom2/input/sax/XMLReaders;
.super Ljava/lang/Enum;
.source "XMLReaders.java"

# interfaces
.implements Lorg/jdom2/input/sax/XMLReaderJDOMFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;,
        Lorg/jdom2/input/sax/XMLReaders$DTDSingleton;,
        Lorg/jdom2/input/sax/XMLReaders$NONSingleton;,
        Lorg/jdom2/input/sax/XMLReaders$FactorySupplier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jdom2/input/sax/XMLReaders;",
        ">;",
        "Lorg/jdom2/input/sax/XMLReaderJDOMFactory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jdom2/input/sax/XMLReaders;

.field public static final enum DTDVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

.field public static final enum NONVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

.field public static final enum XSDVALIDATING:Lorg/jdom2/input/sax/XMLReaders;


# instance fields
.field private final singletonID:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 85
    new-instance v0, Lorg/jdom2/input/sax/XMLReaders;

    const-string v1, "NONVALIDATING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/jdom2/input/sax/XMLReaders;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jdom2/input/sax/XMLReaders;->NONVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    .line 90
    new-instance v1, Lorg/jdom2/input/sax/XMLReaders;

    const-string v3, "DTDVALIDATING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lorg/jdom2/input/sax/XMLReaders;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/jdom2/input/sax/XMLReaders;->DTDVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    .line 95
    new-instance v3, Lorg/jdom2/input/sax/XMLReaders;

    const-string v5, "XSDVALIDATING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lorg/jdom2/input/sax/XMLReaders;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/jdom2/input/sax/XMLReaders;->XSDVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    .line 80
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/jdom2/input/sax/XMLReaders;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/jdom2/input/sax/XMLReaders;->$VALUES:[Lorg/jdom2/input/sax/XMLReaders;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "singletonID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 219
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 220
    iput p3, p0, Lorg/jdom2/input/sax/XMLReaders;->singletonID:I

    .line 221
    return-void
.end method

.method private getSupplier()Lorg/jdom2/input/sax/XMLReaders$FactorySupplier;
    .locals 3

    .line 224
    iget v0, p0, Lorg/jdom2/input/sax/XMLReaders;->singletonID:I

    packed-switch v0, :pswitch_data_0

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown singletonID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jdom2/input/sax/XMLReaders;->singletonID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :pswitch_0
    sget-object v0, Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;->INSTANCE:Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;

    return-object v0

    .line 228
    :pswitch_1
    sget-object v0, Lorg/jdom2/input/sax/XMLReaders$DTDSingleton;->INSTANCE:Lorg/jdom2/input/sax/XMLReaders$DTDSingleton;

    return-object v0

    .line 226
    :pswitch_2
    sget-object v0, Lorg/jdom2/input/sax/XMLReaders$NONSingleton;->INSTANCE:Lorg/jdom2/input/sax/XMLReaders$NONSingleton;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jdom2/input/sax/XMLReaders;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 80
    const-class v0, Lorg/jdom2/input/sax/XMLReaders;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jdom2/input/sax/XMLReaders;

    return-object v0
.end method

.method public static values()[Lorg/jdom2/input/sax/XMLReaders;
    .locals 1

    .line 80
    sget-object v0, Lorg/jdom2/input/sax/XMLReaders;->$VALUES:[Lorg/jdom2/input/sax/XMLReaders;

    invoke-virtual {v0}, [Lorg/jdom2/input/sax/XMLReaders;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/input/sax/XMLReaders;

    return-object v0
.end method


# virtual methods
.method public createXMLReader()Lorg/xml/sax/XMLReader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 246
    const-string v0, "Unable to create a new XMLReader instance"

    :try_start_0
    invoke-direct {p0}, Lorg/jdom2/input/sax/XMLReaders;->getSupplier()Lorg/jdom2/input/sax/XMLReaders$FactorySupplier;

    move-result-object v1

    .line 247
    .local v1, "supplier":Lorg/jdom2/input/sax/XMLReaders$FactorySupplier;
    invoke-interface {v1}, Lorg/jdom2/input/sax/XMLReaders$FactorySupplier;->supply()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 254
    .end local v1    # "supplier":Lorg/jdom2/input/sax/XMLReaders$FactorySupplier;
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jdom2/JDOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "It was not possible to configure a suitable XMLReader to support "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 252
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Lorg/jdom2/JDOMException;

    invoke-direct {v2, v0, v1}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 248
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v1

    .line 249
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v2, Lorg/jdom2/JDOMException;

    invoke-direct {v2, v0, v1}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isValidating()Z
    .locals 1

    .line 262
    invoke-direct {p0}, Lorg/jdom2/input/sax/XMLReaders;->getSupplier()Lorg/jdom2/input/sax/XMLReaders$FactorySupplier;

    move-result-object v0

    invoke-interface {v0}, Lorg/jdom2/input/sax/XMLReaders$FactorySupplier;->validates()Z

    move-result v0

    return v0
.end method
