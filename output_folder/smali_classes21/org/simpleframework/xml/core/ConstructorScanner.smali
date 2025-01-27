.class Lorg/simpleframework/xml/core/ConstructorScanner;
.super Ljava/lang/Object;
.source "ConstructorScanner.java"


# instance fields
.field private primary:Lorg/simpleframework/xml/core/Signature;

.field private registry:Lorg/simpleframework/xml/core/ParameterMap;

.field private signatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private support:Lorg/simpleframework/xml/core/Support;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .locals 1
    .param p1, "detail"    # Lorg/simpleframework/xml/core/Detail;
    .param p2, "support"    # Lorg/simpleframework/xml/core/Support;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->signatures:Ljava/util/List;

    .line 71
    new-instance v0, Lorg/simpleframework/xml/core/ParameterMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ParameterMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    .line 72
    iput-object p2, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->support:Lorg/simpleframework/xml/core/Support;

    .line 73
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ConstructorScanner;->scan(Lorg/simpleframework/xml/core/Detail;)V

    .line 74
    return-void
.end method

.method private scan(Ljava/lang/reflect/Constructor;)V
    .locals 6
    .param p1, "factory"    # Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    new-instance v0, Lorg/simpleframework/xml/core/SignatureScanner;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, p1, v1, v2}, Lorg/simpleframework/xml/core/SignatureScanner;-><init>(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/core/ParameterMap;Lorg/simpleframework/xml/core/Support;)V

    .line 141
    .local v0, "scanner":Lorg/simpleframework/xml/core/SignatureScanner;
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SignatureScanner;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SignatureScanner;->getSignatures()Ljava/util/List;

    move-result-object v1

    .line 144
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/simpleframework/xml/core/Signature;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/core/Signature;

    .line 145
    .local v3, "signature":Lorg/simpleframework/xml/core/Signature;
    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Signature;->size()I

    move-result v4

    .line 147
    .local v4, "size":I
    if-nez v4, :cond_0

    .line 148
    iput-object v3, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->primary:Lorg/simpleframework/xml/core/Signature;

    .line 150
    :cond_0
    iget-object v5, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->signatures:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v3    # "signature":Lorg/simpleframework/xml/core/Signature;
    .end local v4    # "size":I
    goto :goto_0

    .line 153
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/simpleframework/xml/core/Signature;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private scan(Lorg/simpleframework/xml/core/Detail;)V
    .locals 6
    .param p1, "detail"    # Lorg/simpleframework/xml/core/Detail;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 121
    .local v0, "array":[Ljava/lang/reflect/Constructor;
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->isInstantiable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 125
    .local v4, "factory":Ljava/lang/reflect/Constructor;
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_0

    .line 126
    invoke-direct {p0, v4}, Lorg/simpleframework/xml/core/ConstructorScanner;->scan(Ljava/lang/reflect/Constructor;)V

    .line 124
    .end local v4    # "factory":Ljava/lang/reflect/Constructor;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "arr$":[Ljava/lang/reflect/Constructor;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    return-void

    .line 122
    :cond_2
    new-instance v1, Lorg/simpleframework/xml/core/ConstructorException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Can not construct inner %s"

    invoke-direct {v1, v3, v2}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public getParameters()Lorg/simpleframework/xml/core/ParameterMap;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    return-object v0
.end method

.method public getSignature()Lorg/simpleframework/xml/core/Signature;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->primary:Lorg/simpleframework/xml/core/Signature;

    return-object v0
.end method

.method public getSignatures()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->signatures:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
