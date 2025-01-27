.class public Ljavassist/compiler/MemberResolver;
.super Ljava/lang/Object;
.source "MemberResolver.java"

# interfaces
.implements Ljavassist/compiler/TokenId;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/compiler/MemberResolver$Method;
    }
.end annotation


# static fields
.field private static final INVALID:Ljava/lang/String; = "<invalid>"

.field private static final NO:I = -0x1

.field private static final YES:I

.field private static invalidNamesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavassist/ClassPool;",
            "Ljava/lang/ref/Reference<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private classPool:Ljavassist/ClassPool;

.field private invalidNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 430
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljavassist/compiler/MemberResolver;->invalidNamesMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljavassist/ClassPool;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/ClassPool;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/compiler/MemberResolver;->invalidNames:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    .line 49
    return-void
.end method

.method private compareSignature(Ljava/lang/String;[I[I[Ljava/lang/String;)I
    .locals 16
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "argTypes"    # [I
    .param p3, "argDims"    # [I
    .param p4, "argClassNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 198
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x0

    .line 199
    .local v0, "result":I
    const/4 v4, 0x1

    .line 200
    .local v4, "i":I
    array-length v5, v3

    .line 201
    .local v5, "nArgs":I
    invoke-static/range {p1 .. p1}, Ljavassist/bytecode/Descriptor;->numOfParameters(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v5, v6, :cond_0

    .line 202
    return v7

    .line 204
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 205
    .local v6, "len":I
    const/4 v8, 0x0

    move v15, v4

    move v4, v0

    move v0, v15

    .local v0, "i":I
    .local v4, "result":I
    .local v8, "n":I
    :goto_0
    if-ge v0, v6, :cond_13

    .line 206
    add-int/lit8 v9, v0, 0x1

    .end local v0    # "i":I
    .local v9, "i":I
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 207
    .local v0, "c":C
    const/16 v10, 0x29

    if-ne v0, v10, :cond_2

    .line 208
    if-ne v8, v5, :cond_1

    move v7, v4

    :cond_1
    return v7

    .line 209
    :cond_2
    if-lt v8, v5, :cond_3

    .line 210
    return v7

    .line 212
    :cond_3
    const/4 v10, 0x0

    move v11, v10

    move v10, v9

    move v9, v0

    .line 213
    .end local v0    # "c":C
    .local v9, "c":C
    .local v10, "i":I
    .local v11, "dim":I
    :goto_1
    const/16 v0, 0x5b

    if-ne v9, v0, :cond_4

    .line 214
    add-int/lit8 v11, v11, 0x1

    .line 215
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "i":I
    .local v0, "i":I
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v10, v0

    goto :goto_1

    .line 218
    .end local v0    # "i":I
    .restart local v10    # "i":I
    :cond_4
    aget v0, v3, v8

    const/16 v12, 0x19c

    const/16 v13, 0x3b

    const/16 v14, 0x4c

    if-ne v0, v12, :cond_6

    .line 219
    if-nez v11, :cond_5

    if-eq v9, v14, :cond_5

    .line 220
    return v7

    .line 222
    :cond_5
    if-ne v9, v14, :cond_11

    .line 223
    invoke-virtual {v2, v13, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .end local v10    # "i":I
    .restart local v0    # "i":I
    goto/16 :goto_5

    .line 225
    .end local v0    # "i":I
    .restart local v10    # "i":I
    :cond_6
    aget v0, p3, v8

    if-eq v0, v11, :cond_9

    .line 226
    if-nez v11, :cond_8

    if-ne v9, v14, :cond_8

    .line 227
    const-string v0, "java/lang/Object;"

    invoke-virtual {v2, v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    .line 231
    :cond_7
    invoke-virtual {v2, v13, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 232
    .end local v10    # "i":I
    .restart local v0    # "i":I
    add-int/lit8 v4, v4, 0x1

    .line 233
    if-gtz v0, :cond_12

    .line 234
    return v7

    .line 228
    .end local v0    # "i":I
    .restart local v10    # "i":I
    :cond_8
    :goto_2
    return v7

    .line 236
    :cond_9
    if-ne v9, v14, :cond_e

    .line 237
    invoke-virtual {v2, v13, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 238
    .local v12, "j":I
    if-ltz v12, :cond_d

    aget v0, v3, v8

    const/16 v13, 0x133

    if-eq v0, v13, :cond_a

    goto :goto_4

    .line 241
    :cond_a
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 242
    .local v13, "cname":Ljava/lang/String;
    aget-object v0, p4, v8

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 243
    aget-object v0, p4, v8

    invoke-virtual {v1, v0}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v14

    .line 245
    .local v14, "clazz":Ljavassist/CtClass;
    :try_start_0
    invoke-virtual {v1, v13}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_b

    .line 246
    add-int/lit8 v4, v4, 0x1

    .line 252
    goto :goto_3

    .line 248
    :cond_b
    return v7

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljavassist/NotFoundException;
    add-int/lit8 v4, v4, 0x1

    .line 255
    .end local v0    # "e":Ljavassist/NotFoundException;
    .end local v14    # "clazz":Ljavassist/CtClass;
    :cond_c
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 256
    .end local v10    # "i":I
    .end local v13    # "cname":Ljava/lang/String;
    .local v12, "i":I
    move v0, v12

    goto :goto_5

    .line 239
    .restart local v10    # "i":I
    .local v12, "j":I
    :cond_d
    :goto_4
    return v7

    .line 258
    .end local v12    # "j":I
    :cond_e
    invoke-static {v9}, Ljavassist/compiler/MemberResolver;->descToType(C)I

    move-result v0

    .line 259
    .local v0, "t":I
    aget v12, v3, v8

    .line 260
    .local v12, "at":I
    if-eq v0, v12, :cond_11

    .line 261
    const/16 v13, 0x144

    if-ne v0, v13, :cond_10

    const/16 v13, 0x14e

    if-eq v12, v13, :cond_f

    const/16 v13, 0x12f

    if-eq v12, v13, :cond_f

    const/16 v13, 0x132

    if-ne v12, v13, :cond_10

    .line 263
    :cond_f
    add-int/lit8 v4, v4, 0x1

    move v0, v10

    goto :goto_5

    .line 265
    :cond_10
    return v7

    .line 205
    .end local v0    # "t":I
    .end local v9    # "c":C
    .end local v11    # "dim":I
    .end local v12    # "at":I
    :cond_11
    move v0, v10

    .end local v10    # "i":I
    .local v0, "i":I
    :cond_12
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 269
    .end local v8    # "n":I
    :cond_13
    return v7
.end method

.method public static descToType(C)I
    .locals 1
    .param p0, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 555
    const/16 v0, 0x158

    sparse-switch p0, :sswitch_data_0

    .line 578
    invoke-static {}, Ljavassist/compiler/MemberResolver;->fatal()V

    .line 579
    return v0

    .line 557
    :sswitch_0
    const/16 v0, 0x12d

    return v0

    .line 573
    :sswitch_1
    return v0

    .line 563
    :sswitch_2
    const/16 v0, 0x14e

    return v0

    .line 576
    :sswitch_3
    const/16 v0, 0x133

    return v0

    .line 567
    :sswitch_4
    const/16 v0, 0x146

    return v0

    .line 565
    :sswitch_5
    const/16 v0, 0x144

    return v0

    .line 569
    :sswitch_6
    const/16 v0, 0x13d

    return v0

    .line 571
    :sswitch_7
    const/16 v0, 0x138

    return v0

    .line 559
    :sswitch_8
    const/16 v0, 0x132

    return v0

    .line 561
    :sswitch_9
    const/16 v0, 0x12f

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_9
        0x43 -> :sswitch_8
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x49 -> :sswitch_5
        0x4a -> :sswitch_4
        0x4c -> :sswitch_3
        0x53 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
        0x5b -> :sswitch_3
    .end sparse-switch
.end method

.method private static fatal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 54
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "fatal"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInvalidMapSize()I
    .locals 1

    .line 435
    sget-object v0, Ljavassist/compiler/MemberResolver;->invalidNamesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method private getInvalidNames()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Ljavassist/compiler/MemberResolver;->invalidNames:Ljava/util/Map;

    .line 439
    .local v0, "ht":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 440
    const-class v1, Ljavassist/compiler/MemberResolver;

    monitor-enter v1

    .line 441
    :try_start_0
    sget-object v2, Ljavassist/compiler/MemberResolver;->invalidNamesMap:Ljava/util/Map;

    iget-object v3, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 442
    .local v2, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v2, :cond_0

    .line 443
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object v0, v3

    .line 445
    :cond_0
    if-nez v0, :cond_1

    .line 446
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object v0, v3

    .line 447
    sget-object v3, Ljavassist/compiler/MemberResolver;->invalidNamesMap:Ljava/util/Map;

    iget-object v4, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .end local v2    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    iput-object v0, p0, Ljavassist/compiler/MemberResolver;->invalidNames:Ljava/util/Map;

    goto :goto_0

    .line 449
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 454
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getModifiers(Ljavassist/compiler/ast/ASTList;)I
    .locals 3
    .param p0, "mods"    # Ljavassist/compiler/ast/ASTList;

    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, "m":I
    :goto_0
    if-eqz p0, :cond_0

    .line 586
    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->head()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    check-cast v1, Ljavassist/compiler/ast/Keyword;

    .line 587
    .local v1, "k":Ljavassist/compiler/ast/Keyword;
    invoke-virtual {p0}, Ljavassist/compiler/ast/ASTList;->tail()Ljavassist/compiler/ast/ASTList;

    move-result-object p0

    .line 588
    invoke-virtual {v1}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 617
    :sswitch_0
    or-int/lit16 v0, v0, 0x800

    goto :goto_1

    .line 611
    :sswitch_1
    or-int/lit8 v0, v0, 0x40

    .line 612
    goto :goto_1

    .line 614
    :sswitch_2
    or-int/lit16 v0, v0, 0x80

    .line 615
    goto :goto_1

    .line 596
    :sswitch_3
    or-int/lit8 v0, v0, 0x20

    .line 597
    goto :goto_1

    .line 590
    :sswitch_4
    or-int/lit8 v0, v0, 0x8

    .line 591
    goto :goto_1

    .line 602
    :sswitch_5
    or-int/lit8 v0, v0, 0x1

    .line 603
    goto :goto_1

    .line 605
    :sswitch_6
    or-int/lit8 v0, v0, 0x4

    .line 606
    goto :goto_1

    .line 608
    :sswitch_7
    or-int/lit8 v0, v0, 0x2

    .line 609
    goto :goto_1

    .line 593
    :sswitch_8
    or-int/lit8 v0, v0, 0x10

    .line 594
    goto :goto_1

    .line 599
    :sswitch_9
    or-int/lit16 v0, v0, 0x400

    .line 600
    nop

    .line 620
    .end local v1    # "k":Ljavassist/compiler/ast/Keyword;
    :goto_1
    goto :goto_0

    .line 622
    :cond_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_9
        0x13b -> :sswitch_8
        0x14a -> :sswitch_7
        0x14b -> :sswitch_6
        0x14c -> :sswitch_5
        0x14f -> :sswitch_4
        0x152 -> :sswitch_3
        0x156 -> :sswitch_2
        0x159 -> :sswitch_1
        0x15b -> :sswitch_0
    .end sparse-switch
.end method

.method public static getSuperInterface(Ljavassist/CtClass;Ljava/lang/String;)Ljavassist/CtClass;
    .locals 3
    .param p0, "c"    # Ljavassist/CtClass;
    .param p1, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 537
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClass;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v0

    .line 538
    .local v0, "intfs":[Ljavassist/CtClass;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 539
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    aget-object v2, v0, v1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 538
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "intfs":[Ljavassist/CtClass;
    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    .line 541
    :catch_0
    move-exception v0

    :goto_1
    nop

    .line 542
    new-instance v0, Ljavassist/compiler/CompileError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find the super interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 543
    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSuperclass(Ljavassist/CtClass;)Ljavassist/CtClass;
    .locals 3
    .param p0, "c"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 524
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .local v0, "sc":Ljavassist/CtClass;
    if-eqz v0, :cond_0

    .line 526
    return-object v0

    .line 525
    .end local v0    # "sc":Ljavassist/CtClass;
    :cond_0
    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 529
    new-instance v0, Ljavassist/compiler/CompileError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find the super class of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 530
    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 365
    const-string v0, ""

    .line 366
    .local v0, "cname":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 395
    invoke-static {}, Ljavassist/compiler/MemberResolver;->fatal()V

    goto :goto_0

    .line 392
    :sswitch_0
    const-string v0, "void"

    .line 393
    goto :goto_0

    .line 377
    :sswitch_1
    const-string v0, "short"

    .line 378
    goto :goto_0

    .line 383
    :sswitch_2
    const-string v0, "long"

    .line 384
    goto :goto_0

    .line 380
    :sswitch_3
    const-string v0, "int"

    .line 381
    goto :goto_0

    .line 386
    :sswitch_4
    const-string v0, "float"

    .line 387
    goto :goto_0

    .line 389
    :sswitch_5
    const-string v0, "double"

    .line 390
    goto :goto_0

    .line 371
    :sswitch_6
    const-string v0, "char"

    .line 372
    goto :goto_0

    .line 374
    :sswitch_7
    const-string v0, "byte"

    .line 375
    goto :goto_0

    .line 368
    :sswitch_8
    const-string v0, "boolean"

    .line 369
    nop

    .line 398
    :goto_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_8
        0x12f -> :sswitch_7
        0x132 -> :sswitch_6
        0x138 -> :sswitch_5
        0x13d -> :sswitch_4
        0x144 -> :sswitch_3
        0x146 -> :sswitch_2
        0x14e -> :sswitch_1
        0x158 -> :sswitch_0
    .end sparse-switch
.end method

.method public static javaToJvmName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "classname"    # Ljava/lang/String;

    .line 547
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "classname"    # Ljava/lang/String;

    .line 551
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private lookupClass0(Ljava/lang/String;Z)Ljavassist/CtClass;
    .locals 5
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "notCheckInner"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 485
    const/4 v0, 0x0

    .line 488
    .local v0, "cc":Ljavassist/CtClass;
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1, p1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 497
    goto :goto_0

    .line 490
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Ljavassist/NotFoundException;
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 492
    .local v2, "i":I
    if-nez p2, :cond_1

    if-ltz v2, :cond_1

    .line 494
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 495
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    const/16 v4, 0x24

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 496
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 498
    .end local v1    # "e":Ljavassist/NotFoundException;
    .end local v2    # "i":I
    .end local v3    # "sbuf":Ljava/lang/StringBuffer;
    :goto_0
    if-eqz v0, :cond_0

    .line 499
    return-object v0

    .line 493
    .restart local v1    # "e":Ljavassist/NotFoundException;
    .restart local v2    # "i":I
    :cond_1
    throw v1
.end method

.method private lookupMethod(Ljavassist/CtClass;Ljava/lang/String;[I[I[Ljava/lang/String;Z)Ljavassist/compiler/MemberResolver$Method;
    .locals 17
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "argTypes"    # [I
    .param p4, "argDims"    # [I
    .param p5, "argClassNames"    # [Ljava/lang/String;
    .param p6, "onlyExact"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "maybe":Ljavassist/compiler/MemberResolver$Method;
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    .line 113
    .local v1, "cf":Ljavassist/bytecode/ClassFile;
    if-eqz v1, :cond_7

    .line 114
    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v2

    .line 115
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/MethodInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/MethodInfo;

    .line 116
    .local v4, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v13, p2

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 117
    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_3

    .line 118
    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v14, p0

    move-object/from16 v15, p3

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    invoke-direct {v14, v5, v15, v12, v11}, Ljavassist/compiler/MemberResolver;->compareSignature(Ljava/lang/String;[I[I[Ljava/lang/String;)I

    move-result v5

    .line 120
    .local v5, "res":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 121
    new-instance v6, Ljavassist/compiler/MemberResolver$Method;

    move-object/from16 v10, p1

    invoke-direct {v6, v10, v4, v5}, Ljavassist/compiler/MemberResolver$Method;-><init>(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;I)V

    .line 122
    .local v6, "r":Ljavassist/compiler/MemberResolver$Method;
    if-nez v5, :cond_0

    .line 123
    return-object v6

    .line 124
    :cond_0
    if-eqz v0, :cond_1

    iget v7, v0, Ljavassist/compiler/MemberResolver$Method;->notmatch:I

    if-le v7, v5, :cond_5

    .line 125
    :cond_1
    move-object v0, v6

    goto :goto_1

    .line 120
    .end local v6    # "r":Ljavassist/compiler/MemberResolver$Method;
    :cond_2
    move-object/from16 v10, p1

    goto :goto_1

    .line 117
    .end local v5    # "res":I
    :cond_3
    move-object/from16 v14, p0

    move-object/from16 v10, p1

    move-object/from16 v15, p3

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    goto :goto_1

    .line 116
    :cond_4
    move-object/from16 v14, p0

    move-object/from16 v10, p1

    move-object/from16 v15, p3

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    .line 128
    .end local v4    # "minfo":Ljavassist/bytecode/MethodInfo;
    :cond_5
    :goto_1
    goto :goto_0

    .line 115
    :cond_6
    move-object/from16 v14, p0

    move-object/from16 v10, p1

    move-object/from16 v13, p2

    move-object/from16 v15, p3

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    goto :goto_2

    .line 113
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/MethodInfo;>;"
    :cond_7
    move-object/from16 v14, p0

    move-object/from16 v10, p1

    move-object/from16 v13, p2

    move-object/from16 v15, p3

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    .line 131
    :goto_2
    if-eqz p6, :cond_8

    .line 132
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_3

    .line 134
    :cond_8
    if-eqz v0, :cond_9

    .line 135
    return-object v0

    .line 134
    :cond_9
    move-object v2, v0

    .line 137
    .end local v0    # "maybe":Ljavassist/compiler/MemberResolver$Method;
    .local v2, "maybe":Ljavassist/compiler/MemberResolver$Method;
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getModifiers()I

    move-result v3

    .line 138
    .local v3, "mod":I
    invoke-static {v3}, Ljavassist/Modifier;->isInterface(I)Z

    move-result v4

    .line 141
    .local v4, "isIntf":Z
    if-nez v4, :cond_a

    .line 142
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    .line 143
    .local v0, "pclazz":Ljavassist/CtClass;
    if-eqz v0, :cond_a

    .line 144
    move-object/from16 v6, p0

    move-object v7, v0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    invoke-direct/range {v6 .. v12}, Ljavassist/compiler/MemberResolver;->lookupMethod(Ljavassist/CtClass;Ljava/lang/String;[I[I[Ljava/lang/String;Z)Ljavassist/compiler/MemberResolver$Method;

    move-result-object v5
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .local v5, "r":Ljavassist/compiler/MemberResolver$Method;
    if-eqz v5, :cond_a

    .line 147
    return-object v5

    .line 151
    .end local v0    # "pclazz":Ljavassist/CtClass;
    .end local v5    # "r":Ljavassist/compiler/MemberResolver$Method;
    :catch_0
    move-exception v0

    :cond_a
    nop

    .line 154
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v0

    .line 155
    .local v0, "ifs":[Ljavassist/CtClass;
    array-length v5, v0

    const/4 v6, 0x0

    move v12, v6

    :goto_4
    if-ge v12, v5, :cond_c

    aget-object v7, v0, v12

    .line 156
    .local v7, "intf":Ljavassist/CtClass;
    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v16, v12

    move/from16 v12, p6

    invoke-direct/range {v6 .. v12}, Ljavassist/compiler/MemberResolver;->lookupMethod(Ljavassist/CtClass;Ljava/lang/String;[I[I[Ljava/lang/String;Z)Ljavassist/compiler/MemberResolver$Method;

    move-result-object v6

    .line 159
    .restart local v6    # "r":Ljavassist/compiler/MemberResolver$Method;
    if-eqz v6, :cond_b

    .line 160
    return-object v6

    .line 155
    .end local v6    # "r":Ljavassist/compiler/MemberResolver$Method;
    .end local v7    # "intf":Ljavassist/CtClass;
    :cond_b
    add-int/lit8 v12, v16, 0x1

    goto :goto_4

    .line 163
    :cond_c
    if-eqz v4, :cond_d

    .line 165
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v5

    .line 166
    .local v5, "pclazz":Ljavassist/CtClass;
    if-eqz v5, :cond_d

    .line 167
    move-object/from16 v6, p0

    move-object v7, v5

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    invoke-direct/range {v6 .. v12}, Ljavassist/compiler/MemberResolver;->lookupMethod(Ljavassist/CtClass;Ljava/lang/String;[I[I[Ljava/lang/String;Z)Ljavassist/compiler/MemberResolver$Method;

    move-result-object v6
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    .restart local v6    # "r":Ljavassist/compiler/MemberResolver$Method;
    if-eqz v6, :cond_d

    .line 170
    return-object v6

    .line 174
    .end local v0    # "ifs":[Ljavassist/CtClass;
    .end local v5    # "pclazz":Ljavassist/CtClass;
    .end local v6    # "r":Ljavassist/compiler/MemberResolver$Method;
    :catch_1
    move-exception v0

    :cond_d
    nop

    .line 176
    return-object v2
.end method

.method private searchImports(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 6
    .param p1, "orgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 460
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 461
    iget-object v0, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0}, Ljavassist/ClassPool;->getImportedPackages()Ljava/util/Iterator;

    move-result-object v0

    .line 462
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 464
    .local v1, "pac":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\.$"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "fqName":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v4, v2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v3
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 468
    :catch_0
    move-exception v4

    .line 470
    .local v4, "e":Ljavassist/NotFoundException;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 471
    iget-object v3, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v3, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v3
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 473
    :catch_1
    move-exception v3

    :cond_0
    nop

    .line 475
    .end local v1    # "pac":Ljava/lang/String;
    .end local v2    # "fqName":Ljava/lang/String;
    .end local v4    # "e":Ljavassist/NotFoundException;
    goto :goto_0

    .line 478
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-direct {p0}, Ljavassist/compiler/MemberResolver;->getInvalidNames()Ljava/util/Map;

    move-result-object v0

    const-string v1, "<invalid>"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    new-instance v0, Ljavassist/compiler/CompileError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getClassPool()Ljavassist/ClassPool;
    .locals 1

    .line 51
    iget-object v0, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    return-object v0
.end method

.method public lookupClass(IILjava/lang/String;)Ljavassist/CtClass;
    .locals 3
    .param p1, "type"    # I
    .param p2, "dim"    # I
    .param p3, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 343
    const-string v0, ""

    .line 345
    .local v0, "cname":Ljava/lang/String;
    const/16 v1, 0x133

    if-ne p1, v1, :cond_1

    .line 346
    invoke-virtual {p0, p3}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    .line 347
    .local v1, "clazz":Ljavassist/CtClass;
    if-lez p2, :cond_0

    .line 348
    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 350
    :cond_0
    return-object v1

    .line 353
    .end local v1    # "clazz":Ljavassist/CtClass;
    :cond_1
    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->getTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    :goto_0
    add-int/lit8 v1, p2, -0x1

    .end local p2    # "dim":I
    .local v1, "dim":I
    if-lez p2, :cond_2

    .line 356
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "[]"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move p2, v1

    goto :goto_0

    .line 358
    :cond_2
    const/4 p2, 0x0

    invoke-virtual {p0, v0, p2}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object p2

    return-object p2
.end method

.method public lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notCheckInner"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 407
    invoke-direct {p0}, Ljavassist/compiler/MemberResolver;->getInvalidNames()Ljava/util/Map;

    move-result-object v0

    .line 408
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 409
    .local v1, "found":Ljava/lang/String;
    const-string v2, "<invalid>"

    if-eq v1, v2, :cond_1

    .line 411
    if-eqz v1, :cond_0

    .line 413
    :try_start_0
    iget-object v2, p0, Ljavassist/compiler/MemberResolver;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v2, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v2
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 415
    :catch_0
    move-exception v2

    .line 417
    :cond_0
    const/4 v2, 0x0

    .line 419
    .local v2, "cc":Ljavassist/CtClass;
    :try_start_1
    invoke-direct {p0, p1, p2}, Ljavassist/compiler/MemberResolver;->lookupClass0(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v3
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 423
    goto :goto_0

    .line 421
    :catch_1
    move-exception v3

    .line 422
    .local v3, "e":Ljavassist/NotFoundException;
    invoke-direct {p0, p1}, Ljavassist/compiler/MemberResolver;->searchImports(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v2

    .line 425
    .end local v3    # "e":Ljavassist/NotFoundException;
    :goto_0
    invoke-virtual {v2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    return-object v2

    .line 410
    .end local v2    # "cc":Ljavassist/CtClass;
    :cond_1
    new-instance v2, Ljavassist/compiler/CompileError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no such class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public lookupClass(Ljavassist/compiler/ast/Declarator;)Ljavassist/CtClass;
    .locals 3
    .param p1, "decl"    # Ljavassist/compiler/ast/Declarator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 333
    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v0

    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v1

    .line 334
    invoke-virtual {p1}, Ljavassist/compiler/ast/Declarator;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-virtual {p0, v0, v1, v2}, Ljavassist/compiler/MemberResolver;->lookupClass(IILjava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 2
    .param p1, "jvmName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 329
    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public lookupClassByName(Ljavassist/compiler/ast/ASTList;)Ljavassist/CtClass;
    .locals 2
    .param p1, "name"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 325
    const/16 v0, 0x2e

    invoke-static {p1, v0}, Ljavassist/compiler/ast/Declarator;->astToClassName(Ljavassist/compiler/ast/ASTList;C)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public lookupField(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljavassist/compiler/ast/Symbol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v0

    .line 318
    .local v0, "cc":Ljavassist/CtClass;
    :try_start_0
    invoke-virtual {p2}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/CtClass;->getField(Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 320
    :catch_0
    move-exception v1

    .line 321
    new-instance v1, Ljavassist/compiler/CompileError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public lookupFieldByJvmName(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;
    .locals 1
    .param p1, "jvmClassName"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljavassist/compiler/ast/Symbol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 307
    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljavassist/compiler/MemberResolver;->lookupField(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;)Ljavassist/CtField;

    move-result-object v0

    return-object v0
.end method

.method public lookupFieldByJvmName2(Ljava/lang/String;Ljavassist/compiler/ast/Symbol;Ljavassist/compiler/ast/ASTree;)Ljavassist/CtField;
    .locals 6
    .param p1, "jvmClassName"    # Ljava/lang/String;
    .param p2, "fieldSym"    # Ljavassist/compiler/ast/Symbol;
    .param p3, "expr"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/NoFieldException;
        }
    .end annotation

    .line 281
    invoke-virtual {p2}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "field":Ljava/lang/String;
    const/4 v1, 0x0

    .line 284
    .local v1, "cc":Ljavassist/CtClass;
    :try_start_0
    invoke-static {p1}, Ljavassist/compiler/MemberResolver;->jvmToJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljavassist/compiler/MemberResolver;->lookupClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v2
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v2

    .line 289
    nop

    .line 292
    :try_start_1
    invoke-virtual {v1, v0}, Ljavassist/CtClass;->getField(Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v2
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 294
    :catch_0
    move-exception v2

    .line 296
    .local v2, "e":Ljavassist/NotFoundException;
    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 297
    new-instance v3, Ljavassist/compiler/NoFieldException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p3}, Ljavassist/compiler/NoFieldException;-><init>(Ljava/lang/String;Ljavassist/compiler/ast/ASTree;)V

    throw v3

    .line 286
    .end local v2    # "e":Ljavassist/NotFoundException;
    :catch_1
    move-exception v2

    .line 288
    .local v2, "e":Ljavassist/compiler/CompileError;
    new-instance v3, Ljavassist/compiler/NoFieldException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p3}, Ljavassist/compiler/NoFieldException;-><init>(Ljava/lang/String;Ljavassist/compiler/ast/ASTree;)V

    throw v3
.end method

.method public lookupMethod(Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljava/lang/String;[I[I[Ljava/lang/String;)Ljavassist/compiler/MemberResolver$Method;
    .locals 16
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "currentClass"    # Ljavassist/CtClass;
    .param p3, "current"    # Ljavassist/bytecode/MethodInfo;
    .param p4, "methodName"    # Ljava/lang/String;
    .param p5, "argTypes"    # [I
    .param p6, "argDims"    # [I
    .param p7, "argClassNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 83
    move-object/from16 v7, p1

    move-object/from16 v8, p3

    const/4 v0, 0x0

    .line 85
    .local v0, "maybe":Ljavassist/compiler/MemberResolver$Method;
    if-eqz v8, :cond_3

    move-object/from16 v9, p2

    if-ne v7, v9, :cond_2

    .line 86
    invoke-virtual/range {p3 .. p3}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v10, p4

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual/range {p3 .. p3}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-direct {v11, v1, v12, v13, v14}, Ljavassist/compiler/MemberResolver;->compareSignature(Ljava/lang/String;[I[I[Ljava/lang/String;)I

    move-result v1

    .line 89
    .local v1, "res":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 90
    new-instance v2, Ljavassist/compiler/MemberResolver$Method;

    invoke-direct {v2, v7, v8, v1}, Ljavassist/compiler/MemberResolver$Method;-><init>(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;I)V

    .line 91
    .local v2, "r":Ljavassist/compiler/MemberResolver$Method;
    if-nez v1, :cond_0

    .line 92
    return-object v2

    .line 93
    :cond_0
    move-object v0, v2

    move-object v15, v0

    goto :goto_2

    .line 86
    .end local v1    # "res":I
    .end local v2    # "r":Ljavassist/compiler/MemberResolver$Method;
    :cond_1
    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    goto :goto_1

    .line 85
    :cond_2
    move-object/from16 v11, p0

    goto :goto_0

    :cond_3
    move-object/from16 v11, p0

    move-object/from16 v9, p2

    :goto_0
    move-object/from16 v10, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 97
    :cond_4
    :goto_1
    move-object v15, v0

    .end local v0    # "maybe":Ljavassist/compiler/MemberResolver$Method;
    .local v15, "maybe":Ljavassist/compiler/MemberResolver$Method;
    :goto_2
    if-eqz v15, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    move v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v6}, Ljavassist/compiler/MemberResolver;->lookupMethod(Ljavassist/CtClass;Ljava/lang/String;[I[I[Ljava/lang/String;Z)Ljavassist/compiler/MemberResolver$Method;

    move-result-object v0

    .line 99
    .local v0, "m":Ljavassist/compiler/MemberResolver$Method;
    if-eqz v0, :cond_6

    .line 100
    return-object v0

    .line 101
    :cond_6
    return-object v15
.end method

.method public resolveClassName(Ljavassist/compiler/ast/ASTList;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 508
    if-nez p1, :cond_0

    .line 509
    const/4 v0, 0x0

    return-object v0

    .line 510
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/MemberResolver;->lookupClassByName(Ljavassist/compiler/ast/ASTList;)Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolveJvmClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "jvmName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 517
    if-nez p1, :cond_0

    .line 518
    const/4 v0, 0x0

    return-object v0

    .line 519
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/MemberResolver;->lookupClassByJvmName(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/compiler/MemberResolver;->javaToJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
