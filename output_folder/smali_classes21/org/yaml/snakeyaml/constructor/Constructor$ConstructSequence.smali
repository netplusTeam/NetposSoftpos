.class public Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;
.super Ljava/lang/Object;
.source "Constructor.java"

# interfaces
.implements Lorg/yaml/snakeyaml/constructor/Construct;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/Constructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConstructSequence"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/constructor/Constructor;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/constructor/Constructor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/yaml/snakeyaml/constructor/Constructor;

    .line 524
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final wrapIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 612
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    return-object p1

    .line 615
    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 616
    const-class v0, Ljava/lang/Integer;

    return-object v0

    .line 618
    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 619
    const-class v0, Ljava/lang/Float;

    return-object v0

    .line 621
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 622
    const-class v0, Ljava/lang/Double;

    return-object v0

    .line 624
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 625
    const-class v0, Ljava/lang/Boolean;

    return-object v0

    .line 627
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 628
    const-class v0, Ljava/lang/Long;

    return-object v0

    .line 630
    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    .line 631
    const-class v0, Ljava/lang/Character;

    return-object v0

    .line 633
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 634
    const-class v0, Ljava/lang/Short;

    return-object v0

    .line 636
    :cond_7
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_8

    .line 637
    const-class v0, Ljava/lang/Byte;

    return-object v0

    .line 639
    :cond_8
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected primitive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .locals 13
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 527
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 528
    .local v0, "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    const-class v1, Ljava/util/Set;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 532
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructSet(Lorg/yaml/snakeyaml/nodes/SequenceNode;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 530
    :cond_0
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v2, "Set cannot be recursive."

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 534
    :cond_1
    const-class v1, Ljava/util/Collection;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 535
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 536
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->newList(Lorg/yaml/snakeyaml/nodes/SequenceNode;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 538
    :cond_2
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructSequence(Lorg/yaml/snakeyaml/nodes/SequenceNode;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 540
    :cond_3
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 541
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 542
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/yaml/snakeyaml/constructor/Constructor;->createArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 544
    :cond_4
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructArray(Lorg/yaml/snakeyaml/nodes/SequenceNode;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 548
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 549
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 550
    .local v1, "possibleConstructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<*>;>;"
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 551
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 550
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_7

    aget-object v6, v2, v5

    .line 552
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-ne v7, v8, :cond_6

    .line 553
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 556
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 557
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 558
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    .line 559
    .local v2, "argumentList":[Ljava/lang/Object;
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Constructor;

    .line 560
    .local v4, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x0

    .line 561
    .local v5, "index":I
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/yaml/snakeyaml/nodes/Node;

    .line 562
    .local v7, "argumentNode":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    aget-object v8, v8, v5

    .line 564
    .local v8, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7, v8}, Lorg/yaml/snakeyaml/nodes/Node;->setType(Ljava/lang/Class;)V

    .line 565
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "index":I
    .local v9, "index":I
    iget-object v10, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v10, v7}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v2, v5

    .line 566
    .end local v7    # "argumentNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v8    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move v5, v9

    goto :goto_1

    .line 569
    .end local v9    # "index":I
    .restart local v5    # "index":I
    :cond_8
    :try_start_0
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 570
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 571
    :catch_0
    move-exception v3

    .line 572
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v6, v3}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 577
    .end local v2    # "argumentList":[Ljava/lang/Object;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "index":I
    :cond_9
    iget-object v2, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v2, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructSequence(Lorg/yaml/snakeyaml/nodes/SequenceNode;)Ljava/util/List;

    move-result-object v2

    .line 578
    .local v2, "argumentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Class;

    .line 579
    .local v4, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 580
    .restart local v5    # "index":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 581
    .local v7, "parameter":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v4, v5

    .line 582
    nop

    .end local v7    # "parameter":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    .line 583
    goto :goto_2

    .line 585
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Constructor;

    .line 586
    .local v7, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 587
    .local v8, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v9, 0x1

    .line 588
    .local v9, "foundConstructor":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    array-length v11, v8

    if-ge v10, v11, :cond_c

    .line 589
    aget-object v11, v8, v10

    invoke-direct {p0, v11}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->wrapIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v11

    aget-object v12, v4, v10

    invoke-virtual {v11, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 590
    const/4 v9, 0x0

    .line 591
    goto :goto_5

    .line 588
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 594
    .end local v10    # "i":I
    :cond_c
    :goto_5
    if-eqz v9, :cond_d

    .line 596
    :try_start_1
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 597
    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 598
    :catch_1
    move-exception v3

    .line 599
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v6, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v6, v3}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 602
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v9    # "foundConstructor":Z
    :cond_d
    goto :goto_3

    .line 604
    .end local v2    # "argumentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v5    # "index":I
    :cond_e
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No suitable constructor with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 605
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " arguments found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 606
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public construct2ndStep(Lorg/yaml/snakeyaml/nodes/Node;Ljava/lang/Object;)V
    .locals 3
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .param p2, "object"    # Ljava/lang/Object;

    .line 644
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 645
    .local v0, "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    const-class v1, Ljava/util/List;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    move-object v1, p2

    check-cast v1, Ljava/util/List;

    .line 647
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v2, v0, v1}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructSequenceStep2(Lorg/yaml/snakeyaml/nodes/SequenceNode;Ljava/util/Collection;)V

    .line 648
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1, v0, p2}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructArrayStep2(Lorg/yaml/snakeyaml/nodes/SequenceNode;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    :goto_0
    return-void

    .line 651
    :cond_1
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v2, "Immutable objects cannot be recursive."

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
