.class Lorg/simpleframework/xml/core/InstantiatorBuilder;
.super Ljava/lang/Object;
.source "InstantiatorBuilder.java"


# instance fields
.field private attributes:Lorg/simpleframework/xml/core/LabelMap;

.field private comparer:Lorg/simpleframework/xml/core/Comparer;

.field private detail:Lorg/simpleframework/xml/core/Detail;

.field private elements:Lorg/simpleframework/xml/core/LabelMap;

.field private factory:Lorg/simpleframework/xml/core/Instantiator;

.field private options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Creator;",
            ">;"
        }
    .end annotation
.end field

.field private scanner:Lorg/simpleframework/xml/core/Scanner;

.field private texts:Lorg/simpleframework/xml/core/LabelMap;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Scanner;Lorg/simpleframework/xml/core/Detail;)V
    .locals 1
    .param p1, "scanner"    # Lorg/simpleframework/xml/core/Scanner;
    .param p2, "detail"    # Lorg/simpleframework/xml/core/Detail;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->options:Ljava/util/List;

    .line 93
    new-instance v0, Lorg/simpleframework/xml/core/Comparer;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Comparer;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->comparer:Lorg/simpleframework/xml/core/Comparer;

    .line 94
    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/LabelMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    .line 95
    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/LabelMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    .line 96
    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/LabelMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->texts:Lorg/simpleframework/xml/core/LabelMap;

    .line 97
    iput-object p1, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    .line 98
    iput-object p2, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->detail:Lorg/simpleframework/xml/core/Detail;

    .line 99
    return-void
.end method

.method private build(Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/Instantiator;
    .locals 1
    .param p1, "detail"    # Lorg/simpleframework/xml/core/Detail;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->factory:Lorg/simpleframework/xml/core/Instantiator;

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->create(Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/Instantiator;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->factory:Lorg/simpleframework/xml/core/Instantiator;

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->factory:Lorg/simpleframework/xml/core/Instantiator;

    return-object v0
.end method

.method private contains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "list"    # [Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 520
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 521
    .local v3, "entry":Ljava/lang/String;
    const/4 v4, 0x1

    if-ne v3, p2, :cond_0

    .line 522
    return v4

    .line 524
    :cond_0
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 525
    return v4

    .line 520
    .end local v3    # "entry":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private create(Lorg/simpleframework/xml/core/Signature;)Lorg/simpleframework/xml/core/Creator;
    .locals 2
    .param p1, "signature"    # Lorg/simpleframework/xml/core/Signature;

    .line 168
    new-instance v0, Lorg/simpleframework/xml/core/SignatureCreator;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/SignatureCreator;-><init>(Lorg/simpleframework/xml/core/Signature;)V

    .line 170
    .local v0, "creator":Lorg/simpleframework/xml/core/Creator;
    if-eqz p1, :cond_0

    .line 171
    iget-object v1, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->options:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    return-object v0
.end method

.method private create(Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/Instantiator;
    .locals 5
    .param p1, "detail"    # Lorg/simpleframework/xml/core/Detail;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Scanner;->getSignature()Lorg/simpleframework/xml/core/Signature;

    move-result-object v0

    .line 148
    .local v0, "primary":Lorg/simpleframework/xml/core/Signature;
    iget-object v1, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Scanner;->getParameters()Lorg/simpleframework/xml/core/ParameterMap;

    move-result-object v1

    .line 149
    .local v1, "registry":Lorg/simpleframework/xml/core/ParameterMap;
    const/4 v2, 0x0

    .line 151
    .local v2, "creator":Lorg/simpleframework/xml/core/Creator;
    if-eqz v0, :cond_0

    .line 152
    new-instance v3, Lorg/simpleframework/xml/core/SignatureCreator;

    invoke-direct {v3, v0}, Lorg/simpleframework/xml/core/SignatureCreator;-><init>(Lorg/simpleframework/xml/core/Signature;)V

    move-object v2, v3

    .line 154
    :cond_0
    new-instance v3, Lorg/simpleframework/xml/core/ClassInstantiator;

    iget-object v4, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->options:Ljava/util/List;

    invoke-direct {v3, v4, v2, v1, p1}, Lorg/simpleframework/xml/core/ClassInstantiator;-><init>(Ljava/util/List;Lorg/simpleframework/xml/core/Creator;Lorg/simpleframework/xml/core/ParameterMap;Lorg/simpleframework/xml/core/Detail;)V

    return-object v3
.end method

.method private create(Lorg/simpleframework/xml/core/Parameter;)Lorg/simpleframework/xml/core/Parameter;
    .locals 2
    .param p1, "original"    # Lorg/simpleframework/xml/core/Parameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->resolve(Lorg/simpleframework/xml/core/Parameter;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 189
    .local v0, "label":Lorg/simpleframework/xml/core/Label;
    if-eqz v0, :cond_0

    .line 190
    new-instance v1, Lorg/simpleframework/xml/core/CacheParameter;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/CacheParameter;-><init>(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/Label;)V

    return-object v1

    .line 192
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private populate(Lorg/simpleframework/xml/core/Detail;)V
    .locals 3
    .param p1, "detail"    # Lorg/simpleframework/xml/core/Detail;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Scanner;->getSignatures()Ljava/util/List;

    move-result-object v0

    .line 206
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/simpleframework/xml/core/Signature;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Signature;

    .line 207
    .local v2, "signature":Lorg/simpleframework/xml/core/Signature;
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->populate(Lorg/simpleframework/xml/core/Signature;)V

    .end local v2    # "signature":Lorg/simpleframework/xml/core/Signature;
    goto :goto_0

    .line 209
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private populate(Lorg/simpleframework/xml/core/Signature;)V
    .locals 4
    .param p1, "signature"    # Lorg/simpleframework/xml/core/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 220
    new-instance v0, Lorg/simpleframework/xml/core/Signature;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Signature;-><init>(Lorg/simpleframework/xml/core/Signature;)V

    .line 222
    .local v0, "substitute":Lorg/simpleframework/xml/core/Signature;
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/Signature;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Parameter;

    .line 223
    .local v2, "parameter":Lorg/simpleframework/xml/core/Parameter;
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->create(Lorg/simpleframework/xml/core/Parameter;)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v3

    .line 225
    .local v3, "replace":Lorg/simpleframework/xml/core/Parameter;
    if-eqz v3, :cond_0

    .line 226
    invoke-virtual {v0, v3}, Lorg/simpleframework/xml/core/Signature;->add(Lorg/simpleframework/xml/core/Parameter;)V

    .line 228
    .end local v2    # "parameter":Lorg/simpleframework/xml/core/Parameter;
    .end local v3    # "replace":Lorg/simpleframework/xml/core/Parameter;
    :cond_0
    goto :goto_0

    .line 229
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->create(Lorg/simpleframework/xml/core/Signature;)Lorg/simpleframework/xml/core/Creator;

    .line 230
    return-void
.end method

.method private register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V
    .locals 5
    .param p1, "label"    # Lorg/simpleframework/xml/core/Label;
    .param p2, "map"    # Lorg/simpleframework/xml/core/LabelMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 453
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lorg/simpleframework/xml/core/LabelMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 457
    invoke-virtual {p2, v0}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Label;

    .line 458
    .local v2, "current":Lorg/simpleframework/xml/core/Label;
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 461
    invoke-virtual {p2, v0}, Lorg/simpleframework/xml/core/LabelMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .end local v2    # "current":Lorg/simpleframework/xml/core/Label;
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 464
    :cond_1
    invoke-virtual {p2, v0, p1}, Lorg/simpleframework/xml/core/LabelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :goto_0
    invoke-virtual {p2, v1, p1}, Lorg/simpleframework/xml/core/LabelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    return-void
.end method

.method private resolve(Lorg/simpleframework/xml/core/Parameter;)Lorg/simpleframework/xml/core/Label;
    .locals 1
    .param p1, "parameter"    # Lorg/simpleframework/xml/core/Parameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 479
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->resolve(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0

    .line 481
    :cond_0
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->isText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->texts:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->resolve(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0

    .line 484
    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->resolve(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method private resolve(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;
    .locals 4
    .param p1, "parameter"    # Lorg/simpleframework/xml/core/Parameter;
    .param p2, "map"    # Lorg/simpleframework/xml/core/LabelMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 499
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Label;

    .line 503
    .local v2, "label":Lorg/simpleframework/xml/core/Label;
    if-nez v2, :cond_0

    .line 504
    invoke-virtual {p2, v0}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/core/Label;

    return-object v3

    .line 506
    :cond_0
    return-object v2
.end method

.method private validate(Lorg/simpleframework/xml/core/Detail;)V
    .locals 9
    .param p1, "detail"    # Lorg/simpleframework/xml/core/Detail;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Scanner;->getParameters()Lorg/simpleframework/xml/core/ParameterMap;

    move-result-object v0

    .line 242
    .local v0, "registry":Lorg/simpleframework/xml/core/ParameterMap;
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ParameterMap;->getAll()Ljava/util/List;

    move-result-object v1

    .line 244
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/simpleframework/xml/core/Parameter;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/core/Parameter;

    .line 245
    .local v3, "parameter":Lorg/simpleframework/xml/core/Parameter;
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->resolve(Lorg/simpleframework/xml/core/Parameter;)Lorg/simpleframework/xml/core/Label;

    move-result-object v4

    .line 246
    .local v4, "label":Lorg/simpleframework/xml/core/Label;
    invoke-interface {v3}, Lorg/simpleframework/xml/core/Parameter;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, "path":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 251
    invoke-direct {p0, v4, v3}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateParameter(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/Parameter;)V

    .line 252
    .end local v3    # "parameter":Lorg/simpleframework/xml/core/Parameter;
    .end local v4    # "label":Lorg/simpleframework/xml/core/Label;
    .end local v5    # "path":Ljava/lang/String;
    goto :goto_0

    .line 249
    .restart local v3    # "parameter":Lorg/simpleframework/xml/core/Parameter;
    .restart local v4    # "label":Lorg/simpleframework/xml/core/Label;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_0
    new-instance v6, Lorg/simpleframework/xml/core/ConstructorException;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const-string v8, "Parameter \'%s\' does not have a match in %s"

    invoke-direct {v6, v8, v7}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    .line 253
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "parameter":Lorg/simpleframework/xml/core/Parameter;
    .end local v4    # "label":Lorg/simpleframework/xml/core/Label;
    .end local v5    # "path":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateConstructors()V

    .line 254
    return-void
.end method

.method private validateAnnotations(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/Parameter;)V
    .locals 8
    .param p1, "label"    # Lorg/simpleframework/xml/core/Label;
    .param p2, "parameter"    # Lorg/simpleframework/xml/core/Parameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 315
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 316
    .local v0, "field":Ljava/lang/annotation/Annotation;
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Parameter;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 317
    .local v1, "argument":Ljava/lang/annotation/Annotation;
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->comparer:Lorg/simpleframework/xml/core/Comparer;

    invoke-virtual {v3, v0, v1}, Lorg/simpleframework/xml/core/Comparer;->equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 320
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    .line 321
    .local v3, "expect":Ljava/lang/Class;
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 323
    .local v4, "actual":Ljava/lang/Class;
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    new-instance v5, Lorg/simpleframework/xml/core/ConstructorException;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    aput-object v2, v6, v7

    const/4 v7, 0x3

    aput-object p2, v6, v7

    const-string v7, "Annotation %s does not match %s for \'%s\' in %s"

    invoke-direct {v5, v7, v6}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 327
    .end local v3    # "expect":Ljava/lang/Class;
    .end local v4    # "actual":Ljava/lang/Class;
    :cond_1
    :goto_0
    return-void
.end method

.method private validateConstructor(Lorg/simpleframework/xml/core/Label;Ljava/util/List;)V
    .locals 6
    .param p1, "label"    # Lorg/simpleframework/xml/core/Label;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Label;",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Creator;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 398
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/simpleframework/xml/core/Creator;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 400
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/simpleframework/xml/core/Creator;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Creator;

    .line 402
    .local v1, "instantiator":Lorg/simpleframework/xml/core/Creator;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Creator;->getSignature()Lorg/simpleframework/xml/core/Signature;

    move-result-object v2

    .line 403
    .local v2, "signature":Lorg/simpleframework/xml/core/Signature;
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v3

    .line 404
    .local v3, "contact":Lorg/simpleframework/xml/core/Contact;
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 406
    .local v4, "key":Ljava/lang/Object;
    invoke-interface {v3}, Lorg/simpleframework/xml/core/Contact;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 407
    invoke-virtual {v2, v4}, Lorg/simpleframework/xml/core/Signature;->get(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v5

    .line 409
    .local v5, "value":Lorg/simpleframework/xml/core/Parameter;
    if-nez v5, :cond_0

    .line 410
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 413
    .end local v1    # "instantiator":Lorg/simpleframework/xml/core/Creator;
    .end local v2    # "signature":Lorg/simpleframework/xml/core/Signature;
    .end local v3    # "contact":Lorg/simpleframework/xml/core/Contact;
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Lorg/simpleframework/xml/core/Parameter;
    :cond_0
    goto :goto_0

    .line 414
    :cond_1
    return-void
.end method

.method private validateConstructors()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->factory:Lorg/simpleframework/xml/core/Instantiator;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instantiator;->getCreators()Ljava/util/List;

    move-result-object v0

    .line 338
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/simpleframework/xml/core/Creator;>;"
    iget-object v1, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->factory:Lorg/simpleframework/xml/core/Instantiator;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instantiator;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateConstructors(Lorg/simpleframework/xml/core/LabelMap;)V

    .line 340
    iget-object v1, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateConstructors(Lorg/simpleframework/xml/core/LabelMap;)V

    .line 342
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 343
    iget-object v1, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, v1, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateConstructors(Lorg/simpleframework/xml/core/LabelMap;Ljava/util/List;)V

    .line 344
    iget-object v1, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, v1, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateConstructors(Lorg/simpleframework/xml/core/LabelMap;Ljava/util/List;)V

    .line 346
    :cond_1
    return-void
.end method

.method private validateConstructors(Lorg/simpleframework/xml/core/LabelMap;)V
    .locals 7
    .param p1, "map"    # Lorg/simpleframework/xml/core/LabelMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 357
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Label;

    .line 358
    .local v1, "label":Lorg/simpleframework/xml/core/Label;
    if-eqz v1, :cond_1

    .line 359
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v2

    .line 361
    .local v2, "contact":Lorg/simpleframework/xml/core/Contact;
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Contact;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 362
    :cond_0
    new-instance v3, Lorg/simpleframework/xml/core/ConstructorException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->detail:Lorg/simpleframework/xml/core/Detail;

    aput-object v6, v4, v5

    const-string v5, "Default constructor can not accept read only %s in %s"

    invoke-direct {v3, v5, v4}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 364
    .end local v1    # "label":Lorg/simpleframework/xml/core/Label;
    .end local v2    # "contact":Lorg/simpleframework/xml/core/Contact;
    :cond_1
    :goto_1
    goto :goto_0

    .line 366
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private validateConstructors(Lorg/simpleframework/xml/core/LabelMap;Ljava/util/List;)V
    .locals 4
    .param p1, "map"    # Lorg/simpleframework/xml/core/LabelMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/LabelMap;",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Creator;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 378
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/simpleframework/xml/core/Creator;>;"
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Label;

    .line 379
    .local v1, "label":Lorg/simpleframework/xml/core/Label;
    if-eqz v1, :cond_0

    .line 380
    invoke-direct {p0, v1, p2}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateConstructor(Lorg/simpleframework/xml/core/Label;Ljava/util/List;)V

    .end local v1    # "label":Lorg/simpleframework/xml/core/Label;
    :cond_0
    goto :goto_0

    .line 383
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 386
    return-void

    .line 384
    :cond_2
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->detail:Lorg/simpleframework/xml/core/Detail;

    aput-object v3, v1, v2

    const-string v2, "No constructor accepts all read only values in %s"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private validateNames(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/Parameter;)V
    .locals 9
    .param p1, "label"    # Lorg/simpleframework/xml/core/Label;
    .param p2, "parameter"    # Lorg/simpleframework/xml/core/Parameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 288
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getNames()[Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "options":[Ljava/lang/String;
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Parameter;->getName()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 292
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "require":Ljava/lang/String;
    if-eq v1, v2, :cond_2

    .line 295
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    const-string v7, "Annotation does not match %s for \'%s\' in %s"

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    new-instance v8, Lorg/simpleframework/xml/core/ConstructorException;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    aput-object v1, v6, v4

    aput-object p2, v6, v3

    invoke-direct {v8, v7, v6}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v8

    .line 296
    :cond_1
    new-instance v8, Lorg/simpleframework/xml/core/ConstructorException;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    aput-object v1, v6, v4

    aput-object p2, v6, v3

    invoke-direct {v8, v7, v6}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v8

    .line 303
    .end local v2    # "require":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method private validateParameter(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/Parameter;)V
    .locals 7
    .param p1, "label"    # Lorg/simpleframework/xml/core/Label;
    .param p2, "parameter"    # Lorg/simpleframework/xml/core/Parameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 265
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 266
    .local v0, "contact":Lorg/simpleframework/xml/core/Contact;
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Parameter;->getName()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Parameter;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 268
    .local v2, "expect":Ljava/lang/Class;
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Contact;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 270
    .local v3, "actual":Ljava/lang/Class;
    invoke-static {v2, v3}, Lorg/simpleframework/xml/core/Support;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 273
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateNames(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/Parameter;)V

    .line 274
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateAnnotations(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/Parameter;)V

    .line 275
    return-void

    .line 271
    :cond_0
    new-instance v4, Lorg/simpleframework/xml/core/ConstructorException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const-string v6, "Type is not compatible with %s for \'%s\' in %s"

    invoke-direct {v4, v6, v5}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4
.end method


# virtual methods
.method public build()Lorg/simpleframework/xml/core/Instantiator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->factory:Lorg/simpleframework/xml/core/Instantiator;

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->populate(Lorg/simpleframework/xml/core/Detail;)V

    .line 113
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->build(Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/Instantiator;

    .line 114
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validate(Lorg/simpleframework/xml/core/Detail;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->factory:Lorg/simpleframework/xml/core/Instantiator;

    return-object v0
.end method

.method public register(Lorg/simpleframework/xml/core/Label;)V
    .locals 1
    .param p1, "label"    # Lorg/simpleframework/xml/core/Label;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 425
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_0

    .line 427
    :cond_0
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->texts:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_0

    .line 430
    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    .line 432
    :goto_0
    return-void
.end method
