.class public Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;
.super Ljava/lang/Object;
.source "KeyVal.java"


# instance fields
.field private key:Ljava/lang/String;

.field private stream:Ljava/io/InputStream;

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;-><init>()V

    invoke-virtual {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->key(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->value(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;

    .line 58
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;-><init>()V

    invoke-virtual {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->key(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->value(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->inputStream(Ljava/io/InputStream;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public hasInputStream()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->stream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inputStream(Ljava/io/InputStream;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 84
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->value:Ljava/lang/String;

    const-string v1, "Data input stream must not be null"

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->stream:Ljava/io/InputStream;

    .line 86
    return-object p0
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method public key(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 64
    const-string v0, "Data key must not be empty"

    invoke-static {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->key:Ljava/lang/String;

    .line 66
    return-object p0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->key:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 74
    const-string v0, "Data value must not be null"

    invoke-static {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->value:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->value:Ljava/lang/String;

    return-object v0
.end method
