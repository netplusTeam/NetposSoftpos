.class public final Lorg/jdom2/xpath/XPathHelper;
.super Ljava/lang/Object;
.source "XPathHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method public static getAbsolutePath(Lorg/jdom2/Attribute;)Ljava/lang/String;
    .locals 4
    .param p0, "to"    # Lorg/jdom2/Attribute;

    .line 547
    if-eqz p0, :cond_3

    .line 552
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v0

    .line 553
    .local v0, "t":Lorg/jdom2/Element;
    if-eqz v0, :cond_2

    .line 557
    move-object v1, v0

    .line 558
    .local v1, "r":Lorg/jdom2/Element;
    :goto_0
    invoke-virtual {v1}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 559
    invoke-virtual {v1}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v1

    goto :goto_0

    .line 561
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-static {v1, v2}, Lorg/jdom2/xpath/XPathHelper;->getSingleStep(Lorg/jdom2/NamespaceAware;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 565
    if-eq v0, v1, :cond_1

    .line 566
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-static {v1, v0, v2}, Lorg/jdom2/xpath/XPathHelper;->getRelativeElementPath(Lorg/jdom2/Element;Lorg/jdom2/Parent;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 569
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-static {p0, v2}, Lorg/jdom2/xpath/XPathHelper;->getSingleStep(Lorg/jdom2/NamespaceAware;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 554
    .end local v1    # "r":Lorg/jdom2/Element;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create a path to detached target"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 548
    .end local v0    # "t":Lorg/jdom2/Element;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot create a path to a null target"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAbsolutePath(Lorg/jdom2/Content;)Ljava/lang/String;
    .locals 5
    .param p0, "to"    # Lorg/jdom2/Content;

    .line 501
    if-eqz p0, :cond_6

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    .local v0, "sb":Ljava/lang/StringBuilder;
    instance-of v1, p0, Lorg/jdom2/Element;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lorg/jdom2/Element;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jdom2/Content;->getParentElement()Lorg/jdom2/Element;

    move-result-object v1

    .line 510
    .local v1, "t":Lorg/jdom2/Element;
    :goto_0
    const-string v2, "/"

    if-nez v1, :cond_2

    .line 511
    invoke-virtual {p0}, Lorg/jdom2/Content;->getParent()Lorg/jdom2/Parent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 516
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-static {p0, v0}, Lorg/jdom2/xpath/XPathHelper;->getSingleStep(Lorg/jdom2/NamespaceAware;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 512
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot create a path to detached target"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 520
    :cond_2
    move-object v3, v1

    .line 521
    .local v3, "r":Lorg/jdom2/Element;
    :goto_1
    invoke-virtual {v3}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 522
    invoke-virtual {v3}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v3

    goto :goto_1

    .line 524
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-static {v3, v0}, Lorg/jdom2/xpath/XPathHelper;->getSingleStep(Lorg/jdom2/NamespaceAware;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 526
    if-eq v3, v1, :cond_4

    .line 527
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-static {v3, v1, v0}, Lorg/jdom2/xpath/XPathHelper;->getRelativeElementPath(Lorg/jdom2/Element;Lorg/jdom2/Parent;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 530
    :cond_4
    if-eq v1, p0, :cond_5

    .line 531
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-static {p0, v0}, Lorg/jdom2/xpath/XPathHelper;->getSingleStep(Lorg/jdom2/NamespaceAware;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 534
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 502
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "t":Lorg/jdom2/Element;
    .end local v3    # "r":Lorg/jdom2/Element;
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot create a path to a null target"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getPositionPath(Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "node"    # Ljava/lang/Object;
    .param p2, "pathToken"    # Ljava/lang/String;
    .param p3, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 150
    .local p1, "siblings":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    if-eqz p1, :cond_3

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "position":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 155
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 160
    :cond_1
    const/4 v2, 0x1

    if-gt v0, v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    :cond_2
    const/16 v2, 0x5b

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    .end local v0    # "position":I
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3
    return-object p3
.end method

.method private static getRelativeElementPath(Lorg/jdom2/Element;Lorg/jdom2/Parent;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 7
    .param p0, "from"    # Lorg/jdom2/Element;
    .param p1, "to"    # Lorg/jdom2/Parent;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 270
    if-ne p0, p1, :cond_0

    .line 271
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    return-object p2

    .line 278
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v0, "tostack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jdom2/Parent;>;"
    move-object v1, p1

    .line 280
    .local v1, "p":Lorg/jdom2/Parent;
    :goto_0
    if-eqz v1, :cond_1

    if-eq v1, p0, :cond_1

    .line 281
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-interface {v1}, Lorg/jdom2/Parent;->getParent()Lorg/jdom2/Parent;

    move-result-object v1

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 288
    .local v2, "pos":I
    if-eq v1, p0, :cond_4

    .line 293
    move-object v3, p0

    .line 294
    .local v3, "f":Lorg/jdom2/Parent;
    const/4 v4, 0x0

    .line 296
    .local v4, "fcnt":I
    :goto_1
    if-eqz v3, :cond_2

    invoke-static {v3, v0}, Lorg/jdom2/xpath/XPathHelper;->locate(Lorg/jdom2/Parent;Ljava/util/List;)I

    move-result v5

    move v2, v5

    if-gez v5, :cond_2

    .line 299
    add-int/lit8 v4, v4, 0x1

    .line 300
    invoke-interface {v3}, Lorg/jdom2/Parent;->getParent()Lorg/jdom2/Parent;

    move-result-object v3

    goto :goto_1

    .line 302
    :cond_2
    if-eqz v3, :cond_3

    .line 308
    :goto_2
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_4

    .line 309
    const-string v5, "../"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 303
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The \'from\' and \'to\' Element have no common ancestor."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 314
    .end local v3    # "f":Lorg/jdom2/Parent;
    .end local v4    # "fcnt":I
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_5

    .line 315
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/NamespaceAware;

    invoke-static {v3, p2}, Lorg/jdom2/xpath/XPathHelper;->getSingleStep(Lorg/jdom2/NamespaceAware;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 316
    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 319
    :cond_5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 320
    return-object p2
.end method

.method public static getRelativePath(Lorg/jdom2/Attribute;Lorg/jdom2/Attribute;)Ljava/lang/String;
    .locals 3
    .param p0, "from"    # Lorg/jdom2/Attribute;
    .param p1, "to"    # Lorg/jdom2/Attribute;

    .line 437
    if-eqz p0, :cond_3

    .line 441
    if-eqz p1, :cond_2

    .line 445
    if-ne p0, p1, :cond_0

    .line 446
    const-string v0, "."

    return-object v0

    .line 449
    :cond_0
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v0

    .line 450
    .local v0, "f":Lorg/jdom2/Element;
    if-eqz v0, :cond_1

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "../"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, p1}, Lorg/jdom2/xpath/XPathHelper;->getRelativePath(Lorg/jdom2/Content;Lorg/jdom2/Attribute;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 451
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create a path from a detached attrbibute"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 442
    .end local v0    # "f":Lorg/jdom2/Element;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot create a path to a null target"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot create a path from a null \'from\'"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRelativePath(Lorg/jdom2/Attribute;Lorg/jdom2/Content;)Ljava/lang/String;
    .locals 3
    .param p0, "from"    # Lorg/jdom2/Attribute;
    .param p1, "to"    # Lorg/jdom2/Content;

    .line 472
    if-eqz p0, :cond_3

    .line 476
    if-eqz p1, :cond_2

    .line 480
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v0

    .line 481
    .local v0, "f":Lorg/jdom2/Element;
    if-eqz v0, :cond_1

    .line 485
    if-ne v0, p1, :cond_0

    .line 486
    const-string v1, ".."

    return-object v1

    .line 488
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "../"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, p1}, Lorg/jdom2/xpath/XPathHelper;->getRelativePath(Lorg/jdom2/Content;Lorg/jdom2/Content;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 482
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create a path from a detached attrbibute"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 477
    .end local v0    # "f":Lorg/jdom2/Element;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot create a path to a null target"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot create a path from a null \'from\'"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRelativePath(Lorg/jdom2/Content;Lorg/jdom2/Attribute;)Ljava/lang/String;
    .locals 3
    .param p0, "from"    # Lorg/jdom2/Content;
    .param p1, "to"    # Lorg/jdom2/Attribute;

    .line 403
    if-eqz p0, :cond_2

    .line 407
    if-eqz p1, :cond_1

    .line 411
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v0

    .line 412
    .local v0, "t":Lorg/jdom2/Element;
    if-eqz v0, :cond_0

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Lorg/jdom2/xpath/XPathHelper;->getRelativePath(Lorg/jdom2/Content;Lorg/jdom2/Content;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-static {p1, v1}, Lorg/jdom2/xpath/XPathHelper;->getSingleStep(Lorg/jdom2/NamespaceAware;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 413
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create a path to detached Attribute"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 408
    .end local v0    # "t":Lorg/jdom2/Element;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot create a path to a null Attribute"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot create a path from a null Content"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRelativePath(Lorg/jdom2/Content;Lorg/jdom2/Content;)Ljava/lang/String;
    .locals 5
    .param p0, "from"    # Lorg/jdom2/Content;
    .param p1, "to"    # Lorg/jdom2/Content;

    .line 357
    if-eqz p0, :cond_6

    .line 361
    if-eqz p1, :cond_5

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-ne p0, p1, :cond_0

    .line 367
    const-string v1, "."

    return-object v1

    .line 369
    :cond_0
    instance-of v1, p0, Lorg/jdom2/Element;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lorg/jdom2/Element;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/jdom2/Content;->getParentElement()Lorg/jdom2/Element;

    move-result-object v1

    .line 371
    .local v1, "efrom":Lorg/jdom2/Element;
    :goto_0
    if-eq p0, v1, :cond_2

    .line 372
    const-string v2, "../"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_2
    instance-of v2, p1, Lorg/jdom2/Element;

    if-eqz v2, :cond_3

    .line 375
    move-object v2, p1

    check-cast v2, Lorg/jdom2/Element;

    invoke-static {v1, v2, v0}, Lorg/jdom2/xpath/XPathHelper;->getRelativeElementPath(Lorg/jdom2/Element;Lorg/jdom2/Parent;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 377
    :cond_3
    invoke-virtual {p1}, Lorg/jdom2/Content;->getParent()Lorg/jdom2/Parent;

    move-result-object v2

    .line 378
    .local v2, "telement":Lorg/jdom2/Parent;
    if-eqz v2, :cond_4

    .line 382
    invoke-static {v1, v2, v0}, Lorg/jdom2/xpath/XPathHelper;->getRelativeElementPath(Lorg/jdom2/Element;Lorg/jdom2/Parent;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 383
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-static {p1, v0}, Lorg/jdom2/xpath/XPathHelper;->getSingleStep(Lorg/jdom2/NamespaceAware;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 386
    .end local v2    # "telement":Lorg/jdom2/Parent;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 379
    .restart local v2    # "telement":Lorg/jdom2/Parent;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot get a relative XPath to detached content."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 362
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "efrom":Lorg/jdom2/Element;
    .end local v2    # "telement":Lorg/jdom2/Parent;
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot create a path to a null target"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot create a path from a null target"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final getSingleStep(Lorg/jdom2/NamespaceAware;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 8
    .param p0, "nsa"    # Lorg/jdom2/NamespaceAware;
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .line 180
    instance-of v0, p0, Lorg/jdom2/Content;

    const-string v1, "\']"

    const-string v2, "\' and namespace-uri() = \'"

    if-eqz v0, :cond_b

    .line 182
    move-object v0, p0

    check-cast v0, Lorg/jdom2/Content;

    .line 184
    .local v0, "content":Lorg/jdom2/Content;
    invoke-virtual {v0}, Lorg/jdom2/Content;->getParent()Lorg/jdom2/Parent;

    move-result-object v3

    .line 186
    .local v3, "pnt":Lorg/jdom2/Parent;
    instance-of v4, v0, Lorg/jdom2/Text;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 188
    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/jdom2/filter/Filters;->text()Lorg/jdom2/filter/Filter;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/jdom2/Parent;->getContent(Lorg/jdom2/filter/Filter;)Ljava/util/List;

    move-result-object v5

    :goto_0
    move-object v1, v5

    .line 190
    .local v1, "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    const-string/jumbo v2, "text()"

    invoke-static {v0, v1, v2, p1}, Lorg/jdom2/xpath/XPathHelper;->getPositionPath(Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v2

    return-object v2

    .line 192
    .end local v1    # "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_1
    instance-of v4, v0, Lorg/jdom2/Comment;

    if-eqz v4, :cond_3

    .line 194
    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/jdom2/filter/Filters;->comment()Lorg/jdom2/filter/Filter;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/jdom2/Parent;->getContent(Lorg/jdom2/filter/Filter;)Ljava/util/List;

    move-result-object v5

    :goto_1
    move-object v1, v5

    .line 196
    .restart local v1    # "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    const-string v2, "comment()"

    invoke-static {v0, v1, v2, p1}, Lorg/jdom2/xpath/XPathHelper;->getPositionPath(Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v2

    return-object v2

    .line 198
    .end local v1    # "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_3
    instance-of v4, v0, Lorg/jdom2/ProcessingInstruction;

    if-eqz v4, :cond_5

    .line 200
    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lorg/jdom2/filter/Filters;->processinginstruction()Lorg/jdom2/filter/Filter;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/jdom2/Parent;->getContent(Lorg/jdom2/filter/Filter;)Ljava/util/List;

    move-result-object v5

    :goto_2
    move-object v1, v5

    .line 202
    .restart local v1    # "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    const-string v2, "processing-instruction()"

    invoke-static {v0, v1, v2, p1}, Lorg/jdom2/xpath/XPathHelper;->getPositionPath(Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v2

    return-object v2

    .line 205
    .end local v1    # "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_5
    instance-of v4, v0, Lorg/jdom2/Element;

    if-eqz v4, :cond_7

    move-object v4, v0

    check-cast v4, Lorg/jdom2/Element;

    invoke-virtual {v4}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    sget-object v6, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-ne v4, v6, :cond_7

    .line 210
    move-object v1, v0

    check-cast v1, Lorg/jdom2/Element;

    invoke-virtual {v1}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "ename":Ljava/lang/String;
    instance-of v2, v3, Lorg/jdom2/Element;

    if-eqz v2, :cond_6

    move-object v2, v3

    check-cast v2, Lorg/jdom2/Element;

    invoke-virtual {v2, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    :cond_6
    move-object v2, v5

    .line 213
    .local v2, "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-static {v0, v2, v1, p1}, Lorg/jdom2/xpath/XPathHelper;->getPositionPath(Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v4

    return-object v4

    .line 215
    .end local v1    # "ename":Ljava/lang/String;
    .end local v2    # "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_7
    instance-of v4, v0, Lorg/jdom2/Element;

    if-eqz v4, :cond_9

    .line 220
    move-object v4, v0

    check-cast v4, Lorg/jdom2/Element;

    .line 224
    .local v4, "emt":Lorg/jdom2/Element;
    instance-of v6, v3, Lorg/jdom2/Element;

    if-eqz v6, :cond_8

    move-object v5, v3

    check-cast v5, Lorg/jdom2/Element;

    invoke-virtual {v4}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v5

    .line 226
    .local v5, "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*[local-name() = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lorg/jdom2/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "xps":Ljava/lang/String;
    invoke-static {v0, v5, v1, p1}, Lorg/jdom2/xpath/XPathHelper;->getPositionPath(Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v2

    return-object v2

    .line 232
    .end local v1    # "xps":Ljava/lang/String;
    .end local v4    # "emt":Lorg/jdom2/Element;
    .end local v5    # "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_9
    if-nez v3, :cond_a

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_a
    invoke-interface {v3}, Lorg/jdom2/Parent;->getContent()Ljava/util/List;

    move-result-object v1

    .line 234
    .local v1, "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_3
    const-string v2, "node()"

    invoke-static {v0, v1, v2, p1}, Lorg/jdom2/xpath/XPathHelper;->getPositionPath(Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v2

    return-object v2

    .line 237
    .end local v0    # "content":Lorg/jdom2/Content;
    .end local v1    # "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v3    # "pnt":Lorg/jdom2/Parent;
    :cond_b
    instance-of v0, p0, Lorg/jdom2/Attribute;

    if-eqz v0, :cond_d

    .line 238
    move-object v0, p0

    check-cast v0, Lorg/jdom2/Attribute;

    .line 239
    .local v0, "att":Lorg/jdom2/Attribute;
    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    sget-object v4, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-ne v3, v4, :cond_c

    .line 240
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 242
    :cond_c
    const-string v3, "@*[local-name() = \'"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .end local v0    # "att":Lorg/jdom2/Attribute;
    :cond_d
    :goto_4
    return-object p1
.end method

.method private static locate(Lorg/jdom2/Parent;Ljava/util/List;)I
    .locals 2
    .param p0, "f"    # Lorg/jdom2/Parent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/Parent;",
            "Ljava/util/List<",
            "Lorg/jdom2/Parent;",
            ">;)I"
        }
    .end annotation

    .line 334
    .local p1, "tostack":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Parent;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 335
    .local v0, "ret":I
    :cond_0
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 336
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 337
    return v0

    .line 340
    :cond_1
    return v1
.end method
