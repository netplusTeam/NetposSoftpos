.class public Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
.super Ljava/lang/Object;
.source "JsonInclude.java"

# interfaces
.implements Lcom/fasterxml/jackson/annotation/JacksonAnnotationValue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonInclude;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fasterxml/jackson/annotation/JacksonAnnotationValue<",
        "Lcom/fasterxml/jackson/annotation/JsonInclude;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field protected static final EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _contentFilter:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final _contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

.field protected final _valueFilter:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final _valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 247
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .param p1, "vi"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .param p2, "ci"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Include;",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Include;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 269
    .local p3, "valueFilter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "contentFilter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    if-nez p1, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 271
    if-nez p2, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 272
    const-class v0, Ljava/lang/Void;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v0, p3

    :goto_2
    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueFilter:Ljava/lang/Class;

    .line 273
    const-class v0, Ljava/lang/Void;

    if-ne p4, v0, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, p4

    :goto_3
    iput-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentFilter:Ljava/lang/Class;

    .line 274
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/annotation/JsonInclude;)V
    .locals 4
    .param p1, "src"    # Lcom/fasterxml/jackson/annotation/JsonInclude;

    .line 264
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonInclude;->value()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v0

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonInclude;->content()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v1

    .line 265
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonInclude;->valueFilter()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonInclude;->contentFilter()Ljava/lang/Class;

    move-result-object v3

    .line 264
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 266
    return-void
.end method

.method public static construct(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 2
    .param p0, "valueIncl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .param p1, "contentIncl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 359
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq p0, v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 363
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 361
    :cond_2
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-object v0
.end method

.method public static construct(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1
    .param p0, "valueIncl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .param p1, "contentIncl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Include;",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Include;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;"
        }
    .end annotation

    .line 374
    .local p2, "valueFilter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "contentFilter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Void;

    if-ne p2, v0, :cond_0

    .line 375
    const/4 p2, 0x0

    .line 377
    :cond_0
    const-class v0, Ljava/lang/Void;

    if-ne p3, v0, :cond_1

    .line 378
    const/4 p3, 0x0

    .line 380
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq p0, v0, :cond_2

    if-nez p0, :cond_4

    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_4

    :cond_3
    if-nez p2, :cond_4

    if-nez p3, :cond_4

    .line 385
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-object v0

    .line 387
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static empty()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1

    .line 277
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/annotation/JsonInclude;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 5
    .param p0, "src"    # Lcom/fasterxml/jackson/annotation/JsonInclude;

    .line 395
    if-nez p0, :cond_0

    .line 396
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-object v0

    .line 398
    :cond_0
    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonInclude;->value()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v0

    .line 399
    .local v0, "vi":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonInclude;->content()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v1

    .line 401
    .local v1, "ci":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v0, v2, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v1, v2, :cond_1

    .line 402
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-object v2

    .line 404
    :cond_1
    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonInclude;->valueFilter()Ljava/lang/Class;

    move-result-object v2

    .line 405
    .local v2, "vf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/lang/Void;

    if-ne v2, v3, :cond_2

    .line 406
    const/4 v2, 0x0

    .line 408
    :cond_2
    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonInclude;->contentFilter()Ljava/lang/Class;

    move-result-object v3

    .line 409
    .local v3, "cf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/lang/Void;

    if-ne v3, v4, :cond_3

    .line 410
    const/4 v3, 0x0

    .line 412
    :cond_3
    new-instance v4, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v4
.end method

.method public static merge(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1
    .param p0, "base"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .param p1, "overrides"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 293
    if-nez p0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0
.end method

.method public static varargs mergeAll([Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 5
    .param p0, "values"    # [Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "result":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 304
    .local v3, "curr":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    if-eqz v3, :cond_1

    .line 305
    if-nez v0, :cond_0

    move-object v4, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v4

    :goto_1
    move-object v0, v4

    .line 303
    .end local v3    # "curr":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    :cond_2
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 516
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 517
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 518
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 519
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 521
    .local v2, "other":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    iget-object v3, v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v3, v4, :cond_3

    iget-object v3, v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v3, v4, :cond_3

    iget-object v3, v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueFilter:Ljava/lang/Class;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueFilter:Ljava/lang/Class;

    if-ne v3, v4, :cond_3

    iget-object v3, v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentFilter:Ljava/lang/Class;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentFilter:Ljava/lang/Class;

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public getContentFilter()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentFilter:Ljava/lang/Class;

    return-object v0
.end method

.method public getContentInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    return-object v0
.end method

.method public getValueFilter()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueFilter:Ljava/lang/Class;

    return-object v0
.end method

.method public getValueInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 511
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 510
    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueFilter:Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentFilter:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 318
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-object v0

    .line 320
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 495
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "JsonInclude.Value(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 496
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 497
    const-string v2, ",content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 498
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 499
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueFilter:Ljava/lang/Class;

    const-string v2, ".class"

    if-eqz v1, :cond_0

    .line 500
    const-string v1, ",valueFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueFilter:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentFilter:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 503
    const-string v1, ",contentFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentFilter:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valueFor()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/fasterxml/jackson/annotation/JsonInclude;",
            ">;"
        }
    .end annotation

    .line 473
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonInclude;

    return-object v0
.end method

.method public withContentFilter(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;"
        }
    .end annotation

    .line 457
    .local p1, "filter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    const-class v0, Ljava/lang/Void;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->CUSTOM:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .local v0, "incl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    goto :goto_1

    .line 458
    .end local v0    # "incl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    :cond_1
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 459
    .restart local v0    # "incl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    const/4 p1, 0x0

    .line 463
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueFilter:Ljava/lang/Class;

    invoke-static {v1, v0, v2, p1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->construct(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v1

    return-object v1
.end method

.method public withContentInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 4
    .param p1, "incl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 467
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueFilter:Ljava/lang/Class;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentFilter:Ljava/lang/Class;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Ljava/lang/Class;Ljava/lang/Class;)V

    :goto_0
    return-object v0
.end method

.method public withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 10
    .param p1, "overrides"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 330
    if-eqz p1, :cond_9

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    if-ne p1, v0, :cond_0

    goto :goto_3

    .line 333
    :cond_0
    iget-object v0, p1, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 334
    .local v0, "vi":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    iget-object v1, p1, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 335
    .local v1, "ci":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    iget-object v2, p1, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueFilter:Ljava/lang/Class;

    .line 336
    .local v2, "vf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p1, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentFilter:Ljava/lang/Class;

    .line 338
    .local v3, "cf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v4, :cond_1

    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq v0, v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    .line 339
    .local v4, "viDiff":Z
    :goto_0
    iget-object v7, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq v1, v7, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, v6

    .line 340
    .local v7, "ciDiff":Z
    :goto_1
    iget-object v8, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueFilter:Ljava/lang/Class;

    if-ne v2, v8, :cond_4

    if-eq v3, v8, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    .line 342
    .local v5, "filterDiff":Z
    :cond_4
    :goto_2
    if-eqz v4, :cond_6

    .line 343
    if-eqz v7, :cond_5

    .line 344
    new-instance v6, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v6

    .line 346
    :cond_5
    new-instance v6, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iget-object v8, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-direct {v6, v0, v8, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v6

    .line 347
    :cond_6
    if-eqz v7, :cond_7

    .line 348
    new-instance v6, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iget-object v8, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-direct {v6, v8, v1, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v6

    .line 349
    :cond_7
    if-eqz v5, :cond_8

    .line 350
    new-instance v6, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iget-object v8, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iget-object v9, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-direct {v6, v8, v9, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v6

    .line 352
    :cond_8
    return-object p0

    .line 331
    .end local v0    # "vi":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end local v1    # "ci":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end local v2    # "vf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "cf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "viDiff":Z
    .end local v5    # "filterDiff":Z
    .end local v7    # "ciDiff":Z
    :cond_9
    :goto_3
    return-object p0
.end method

.method public withValueFilter(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;"
        }
    .end annotation

    .line 434
    .local p1, "filter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    const-class v0, Ljava/lang/Void;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->CUSTOM:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .local v0, "incl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    goto :goto_1

    .line 435
    .end local v0    # "incl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    :cond_1
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 436
    .restart local v0    # "incl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    const/4 p1, 0x0

    .line 440
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentFilter:Ljava/lang/Class;

    invoke-static {v0, v1, p1, v2}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->construct(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v1

    return-object v1
.end method

.method public withValueInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 4
    .param p1, "incl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 416
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueFilter:Ljava/lang/Class;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentFilter:Ljava/lang/Class;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Ljava/lang/Class;Ljava/lang/Class;)V

    :goto_0
    return-object v0
.end method
