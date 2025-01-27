.class Lbsh/Reflect;
.super Ljava/lang/Object;
.source "Reflect.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static accessorName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "getorset"    # Ljava/lang/String;
    .param p1, "propName"    # Ljava/lang/String;

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 743
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 744
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addCandidates([Ljava/lang/reflect/Method;Ljava/lang/String;IZLjava/util/Vector;)Ljava/util/Vector;
    .locals 3
    .param p0, "methods"    # [Ljava/lang/reflect/Method;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "numArgs"    # I
    .param p3, "publicOnly"    # Z
    .param p4, "candidates"    # Ljava/util/Vector;

    .line 569
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 571
    aget-object v1, p0, v0

    .line 572
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 573
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-ne v2, p2, :cond_1

    if-eqz p3, :cond_0

    .line 574
    invoke-static {v1}, Lbsh/Reflect;->isPublic(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 576
    :cond_0
    invoke-virtual {p4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 569
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    .end local v0    # "i":I
    :cond_2
    return-object p4
.end method

.method private static cantFindConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Lbsh/ReflectError;
    .locals 3
    .param p0, "clas"    # Ljava/lang/Class;
    .param p1, "types"    # [Ljava/lang/Class;

    .line 943
    array-length v0, p1

    if-nez v0, :cond_0

    .line 944
    new-instance v0, Lbsh/ReflectError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find default constructor for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/ReflectError;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 947
    :cond_0
    new-instance v0, Lbsh/ReflectError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 949
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lbsh/StringUtil;->methodString(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 950
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/ReflectError;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static checkFoundStaticMethod(Ljava/lang/reflect/Method;ZLjava/lang/Class;)V
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "staticOnly"    # Z
    .param p2, "clas"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 932
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lbsh/Reflect;->isStatic(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 933
    :cond_0
    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot reach instance method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 936
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 935
    invoke-static {v2, v3}, Lbsh/StringUtil;->methodString(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from static context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 937
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_1
    :goto_0
    return-void
.end method

.method static constructObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "clas"    # Ljava/lang/Class;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ReflectError;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 594
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_5

    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "obj":Ljava/lang/Object;
    invoke-static {p1}, Lbsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v1

    .line 600
    .local v1, "types":[Ljava/lang/Class;
    const/4 v2, 0x0

    .line 605
    .local v2, "con":Ljava/lang/reflect/Constructor;
    invoke-static {}, Lbsh/Capabilities;->haveAccessibility()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 606
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 608
    .local v3, "constructors":[Ljava/lang/reflect/Constructor;
    :goto_0
    sget-boolean v4, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 609
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Looking for most specific constructor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 610
    :cond_1
    invoke-static {v1, v3}, Lbsh/Reflect;->findMostSpecificConstructor([Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 611
    if-eqz v2, :cond_4

    .line 614
    invoke-static {v2}, Lbsh/Reflect;->isPublic(Ljava/lang/reflect/Constructor;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 616
    :try_start_0
    invoke-static {v2}, Lbsh/ReflectManager;->RMSetAccessible(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    .line 619
    :cond_2
    :goto_2
    invoke-static {p1}, Lbsh/Primitive;->unwrap([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 621
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v4

    .line 630
    nop

    .line 631
    if-eqz v0, :cond_3

    .line 634
    return-object v0

    .line 632
    :cond_3
    new-instance v4, Lbsh/ReflectError;

    const-string v5, "Couldn\'t construct the object"

    invoke-direct {v4, v5}, Lbsh/ReflectError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 628
    :catch_1
    move-exception v4

    .line 629
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lbsh/ReflectError;

    const-string v6, "The number of arguments was wrong"

    invoke-direct {v5, v6}, Lbsh/ReflectError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 624
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v4

    .line 625
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Lbsh/ReflectError;

    const-string v6, "We don\'t have permission to create an instance.Use setAccessibility(true) to enable access."

    invoke-direct {v5, v6}, Lbsh/ReflectError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 622
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v4

    .line 623
    .local v4, "e":Ljava/lang/InstantiationException;
    new-instance v5, Lbsh/ReflectError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is abstract "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lbsh/ReflectError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 612
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :cond_4
    invoke-static {p0, v1}, Lbsh/Reflect;->cantFindConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Lbsh/ReflectError;

    move-result-object v4

    throw v4

    .line 595
    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "types":[Ljava/lang/Class;
    .end local v2    # "con":Ljava/lang/reflect/Constructor;
    .end local v3    # "constructors":[Ljava/lang/reflect/Constructor;
    :cond_5
    new-instance v0, Lbsh/ReflectError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create instance of an interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/ReflectError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .param p0, "clas"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 346
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 347
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-static {v0}, Lbsh/ReflectManager;->RMSetAccessible(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    return-object v0

    .line 349
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 352
    :goto_0
    if-eqz p0, :cond_0

    .line 355
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 356
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    invoke-static {v0}, Lbsh/ReflectManager;->RMSetAccessible(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 357
    return-object v0

    .line 361
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v0

    .line 363
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static findMostSpecificConstructor([Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 2
    .param p0, "idealMatch"    # [Ljava/lang/Class;
    .param p1, "constructors"    # [Ljava/lang/reflect/Constructor;

    .line 645
    invoke-static {p0, p1}, Lbsh/Reflect;->findMostSpecificConstructorIndex([Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)I

    move-result v0

    .line 646
    .local v0, "match":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    aget-object v1, p1, v0

    :goto_0
    return-object v1
.end method

.method static findMostSpecificConstructorIndex([Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)I
    .locals 3
    .param p0, "idealMatch"    # [Ljava/lang/Class;
    .param p1, "constructors"    # [Ljava/lang/reflect/Constructor;

    .line 652
    array-length v0, p1

    new-array v0, v0, [[Ljava/lang/Class;

    .line 653
    .local v0, "candidates":[[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 654
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 653
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 656
    .end local v1    # "i":I
    :cond_0
    invoke-static {p0, v0}, Lbsh/Reflect;->findMostSpecificSignature([Ljava/lang/Class;[[Ljava/lang/Class;)I

    move-result v1

    return v1
.end method

.method static findMostSpecificMethod([Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 3
    .param p0, "idealMatch"    # [Ljava/lang/Class;
    .param p1, "methods"    # [Ljava/lang/reflect/Method;

    .line 675
    array-length v0, p1

    new-array v0, v0, [[Ljava/lang/Class;

    .line 676
    .local v0, "candidateSigs":[[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 677
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 676
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 679
    .end local v1    # "i":I
    :cond_0
    invoke-static {p0, v0}, Lbsh/Reflect;->findMostSpecificSignature([Ljava/lang/Class;[[Ljava/lang/Class;)I

    move-result v1

    .line 680
    .local v1, "match":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    aget-object v2, p1, v1

    :goto_1
    return-object v2
.end method

.method static findMostSpecificSignature([Ljava/lang/Class;[[Ljava/lang/Class;)I
    .locals 6
    .param p0, "idealMatch"    # [Ljava/lang/Class;
    .param p1, "candidates"    # [[Ljava/lang/Class;

    .line 707
    const/4 v0, 0x1

    .line 708
    .local v0, "round":I
    :goto_0
    const/4 v1, 0x4

    if-gt v0, v1, :cond_4

    .line 710
    const/4 v1, 0x0

    .line 711
    .local v1, "bestMatch":[Ljava/lang/Class;
    const/4 v2, -0x1

    .line 713
    .local v2, "bestMatchIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 715
    aget-object v4, p1, v3

    .line 720
    .local v4, "targetMatch":[Ljava/lang/Class;
    invoke-static {p0, v4, v0}, Lbsh/Types;->isSignatureAssignable([Ljava/lang/Class;[Ljava/lang/Class;I)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v1, :cond_0

    .line 723
    const/4 v5, 0x1

    invoke-static {v4, v1, v5}, Lbsh/Types;->isSignatureAssignable([Ljava/lang/Class;[Ljava/lang/Class;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 725
    invoke-static {v4, v1}, Lbsh/Types;->areSignaturesEqual([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 729
    :cond_0
    move-object v1, v4

    .line 730
    move v2, v3

    .line 713
    .end local v4    # "targetMatch":[Ljava/lang/Class;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 734
    .end local v3    # "i":I
    :cond_2
    if-eqz v1, :cond_3

    .line 735
    return v2

    .line 708
    .end local v1    # "bestMatch":[Ljava/lang/Class;
    .end local v2    # "bestMatchIndex":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 738
    .end local v0    # "round":I
    :cond_4
    const/4 v0, -0x1

    return v0
.end method

.method private static findOverloadedMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .locals 3
    .param p0, "baseClass"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "types"    # [Ljava/lang/Class;
    .param p3, "publicOnly"    # Z

    .line 474
    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Searching for method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 476
    invoke-static {p1, p2}, Lbsh/StringUtil;->methodString(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 477
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 479
    :cond_0
    array-length v0, p2

    invoke-static {p0, p1, v0, p3}, Lbsh/Reflect;->getCandidateMethods(Ljava/lang/Class;Ljava/lang/String;IZ)[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 482
    .local v0, "methods":[Ljava/lang/reflect/Method;
    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looking for most specific method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 484
    :cond_1
    invoke-static {p2, v0}, Lbsh/Reflect;->findMostSpecificMethod([Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 486
    .local v1, "method":Ljava/lang/reflect/Method;
    return-object v1
.end method

.method private static gatherMethodsRecursive(Ljava/lang/Class;Ljava/lang/String;IZLjava/util/Vector;)Ljava/util/Vector;
    .locals 3
    .param p0, "baseClass"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "numArgs"    # I
    .param p3, "publicOnly"    # Z
    .param p4, "candidates"    # Ljava/util/Vector;

    .line 535
    if-nez p4, :cond_0

    .line 536
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object p4, v0

    .line 542
    :cond_0
    if-eqz p3, :cond_1

    .line 543
    invoke-static {p0}, Lbsh/Reflect;->isPublic(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lbsh/Reflect;->addCandidates([Ljava/lang/reflect/Method;Ljava/lang/String;IZLjava/util/Vector;)Ljava/util/Vector;

    goto :goto_0

    .line 547
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lbsh/Reflect;->addCandidates([Ljava/lang/reflect/Method;Ljava/lang/String;IZLjava/util/Vector;)Ljava/util/Vector;

    .line 551
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 552
    .local v0, "intfs":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 553
    aget-object v2, v0, v1

    invoke-static {v2, p1, p2, p3, p4}, Lbsh/Reflect;->gatherMethodsRecursive(Ljava/lang/Class;Ljava/lang/String;IZLjava/util/Vector;)Ljava/util/Vector;

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 557
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 558
    .local v1, "superclass":Ljava/lang/Class;
    if-eqz v1, :cond_4

    .line 559
    invoke-static {v1, p1, p2, p3, p4}, Lbsh/Reflect;->gatherMethodsRecursive(Ljava/lang/Class;Ljava/lang/String;IZLjava/util/Vector;)Ljava/util/Vector;

    .line 562
    :cond_4
    return-object p4
.end method

.method public static getArrayBaseType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .param p0, "arrayClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ReflectError;
        }
    .end annotation

    .line 880
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 881
    :cond_0
    new-instance v0, Lbsh/ReflectError;

    const-string v1, "The class is not an array."

    invoke-direct {v0, v1}, Lbsh/ReflectError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getArrayDimensions(Ljava/lang/Class;)I
    .locals 2
    .param p0, "arrayClass"    # Ljava/lang/Class;

    .line 867
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 868
    const/4 v0, 0x0

    return v0

    .line 870
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static getCandidateMethods(Ljava/lang/Class;Ljava/lang/String;IZ)[Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "baseClass"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "numArgs"    # I
    .param p3, "publicOnly"    # Z

    .line 506
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lbsh/Reflect;->gatherMethodsRecursive(Ljava/lang/Class;Ljava/lang/String;IZLjava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    .line 510
    .local v0, "candidates":Ljava/util/Vector;
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Method;

    .line 511
    .local v1, "ma":[Ljava/lang/reflect/Method;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 512
    return-object v1
.end method

.method private static getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 4
    .param p0, "clas"    # Ljava/lang/Class;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "staticOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;,
            Lbsh/ReflectError;
        }
    .end annotation

    .line 254
    :try_start_0
    invoke-static {p0, p2, p3}, Lbsh/Reflect;->resolveExpectedJavaField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 256
    .local v0, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 257
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 258
    .local v2, "returnType":Ljava/lang/Class;
    invoke-static {v1, v2}, Lbsh/Primitive;->wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 263
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v1    # "value":Ljava/lang/Object;
    .end local v2    # "returnType":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lbsh/ReflectError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t access field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/ReflectError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Lbsh/ReflectError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "???"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a static field."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/ReflectError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getIndex(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ReflectError;,
            Lbsh/UtilTargetError;
        }
    .end annotation

    .line 148
    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 151
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, "val":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lbsh/Primitive;->wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 156
    .end local v0    # "val":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lbsh/ReflectError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Array access:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/ReflectError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 155
    .local v0, "e1":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lbsh/UtilTargetError;

    invoke-direct {v1, v0}, Lbsh/UtilTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getLHSObjectField(Ljava/lang/Object;Ljava/lang/String;)Lbsh/LHS;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;,
            Lbsh/ReflectError;
        }
    .end annotation

    .line 227
    instance-of v0, p0, Lbsh/This;

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "recurse":Z
    new-instance v1, Lbsh/LHS;

    move-object v2, p0

    check-cast v2, Lbsh/This;

    iget-object v2, v2, Lbsh/This;->namespace:Lbsh/NameSpace;

    invoke-direct {v1, v2, p1, v0}, Lbsh/LHS;-><init>(Lbsh/NameSpace;Ljava/lang/String;Z)V

    return-object v1

    .line 236
    .end local v0    # "recurse":Z
    :cond_0
    nop

    .line 237
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 236
    invoke-static {v0, p1, v1}, Lbsh/Reflect;->resolveExpectedJavaField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 238
    .local v0, "f":Ljava/lang/reflect/Field;
    new-instance v1, Lbsh/LHS;

    invoke-direct {v1, p0, v0}, Lbsh/LHS;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    :try_end_0
    .catch Lbsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 239
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Lbsh/ReflectError;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lbsh/Reflect;->hasObjectPropertySetter(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    new-instance v1, Lbsh/LHS;

    invoke-direct {v1, p0, p1}, Lbsh/LHS;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 245
    :cond_1
    throw v0
.end method

.method static getLHSStaticField(Ljava/lang/Class;Ljava/lang/String;)Lbsh/LHS;
    .locals 2
    .param p0, "clas"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;,
            Lbsh/ReflectError;
        }
    .end annotation

    .line 213
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lbsh/Reflect;->resolveExpectedJavaField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 215
    .local v0, "f":Ljava/lang/reflect/Field;
    new-instance v1, Lbsh/LHS;

    invoke-direct {v1, v0}, Lbsh/LHS;-><init>(Ljava/lang/reflect/Field;)V

    return-object v1
.end method

.method public static getObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;,
            Lbsh/ReflectError;
        }
    .end annotation

    .line 192
    instance-of v0, p0, Lbsh/This;

    if-eqz v0, :cond_0

    .line 193
    move-object v0, p0

    check-cast v0, Lbsh/This;

    .line 194
    .local v0, "t":Lbsh/This;
    iget-object v1, v0, Lbsh/This;->namespace:Lbsh/NameSpace;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lbsh/NameSpace;->getVariableOrProperty(Ljava/lang/String;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 197
    .end local v0    # "t":Lbsh/This;
    :cond_0
    nop

    .line 198
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 197
    invoke-static {v0, p0, p1, v1}, Lbsh/Reflect;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lbsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 199
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Lbsh/ReflectError;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lbsh/Reflect;->hasObjectPropertyGetter(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    invoke-static {p0, p1}, Lbsh/Reflect;->getObjectProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 205
    :cond_1
    throw v0
.end method

.method public static getObjectProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;,
            Lbsh/ReflectError;
        }
    .end annotation

    .line 782
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 784
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "property access: "

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 785
    const/4 v7, 0x0

    .line 787
    .local v7, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    .local v8, "e1":Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 789
    .local v9, "e2":Ljava/lang/Exception;
    :try_start_0
    const-string v1, "get"

    invoke-static {v1, p1}, Lbsh/Reflect;->accessorName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 790
    .local v4, "accessorName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 791
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x0

    .line 790
    move-object v3, p0

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lbsh/Reflect;->resolveExpectedJavaMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v1

    .line 794
    .end local v4    # "accessorName":Ljava/lang/String;
    goto :goto_0

    .line 792
    :catch_0
    move-exception v1

    .line 793
    .local v1, "e":Ljava/lang/Exception;
    move-object v8, v1

    .line 795
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v7, :cond_1

    .line 797
    :try_start_1
    const-string v1, "is"

    invoke-static {v1, p1}, Lbsh/Reflect;->accessorName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 798
    .restart local v4    # "accessorName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 799
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x0

    .line 798
    move-object v3, p0

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lbsh/Reflect;->resolveExpectedJavaMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v7, v1

    .line 801
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v1, v2, :cond_0

    .line 802
    const/4 v1, 0x0

    move-object v7, v1

    .line 805
    .end local v4    # "accessorName":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 803
    :catch_1
    move-exception v1

    .line 804
    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v9, v1

    .line 806
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    if-nez v7, :cond_3

    .line 807
    new-instance v1, Lbsh/ReflectError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in property getter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v9, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const-string v3, ""

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/ReflectError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 811
    :cond_3
    :try_start_2
    invoke-static {v7, p0, v0}, Lbsh/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v1

    .line 813
    :catch_2
    move-exception v1

    .line 815
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lbsh/UtilEvalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property accessor threw exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 816
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "clas"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;,
            Lbsh/ReflectError;
        }
    .end annotation

    .line 181
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lbsh/Reflect;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hasObjectPropertyGetter(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 6
    .param p0, "clas"    # Ljava/lang/Class;
    .param p1, "propName"    # Ljava/lang/String;

    .line 750
    const-string v0, "get"

    invoke-static {v0, p1}, Lbsh/Reflect;->accessorName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, "getterName":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    return v1

    .line 754
    :catch_0
    move-exception v3

    .line 755
    const-string v3, "is"

    invoke-static {v3, p1}, Lbsh/Reflect;->accessorName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 758
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 759
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 760
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    return v2
.end method

.method public static hasObjectPropertySetter(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 4
    .param p0, "clas"    # Ljava/lang/Class;
    .param p1, "propName"    # Ljava/lang/String;

    .line 767
    const-string/jumbo v0, "set"

    invoke-static {v0, p1}, Lbsh/Reflect;->accessorName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, "setterName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 772
    .local v1, "methods":[Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 773
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 774
    const/4 v3, 0x1

    return v3

    .line 772
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 775
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static invokeCompiledCommand(Ljava/lang/Class;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;)Ljava/lang/Object;
    .locals 6
    .param p0, "commandClass"    # Ljava/lang/Class;
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .param p3, "callstack"    # Lbsh/CallStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 901
    array-length v0, p1

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 902
    .local v0, "invokeArgs":[Ljava/lang/Object;
    const/4 v2, 0x0

    aput-object p2, v0, v2

    .line 903
    const/4 v3, 0x1

    aput-object p3, v0, v3

    .line 904
    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 905
    invoke-virtual {p2}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v1

    .line 907
    .local v1, "bcm":Lbsh/BshClassManager;
    :try_start_0
    const-string v2, "invoke"

    invoke-static {v1, p0, v2, v0}, Lbsh/Reflect;->invokeStaticMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lbsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 912
    :catch_0
    move-exception v2

    .line 913
    .local v2, "e":Lbsh/ReflectError;
    new-instance v3, Lbsh/UtilEvalError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error invoking compiled command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 909
    .end local v2    # "e":Lbsh/ReflectError;
    :catch_1
    move-exception v2

    .line 910
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lbsh/UtilEvalError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in compiled command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 911
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ReflectError;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 107
    if-nez p2, :cond_0

    .line 108
    const/4 v0, 0x0

    new-array p2, v0, [Ljava/lang/Object;

    .line 110
    :cond_0
    const-string v0, "Invoking method (entry): "

    invoke-static {v0, p0, p2}, Lbsh/Reflect;->logInvokeMethod(Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 113
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    .line 114
    .local v0, "tmpArgs":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 116
    .local v1, "types":[Ljava/lang/Class;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 117
    aget-object v3, p2, v2

    aget-object v4, v1, v2

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lbsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v2    # "i":I
    :cond_1
    nop

    .line 125
    invoke-static {v0}, Lbsh/Primitive;->unwrap([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 127
    const-string v2, "Invoking method (after massaging values): "

    invoke-static {v2, p0, v0}, Lbsh/Reflect;->logInvokeMethod(Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 131
    :try_start_1
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 132
    .local v2, "returnValue":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 133
    sget-object v3, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    move-object v2, v3

    .line 134
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 136
    .local v3, "returnType":Ljava/lang/Class;
    invoke-static {v2, v3}, Lbsh/Primitive;->wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    .line 137
    .end local v2    # "returnValue":Ljava/lang/Object;
    .end local v3    # "returnType":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lbsh/ReflectError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot access method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 140
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 139
    invoke-static {v5, v6}, Lbsh/StringUtil;->methodString(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 141
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lbsh/ReflectError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 119
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 120
    .local v2, "e":Lbsh/UtilEvalError;
    new-instance v3, Lbsh/InterpreterError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal argument type in method invocation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static invokeObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;
    .locals 8
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "interpreter"    # Lbsh/Interpreter;
    .param p4, "callstack"    # Lbsh/CallStack;
    .param p5, "callerInfo"    # Lbsh/SimpleNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ReflectError;,
            Lbsh/EvalError;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 62
    instance-of v0, p0, Lbsh/This;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lbsh/This;->isExposedThisMethod(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    move-object v1, p0

    check-cast v1, Lbsh/This;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lbsh/This;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 71
    :cond_1
    :try_start_0
    invoke-virtual {p3}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    move-object v1, v0

    :goto_0
    nop

    .line 72
    .local v1, "bcm":Lbsh/BshClassManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 74
    .local v2, "clas":Ljava/lang/Class;
    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Lbsh/Reflect;->resolveExpectedJavaMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 77
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-static {v0, p0, p2}, Lbsh/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 78
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "bcm":Lbsh/BshClassManager;
    .end local v2    # "clas":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Lbsh/UtilEvalError;
    invoke-virtual {v0, p5, p4}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v1

    throw v1
.end method

.method public static invokeStaticMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "bcm"    # Lbsh/BshClassManager;
    .param p1, "clas"    # Ljava/lang/Class;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ReflectError;,
            Lbsh/UtilEvalError;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 92
    const-string v0, "invoke static Method"

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 93
    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lbsh/Reflect;->resolveExpectedJavaMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 95
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    invoke-static {v0, v1, p3}, Lbsh/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static isPublic(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;

    .line 954
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    return v0
.end method

.method private static isPublic(Ljava/lang/reflect/Constructor;)Z
    .locals 1
    .param p0, "c"    # Ljava/lang/reflect/Constructor;

    .line 960
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    return v0
.end method

.method private static isPublic(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p0, "m"    # Ljava/lang/reflect/Method;

    .line 957
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    return v0
.end method

.method private static isStatic(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p0, "m"    # Ljava/lang/reflect/Method;

    .line 963
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method private static logInvokeMethod(Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 918
    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with args:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 920
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 921
    aget-object v1, p2, v0

    .line 922
    .local v1, "arg":Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "args["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_0

    const-string v3, "<unknown>"

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 920
    .end local v1    # "arg":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 925
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static normalizeClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Ljava/lang/Class;

    .line 848
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 849
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 851
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 853
    .local v0, "className":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lbsh/Reflect;->getArrayBaseType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 854
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {p0}, Lbsh/Reflect;->getArrayDimensions(Ljava/lang/Class;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 855
    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lbsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    .line 856
    :catch_0
    move-exception v1

    :goto_1
    nop

    .line 858
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static resolveExpectedJavaField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;
    .locals 4
    .param p0, "clas"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "staticOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;,
            Lbsh/ReflectError;
        }
    .end annotation

    .line 299
    :try_start_0
    invoke-static {}, Lbsh/Capabilities;->haveAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-static {p0, p1}, Lbsh/Reflect;->findAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 303
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    :goto_0
    nop

    .line 313
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 314
    :cond_1
    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t reach instance field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from static context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 316
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    :cond_2
    :goto_1
    return-object v0

    .line 307
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Lbsh/UtilTargetError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception while searching fields of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lbsh/UtilTargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 305
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Lbsh/ReflectError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/ReflectError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static resolveExpectedJavaMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/lang/reflect/Method;
    .locals 5
    .param p0, "bcm"    # Lbsh/BshClassManager;
    .param p1, "clas"    # Ljava/lang/Class;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .param p5, "staticOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ReflectError;,
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 377
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq p2, v0, :cond_2

    .line 381
    invoke-static {p4}, Lbsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 382
    .local v0, "types":[Ljava/lang/Class;
    invoke-static {p0, p1, p3, v0, p5}, Lbsh/Reflect;->resolveJavaMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 384
    .local v1, "method":Ljava/lang/reflect/Method;
    if-nez v1, :cond_1

    .line 385
    new-instance v2, Lbsh/ReflectError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_0

    const-string v4, "Static method "

    goto :goto_0

    :cond_0
    const-string v4, "Method "

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 387
    invoke-static {p3, v0}, Lbsh/StringUtil;->methodString(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found in class\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 388
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbsh/ReflectError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 390
    :cond_1
    return-object v1

    .line 378
    .end local v0    # "types":[Ljava/lang/Class;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_2
    new-instance v0, Lbsh/UtilTargetError;

    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to invoke method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on null value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lbsh/UtilTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected static resolveJavaField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;
    .locals 2
    .param p0, "clas"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "staticOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 279
    :try_start_0
    invoke-static {p0, p1, p2}, Lbsh/Reflect;->resolveExpectedJavaField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Lbsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Lbsh/ReflectError;
    const/4 v1, 0x0

    return-object v1
.end method

.method protected static resolveJavaMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .locals 6
    .param p0, "bcm"    # Lbsh/BshClassManager;
    .param p1, "clas"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "types"    # [Ljava/lang/Class;
    .param p4, "staticOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 425
    if-eqz p1, :cond_3

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez p0, :cond_0

    .line 431
    const-string/jumbo v1, "resolveJavaMethod UNOPTIMIZED lookup"

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lbsh/BshClassManager;->getResolvedMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 435
    :goto_0
    if-nez v0, :cond_2

    .line 437
    invoke-static {}, Lbsh/Capabilities;->haveAccessibility()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 440
    .local v1, "publicOnly":Z
    :try_start_0
    invoke-static {p1, p2, p3, v1}, Lbsh/Reflect;->findOverloadedMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    .line 445
    nop

    .line 447
    invoke-static {v0, p4, p1}, Lbsh/Reflect;->checkFoundStaticMethod(Ljava/lang/reflect/Method;ZLjava/lang/Class;)V

    .line 452
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 454
    :try_start_1
    invoke-static {v0}, Lbsh/ReflectManager;->RMSetAccessible(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_0

    .line 455
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    .line 459
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 460
    invoke-virtual {p0, p1, p3, v0}, Lbsh/BshClassManager;->cacheResolvedMethod(Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    goto :goto_3

    .line 441
    :catch_1
    move-exception v2

    .line 442
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v3, Lbsh/UtilTargetError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Security Exception while searching methods of: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lbsh/UtilTargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 463
    .end local v1    # "publicOnly":Z
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_2
    :goto_3
    return-object v0

    .line 426
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_3
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "null class"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setIndex(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ReflectError;,
            Lbsh/UtilTargetError;
        }
    .end annotation

    .line 165
    :try_start_0
    invoke-static {p2}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p2, v0

    .line 166
    invoke-static {p0, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    nop

    .line 176
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lbsh/ReflectError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Array access:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/ReflectError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 171
    .local v0, "e1":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lbsh/UtilTargetError;

    new-instance v2, Ljava/lang/ArrayStoreException;

    .line 172
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayStoreException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lbsh/UtilTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 168
    .end local v0    # "e1":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 169
    .local v0, "e2":Ljava/lang/ArrayStoreException;
    new-instance v1, Lbsh/UtilTargetError;

    invoke-direct {v1, v0}, Lbsh/UtilTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setObjectProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ReflectError;,
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 824
    const-string/jumbo v0, "set"

    invoke-static {v0, p1}, Lbsh/Reflect;->accessorName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "accessorName":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    move-object v7, v1

    .line 827
    .local v7, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "property access: "

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 829
    const/4 v1, 0x0

    .line 830
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x0

    .line 829
    move-object v3, p0

    move-object v4, v0

    move-object v5, v7

    invoke-static/range {v1 .. v6}, Lbsh/Reflect;->resolveExpectedJavaMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 831
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-static {v1, p0, v7}, Lbsh/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    nop

    .line 838
    .end local v1    # "method":Ljava/lang/reflect/Method;
    return-void

    .line 833
    :catch_0
    move-exception v1

    .line 835
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lbsh/UtilEvalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property accessor threw exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 836
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v2
.end method
