.class public Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;
.super Lorg/yaml/snakeyaml/constructor/AbstractConstruct;
.source "Constructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/Constructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConstructScalar"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/constructor/Constructor;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/constructor/Constructor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/yaml/snakeyaml/constructor/Constructor;

    .line 356
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/AbstractConstruct;-><init>()V

    return-void
.end method

.method private constructStandardJavaInstance(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/Object;
    .locals 7
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "node"    # Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 431
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_0

    .line 432
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->STR:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 433
    .local v0, "stringConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    .line 434
    .local v0, "result":Ljava/lang/Object;
    goto/16 :goto_d

    .end local v0    # "result":Ljava/lang/Object;
    :cond_0
    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    goto/16 :goto_c

    .line 437
    :cond_1
    const-class v0, Ljava/lang/Character;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_19

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    goto/16 :goto_a

    .line 448
    :cond_2
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 449
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v3, Lorg/yaml/snakeyaml/nodes/Tag;->TIMESTAMP:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 450
    .local v0, "dateConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    .line 451
    .local v3, "date":Ljava/util/Date;
    const-class v4, Ljava/util/Date;

    if-ne p1, v4, :cond_3

    .line 452
    move-object v1, v3

    move-object v0, v1

    .local v1, "result":Ljava/lang/Object;
    goto :goto_0

    .line 455
    .end local v1    # "result":Ljava/lang/Object;
    :cond_3
    :try_start_0
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 456
    .local v4, "constr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v4    # "constr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v1    # "result":Ljava/lang/Object;
    move-object v0, v1

    .line 463
    .end local v1    # "result":Ljava/lang/Object;
    .end local v3    # "date":Ljava/util/Date;
    .local v0, "result":Ljava/lang/Object;
    :goto_0
    goto/16 :goto_d

    .line 459
    .local v0, "dateConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    .restart local v3    # "date":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot construct: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 457
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 458
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1

    .line 463
    .end local v0    # "dateConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "date":Ljava/util/Date;
    :cond_4
    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_15

    const-class v0, Ljava/lang/Double;

    if-eq p1, v0, :cond_15

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_15

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_15

    const-class v0, Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_5

    goto/16 :goto_7

    .line 474
    :cond_5
    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_c

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_c

    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_c

    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_c

    const-class v0, Ljava/math/BigInteger;

    if-eq p1, v0, :cond_c

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_c

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_c

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_c

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    goto/16 :goto_1

    .line 491
    :cond_6
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 492
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "enumValueName":Ljava/lang/String;
    :try_start_1
    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 498
    .local v1, "result":Ljava/lang/Object;
    nop

    .line 499
    .end local v0    # "enumValueName":Ljava/lang/String;
    move-object v0, v1

    goto/16 :goto_d

    .line 495
    .end local v1    # "result":Ljava/lang/Object;
    .restart local v0    # "enumValueName":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 496
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find enum value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' for enum class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 497
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 499
    .end local v0    # "enumValueName":Ljava/lang/String;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_7
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 500
    new-instance v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;-><init>()V

    .line 501
    .local v0, "contr":Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;
    invoke-virtual {v0, p2}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    .line 502
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlTimestamp;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 503
    .local v0, "result":Ljava/lang/Object;
    goto/16 :goto_d

    .end local v0    # "result":Ljava/lang/Object;
    :cond_8
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 505
    new-instance v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlFloat;

    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlFloat;-><init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V

    .line 506
    .local v0, "contr":Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlFloat;
    invoke-virtual {v0, p2}, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlFloat;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    .line 507
    .local v0, "result":Ljava/lang/Object;
    goto/16 :goto_d

    .end local v0    # "result":Ljava/lang/Object;
    :cond_9
    const-class v0, Ljava/util/UUID;

    if-ne v0, p1, :cond_a

    .line 508
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    goto/16 :goto_d

    .line 510
    .end local v0    # "result":Ljava/lang/Object;
    :cond_a
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 511
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    goto/16 :goto_d

    .line 513
    .end local v0    # "result":Ljava/lang/Object;
    :cond_b
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_c
    :goto_1
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->INT:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 478
    .local v0, "intConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v1

    .line 479
    .local v1, "result":Ljava/lang/Object;
    const-class v2, Ljava/lang/Byte;

    if-eq p1, v2, :cond_14

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_d

    goto :goto_5

    .line 481
    :cond_d
    const-class v2, Ljava/lang/Short;

    if-eq p1, v2, :cond_13

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_e

    goto :goto_4

    .line 483
    :cond_e
    const-class v2, Ljava/lang/Integer;

    if-eq p1, v2, :cond_12

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_f

    goto :goto_3

    .line 485
    :cond_f
    const-class v2, Ljava/lang/Long;

    if-eq p1, v2, :cond_11

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_10

    goto :goto_2

    .line 489
    :cond_10
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    move-object v0, v1

    goto :goto_6

    .line 486
    :cond_11
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    move-object v0, v1

    goto :goto_6

    .line 484
    :cond_12
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    goto :goto_6

    .line 482
    :cond_13
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1

    move-object v0, v1

    goto :goto_6

    .line 480
    :cond_14
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v1

    move-object v0, v1

    .line 491
    .end local v1    # "result":Ljava/lang/Object;
    .local v0, "result":Ljava/lang/Object;
    :goto_6
    goto/16 :goto_d

    .line 465
    .end local v0    # "result":Ljava/lang/Object;
    :cond_15
    :goto_7
    const-class v0, Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_16

    .line 466
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .restart local v0    # "result":Ljava/lang/Object;
    goto/16 :goto_d

    .line 468
    .end local v0    # "result":Ljava/lang/Object;
    :cond_16
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->FLOAT:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 469
    .local v0, "doubleConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v1

    .line 470
    .restart local v1    # "result":Ljava/lang/Object;
    const-class v2, Ljava/lang/Float;

    if-eq p1, v2, :cond_18

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_17

    goto :goto_8

    :cond_17
    move-object v0, v1

    goto :goto_9

    .line 471
    :cond_18
    :goto_8
    move-object v2, v1

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object v0, v1

    .line 473
    .end local v1    # "result":Ljava/lang/Object;
    .local v0, "result":Ljava/lang/Object;
    :goto_9
    goto :goto_d

    .line 438
    .end local v0    # "result":Ljava/lang/Object;
    :cond_19
    :goto_a
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v3, Lorg/yaml/snakeyaml/nodes/Tag;->STR:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 439
    .local v0, "charConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 440
    .local v3, "ch":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1a

    .line 441
    const/4 v1, 0x0

    move-object v0, v1

    .restart local v1    # "result":Ljava/lang/Object;
    goto :goto_b

    .line 442
    .end local v1    # "result":Ljava/lang/Object;
    :cond_1a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v2, :cond_1b

    .line 446
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    move-object v0, v1

    .line 448
    .end local v3    # "ch":Ljava/lang/String;
    .local v0, "result":Ljava/lang/Object;
    :goto_b
    goto :goto_d

    .line 443
    .local v0, "charConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    .restart local v3    # "ch":Ljava/lang/String;
    :cond_1b
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid node Character: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'; length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 444
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 435
    .end local v0    # "charConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    .end local v3    # "ch":Ljava/lang/String;
    :cond_1c
    :goto_c
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v0, v0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->BOOL:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 436
    .local v0, "boolConstructor":Lorg/yaml/snakeyaml/constructor/Construct;
    invoke-interface {v0, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    .line 437
    .local v0, "result":Ljava/lang/Object;
    nop

    .line 516
    :goto_d
    return-object v0
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .locals 14
    .param p1, "nnode"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 358
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 359
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 362
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v3, v1, v0, v2}, Lorg/yaml/snakeyaml/constructor/Constructor;->newInstance(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Node;Z)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 363
    :catch_0
    move-exception v3

    .line 367
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_5

    const-class v3, Ljava/lang/String;

    if-eq v1, v3, :cond_5

    const-class v3, Ljava/lang/Number;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_5

    const-class v3, Ljava/lang/Boolean;

    if-eq v1, v3, :cond_5

    const-class v3, Ljava/util/Date;

    .line 368
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_5

    const-class v3, Ljava/lang/Character;

    if-eq v1, v3, :cond_5

    const-class v3, Ljava/math/BigInteger;

    if-eq v1, v3, :cond_5

    const-class v3, Ljava/math/BigDecimal;

    if-eq v1, v3, :cond_5

    const-class v3, Ljava/lang/Enum;

    .line 370
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lorg/yaml/snakeyaml/nodes/Tag;->BINARY:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 371
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-class v3, Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_5

    const-class v3, Ljava/util/UUID;

    if-ne v1, v3, :cond_0

    goto/16 :goto_2

    .line 377
    :cond_0
    nop

    .line 378
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 379
    .local v3, "javaConstructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x0

    .line 380
    .local v4, "oneArgCount":I
    const/4 v5, 0x0

    .line 381
    .local v5, "javaConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    array-length v6, v3

    move v7, v2

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v6, :cond_2

    aget-object v9, v3, v7

    .line 382
    .local v9, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    array-length v10, v10

    if-ne v10, v8, :cond_1

    .line 383
    add-int/lit8 v4, v4, 0x1

    .line 384
    move-object v5, v9

    .line 381
    .end local v9    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 388
    :cond_2
    if-nez v5, :cond_3

    .line 390
    :try_start_1
    iget-object v6, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v6, v1, v0, v2}, Lorg/yaml/snakeyaml/constructor/Constructor;->newInstance(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Node;Z)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 391
    :catch_1
    move-exception v2

    .line 392
    .local v2, "ie":Ljava/lang/InstantiationException;
    new-instance v6, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No single argument constructor found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 393
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 395
    .end local v2    # "ie":Ljava/lang/InstantiationException;
    :cond_3
    const-string v6, "Can\'t construct a java object for scalar "

    if-ne v4, v8, :cond_4

    .line 396
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-direct {p0, v7, v0}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->constructStandardJavaInstance(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/Object;

    move-result-object v7

    .local v7, "argument":Ljava/lang/Object;
    goto :goto_1

    .line 405
    .end local v7    # "argument":Ljava/lang/Object;
    :cond_4
    iget-object v7, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v7, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructScalar(Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/String;

    move-result-object v7

    .line 407
    .restart local v7    # "argument":Ljava/lang/Object;
    :try_start_2
    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v2

    invoke-virtual {v1, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v5, v9

    .line 412
    nop

    .line 415
    :goto_1
    :try_start_3
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 416
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v2

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 422
    .local v2, "result":Ljava/lang/Object;
    goto :goto_3

    .line 417
    .end local v2    # "result":Ljava/lang/Object;
    :catch_2
    move-exception v2

    move-object v13, v2

    .line 418
    .local v13, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 419
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "; exception="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 420
    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 421
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v12

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Throwable;)V

    throw v2

    .line 408
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 409
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 410
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "; No String constructor found. Exception="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 411
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 374
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "javaConstructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "oneArgCount":I
    .end local v5    # "javaConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "argument":Ljava/lang/Object;
    :cond_5
    :goto_2
    invoke-direct {p0, v1, v0}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;->constructStandardJavaInstance(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/Object;

    move-result-object v2

    .line 424
    .local v2, "result":Ljava/lang/Object;
    :goto_3
    return-object v2
.end method
