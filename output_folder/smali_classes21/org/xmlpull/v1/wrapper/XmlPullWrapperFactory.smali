.class public Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;
.super Ljava/lang/Object;
.source "XmlPullWrapperFactory.java"


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field protected f:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method protected constructor <init>(Lorg/xmlpull/v1/XmlPullParserFactory;)V
    .locals 1
    .param p1, "factory"    # Lorg/xmlpull/v1/XmlPullParserFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p1, :cond_0

    .line 50
    iput-object p1, p0, Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;->f:Lorg/xmlpull/v1/XmlPullParserFactory;

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;->f:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 54
    :goto_0
    return-void
.end method

.method public static newInstance()Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 29
    new-instance v0, Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;-><init>(Lorg/xmlpull/v1/XmlPullParserFactory;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;
    .locals 2
    .param p0, "classNames"    # Ljava/lang/String;
    .param p1, "context"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 42
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    new-instance v1, Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;-><init>(Lorg/xmlpull/v1/XmlPullParserFactory;)V

    return-object v1
.end method

.method public static newInstance(Lorg/xmlpull/v1/XmlPullParserFactory;)Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;
    .locals 1
    .param p0, "factory"    # Lorg/xmlpull/v1/XmlPullParserFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;

    invoke-direct {v0, p0}, Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;-><init>(Lorg/xmlpull/v1/XmlPullParserFactory;)V

    return-object v0
.end method


# virtual methods
.method public getFactory()Lorg/xmlpull/v1/XmlPullParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;->f:Lorg/xmlpull/v1/XmlPullParserFactory;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;->f:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0, p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNamespaceAware()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;->f:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->isNamespaceAware()Z

    move-result v0

    return v0
.end method

.method public isValidating()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;->f:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->isValidating()Z

    move-result v0

    return v0
.end method

.method public newPullParserWrapper()Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;->f:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 94
    .local v0, "pp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v1
.end method

.method public newPullParserWrapper(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;
    .locals 1
    .param p1, "pp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 98
    new-instance v0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;

    invoke-direct {v0, p1}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method

.method public newSerializerWrapper()Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;->f:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 103
    .local v0, "xs":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v1, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;

    invoke-direct {v1, v0, p0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;-><init>(Lorg/xmlpull/v1/XmlSerializer;Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;)V

    return-object v1
.end method

.method public newSerializerWrapper(Lorg/xmlpull/v1/XmlSerializer;)Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;
    .locals 1
    .param p1, "xs"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 107
    new-instance v0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;

    invoke-direct {v0, p1, p0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;-><init>(Lorg/xmlpull/v1/XmlSerializer;Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;)V

    return-object v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;->f:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 64
    return-void
.end method

.method public setNamespaceAware(Z)V
    .locals 1
    .param p1, "awareness"    # Z

    .line 72
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;->f:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0, p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 73
    return-void
.end method

.method public setValidating(Z)V
    .locals 1
    .param p1, "validating"    # Z

    .line 80
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;->f:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0, p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setValidating(Z)V

    .line 81
    return-void
.end method
