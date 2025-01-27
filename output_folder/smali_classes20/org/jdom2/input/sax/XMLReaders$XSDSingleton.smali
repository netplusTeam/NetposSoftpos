.class final enum Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;
.super Ljava/lang/Enum;
.source "XMLReaders.java"

# interfaces
.implements Lorg/jdom2/input/sax/XMLReaders$FactorySupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/input/sax/XMLReaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "XSDSingleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;",
        ">;",
        "Lorg/jdom2/input/sax/XMLReaders$FactorySupplier;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;

.field public static final enum INSTANCE:Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;


# instance fields
.field private final factory:Ljavax/xml/parsers/SAXParserFactory;

.field private final failcause:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 155
    new-instance v0, Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;->INSTANCE:Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;

    .line 154
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;

    aput-object v0, v1, v2

    sput-object v1, Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;->$VALUES:[Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 162
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object p1

    .line 163
    .local p1, "fac":Ljavax/xml/parsers/SAXParserFactory;
    const/4 p2, 0x0

    .line 165
    .local p2, "problem":Ljava/lang/Exception;
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 171
    :try_start_0
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-static {v0}, Ljavax/xml/validation/SchemaFactory;->newInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v0

    .line 172
    .local v0, "sfac":Ljavax/xml/validation/SchemaFactory;
    invoke-virtual {v0}, Ljavax/xml/validation/SchemaFactory;->newSchema()Ljavax/xml/validation/Schema;

    move-result-object v1

    .line 173
    .local v1, "schema":Ljavax/xml/validation/Schema;
    invoke-virtual {p1, v1}, Ljavax/xml/parsers/SAXParserFactory;->setSchema(Ljavax/xml/validation/Schema;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "sfac":Ljavax/xml/validation/SchemaFactory;
    .end local v1    # "schema":Ljavax/xml/validation/Schema;
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 192
    .local v0, "uoe":Ljava/lang/UnsupportedOperationException;
    const/4 p1, 0x0

    .line 193
    move-object p2, v0

    goto :goto_1

    .line 178
    .end local v0    # "uoe":Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v0

    .line 182
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const/4 p1, 0x0

    .line 183
    move-object p2, v0

    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 174
    :catch_2
    move-exception v0

    .line 176
    .local v0, "se":Lorg/xml/sax/SAXException;
    const/4 p1, 0x0

    .line 177
    move-object p2, v0

    .line 194
    .end local v0    # "se":Lorg/xml/sax/SAXException;
    :goto_0
    nop

    .line 195
    :goto_1
    iput-object p1, p0, Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;->factory:Ljavax/xml/parsers/SAXParserFactory;

    .line 196
    iput-object p2, p0, Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;->failcause:Ljava/lang/Exception;

    .line 198
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 154
    const-class v0, Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;

    return-object v0
.end method

.method public static values()[Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;
    .locals 1

    .line 154
    sget-object v0, Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;->$VALUES:[Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;

    invoke-virtual {v0}, [Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;

    return-object v0
.end method


# virtual methods
.method public supply()Ljavax/xml/parsers/SAXParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;->factory:Ljavax/xml/parsers/SAXParserFactory;

    if-eqz v0, :cond_0

    .line 205
    return-object v0

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/jdom2/input/sax/XMLReaders$XSDSingleton;->failcause:Ljava/lang/Exception;

    throw v0
.end method

.method public validates()Z
    .locals 1

    .line 210
    const/4 v0, 0x1

    return v0
.end method
