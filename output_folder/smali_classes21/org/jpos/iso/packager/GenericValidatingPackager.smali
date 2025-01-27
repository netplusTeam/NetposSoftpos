.class public Lorg/jpos/iso/packager/GenericValidatingPackager;
.super Lorg/jpos/iso/packager/GenericPackager;
.source "GenericValidatingPackager.java"

# interfaces
.implements Lorg/jpos/iso/ISOValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;
    }
.end annotation


# static fields
.field static final inc:I = 0x1f4


# instance fields
.field protected bitmapField:I

.field protected emitBitmap:Z

.field protected fvlds:[Lorg/jpos/iso/ISOValidator;

.field protected maxValidField:I

.field protected mvlds:[Lorg/jpos/iso/ISOBaseValidator;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lorg/jpos/iso/packager/GenericPackager;-><init>()V

    .line 176
    const/16 v0, 0x80

    iput v0, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->maxValidField:I

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->emitBitmap:Z

    .line 178
    iput v0, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->bitmapField:I

    .line 180
    const/4 v0, 0x0

    new-array v1, v0, [Lorg/jpos/iso/ISOValidator;

    iput-object v1, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->fvlds:[Lorg/jpos/iso/ISOValidator;

    .line 182
    new-array v0, v0, [Lorg/jpos/iso/ISOBaseValidator;

    iput-object v0, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->mvlds:[Lorg/jpos/iso/ISOBaseValidator;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lorg/jpos/iso/packager/GenericPackager;-><init>(Ljava/io/InputStream;)V

    .line 176
    const/16 v0, 0x80

    iput v0, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->maxValidField:I

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->emitBitmap:Z

    .line 178
    iput v0, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->bitmapField:I

    .line 180
    const/4 v0, 0x0

    new-array v1, v0, [Lorg/jpos/iso/ISOValidator;

    iput-object v1, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->fvlds:[Lorg/jpos/iso/ISOValidator;

    .line 182
    new-array v0, v0, [Lorg/jpos/iso/ISOBaseValidator;

    iput-object v0, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->mvlds:[Lorg/jpos/iso/ISOBaseValidator;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1}, Lorg/jpos/iso/packager/GenericPackager;-><init>(Ljava/lang/String;)V

    .line 176
    const/16 v0, 0x80

    iput v0, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->maxValidField:I

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->emitBitmap:Z

    .line 178
    iput v0, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->bitmapField:I

    .line 180
    const/4 v0, 0x0

    new-array v1, v0, [Lorg/jpos/iso/ISOValidator;

    iput-object v1, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->fvlds:[Lorg/jpos/iso/ISOValidator;

    .line 182
    new-array v0, v0, [Lorg/jpos/iso/ISOBaseValidator;

    iput-object v0, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->mvlds:[Lorg/jpos/iso/ISOBaseValidator;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lorg/jpos/iso/packager/GenericValidatingPackager;Ljava/util/Map;)[Lorg/jpos/iso/ISOFieldPackager;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/iso/packager/GenericValidatingPackager;
    .param p1, "x1"    # Ljava/util/Map;

    .line 62
    invoke-direct {p0, p1}, Lorg/jpos/iso/packager/GenericValidatingPackager;->makeFieldArray(Ljava/util/Map;)[Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v0

    return-object v0
.end method

.method private makeFieldArray(Ljava/util/Map;)[Lorg/jpos/iso/ISOFieldPackager;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jpos/iso/ISOFieldPackager;",
            ">;)[",
            "Lorg/jpos/iso/ISOFieldPackager;"
        }
    .end annotation

    .line 80
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldPackager;>;"
    const/4 v0, 0x0

    .line 83
    .local v0, "maxField":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 84
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldPackager;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v0, :cond_0

    .line 85
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 84
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldPackager;>;"
    :cond_0
    goto :goto_0

    .line 88
    :cond_1
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lorg/jpos/iso/ISOFieldPackager;

    .line 91
    .local v1, "fld":[Lorg/jpos/iso/ISOFieldPackager;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 92
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldPackager;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jpos/iso/ISOFieldPackager;

    aput-object v5, v1, v4

    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldPackager;>;"
    goto :goto_1

    .line 93
    :cond_2
    return-object v1
.end method


# virtual methods
.method public readFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 101
    :try_start_0
    const-string v0, "sax.parser"

    const-string v1, "org.apache.crimson.parser.XMLReaderImpl"

    .line 102
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 104
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    const-string v1, "http://xml.org/sax/features/validation"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 105
    new-instance v1, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;

    invoke-direct {v1, p0}, Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;-><init>(Lorg/jpos/iso/packager/GenericValidatingPackager;)V

    .line 106
    .local v1, "handler":Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 107
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 108
    new-instance v2, Lorg/jpos/iso/packager/GenericPackager$GenericEntityResolver;

    invoke-direct {v2}, Lorg/jpos/iso/packager/GenericPackager$GenericEntityResolver;-><init>()V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 109
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0    # "reader":Lorg/xml/sax/XMLReader;
    .end local v1    # "handler":Lorg/jpos/iso/packager/GenericValidatingPackager$GenericValidatorContentHandler;
    nop

    .line 116
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    new-instance v1, Lorg/jpos/iso/ISOException;

    invoke-direct {v1, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setFieldValidator([Lorg/jpos/iso/ISOFieldValidator;)V
    .locals 0
    .param p1, "fvlds"    # [Lorg/jpos/iso/ISOFieldValidator;

    .line 135
    iput-object p1, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->fvlds:[Lorg/jpos/iso/ISOValidator;

    .line 136
    return-void
.end method

.method public setGenericPackagerParams(Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .line 119
    const-string v0, "maxValidField"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "maxField":Ljava/lang/String;
    const-string v1, "emitBitmap"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "emitBmap":Ljava/lang/String;
    const-string v2, "bitmapField"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "bmapfield":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->maxValidField:I

    .line 124
    :cond_0
    if-eqz v1, :cond_1

    .line 125
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->emitBitmap:Z

    .line 126
    :cond_1
    if-eqz v2, :cond_2

    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->bitmapField:I

    .line 128
    :cond_2
    return-void
.end method

.method public setMsgValidator([Lorg/jpos/iso/ISOBaseValidator;)V
    .locals 0
    .param p1, "msgVlds"    # [Lorg/jpos/iso/ISOBaseValidator;

    .line 131
    iput-object p1, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->mvlds:[Lorg/jpos/iso/ISOBaseValidator;

    .line 132
    return-void
.end method

.method public validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;
    .locals 10
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 139
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "validate"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 142
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getChildren()Ljava/util/Map;

    move-result-object v1

    .line 144
    .local v1, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/jpos/iso/ISOComponent;>;"
    iget-object v2, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->fvlds:[Lorg/jpos/iso/ISOValidator;

    array-length v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const-string v6, "Component Validation Error."

    if-ge v5, v3, :cond_2

    :try_start_1
    aget-object v7, v2, v5

    .line 145
    .local v7, "val":Lorg/jpos/iso/ISOValidator;
    move-object v8, v7

    check-cast v8, Lorg/jpos/iso/ISOFieldValidator;

    invoke-virtual {v8}, Lorg/jpos/iso/ISOFieldValidator;->getFieldId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jpos/iso/ISOComponent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v8

    .local v9, "c":Lorg/jpos/iso/ISOComponent;
    if-eqz v8, :cond_1

    .line 147
    :try_start_2
    invoke-interface {v7, v9}, Lorg/jpos/iso/ISOValidator;->validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V
    :try_end_2
    .catch Lorg/jpos/iso/validator/ISOVException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    goto :goto_1

    .line 148
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Lorg/jpos/iso/validator/ISOVException;
    :try_start_3
    invoke-virtual {v2}, Lorg/jpos/iso/validator/ISOVException;->treated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    invoke-virtual {v2}, Lorg/jpos/iso/validator/ISOVException;->getErrComponent()Lorg/jpos/iso/ISOComponent;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 151
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/jpos/iso/validator/ISOVException;->setTreated(Z)V

    .line 153
    :cond_0
    invoke-virtual {v0, v6}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 154
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    .end local v2    # "e":Lorg/jpos/iso/validator/ISOVException;
    .end local v7    # "val":Lorg/jpos/iso/ISOValidator;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 160
    .end local v9    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_2
    :try_start_4
    iget-object v2, p0, Lorg/jpos/iso/packager/GenericValidatingPackager;->mvlds:[Lorg/jpos/iso/ISOBaseValidator;

    array-length v3, v2

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 161
    .local v5, "mval":Lorg/jpos/iso/ISOBaseValidator;
    invoke-virtual {v5, p1}, Lorg/jpos/iso/ISOBaseValidator;->validate(Lorg/jpos/iso/ISOComponent;)Lorg/jpos/iso/ISOComponent;

    move-result-object v7
    :try_end_4
    .catch Lorg/jpos/iso/validator/ISOVException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object p1, v7

    .line 160
    .end local v5    # "mval":Lorg/jpos/iso/ISOBaseValidator;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 166
    :cond_3
    nop

    .line 167
    nop

    .line 170
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 167
    return-object p1

    .line 163
    :catch_1
    move-exception v2

    .line 164
    .local v2, "ex":Lorg/jpos/iso/validator/ISOVException;
    :try_start_5
    invoke-virtual {v0, v6}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 165
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 170
    .end local v1    # "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/jpos/iso/ISOComponent;>;"
    .end local v2    # "ex":Lorg/jpos/iso/validator/ISOVException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 171
    throw v1
.end method
