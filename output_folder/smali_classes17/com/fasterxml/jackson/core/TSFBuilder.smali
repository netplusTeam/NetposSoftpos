.class public abstract Lcom/fasterxml/jackson/core/TSFBuilder;
.super Ljava/lang/Object;
.source "TSFBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/fasterxml/jackson/core/JsonFactory;",
        "B:",
        "Lcom/fasterxml/jackson/core/TSFBuilder<",
        "TF;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_FACTORY_FEATURE_FLAGS:I

.field protected static final DEFAULT_GENERATOR_FEATURE_FLAGS:I

.field protected static final DEFAULT_PARSER_FEATURE_FLAGS:I


# instance fields
.field protected _factoryFeatures:I

.field protected _inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

.field protected _outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

.field protected _streamReadFeatures:I

.field protected _streamWriteFeatures:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/TSFBuilder;->DEFAULT_FACTORY_FEATURE_FLAGS:I

    .line 32
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/TSFBuilder;->DEFAULT_PARSER_FEATURE_FLAGS:I

    .line 38
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/TSFBuilder;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 85
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    sget v0, Lcom/fasterxml/jackson/core/TSFBuilder;->DEFAULT_FACTORY_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_factoryFeatures:I

    .line 87
    sget v0, Lcom/fasterxml/jackson/core/TSFBuilder;->DEFAULT_PARSER_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    .line 88
    sget v0, Lcom/fasterxml/jackson/core/TSFBuilder;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    .line 90
    iput-object v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    .line 91
    return-void
.end method

.method protected constructor <init>(III)V
    .locals 0
    .param p1, "factoryFeatures"    # I
    .param p2, "parserFeatures"    # I
    .param p3, "generatorFeatures"    # I

    .line 101
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_factoryFeatures:I

    .line 103
    iput p2, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    .line 104
    iput p3, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    .line 105
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonFactory;)V
    .locals 3
    .param p1, "base"    # Lcom/fasterxml/jackson/core/JsonFactory;

    .line 95
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iget v0, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    iget v1, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I

    iget v2, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    invoke-direct {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/TSFBuilder;-><init>(III)V

    .line 97
    return-void
.end method

.method private _failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 3
    .param p1, "feature"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation

    .line 226
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported for non-JSON backend"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected _legacyDisable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)V
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 289
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    .line 290
    return-void
.end method

.method protected _legacyDisable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)V
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 282
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    .line 283
    return-void
.end method

.method protected _legacyEnable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)V
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 286
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    .line 287
    return-void
.end method

.method protected _legacyEnable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)V
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 279
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    .line 280
    return-void
.end method

.method protected final _this()Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 274
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    return-object p0
.end method

.method public abstract build()Lcom/fasterxml/jackson/core/JsonFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation
.end method

.method public configure(Lcom/fasterxml/jackson/core/JsonFactory$Feature;Z)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonFactory$Feature;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonFactory$Feature;",
            "Z)TB;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->enable(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->disable(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/core/StreamReadFeature;Z)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/StreamReadFeature;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 161
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->enable(Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->disable(Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/core/StreamWriteFeature;Z)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/StreamWriteFeature;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->enable(Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->disable(Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/core/json/JsonReadFeature;Z)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/json/JsonReadFeature;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 222
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->_failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;Z)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 249
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->_failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disable(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonFactory$Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonFactory$Feature;",
            ")TB;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_factoryFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_factoryFeatures:I

    .line 125
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disable(Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/core/StreamReadFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 148
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    .line 149
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs disable(Lcom/fasterxml/jackson/core/StreamReadFeature;[Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 5
    .param p1, "first"    # Lcom/fasterxml/jackson/core/StreamReadFeature;
    .param p2, "other"    # [Lcom/fasterxml/jackson/core/StreamReadFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    .line 154
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 155
    .local v2, "f":Lcom/fasterxml/jackson/core/StreamReadFeature;
    iget v3, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v4

    not-int v4, v4

    and-int/2addr v3, v4

    iput v3, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    .line 154
    .end local v2    # "f":Lcom/fasterxml/jackson/core/StreamReadFeature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disable(Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/core/StreamWriteFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 180
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    .line 181
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs disable(Lcom/fasterxml/jackson/core/StreamWriteFeature;[Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 5
    .param p1, "first"    # Lcom/fasterxml/jackson/core/StreamWriteFeature;
    .param p2, "other"    # [Lcom/fasterxml/jackson/core/StreamWriteFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    .line 186
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 187
    .local v2, "f":Lcom/fasterxml/jackson/core/StreamWriteFeature;
    iget v3, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v4

    not-int v4, v4

    and-int/2addr v3, v4

    iput v3, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    .line 186
    .end local v2    # "f":Lcom/fasterxml/jackson/core/StreamWriteFeature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/json/JsonReadFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 214
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->_failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs disable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;[Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .param p1, "first"    # Lcom/fasterxml/jackson/core/json/JsonReadFeature;
    .param p2, "other"    # [Lcom/fasterxml/jackson/core/json/JsonReadFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 218
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->_failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 241
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->_failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs disable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .param p1, "first"    # Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
    .param p2, "other"    # [Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 245
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->_failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public enable(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonFactory$Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonFactory$Feature;",
            ")TB;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_factoryFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_factoryFeatures:I

    .line 120
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public enable(Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/core/StreamReadFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    .line 136
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs enable(Lcom/fasterxml/jackson/core/StreamReadFeature;[Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 5
    .param p1, "first"    # Lcom/fasterxml/jackson/core/StreamReadFeature;
    .param p2, "other"    # [Lcom/fasterxml/jackson/core/StreamReadFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    .line 141
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 142
    .local v2, "f":Lcom/fasterxml/jackson/core/StreamReadFeature;
    iget v3, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    .line 141
    .end local v2    # "f":Lcom/fasterxml/jackson/core/StreamReadFeature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public enable(Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/core/StreamWriteFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    .line 168
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs enable(Lcom/fasterxml/jackson/core/StreamWriteFeature;[Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 5
    .param p1, "first"    # Lcom/fasterxml/jackson/core/StreamWriteFeature;
    .param p2, "other"    # [Lcom/fasterxml/jackson/core/StreamWriteFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 172
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    .line 173
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 174
    .local v2, "f":Lcom/fasterxml/jackson/core/StreamWriteFeature;
    iget v3, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    .line 173
    .end local v2    # "f":Lcom/fasterxml/jackson/core/StreamWriteFeature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public enable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/json/JsonReadFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 206
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->_failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs enable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;[Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .param p1, "first"    # Lcom/fasterxml/jackson/core/json/JsonReadFeature;
    .param p2, "other"    # [Lcom/fasterxml/jackson/core/json/JsonReadFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 210
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->_failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public enable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->_failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs enable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .param p1, "first"    # Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
    .param p2, "other"    # [Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 237
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;->_failNonJSON(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public factoryFeaturesMask()I
    .locals 1

    .line 109
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_factoryFeatures:I

    return v0
.end method

.method public inputDecorator(Lcom/fasterxml/jackson/core/io/InputDecorator;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .param p1, "dec"    # Lcom/fasterxml/jackson/core/io/InputDecorator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/io/InputDecorator;",
            ")TB;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iput-object p1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    .line 256
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public inputDecorator()Lcom/fasterxml/jackson/core/io/InputDecorator;
    .locals 1

    .line 113
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;

    return-object v0
.end method

.method public outputDecorator(Lcom/fasterxml/jackson/core/io/OutputDecorator;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 1
    .param p1, "dec"    # Lcom/fasterxml/jackson/core/io/OutputDecorator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/io/OutputDecorator;",
            ")TB;"
        }
    .end annotation

    .line 260
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iput-object p1, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    .line 261
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;->_this()Lcom/fasterxml/jackson/core/TSFBuilder;

    move-result-object v0

    return-object v0
.end method

.method public outputDecorator()Lcom/fasterxml/jackson/core/io/OutputDecorator;
    .locals 1

    .line 114
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    return-object v0
.end method

.method public streamReadFeatures()I
    .locals 1

    .line 110
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamReadFeatures:I

    return v0
.end method

.method public streamWriteFeatures()I
    .locals 1

    .line 111
    .local p0, "this":Lcom/fasterxml/jackson/core/TSFBuilder;, "Lcom/fasterxml/jackson/core/TSFBuilder<TF;TB;>;"
    iget v0, p0, Lcom/fasterxml/jackson/core/TSFBuilder;->_streamWriteFeatures:I

    return v0
.end method
