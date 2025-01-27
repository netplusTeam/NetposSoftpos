.class public abstract Lorg/osgi/dto/DTO;
.super Ljava/lang/Object;
.source "DTO.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendArray(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "result"    # Ljava/lang/StringBuilder;
    .param p2, "refpath"    # Ljava/lang/String;
    .param p3, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 161
    .local p1, "objectRefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/String;>;"
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 163
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 164
    if-lez v1, :cond_0

    .line 165
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, p1, v2, v3}, Lorg/osgi/dto/DTO;->appendValue(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    return-object p0
.end method

.method private static appendDTO(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;Lorg/osgi/dto/DTO;)Ljava/lang/StringBuilder;
    .locals 9
    .param p0, "result"    # Ljava/lang/StringBuilder;
    .param p2, "refpath"    # Ljava/lang/String;
    .param p3, "dto"    # Lorg/osgi/dto/DTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/osgi/dto/DTO;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 73
    .local p1, "objectRefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/String;>;"
    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, ""

    .line 75
    .local v0, "delim":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 76
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    goto :goto_2

    .line 79
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "name":Ljava/lang/String;
    invoke-static {p0, v5}, Lorg/osgi/dto/DTO;->appendString(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 82
    const-string v6, ":"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const/4 v6, 0x0

    .line 85
    .local v6, "value":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v4, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    .line 88
    goto :goto_1

    .line 86
    :catch_0
    move-exception v7

    .line 89
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, p1, v7, v6}, Lorg/osgi/dto/DTO;->appendValue(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    const-string v0, ", "

    .line 75
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    const-string v1, "}"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    return-object p0
.end method

.method private static appendIterable(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;
    .locals 5
    .param p0, "result"    # Ljava/lang/StringBuilder;
    .param p2, "refpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 186
    .local p1, "objectRefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/String;>;"
    .local p3, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "i":I
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 189
    .local v2, "item":Ljava/lang/Object;
    if-lez v0, :cond_0

    .line 190
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v3, v2}, Lorg/osgi/dto/DTO;->appendValue(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    nop

    .end local v2    # "item":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    return-object p0
.end method

.method private static appendMap(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/StringBuilder;
    .locals 7
    .param p0, "result"    # Ljava/lang/StringBuilder;
    .param p2, "refpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 211
    .local p1, "objectRefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/String;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v0, ""

    .line 213
    .local v0, "delim":Ljava/lang/String;
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 214
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "name":Ljava/lang/String;
    invoke-static {p0, v3}, Lorg/osgi/dto/DTO;->appendString(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 217
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 219
    .local v4, "value":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, v5, v4}, Lorg/osgi/dto/DTO;->appendValue(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    const-string v0, ", "

    .line 221
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 222
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const-string v1, "}"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    return-object p0
.end method

.method private static appendString(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 5
    .param p0, "result"    # Ljava/lang/StringBuilder;
    .param p1, "string"    # Ljava/lang/CharSequence;

    .line 234
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 236
    .local v1, "i":I
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 237
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 238
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 239
    .local v2, "c":C
    const/16 v3, 0x22

    const/16 v4, 0x5c

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_0

    goto :goto_1

    .line 244
    :cond_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 245
    add-int/lit8 v3, v1, 0x1

    const/high16 v4, 0x10000

    or-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    add-int/lit8 v3, v1, 0x2

    const-string v4, "\\u"

    invoke-virtual {p0, v1, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    add-int/lit8 v1, v1, 0x6

    .line 248
    goto :goto_0

    .line 250
    :cond_1
    nop

    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    .line 251
    goto :goto_0

    .line 240
    .restart local v2    # "c":C
    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 241
    add-int/lit8 v1, v1, 0x2

    .line 242
    goto :goto_0

    .line 252
    .end local v2    # "c":C
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    return-object p0
.end method

.method private static appendValue(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "result"    # Ljava/lang/StringBuilder;
    .param p2, "refpath"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 113
    .local p1, "objectRefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 114
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 117
    :cond_0
    instance-of v0, p3, Ljava/lang/String;

    if-nez v0, :cond_a

    instance-of v0, p3, Ljava/lang/Character;

    if-eqz v0, :cond_1

    goto :goto_2

    .line 120
    :cond_1
    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_9

    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 125
    :cond_2
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 127
    const-string v1, "{\"$ref\":"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-static {p0, v0}, Lorg/osgi/dto/DTO;->appendString(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "}"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    return-object p0

    .line 132
    :cond_3
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    instance-of v1, p3, Lorg/osgi/dto/DTO;

    if-eqz v1, :cond_4

    .line 135
    move-object v1, p3

    check-cast v1, Lorg/osgi/dto/DTO;

    invoke-static {p0, p1, p2, v1}, Lorg/osgi/dto/DTO;->appendDTO(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;Lorg/osgi/dto/DTO;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1

    .line 137
    :cond_4
    instance-of v1, p3, Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 138
    move-object v1, p3

    check-cast v1, Ljava/util/Map;

    invoke-static {p0, p1, p2, v1}, Lorg/osgi/dto/DTO;->appendMap(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1

    .line 140
    :cond_5
    instance-of v1, p3, Ljava/util/List;

    if-nez v1, :cond_8

    instance-of v1, p3, Ljava/util/Set;

    if-eqz v1, :cond_6

    goto :goto_0

    .line 143
    :cond_6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 144
    invoke-static {p0, p1, p2, p3}, Lorg/osgi/dto/DTO;->appendArray(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1

    .line 146
    :cond_7
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/osgi/dto/DTO;->compress(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/osgi/dto/DTO;->appendString(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1

    .line 141
    :cond_8
    :goto_0
    move-object v1, p3

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {p0, p1, p2, v1}, Lorg/osgi/dto/DTO;->appendIterable(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1

    .line 121
    .end local v0    # "path":Ljava/lang/String;
    :cond_9
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 118
    :cond_a
    :goto_2
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/osgi/dto/DTO;->compress(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/osgi/dto/DTO;->appendString(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static compress(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "in"    # Ljava/lang/CharSequence;

    .line 263
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 264
    .local v0, "length":I
    const/16 v1, 0x15

    if-gt v0, v1, :cond_0

    .line 265
    return-object p0

    .line 267
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 268
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {v1, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 269
    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    add-int/lit8 v2, v0, -0x9

    invoke-virtual {v1, p0, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 271
    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    const-string v2, "#"

    invoke-static {v0, v1, v2, p0}, Lorg/osgi/dto/DTO;->appendValue(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
