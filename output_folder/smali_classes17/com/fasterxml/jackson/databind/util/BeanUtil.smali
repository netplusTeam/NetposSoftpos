.class public Lcom/fasterxml/jackson/databind/util/BeanUtil;
.super Ljava/lang/Object;
.source "BeanUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultValue(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 5
    .param p0, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 134
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 138
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->primitiveType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 139
    .local v1, "prim":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 140
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->isReferenceType()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_2

    .line 146
    const-string v2, ""

    return-object v2

    .line 150
    :cond_2
    const-class v2, Ljava/util/Date;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3

    .line 151
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    return-object v2

    .line 153
    :cond_3
    const-class v2, Ljava/util/Calendar;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 154
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 155
    .local v2, "c":Ljava/util/Calendar;
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 156
    return-object v2

    .line 158
    .end local v2    # "c":Ljava/util/Calendar;
    :cond_4
    const/4 v2, 0x0

    return-object v2

    .line 143
    :cond_5
    :goto_0
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    return-object v2
.end method

.method protected static isCglibGetCallbacks(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 5
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 177
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 179
    .local v0, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 184
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 186
    .local v1, "compType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 188
    const-string v4, ".cglib"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 189
    const-string v4, "net.sf.cglib"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 191
    const-string v4, "org.hibernate.repackage.cglib"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 193
    const-string v4, "org.springframework.cglib"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 189
    :cond_1
    return v2

    .line 197
    .end local v1    # "compType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_2
    return v2
.end method

.method protected static isGroovyMetaClassGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 2
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 216
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "groovy.lang"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected static isGroovyMetaClassSetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 4
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v1

    .line 207
    .local v1, "argType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "groovy.lang"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static legacyManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "basename"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 235
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 236
    .local v0, "end":I
    if-ne v0, p1, :cond_0

    .line 237
    const/4 v1, 0x0

    return-object v1

    .line 240
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 241
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 243
    .local v2, "d":C
    if-ne v1, v2, :cond_1

    .line 244
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 247
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    sub-int v4, v0, p1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 248
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    add-int/lit8 v4, p1, 0x1

    .line 250
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 251
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 252
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 253
    if-ne v1, v2, :cond_2

    .line 254
    invoke-virtual {v3, p0, v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 255
    goto :goto_1

    .line 257
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 259
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static okNameForGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)Ljava/lang/String;
    .locals 2
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p1, "stdNaming"    # Z

    .line 27
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "name":Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForIsGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "str":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 30
    invoke-static {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForRegularGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 32
    :cond_0
    return-object v1
.end method

.method public static okNameForIsGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stdNaming"    # Z

    .line 72
    const-string v0, "is"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 74
    .local v0, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 75
    :cond_0
    const/4 v1, 0x2

    if-eqz p2, :cond_1

    .line 76
    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->stdManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    nop

    .line 77
    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->legacyManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 75
    :goto_0
    return-object v1

    .line 80
    .end local v0    # "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static okNameForMutator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "stdNaming"    # Z

    .line 102
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->stdManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->legacyManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 104
    :goto_0
    return-object v1

    .line 108
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static okNameForRegularGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stdNaming"    # Z

    .line 41
    const-string v0, "get"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 49
    const-string v0, "getCallbacks"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->isCglibGetCallbacks(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    return-object v1

    .line 53
    :cond_0
    const-string v0, "getMetaClass"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->isGroovyMetaClassGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    return-object v1

    .line 59
    :cond_1
    const/4 v0, 0x3

    if-eqz p2, :cond_2

    .line 60
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->stdManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    nop

    .line 61
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->legacyManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 63
    :cond_3
    return-object v1
.end method

.method public static okNameForSetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)Ljava/lang/String;
    .locals 2
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p1, "stdNaming"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    const-string v0, "set"

    invoke-static {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForMutator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 91
    const-string v1, "metaClass"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->isGroovyMetaClassSetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    :cond_0
    return-object v0

    .line 94
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected static stdManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "basename"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 267
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 268
    .local v0, "end":I
    if-ne v0, p1, :cond_0

    .line 269
    const/4 v1, 0x0

    return-object v1

    .line 272
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 273
    .local v1, "c0":C
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 274
    .local v2, "c1":C
    if-ne v1, v2, :cond_1

    .line 275
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 280
    :cond_1
    add-int/lit8 v3, p1, 0x1

    if-ge v3, v0, :cond_2

    .line 281
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 282
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 285
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    sub-int v4, v0, p1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 286
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, p0, v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
