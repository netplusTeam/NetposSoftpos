.class Lcom/solab/iso8583/parse/ConfigParser$1;
.super Ljava/lang/Object;
.source "ConfigParser.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solab/iso8583/parse/ConfigParser;->parse(Lcom/solab/iso8583/MessageFactory;Lorg/xml/sax/InputSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 3
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    const-string v0, "j8583.dtd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 425
    .local v0, "dtd":Ljava/net/URL;
    if-nez v0, :cond_0

    .line 426
    invoke-static {}, Lcom/solab/iso8583/parse/ConfigParser;->access$000()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Cannot find j8583.dtd in classpath. j8583 config files will not be validated."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_0
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 431
    .end local v0    # "dtd":Ljava/net/URL;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
