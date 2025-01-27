.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final dataPrefix:Ljava/lang/String; = "data-"


# instance fields
.field private attributes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    return-void
.end method

.method static synthetic access$100(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 70
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 0
    .param p0, "x0"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    .param p1, "x1"    # Ljava/util/LinkedHashMap;

    .line 70
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    return-object p1
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 70
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->dataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static dataKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAll(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V
    .locals 2
    .param p1, "incoming"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 161
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 162
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_1

    .line 164
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 166
    return-void
.end method

.method public asList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 179
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 181
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;>;"
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

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

    .line 183
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;>;"
    goto :goto_0

    .line 185
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .line 254
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;-><init>()V

    return-object v0

    .line 259
    :cond_0
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .local v0, "clone":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    nop

    .line 263
    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v1, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    .line 264
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    .line 265
    .local v2, "attribute":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    iget-object v3, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 266
    .end local v2    # "attribute":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    :cond_1
    return-object v0

    .line 260
    .end local v0    # "clone":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public dataset()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 235
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 236
    :cond_0
    instance-of v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 238
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 240
    .local v1, "that":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_2

    iget-object v4, v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    move v0, v2

    :goto_1
    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 84
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 87
    return-object v1

    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    .line 90
    .local v0, "attr":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public hasKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public html()Ljava/lang/String;
    .locals 3

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v0, "accum":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->html(Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    nop

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/SerializationException;

    invoke-direct {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method html(Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 4
    .param p1, "accum"    # Ljava/lang/Appendable;
    .param p2, "out"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 217
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    .line 218
    .local v2, "attribute":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    const-string v3, " "

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 219
    invoke-virtual {v2, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->html(Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V

    .line 220
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;>;"
    .end local v2    # "attribute":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    goto :goto_0

    .line 221
    :cond_1
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;",
            ">;"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->asList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)V
    .locals 2
    .param p1, "attribute"    # Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    .line 120
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v0, "attr":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)V

    .line 101
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 109
    if-eqz p2, :cond_0

    .line 110
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/BooleanAttribute;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->remove(Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 131
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 133
    return-void

    .line 134
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public size()I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->attributes:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    return v0

    .line 153
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->html()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
