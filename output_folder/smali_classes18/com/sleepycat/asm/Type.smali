.class public Lcom/sleepycat/asm/Type;
.super Ljava/lang/Object;
.source "Type.java"


# static fields
.field public static final ARRAY:I = 0x9

.field public static final BOOLEAN:I = 0x1

.field public static final BOOLEAN_TYPE:Lcom/sleepycat/asm/Type;

.field public static final BYTE:I = 0x3

.field public static final BYTE_TYPE:Lcom/sleepycat/asm/Type;

.field public static final CHAR:I = 0x2

.field public static final CHAR_TYPE:Lcom/sleepycat/asm/Type;

.field public static final DOUBLE:I = 0x8

.field public static final DOUBLE_TYPE:Lcom/sleepycat/asm/Type;

.field public static final FLOAT:I = 0x6

.field public static final FLOAT_TYPE:Lcom/sleepycat/asm/Type;

.field public static final INT:I = 0x5

.field public static final INT_TYPE:Lcom/sleepycat/asm/Type;

.field public static final LONG:I = 0x7

.field public static final LONG_TYPE:Lcom/sleepycat/asm/Type;

.field public static final METHOD:I = 0xb

.field public static final OBJECT:I = 0xa

.field public static final SHORT:I = 0x4

.field public static final SHORT_TYPE:Lcom/sleepycat/asm/Type;

.field public static final VOID:I

.field public static final VOID_TYPE:Lcom/sleepycat/asm/Type;


# instance fields
.field private final buf:[C

.field private final len:I

.field private final off:I

.field private final sort:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 107
    new-instance v0, Lcom/sleepycat/asm/Type;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x56050000

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/sleepycat/asm/Type;->VOID_TYPE:Lcom/sleepycat/asm/Type;

    .line 113
    new-instance v0, Lcom/sleepycat/asm/Type;

    const v1, 0x5a000501

    invoke-direct {v0, v4, v2, v1, v4}, Lcom/sleepycat/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/sleepycat/asm/Type;->BOOLEAN_TYPE:Lcom/sleepycat/asm/Type;

    .line 119
    new-instance v0, Lcom/sleepycat/asm/Type;

    const/4 v1, 0x2

    const v3, 0x43000601

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/sleepycat/asm/Type;->CHAR_TYPE:Lcom/sleepycat/asm/Type;

    .line 125
    new-instance v0, Lcom/sleepycat/asm/Type;

    const/4 v1, 0x3

    const v3, 0x42000501

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/sleepycat/asm/Type;->BYTE_TYPE:Lcom/sleepycat/asm/Type;

    .line 131
    new-instance v0, Lcom/sleepycat/asm/Type;

    const/4 v1, 0x4

    const v3, 0x53000701

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/sleepycat/asm/Type;->SHORT_TYPE:Lcom/sleepycat/asm/Type;

    .line 137
    new-instance v0, Lcom/sleepycat/asm/Type;

    const/4 v1, 0x5

    const v3, 0x49000001

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/sleepycat/asm/Type;->INT_TYPE:Lcom/sleepycat/asm/Type;

    .line 143
    new-instance v0, Lcom/sleepycat/asm/Type;

    const/4 v1, 0x6

    const v3, 0x46020201

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/sleepycat/asm/Type;->FLOAT_TYPE:Lcom/sleepycat/asm/Type;

    .line 149
    new-instance v0, Lcom/sleepycat/asm/Type;

    const/4 v1, 0x7

    const v3, 0x4a010102    # 2113600.5f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/sleepycat/asm/Type;->LONG_TYPE:Lcom/sleepycat/asm/Type;

    .line 155
    new-instance v0, Lcom/sleepycat/asm/Type;

    const/16 v1, 0x8

    const v3, 0x44030302

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/asm/Type;-><init>(I[CII)V

    sput-object v0, Lcom/sleepycat/asm/Type;->DOUBLE_TYPE:Lcom/sleepycat/asm/Type;

    return-void
.end method

.method private constructor <init>(I[CII)V
    .locals 0
    .param p1, "sort"    # I
    .param p2, "buf"    # [C
    .param p3, "off"    # I
    .param p4, "len"    # I

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput p1, p0, Lcom/sleepycat/asm/Type;->sort:I

    .line 204
    iput-object p2, p0, Lcom/sleepycat/asm/Type;->buf:[C

    .line 205
    iput p3, p0, Lcom/sleepycat/asm/Type;->off:I

    .line 206
    iput p4, p0, Lcom/sleepycat/asm/Type;->len:I

    .line 207
    return-void
.end method

.method public static getArgumentTypes(Ljava/lang/String;)[Lcom/sleepycat/asm/Type;
    .locals 8
    .param p0, "methodDescriptor"    # Ljava/lang/String;

    .line 325
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 326
    .local v0, "buf":[C
    const/4 v1, 0x1

    .line 327
    .local v1, "off":I
    const/4 v2, 0x0

    .line 329
    .local v2, "size":I
    :goto_0
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "off":I
    .local v3, "off":I
    aget-char v1, v0, v1

    .line 330
    .local v1, "car":C
    const/16 v4, 0x29

    if-ne v1, v4, :cond_2

    .line 331
    nop

    .line 340
    .end local v1    # "car":C
    new-array v1, v2, [Lcom/sleepycat/asm/Type;

    .line 341
    .local v1, "args":[Lcom/sleepycat/asm/Type;
    const/4 v3, 0x1

    .line 342
    const/4 v2, 0x0

    .line 343
    :goto_1
    aget-char v5, v0, v3

    if-eq v5, v4, :cond_1

    .line 344
    invoke-static {v0, v3}, Lcom/sleepycat/asm/Type;->getType([CI)Lcom/sleepycat/asm/Type;

    move-result-object v5

    aput-object v5, v1, v2

    .line 345
    aget-object v5, v1, v2

    iget v5, v5, Lcom/sleepycat/asm/Type;->len:I

    aget-object v6, v1, v2

    iget v6, v6, Lcom/sleepycat/asm/Type;->sort:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_0

    const/4 v6, 0x2

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    :goto_2
    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 348
    :cond_1
    return-object v1

    .line 332
    .local v1, "car":C
    :cond_2
    const/16 v4, 0x4c

    if-ne v1, v4, :cond_4

    .line 333
    :goto_3
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "off":I
    .local v4, "off":I
    aget-char v3, v0, v3

    const/16 v5, 0x3b

    if-eq v3, v5, :cond_3

    move v3, v4

    goto :goto_3

    .line 335
    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_4

    .line 336
    .end local v4    # "off":I
    .restart local v3    # "off":I
    :cond_4
    const/16 v4, 0x5b

    if-eq v1, v4, :cond_5

    .line 337
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_4

    .line 336
    :cond_5
    move v1, v3

    .line 339
    .end local v3    # "off":I
    .local v1, "off":I
    :goto_4
    goto :goto_0
.end method

.method public static getArgumentTypes(Ljava/lang/reflect/Method;)[Lcom/sleepycat/asm/Type;
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 361
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 362
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    new-array v1, v1, [Lcom/sleepycat/asm/Type;

    .line 363
    .local v1, "types":[Lcom/sleepycat/asm/Type;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 364
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/sleepycat/asm/Type;->getType(Ljava/lang/Class;)Lcom/sleepycat/asm/Type;

    move-result-object v3

    aput-object v3, v1, v2

    .line 363
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 366
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static getArgumentsAndReturnSizes(Ljava/lang/String;)I
    .locals 7
    .param p0, "desc"    # Ljava/lang/String;

    .line 417
    const/4 v0, 0x1

    .line 418
    .local v0, "n":I
    const/4 v1, 0x1

    .line 420
    .local v1, "c":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "c":I
    .local v2, "c":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 421
    .local v1, "car":C
    const/16 v3, 0x29

    const/16 v4, 0x4a

    const/16 v5, 0x44

    if-ne v1, v3, :cond_3

    .line 422
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 423
    shl-int/lit8 v3, v0, 0x2

    const/16 v6, 0x56

    if-ne v1, v6, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :cond_0
    if-eq v1, v5, :cond_2

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x2

    :goto_2
    or-int/2addr v3, v4

    return v3

    .line 425
    :cond_3
    const/16 v3, 0x4c

    if-ne v1, v3, :cond_5

    .line 426
    :goto_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "c":I
    .local v3, "c":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3b

    if-eq v2, v4, :cond_4

    move v2, v3

    goto :goto_3

    .line 428
    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_7

    .line 429
    .end local v3    # "c":I
    .restart local v2    # "c":I
    :cond_5
    const/16 v3, 0x5b

    if-ne v1, v3, :cond_9

    .line 430
    :goto_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v1, v6

    if-ne v6, v3, :cond_6

    .line 431
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 433
    :cond_6
    if-eq v1, v5, :cond_8

    if-ne v1, v4, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    goto :goto_7

    .line 434
    :cond_8
    :goto_5
    add-int/lit8 v0, v0, -0x1

    move v1, v2

    goto :goto_7

    .line 436
    :cond_9
    if-eq v1, v5, :cond_b

    if-ne v1, v4, :cond_a

    goto :goto_6

    .line 439
    :cond_a
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_7

    .line 437
    :cond_b
    :goto_6
    add-int/lit8 v0, v0, 0x2

    move v1, v2

    .line 441
    .end local v2    # "c":I
    .local v1, "c":I
    :goto_7
    goto :goto_0
.end method

.method public static getConstructorDescriptor(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 725
    .local p0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 726
    .local v0, "parameters":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 727
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 728
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 729
    aget-object v3, v0, v2

    invoke-static {v1, v3}, Lcom/sleepycat/asm/Type;->getDescriptor(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    .line 728
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 731
    .end local v2    # "i":I
    :cond_0
    const-string v2, ")V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDescriptor(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 712
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lcom/sleepycat/asm/Type;->getDescriptor(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    .line 714
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDescriptor(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .line 673
    iget-object v0, p0, Lcom/sleepycat/asm/Type;->buf:[C

    if-nez v0, :cond_0

    .line 676
    iget v0, p0, Lcom/sleepycat/asm/Type;->off:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x18

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 677
    :cond_0
    iget v1, p0, Lcom/sleepycat/asm/Type;->sort:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 678
    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 679
    iget-object v0, p0, Lcom/sleepycat/asm/Type;->buf:[C

    iget v1, p0, Lcom/sleepycat/asm/Type;->off:I

    iget v2, p0, Lcom/sleepycat/asm/Type;->len:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 680
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 682
    :cond_1
    iget v1, p0, Lcom/sleepycat/asm/Type;->off:I

    iget v2, p0, Lcom/sleepycat/asm/Type;->len:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 684
    :goto_0
    return-void
.end method

.method private static getDescriptor(Ljava/lang/StringBuilder;Ljava/lang/Class;)V
    .locals 6
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 762
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p1

    .line 764
    .local v0, "d":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 766
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 767
    const/16 v1, 0x49

    .local v1, "car":C
    goto :goto_1

    .line 768
    .end local v1    # "car":C
    :cond_0
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 769
    const/16 v1, 0x56

    .restart local v1    # "car":C
    goto :goto_1

    .line 770
    .end local v1    # "car":C
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 771
    const/16 v1, 0x5a

    .restart local v1    # "car":C
    goto :goto_1

    .line 772
    .end local v1    # "car":C
    :cond_2
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 773
    const/16 v1, 0x42

    .restart local v1    # "car":C
    goto :goto_1

    .line 774
    .end local v1    # "car":C
    :cond_3
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 775
    const/16 v1, 0x43

    .restart local v1    # "car":C
    goto :goto_1

    .line 776
    .end local v1    # "car":C
    :cond_4
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 777
    const/16 v1, 0x53

    .restart local v1    # "car":C
    goto :goto_1

    .line 778
    .end local v1    # "car":C
    :cond_5
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 779
    const/16 v1, 0x44

    .restart local v1    # "car":C
    goto :goto_1

    .line 780
    .end local v1    # "car":C
    :cond_6
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    .line 781
    const/16 v1, 0x46

    .restart local v1    # "car":C
    goto :goto_1

    .line 783
    .end local v1    # "car":C
    :cond_7
    const/16 v1, 0x4a

    .line 785
    .restart local v1    # "car":C
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 786
    return-void

    .line 787
    .end local v1    # "car":C
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 788
    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 791
    :cond_9
    const/16 v1, 0x4c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 793
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 794
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_b

    .line 795
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 796
    .local v4, "car":C
    const/16 v5, 0x2e

    if-ne v4, v5, :cond_a

    const/16 v5, 0x2f

    goto :goto_3

    :cond_a
    move v5, v4

    :goto_3
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 794
    .end local v4    # "car":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 798
    .end local v3    # "i":I
    :cond_b
    const/16 v3, 0x3b

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 799
    return-void
.end method

.method public static getInternalName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 701
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getMethodDescriptor(Lcom/sleepycat/asm/Type;[Lcom/sleepycat/asm/Type;)Ljava/lang/String;
    .locals 3
    .param p0, "returnType"    # Lcom/sleepycat/asm/Type;
    .param p1, "argumentTypes"    # [Lcom/sleepycat/asm/Type;

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 657
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 658
    aget-object v2, p1, v1

    invoke-direct {v2, v0}, Lcom/sleepycat/asm/Type;->getDescriptor(Ljava/lang/StringBuilder;)V

    .line 657
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 661
    invoke-direct {p0, v0}, Lcom/sleepycat/asm/Type;->getDescriptor(Ljava/lang/StringBuilder;)V

    .line 662
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 4
    .param p0, "m"    # Ljava/lang/reflect/Method;

    .line 742
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 743
    .local v0, "parameters":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 745
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 746
    aget-object v3, v0, v2

    invoke-static {v1, v3}, Lcom/sleepycat/asm/Type;->getDescriptor(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    .line 745
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 748
    .end local v2    # "i":I
    :cond_0
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 749
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sleepycat/asm/Type;->getDescriptor(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    .line 750
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static varargs getMethodType(Lcom/sleepycat/asm/Type;[Lcom/sleepycat/asm/Type;)Lcom/sleepycat/asm/Type;
    .locals 1
    .param p0, "returnType"    # Lcom/sleepycat/asm/Type;
    .param p1, "argumentTypes"    # [Lcom/sleepycat/asm/Type;

    .line 257
    invoke-static {p0, p1}, Lcom/sleepycat/asm/Type;->getMethodDescriptor(Lcom/sleepycat/asm/Type;[Lcom/sleepycat/asm/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/asm/Type;->getType(Ljava/lang/String;)Lcom/sleepycat/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getMethodType(Ljava/lang/String;)Lcom/sleepycat/asm/Type;
    .locals 2
    .param p0, "methodDescriptor"    # Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/asm/Type;->getType([CI)Lcom/sleepycat/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getObjectType(Ljava/lang/String;)Lcom/sleepycat/asm/Type;
    .locals 5
    .param p0, "internalName"    # Ljava/lang/String;

    .line 228
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 229
    .local v0, "buf":[C
    new-instance v1, Lcom/sleepycat/asm/Type;

    const/4 v2, 0x0

    aget-char v3, v0, v2

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_0

    const/16 v3, 0x9

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    :goto_0
    array-length v4, v0

    invoke-direct {v1, v3, v0, v2, v4}, Lcom/sleepycat/asm/Type;-><init>(I[CII)V

    return-object v1
.end method

.method public static getReturnType(Ljava/lang/String;)Lcom/sleepycat/asm/Type;
    .locals 5
    .param p0, "methodDescriptor"    # Ljava/lang/String;

    .line 379
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 380
    .local v0, "buf":[C
    const/4 v1, 0x1

    .line 382
    .local v1, "off":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "off":I
    .local v2, "off":I
    aget-char v1, v0, v1

    .line 383
    .local v1, "car":C
    const/16 v3, 0x29

    if-ne v1, v3, :cond_0

    .line 384
    invoke-static {v0, v2}, Lcom/sleepycat/asm/Type;->getType([CI)Lcom/sleepycat/asm/Type;

    move-result-object v3

    return-object v3

    .line 385
    :cond_0
    const/16 v3, 0x4c

    if-ne v1, v3, :cond_2

    .line 386
    :goto_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "off":I
    .local v3, "off":I
    aget-char v2, v0, v2

    const/16 v4, 0x3b

    if-eq v2, v4, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    .line 385
    .end local v3    # "off":I
    .restart local v2    # "off":I
    :cond_2
    move v1, v2

    .line 389
    .end local v2    # "off":I
    .local v1, "off":I
    :goto_2
    goto :goto_0
.end method

.method public static getReturnType(Ljava/lang/reflect/Method;)Lcom/sleepycat/asm/Type;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 402
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/asm/Type;->getType(Ljava/lang/Class;)Lcom/sleepycat/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/Class;)Lcom/sleepycat/asm/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/sleepycat/asm/Type;"
        }
    .end annotation

    .line 268
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 269
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 270
    sget-object v0, Lcom/sleepycat/asm/Type;->INT_TYPE:Lcom/sleepycat/asm/Type;

    return-object v0

    .line 271
    :cond_0
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 272
    sget-object v0, Lcom/sleepycat/asm/Type;->VOID_TYPE:Lcom/sleepycat/asm/Type;

    return-object v0

    .line 273
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 274
    sget-object v0, Lcom/sleepycat/asm/Type;->BOOLEAN_TYPE:Lcom/sleepycat/asm/Type;

    return-object v0

    .line 275
    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 276
    sget-object v0, Lcom/sleepycat/asm/Type;->BYTE_TYPE:Lcom/sleepycat/asm/Type;

    return-object v0

    .line 277
    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 278
    sget-object v0, Lcom/sleepycat/asm/Type;->CHAR_TYPE:Lcom/sleepycat/asm/Type;

    return-object v0

    .line 279
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 280
    sget-object v0, Lcom/sleepycat/asm/Type;->SHORT_TYPE:Lcom/sleepycat/asm/Type;

    return-object v0

    .line 281
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 282
    sget-object v0, Lcom/sleepycat/asm/Type;->DOUBLE_TYPE:Lcom/sleepycat/asm/Type;

    return-object v0

    .line 283
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 284
    sget-object v0, Lcom/sleepycat/asm/Type;->FLOAT_TYPE:Lcom/sleepycat/asm/Type;

    return-object v0

    .line 286
    :cond_7
    sget-object v0, Lcom/sleepycat/asm/Type;->LONG_TYPE:Lcom/sleepycat/asm/Type;

    return-object v0

    .line 289
    :cond_8
    invoke-static {p0}, Lcom/sleepycat/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/asm/Type;->getType(Ljava/lang/String;)Lcom/sleepycat/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/String;)Lcom/sleepycat/asm/Type;
    .locals 2
    .param p0, "typeDescriptor"    # Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/asm/Type;->getType([CI)Lcom/sleepycat/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/reflect/Constructor;)Lcom/sleepycat/asm/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lcom/sleepycat/asm/Type;"
        }
    .end annotation

    .line 301
    .local p0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static {p0}, Lcom/sleepycat/asm/Type;->getConstructorDescriptor(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/asm/Type;->getType(Ljava/lang/String;)Lcom/sleepycat/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/reflect/Method;)Lcom/sleepycat/asm/Type;
    .locals 1
    .param p0, "m"    # Ljava/lang/reflect/Method;

    .line 312
    invoke-static {p0}, Lcom/sleepycat/asm/Type;->getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/asm/Type;->getType(Ljava/lang/String;)Lcom/sleepycat/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method private static getType([CI)Lcom/sleepycat/asm/Type;
    .locals 5
    .param p0, "buf"    # [C
    .param p1, "off"    # I

    .line 457
    aget-char v0, p0, p1

    const/16 v1, 0x3b

    sparse-switch v0, :sswitch_data_0

    .line 496
    new-instance v0, Lcom/sleepycat/asm/Type;

    const/16 v1, 0xb

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/sleepycat/asm/Type;-><init>(I[CII)V

    return-object v0

    .line 477
    :sswitch_0
    const/4 v0, 0x1

    .line 478
    .local v0, "len":I
    :goto_0
    add-int v2, p1, v0

    aget-char v2, p0, v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_0
    add-int v2, p1, v0

    aget-char v2, p0, v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_1

    .line 482
    add-int/lit8 v0, v0, 0x1

    .line 483
    :goto_1
    add-int v2, p1, v0

    aget-char v2, p0, v2

    if-eq v2, v1, :cond_1

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 487
    :cond_1
    new-instance v1, Lcom/sleepycat/asm/Type;

    const/16 v2, 0x9

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v1, v2, p0, p1, v3}, Lcom/sleepycat/asm/Type;-><init>(I[CII)V

    return-object v1

    .line 461
    .end local v0    # "len":I
    :sswitch_1
    sget-object v0, Lcom/sleepycat/asm/Type;->BOOLEAN_TYPE:Lcom/sleepycat/asm/Type;

    return-object v0

    .line 459
    :sswitch_2
    sget-object v0, Lcom/sleepycat/asm/Type;->VOID_TYPE:Lcom/sleepycat/asm/Type;

    return-object v0

    .line 467
    :sswitch_3
    sget-object v0, Lcom/sleepycat/asm/Type;->SHORT_TYPE:Lcom/sleepycat/asm/Type;

    return-object v0

    .line 489
    :sswitch_4
    const/4 v0, 0x1

    .line 490
    .restart local v0    # "len":I
    :goto_2
    add-int v2, p1, v0

    aget-char v2, p0, v2

    if-eq v2, v1, :cond_2

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 493
    :cond_2
    new-instance v1, Lcom/sleepycat/asm/Type;

    const/16 v2, 0xa

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, v0, -0x1

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/sleepycat/asm/Type;-><init>(I[CII)V

    return-object v1

    .line 473
    .end local v0    # "len":I
    :sswitch_5
    sget-object v0, Lcom/sleepycat/asm/Type;->LONG_TYPE:Lcom/sleepycat/asm/Type;

    return-object v0

    .line 469
    :sswitch_6
    sget-object v0, Lcom/sleepycat/asm/Type;->INT_TYPE:Lcom/sleepycat/asm/Type;

    return-object v0

    .line 471
    :sswitch_7
    sget-object v0, Lcom/sleepycat/asm/Type;->FLOAT_TYPE:Lcom/sleepycat/asm/Type;

    return-object v0

    .line 475
    :sswitch_8
    sget-object v0, Lcom/sleepycat/asm/Type;->DOUBLE_TYPE:Lcom/sleepycat/asm/Type;

    return-object v0

    .line 463
    :sswitch_9
    sget-object v0, Lcom/sleepycat/asm/Type;->CHAR_TYPE:Lcom/sleepycat/asm/Type;

    return-object v0

    .line 465
    :sswitch_a
    sget-object v0, Lcom/sleepycat/asm/Type;->BYTE_TYPE:Lcom/sleepycat/asm/Type;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_a
        0x43 -> :sswitch_9
        0x44 -> :sswitch_8
        0x46 -> :sswitch_7
        0x49 -> :sswitch_6
        0x4a -> :sswitch_5
        0x4c -> :sswitch_4
        0x53 -> :sswitch_3
        0x56 -> :sswitch_2
        0x5a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 857
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 858
    return v0

    .line 860
    :cond_0
    instance-of v1, p1, Lcom/sleepycat/asm/Type;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 861
    return v2

    .line 863
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/asm/Type;

    .line 864
    .local v1, "t":Lcom/sleepycat/asm/Type;
    iget v3, p0, Lcom/sleepycat/asm/Type;->sort:I

    iget v4, v1, Lcom/sleepycat/asm/Type;->sort:I

    if-eq v3, v4, :cond_2

    .line 865
    return v2

    .line 867
    :cond_2
    const/16 v4, 0x9

    if-lt v3, v4, :cond_5

    .line 868
    iget v3, p0, Lcom/sleepycat/asm/Type;->len:I

    iget v4, v1, Lcom/sleepycat/asm/Type;->len:I

    if-eq v3, v4, :cond_3

    .line 869
    return v2

    .line 871
    :cond_3
    iget v4, p0, Lcom/sleepycat/asm/Type;->off:I

    .local v4, "i":I
    iget v5, v1, Lcom/sleepycat/asm/Type;->off:I

    .local v5, "j":I
    add-int/2addr v3, v4

    .local v3, "end":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 872
    iget-object v6, p0, Lcom/sleepycat/asm/Type;->buf:[C

    aget-char v6, v6, v4

    iget-object v7, v1, Lcom/sleepycat/asm/Type;->buf:[C

    aget-char v7, v7, v5

    if-eq v6, v7, :cond_4

    .line 873
    return v2

    .line 871
    :cond_4
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 877
    .end local v3    # "end":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_5
    return v0
.end method

.method public getArgumentTypes()[Lcom/sleepycat/asm/Type;
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/sleepycat/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getArgumentsAndReturnSizes()I
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 4

    .line 548
    iget v0, p0, Lcom/sleepycat/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_0

    .line 576
    const/4 v0, 0x0

    return-object v0

    .line 574
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sleepycat/asm/Type;->buf:[C

    iget v2, p0, Lcom/sleepycat/asm/Type;->off:I

    iget v3, p0, Lcom/sleepycat/asm/Type;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 568
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sleepycat/asm/Type;->getElementType()Lcom/sleepycat/asm/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 569
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sleepycat/asm/Type;->getDimensions()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 570
    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 572
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 566
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :pswitch_2
    const-string v0, "double"

    return-object v0

    .line 564
    :pswitch_3
    const-string v0, "long"

    return-object v0

    .line 562
    :pswitch_4
    const-string v0, "float"

    return-object v0

    .line 560
    :pswitch_5
    const-string v0, "int"

    return-object v0

    .line 558
    :pswitch_6
    const-string/jumbo v0, "short"

    return-object v0

    .line 556
    :pswitch_7
    const-string v0, "byte"

    return-object v0

    .line 554
    :pswitch_8
    const-string v0, "char"

    return-object v0

    .line 552
    :pswitch_9
    const-string v0, "boolean"

    return-object v0

    .line 550
    :pswitch_a
    const-string/jumbo v0, "void"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 2

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/sleepycat/asm/Type;->getDescriptor(Ljava/lang/StringBuilder;)V

    .line 639
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDimensions()I
    .locals 3

    .line 524
    const/4 v0, 0x1

    .line 525
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/asm/Type;->buf:[C

    iget v2, p0, Lcom/sleepycat/asm/Type;->off:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 528
    :cond_0
    return v0
.end method

.method public getElementType()Lcom/sleepycat/asm/Type;
    .locals 3

    .line 538
    iget-object v0, p0, Lcom/sleepycat/asm/Type;->buf:[C

    iget v1, p0, Lcom/sleepycat/asm/Type;->off:I

    invoke-virtual {p0}, Lcom/sleepycat/asm/Type;->getDimensions()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sleepycat/asm/Type;->getType([CI)Lcom/sleepycat/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 4

    .line 589
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sleepycat/asm/Type;->buf:[C

    iget v2, p0, Lcom/sleepycat/asm/Type;->off:I

    iget v3, p0, Lcom/sleepycat/asm/Type;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getOpcode(I)I
    .locals 2
    .param p1, "opcode"    # I

    .line 833
    const/4 v0, 0x4

    const/16 v1, 0x2e

    if-eq p1, v1, :cond_2

    const/16 v1, 0x4f

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 840
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/asm/Type;->buf:[C

    if-nez v1, :cond_1

    iget v0, p0, Lcom/sleepycat/asm/Type;->off:I

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x10

    :cond_1
    add-int/2addr v0, p1

    return v0

    .line 836
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/asm/Type;->buf:[C

    if-nez v1, :cond_3

    iget v0, p0, Lcom/sleepycat/asm/Type;->off:I

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    :cond_3
    add-int/2addr v0, p1

    return v0
.end method

.method public getReturnType()Lcom/sleepycat/asm/Type;
    .locals 1

    .line 609
    invoke-virtual {p0}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/asm/Type;->getReturnType(Ljava/lang/String;)Lcom/sleepycat/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/sleepycat/asm/Type;->buf:[C

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sleepycat/asm/Type;->off:I

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getSort()I
    .locals 1

    .line 514
    iget v0, p0, Lcom/sleepycat/asm/Type;->sort:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 887
    iget v0, p0, Lcom/sleepycat/asm/Type;->sort:I

    mul-int/lit8 v1, v0, 0xd

    .line 888
    .local v1, "hc":I
    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    .line 889
    iget v0, p0, Lcom/sleepycat/asm/Type;->off:I

    .local v0, "i":I
    iget v2, p0, Lcom/sleepycat/asm/Type;->len:I

    add-int/2addr v2, v0

    .local v2, "end":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 890
    iget-object v3, p0, Lcom/sleepycat/asm/Type;->buf:[C

    aget-char v3, v3, v0

    add-int/2addr v3, v1

    mul-int/lit8 v1, v3, 0x11

    .line 889
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 893
    .end local v0    # "i":I
    .end local v2    # "end":I
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 903
    invoke-virtual {p0}, Lcom/sleepycat/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
