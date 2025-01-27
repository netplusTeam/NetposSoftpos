.class Lorg/simpleframework/xml/core/LabelExtractor;
.super Ljava/lang/Object;
.source "LabelExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;
    }
.end annotation


# instance fields
.field private final cache:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache<",
            "Lorg/simpleframework/xml/core/LabelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final format:Lorg/simpleframework/xml/stream/Format;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .param p1, "format"    # Lorg/simpleframework/xml/stream/Format;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/LabelExtractor;->cache:Lorg/simpleframework/xml/util/Cache;

    .line 78
    iput-object p1, p0, Lorg/simpleframework/xml/core/LabelExtractor;->format:Lorg/simpleframework/xml/stream/Format;

    .line 79
    return-void
.end method

.method private getAnnotations(Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;
    .locals 5
    .param p1, "label"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 239
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 240
    .local v0, "union":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 242
    .local v1, "list":[Ljava/lang/reflect/Method;
    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 243
    aget-object v2, v1, v3

    .line 244
    .local v2, "method":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 246
    .local v3, "value":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, [Ljava/lang/annotation/Annotation;

    check-cast v4, [Ljava/lang/annotation/Annotation;

    return-object v4

    .line 248
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    new-array v2, v3, [Ljava/lang/annotation/Annotation;

    return-object v2
.end method

.method private getBuilder(Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;
    .locals 4
    .param p1, "label"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 319
    instance-of v0, p1, Lorg/simpleframework/xml/Element;

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementLabel;

    const-class v2, Lorg/simpleframework/xml/Element;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 322
    :cond_0
    instance-of v0, p1, Lorg/simpleframework/xml/ElementList;

    if-eqz v0, :cond_1

    .line 323
    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementListLabel;

    const-class v2, Lorg/simpleframework/xml/ElementList;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 325
    :cond_1
    instance-of v0, p1, Lorg/simpleframework/xml/ElementArray;

    if-eqz v0, :cond_2

    .line 326
    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementArrayLabel;

    const-class v2, Lorg/simpleframework/xml/ElementArray;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 328
    :cond_2
    instance-of v0, p1, Lorg/simpleframework/xml/ElementMap;

    if-eqz v0, :cond_3

    .line 329
    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementMapLabel;

    const-class v2, Lorg/simpleframework/xml/ElementMap;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 331
    :cond_3
    instance-of v0, p1, Lorg/simpleframework/xml/ElementUnion;

    if-eqz v0, :cond_4

    .line 332
    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementUnionLabel;

    const-class v2, Lorg/simpleframework/xml/ElementUnion;

    const-class v3, Lorg/simpleframework/xml/Element;

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 334
    :cond_4
    instance-of v0, p1, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v0, :cond_5

    .line 335
    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementListUnionLabel;

    const-class v2, Lorg/simpleframework/xml/ElementListUnion;

    const-class v3, Lorg/simpleframework/xml/ElementList;

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 337
    :cond_5
    instance-of v0, p1, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v0, :cond_6

    .line 338
    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementMapUnionLabel;

    const-class v2, Lorg/simpleframework/xml/ElementMapUnion;

    const-class v3, Lorg/simpleframework/xml/ElementMap;

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 340
    :cond_6
    instance-of v0, p1, Lorg/simpleframework/xml/Attribute;

    if-eqz v0, :cond_7

    .line 341
    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/AttributeLabel;

    const-class v2, Lorg/simpleframework/xml/Attribute;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 343
    :cond_7
    instance-of v0, p1, Lorg/simpleframework/xml/Version;

    if-eqz v0, :cond_8

    .line 344
    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/VersionLabel;

    const-class v2, Lorg/simpleframework/xml/Version;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 346
    :cond_8
    instance-of v0, p1, Lorg/simpleframework/xml/Text;

    if-eqz v0, :cond_9

    .line 347
    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    const-class v1, Lorg/simpleframework/xml/core/TextLabel;

    const-class v2, Lorg/simpleframework/xml/Text;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 349
    :cond_9
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Annotation %s not supported"

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private getConstructor(Ljava/lang/annotation/Annotation;)Ljava/lang/reflect/Constructor;
    .locals 3
    .param p1, "label"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 299
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/LabelExtractor;->getBuilder(Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;

    move-result-object v0

    .line 300
    .local v0, "builder":Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 302
    .local v1, "factory":Ljava/lang/reflect/Constructor;
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 303
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 305
    :cond_0
    return-object v1
.end method

.method private getGroup(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Lorg/simpleframework/xml/core/LabelGroup;
    .locals 3
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;
    .param p2, "label"    # Ljava/lang/annotation/Annotation;
    .param p3, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelExtractor;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p3}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/LabelGroup;

    .line 141
    .local v0, "value":Lorg/simpleframework/xml/core/LabelGroup;
    if-nez v0, :cond_1

    .line 142
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getLabels(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object v1

    .line 144
    .local v1, "list":Lorg/simpleframework/xml/core/LabelGroup;
    if-eqz v1, :cond_0

    .line 145
    iget-object v2, p0, Lorg/simpleframework/xml/core/LabelExtractor;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v2, p3, v1}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    :cond_0
    return-object v1

    .line 149
    .end local v1    # "list":Lorg/simpleframework/xml/core/LabelGroup;
    :cond_1
    return-object v0
.end method

.method private getKey(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .locals 1
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;
    .param p2, "label"    # Ljava/lang/annotation/Annotation;

    .line 285
    new-instance v0, Lorg/simpleframework/xml/core/LabelKey;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/LabelKey;-><init>(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method private getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;
    .locals 6
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;
    .param p2, "label"    # Ljava/lang/annotation/Annotation;
    .param p3, "entry"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 265
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getConstructor(Ljava/lang/annotation/Annotation;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 267
    .local v0, "factory":Ljava/lang/reflect/Constructor;
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz p3, :cond_0

    .line 268
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object p2, v5, v2

    aput-object p3, v5, v1

    iget-object v1, p0, Lorg/simpleframework/xml/core/LabelExtractor;->format:Lorg/simpleframework/xml/stream/Format;

    aput-object v1, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Label;

    return-object v1

    .line 270
    :cond_0
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    iget-object v2, p0, Lorg/simpleframework/xml/core/LabelExtractor;->format:Lorg/simpleframework/xml/stream/Format;

    aput-object v2, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Label;

    return-object v1
.end method

.method private getLabels(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;
    .locals 1
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;
    .param p2, "label"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    instance-of v0, p2, Lorg/simpleframework/xml/ElementUnion;

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getUnion(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    instance-of v0, p2, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v0, :cond_1

    .line 169
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getUnion(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object v0

    return-object v0

    .line 171
    :cond_1
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v0, :cond_2

    .line 172
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getUnion(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object v0

    return-object v0

    .line 174
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getSingle(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object v0

    return-object v0
.end method

.method private getSingle(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;
    .locals 2
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;
    .param p2, "label"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/LabelExtractor;->getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 192
    .local v0, "value":Lorg/simpleframework/xml/core/Label;
    if-eqz v0, :cond_0

    .line 193
    new-instance v1, Lorg/simpleframework/xml/core/CacheLabel;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/core/CacheLabel;-><init>(Lorg/simpleframework/xml/core/Label;)V

    move-object v0, v1

    .line 195
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/LabelGroup;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/core/LabelGroup;-><init>(Lorg/simpleframework/xml/core/Label;)V

    return-object v1
.end method

.method private getUnion(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/LabelGroup;
    .locals 8
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;
    .param p2, "label"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getAnnotations(Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 213
    .local v0, "list":[Ljava/lang/annotation/Annotation;
    array-length v1, v0

    if-lez v1, :cond_2

    .line 214
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 216
    .local v1, "labels":Ljava/util/List;, "Ljava/util/List<Lorg/simpleframework/xml/core/Label;>;"
    move-object v2, v0

    .local v2, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 217
    .local v5, "value":Ljava/lang/annotation/Annotation;
    invoke-direct {p0, p1, p2, v5}, Lorg/simpleframework/xml/core/LabelExtractor;->getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object v6

    .line 219
    .local v6, "entry":Lorg/simpleframework/xml/core/Label;
    if-eqz v6, :cond_0

    .line 220
    new-instance v7, Lorg/simpleframework/xml/core/CacheLabel;

    invoke-direct {v7, v6}, Lorg/simpleframework/xml/core/CacheLabel;-><init>(Lorg/simpleframework/xml/core/Label;)V

    move-object v6, v7

    .line 222
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v5    # "value":Ljava/lang/annotation/Annotation;
    .end local v6    # "entry":Lorg/simpleframework/xml/core/Label;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 224
    .end local v2    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_1
    new-instance v2, Lorg/simpleframework/xml/core/LabelGroup;

    invoke-direct {v2, v1}, Lorg/simpleframework/xml/core/LabelGroup;-><init>(Ljava/util/List;)V

    return-object v2

    .line 226
    .end local v1    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/simpleframework/xml/core/Label;>;"
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;
    .locals 3
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;
    .param p2, "label"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getKey(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "key":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/LabelExtractor;->getGroup(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object v1

    .line 97
    .local v1, "list":Lorg/simpleframework/xml/core/LabelGroup;
    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v1}, Lorg/simpleframework/xml/core/LabelGroup;->getPrimary()Lorg/simpleframework/xml/core/Label;

    move-result-object v2

    return-object v2

    .line 100
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getList(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Ljava/util/List;
    .locals 3
    .param p1, "contact"    # Lorg/simpleframework/xml/core/Contact;
    .param p2, "label"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Contact;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Label;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getKey(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, "key":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/LabelExtractor;->getGroup(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Lorg/simpleframework/xml/core/LabelGroup;

    move-result-object v1

    .line 119
    .local v1, "list":Lorg/simpleframework/xml/core/LabelGroup;
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1}, Lorg/simpleframework/xml/core/LabelGroup;->getList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 122
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
