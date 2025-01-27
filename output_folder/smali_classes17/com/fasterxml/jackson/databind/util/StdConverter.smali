.class public abstract Lcom/fasterxml/jackson/databind/util/StdConverter;
.super Ljava/lang/Object;
.source "StdConverter.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/util/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IN:",
        "Ljava/lang/Object;",
        "OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fasterxml/jackson/databind/util/Converter<",
        "TIN;TOUT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/StdConverter;, "Lcom/fasterxml/jackson/databind/util/StdConverter<TIN;TOUT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected _findConverterType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 5
    .param p1, "tf"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 36
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/StdConverter;, "Lcom/fasterxml/jackson/databind/util/StdConverter<TIN;TOUT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 37
    .local v0, "thisType":Lcom/fasterxml/jackson/databind/JavaType;
    const-class v1, Lcom/fasterxml/jackson/databind/util/Converter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JavaType;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 38
    .local v1, "convType":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeCount()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 41
    return-object v1

    .line 39
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find OUT type parameter for Converter of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public abstract convert(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIN;)TOUT;"
        }
    .end annotation
.end method

.method public getInputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "typeFactory"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 27
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/StdConverter;, "Lcom/fasterxml/jackson/databind/util/StdConverter<TIN;TOUT;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/StdConverter;->_findConverterType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getOutputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "typeFactory"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 32
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/StdConverter;, "Lcom/fasterxml/jackson/databind/util/StdConverter<TIN;TOUT;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/StdConverter;->_findConverterType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method
