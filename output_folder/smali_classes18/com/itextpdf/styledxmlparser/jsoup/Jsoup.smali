.class public Lcom/itextpdf/styledxmlparser/jsoup/Jsoup;
.super Ljava/lang/Object;
.source "Jsoup.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clean(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;)Ljava/lang/String;
    .locals 1
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "whitelist"    # Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    .line 267
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/Jsoup;->clean(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clean(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;)Ljava/lang/String;
    .locals 4
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "whitelist"    # Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    .line 250
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/Jsoup;->parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    .line 251
    .local v0, "dirty":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;

    invoke-direct {v1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;)V

    .line 252
    .local v1, "cleaner":Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->clean(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v2

    .line 253
    .local v2, "clean":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static clean(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;
    .locals 4
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "whitelist"    # Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .param p3, "outputSettings"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 283
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/Jsoup;->parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    .line 284
    .local v0, "dirty":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;

    invoke-direct {v1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;)V

    .line 285
    .local v1, "cleaner":Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->clean(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v2

    .line 286
    .local v2, "clean":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    invoke-virtual {v2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    .line 287
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->body()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static isValid(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;)Z
    .locals 3
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "whitelist"    # Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    .line 299
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/Jsoup;->parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    .line 300
    .local v0, "dirty":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;

    invoke-direct {v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;)V

    .line 301
    .local v1, "cleaner":Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Cleaner;->isValid(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;)Z

    move-result v2

    return v2
.end method

.method public static parse(Ljava/io/File;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1
    .param p0, "in"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->load(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1
    .param p0, "in"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-static {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->load(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-static {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "parser"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-static {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1
    .param p0, "html"    # Ljava/lang/String;

    .line 99
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1
    .param p0, "html"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .line 71
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1
    .param p0, "html"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "parser"    # Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    .line 86
    invoke-virtual {p2, p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseInput(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parseBodyFragment(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1
    .param p0, "bodyHtml"    # Ljava/lang/String;

    .line 235
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1
    .param p0, "bodyHtml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .line 223
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parseXML(Ljava/io/InputStream;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/Jsoup;->parseXML(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parseXML(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->xmlParser()Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/Jsoup;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parseXML(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1
    .param p0, "xml"    # Ljava/lang/String;

    .line 121
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseXml(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static parseXML(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
    .locals 1
    .param p0, "xml"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .line 111
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Parser;->parseXml(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method
