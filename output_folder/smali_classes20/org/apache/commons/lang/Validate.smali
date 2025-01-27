.class public Lorg/apache/commons/lang/Validate;
.super Ljava/lang/Object;
.source "Validate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static allElementsOfType(Ljava/util/Collection;Ljava/lang/Class;)V
    .locals 5
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 495
    invoke-static {p0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;)V

    .line 496
    invoke-static {p1}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;)V

    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 499
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "The validated collection contains an element not of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " at index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 504
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static allElementsOfType(Ljava/util/Collection;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "message"    # Ljava/lang/String;

    .line 467
    invoke-static {p0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;)V

    .line 468
    invoke-static {p1}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;)V

    .line 469
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 471
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 474
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static isTrue(Z)V
    .locals 2
    .param p0, "expression"    # Z

    .line 157
    if-eqz p0, :cond_0

    .line 160
    return-void

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The validated expression is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isTrue(ZLjava/lang/String;)V
    .locals 1
    .param p0, "expression"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .line 135
    if-eqz p0, :cond_0

    .line 138
    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isTrue(ZLjava/lang/String;D)V
    .locals 2
    .param p0, "expression"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 114
    if-eqz p0, :cond_0

    .line 117
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isTrue(ZLjava/lang/String;J)V
    .locals 2
    .param p0, "expression"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 92
    if-eqz p0, :cond_0

    .line 95
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isTrue(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "expression"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 70
    if-eqz p0, :cond_0

    .line 73
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static noNullElements(Ljava/util/Collection;)V
    .locals 5
    .param p0, "collection"    # Ljava/util/Collection;

    .line 443
    invoke-static {p0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;)V

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 446
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "The validated collection contains null element at index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 450
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static noNullElements(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 2
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "message"    # Ljava/lang/String;

    .line 416
    invoke-static {p0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;)V

    .line 417
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 422
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static noNullElements([Ljava/lang/Object;)V
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;

    .line 388
    invoke-static {p0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;)V

    .line 389
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 390
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The validated array contains null element at index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 394
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static noNullElements([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .line 361
    invoke-static {p0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;)V

    .line 362
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 363
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static notEmpty(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 339
    const-string v0, "The validated string is empty"

    invoke-static {p0, v0}, Lorg/apache/commons/lang/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public static notEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 320
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    return-void

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static notEmpty(Ljava/util/Collection;)V
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;

    .line 265
    const-string v0, "The validated collection is empty"

    invoke-static {p0, v0}, Lorg/apache/commons/lang/Validate;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public static notEmpty(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "message"    # Ljava/lang/String;

    .line 247
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    return-void

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static notEmpty(Ljava/util/Map;)V
    .locals 1
    .param p0, "map"    # Ljava/util/Map;

    .line 302
    const-string v0, "The validated map is empty"

    invoke-static {p0, v0}, Lorg/apache/commons/lang/Validate;->notEmpty(Ljava/util/Map;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public static notEmpty(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "message"    # Ljava/lang/String;

    .line 283
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    return-void

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static notEmpty([Ljava/lang/Object;)V
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .line 229
    const-string v0, "The validated array is empty"

    invoke-static {p0, v0}, Lorg/apache/commons/lang/Validate;->notEmpty([Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public static notEmpty([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .line 211
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    .line 214
    return-void

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static notNull(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 178
    const-string v0, "The validated object is null"

    invoke-static {p0, v0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public static notNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .line 191
    if-eqz p0, :cond_0

    .line 194
    return-void

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
