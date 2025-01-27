.class public Lbsh/org/objectweb/asm/Type;
.super Ljava/lang/Object;
.source "Type.java"


# static fields
.field public static final ARRAY:I = 0x9

.field public static final BOOLEAN:I = 0x1

.field public static final BOOLEAN_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final BYTE:I = 0x3

.field public static final BYTE_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final CHAR:I = 0x2

.field public static final CHAR_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final DOUBLE:I = 0x8

.field public static final DOUBLE_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final FLOAT:I = 0x6

.field public static final FLOAT_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final INT:I = 0x5

.field public static final INT_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final LONG:I = 0x7

.field public static final LONG_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final OBJECT:I = 0xa

.field public static final SHORT:I = 0x4

.field public static final SHORT_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final VOID:I

.field public static final VOID_TYPE:Lbsh/org/objectweb/asm/Type;


# instance fields
.field private buf:[C

.field private len:I

.field private off:I

.field private final sort:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 117
    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->VOID_TYPE:Lbsh/org/objectweb/asm/Type;

    .line 123
    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->BOOLEAN_TYPE:Lbsh/org/objectweb/asm/Type;

    .line 129
    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->CHAR_TYPE:Lbsh/org/objectweb/asm/Type;

    .line 135
    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->BYTE_TYPE:Lbsh/org/objectweb/asm/Type;

    .line 141
    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->SHORT_TYPE:Lbsh/org/objectweb/asm/Type;

    .line 147
    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->INT_TYPE:Lbsh/org/objectweb/asm/Type;

    .line 153
    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->FLOAT_TYPE:Lbsh/org/objectweb/asm/Type;

    .line 159
    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->LONG_TYPE:Lbsh/org/objectweb/asm/Type;

    .line 165
    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->DOUBLE_TYPE:Lbsh/org/objectweb/asm/Type;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "sort"    # I

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput p1, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    .line 209
    const/4 v0, 0x1

    iput v0, p0, Lbsh/org/objectweb/asm/Type;->len:I

    .line 210
    return-void
.end method

.method private constructor <init>(I[CII)V
    .locals 0
    .param p1, "sort"    # I
    .param p2, "buf"    # [C
    .param p3, "off"    # I
    .param p4, "len"    # I

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput p1, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    .line 228
    iput-object p2, p0, Lbsh/org/objectweb/asm/Type;->buf:[C

    .line 229
    iput p3, p0, Lbsh/org/objectweb/asm/Type;->off:I

    .line 230
    iput p4, p0, Lbsh/org/objectweb/asm/Type;->len:I

    .line 231
    return-void
.end method

.method public static getArgumentTypes(Ljava/lang/String;)[Lbsh/org/objectweb/asm/Type;
    .locals 6
    .param p0, "methodDescriptor"    # Ljava/lang/String;

    .line 287
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 288
    .local v0, "buf":[C
    const/4 v1, 0x1

    .line 289
    .local v1, "off":I
    const/4 v2, 0x0

    .line 291
    .local v2, "size":I
    :goto_0
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "off":I
    .local v3, "off":I
    aget-char v1, v0, v1

    .line 292
    .local v1, "car":C
    const/16 v4, 0x29

    if-ne v1, v4, :cond_1

    .line 293
    nop

    .line 302
    .end local v1    # "car":C
    new-array v1, v2, [Lbsh/org/objectweb/asm/Type;

    .line 303
    .local v1, "args":[Lbsh/org/objectweb/asm/Type;
    const/4 v3, 0x1

    .line 304
    const/4 v2, 0x0

    .line 305
    :goto_1
    aget-char v5, v0, v3

    if-eq v5, v4, :cond_0

    .line 306
    invoke-static {v0, v3}, Lbsh/org/objectweb/asm/Type;->getType([CI)Lbsh/org/objectweb/asm/Type;

    move-result-object v5

    aput-object v5, v1, v2

    .line 307
    aget-object v5, v1, v2

    iget v5, v5, Lbsh/org/objectweb/asm/Type;->len:I

    add-int/2addr v3, v5

    .line 308
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 310
    :cond_0
    return-object v1

    .line 294
    .local v1, "car":C
    :cond_1
    const/16 v4, 0x4c

    if-ne v1, v4, :cond_3

    .line 295
    :goto_2
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "off":I
    .local v4, "off":I
    aget-char v3, v0, v3

    const/16 v5, 0x3b

    if-eq v3, v5, :cond_2

    move v3, v4

    goto :goto_2

    .line 297
    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_3

    .line 298
    .end local v4    # "off":I
    .restart local v3    # "off":I
    :cond_3
    const/16 v4, 0x5b

    if-eq v1, v4, :cond_4

    .line 299
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_3

    .line 298
    :cond_4
    move v1, v3

    .line 301
    .end local v3    # "off":I
    .local v1, "off":I
    :goto_3
    goto :goto_0
.end method

.method public static getArgumentTypes(Ljava/lang/reflect/Method;)[Lbsh/org/objectweb/asm/Type;
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 323
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 324
    .local v0, "classes":[Ljava/lang/Class;
    array-length v1, v0

    new-array v1, v1, [Lbsh/org/objectweb/asm/Type;

    .line 325
    .local v1, "types":[Lbsh/org/objectweb/asm/Type;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 326
    aget-object v3, v0, v2

    invoke-static {v3}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v3

    aput-object v3, v1, v2

    .line 325
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 328
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static getDescriptor(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Ljava/lang/Class;

    .line 556
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 557
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {v0, p0}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    .line 558
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDescriptor(Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .line 515
    iget v0, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_0

    .line 527
    iget-object v0, p0, Lbsh/org/objectweb/asm/Type;->buf:[C

    iget v1, p0, Lbsh/org/objectweb/asm/Type;->off:I

    iget v2, p0, Lbsh/org/objectweb/asm/Type;->len:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 529
    return-void

    .line 524
    :pswitch_0
    const/16 v0, 0x44

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    .line 523
    :pswitch_1
    const/16 v0, 0x4a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    .line 522
    :pswitch_2
    const/16 v0, 0x46

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    .line 521
    :pswitch_3
    const/16 v0, 0x49

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    .line 520
    :pswitch_4
    const/16 v0, 0x53

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    .line 519
    :pswitch_5
    const/16 v0, 0x42

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    .line 518
    :pswitch_6
    const/16 v0, 0x43

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    .line 517
    :pswitch_7
    const/16 v0, 0x5a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    .line 516
    :pswitch_8
    const/16 v0, 0x56

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static getDescriptor(Ljava/lang/StringBuffer;Ljava/lang/Class;)V
    .locals 6
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "c"    # Ljava/lang/Class;

    .line 588
    move-object v0, p1

    .line 590
    .local v0, "d":Ljava/lang/Class;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 592
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 593
    const/16 v1, 0x49

    .local v1, "car":C
    goto :goto_1

    .line 594
    .end local v1    # "car":C
    :cond_0
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 595
    const/16 v1, 0x56

    .restart local v1    # "car":C
    goto :goto_1

    .line 596
    .end local v1    # "car":C
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 597
    const/16 v1, 0x5a

    .restart local v1    # "car":C
    goto :goto_1

    .line 598
    .end local v1    # "car":C
    :cond_2
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 599
    const/16 v1, 0x42

    .restart local v1    # "car":C
    goto :goto_1

    .line 600
    .end local v1    # "car":C
    :cond_3
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 601
    const/16 v1, 0x43

    .restart local v1    # "car":C
    goto :goto_1

    .line 602
    .end local v1    # "car":C
    :cond_4
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 603
    const/16 v1, 0x53

    .restart local v1    # "car":C
    goto :goto_1

    .line 604
    .end local v1    # "car":C
    :cond_5
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 605
    const/16 v1, 0x44

    .restart local v1    # "car":C
    goto :goto_1

    .line 606
    .end local v1    # "car":C
    :cond_6
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    .line 607
    const/16 v1, 0x46

    .restart local v1    # "car":C
    goto :goto_1

    .line 609
    .end local v1    # "car":C
    :cond_7
    const/16 v1, 0x4a

    .line 611
    .restart local v1    # "car":C
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 612
    return-void

    .line 613
    .end local v1    # "car":C
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 614
    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 615
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 617
    :cond_9
    const/16 v1, 0x4c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 618
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 620
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_b

    .line 621
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 622
    .local v4, "car":C
    const/16 v5, 0x2e

    if-ne v4, v5, :cond_a

    const/16 v5, 0x2f

    goto :goto_3

    :cond_a
    move v5, v4

    :goto_3
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 620
    .end local v4    # "car":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 624
    .end local v3    # "i":I
    :cond_b
    const/16 v3, 0x3b

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 625
    return-void
.end method

.method public static getInternalName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Ljava/lang/Class;

    .line 545
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMethodDescriptor(Lbsh/org/objectweb/asm/Type;[Lbsh/org/objectweb/asm/Type;)Ljava/lang/String;
    .locals 3
    .param p0, "returnType"    # Lbsh/org/objectweb/asm/Type;
    .param p1, "argumentTypes"    # [Lbsh/org/objectweb/asm/Type;

    .line 497
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 498
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 499
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 500
    aget-object v2, p1, v1

    invoke-direct {v2, v0}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;)V

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 503
    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;)V

    .line 504
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 4
    .param p0, "m"    # Ljava/lang/reflect/Method;

    .line 569
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 570
    .local v0, "parameters":[Ljava/lang/Class;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 571
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 572
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 573
    aget-object v3, v0, v2

    invoke-static {v1, v3}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    .line 572
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 575
    .end local v2    # "i":I
    :cond_0
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 576
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    .line 577
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getReturnType(Ljava/lang/String;)Lbsh/org/objectweb/asm/Type;
    .locals 2
    .param p0, "methodDescriptor"    # Ljava/lang/String;

    .line 341
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 342
    .local v0, "buf":[C
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lbsh/org/objectweb/asm/Type;->getType([CI)Lbsh/org/objectweb/asm/Type;

    move-result-object v1

    return-object v1
.end method

.method public static getReturnType(Ljava/lang/reflect/Method;)Lbsh/org/objectweb/asm/Type;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 355
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;

    .line 252
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 253
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 254
    sget-object v0, Lbsh/org/objectweb/asm/Type;->INT_TYPE:Lbsh/org/objectweb/asm/Type;

    return-object v0

    .line 255
    :cond_0
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 256
    sget-object v0, Lbsh/org/objectweb/asm/Type;->VOID_TYPE:Lbsh/org/objectweb/asm/Type;

    return-object v0

    .line 257
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 258
    sget-object v0, Lbsh/org/objectweb/asm/Type;->BOOLEAN_TYPE:Lbsh/org/objectweb/asm/Type;

    return-object v0

    .line 259
    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 260
    sget-object v0, Lbsh/org/objectweb/asm/Type;->BYTE_TYPE:Lbsh/org/objectweb/asm/Type;

    return-object v0

    .line 261
    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 262
    sget-object v0, Lbsh/org/objectweb/asm/Type;->CHAR_TYPE:Lbsh/org/objectweb/asm/Type;

    return-object v0

    .line 263
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 264
    sget-object v0, Lbsh/org/objectweb/asm/Type;->SHORT_TYPE:Lbsh/org/objectweb/asm/Type;

    return-object v0

    .line 265
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 266
    sget-object v0, Lbsh/org/objectweb/asm/Type;->DOUBLE_TYPE:Lbsh/org/objectweb/asm/Type;

    return-object v0

    .line 267
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 268
    sget-object v0, Lbsh/org/objectweb/asm/Type;->FLOAT_TYPE:Lbsh/org/objectweb/asm/Type;

    return-object v0

    .line 270
    :cond_7
    sget-object v0, Lbsh/org/objectweb/asm/Type;->LONG_TYPE:Lbsh/org/objectweb/asm/Type;

    return-object v0

    .line 273
    :cond_8
    invoke-static {p0}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/String;)Lbsh/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/String;)Lbsh/org/objectweb/asm/Type;
    .locals 2
    .param p0, "typeDescriptor"    # Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbsh/org/objectweb/asm/Type;->getType([CI)Lbsh/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method private static getType([CI)Lbsh/org/objectweb/asm/Type;
    .locals 4
    .param p0, "buf"    # [C
    .param p1, "off"    # I

    .line 368
    aget-char v0, p0, p1

    const/16 v1, 0x3b

    sparse-switch v0, :sswitch_data_0

    .line 392
    const/4 v0, 0x1

    .local v0, "len":I
    goto :goto_2

    .line 379
    .end local v0    # "len":I
    :sswitch_0
    const/4 v0, 0x1

    .line 380
    .restart local v0    # "len":I
    :goto_0
    add-int v2, p1, v0

    aget-char v2, p0, v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    :cond_0
    add-int v2, p1, v0

    aget-char v2, p0, v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_1

    .line 384
    add-int/lit8 v0, v0, 0x1

    .line 385
    :goto_1
    add-int v2, p1, v0

    aget-char v2, p0, v2

    if-eq v2, v1, :cond_1

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 389
    :cond_1
    new-instance v1, Lbsh/org/objectweb/asm/Type;

    const/16 v2, 0x9

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v1, v2, p0, p1, v3}, Lbsh/org/objectweb/asm/Type;-><init>(I[CII)V

    return-object v1

    .line 370
    .end local v0    # "len":I
    :sswitch_1
    sget-object v0, Lbsh/org/objectweb/asm/Type;->BOOLEAN_TYPE:Lbsh/org/objectweb/asm/Type;

    return-object v0

    .line 369
    :sswitch_2
    sget-object v0, Lbsh/org/objectweb/asm/Type;->VOID_TYPE:Lbsh/org/objectweb/asm/Type;

    return-object v0

    .line 373
    :sswitch_3
    sget-object v0, Lbsh/org/objectweb/asm/Type;->SHORT_TYPE:Lbsh/org/objectweb/asm/Type;

    return-object v0

    .line 376
    :sswitch_4
    sget-object v0, Lbsh/org/objectweb/asm/Type;->LONG_TYPE:Lbsh/org/objectweb/asm/Type;

    return-object v0

    .line 374
    :sswitch_5
    sget-object v0, Lbsh/org/objectweb/asm/Type;->INT_TYPE:Lbsh/org/objectweb/asm/Type;

    return-object v0

    .line 375
    :sswitch_6
    sget-object v0, Lbsh/org/objectweb/asm/Type;->FLOAT_TYPE:Lbsh/org/objectweb/asm/Type;

    return-object v0

    .line 377
    :sswitch_7
    sget-object v0, Lbsh/org/objectweb/asm/Type;->DOUBLE_TYPE:Lbsh/org/objectweb/asm/Type;

    return-object v0

    .line 371
    :sswitch_8
    sget-object v0, Lbsh/org/objectweb/asm/Type;->CHAR_TYPE:Lbsh/org/objectweb/asm/Type;

    return-object v0

    .line 372
    :sswitch_9
    sget-object v0, Lbsh/org/objectweb/asm/Type;->BYTE_TYPE:Lbsh/org/objectweb/asm/Type;

    return-object v0

    .line 393
    .restart local v0    # "len":I
    :goto_2
    add-int v2, p1, v0

    aget-char v2, p0, v2

    if-eq v2, v1, :cond_2

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 396
    :cond_2
    new-instance v1, Lbsh/org/objectweb/asm/Type;

    const/16 v2, 0xa

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v1, v2, p0, p1, v3}, Lbsh/org/objectweb/asm/Type;-><init>(I[CII)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_9
        0x43 -> :sswitch_8
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x49 -> :sswitch_5
        0x4a -> :sswitch_4
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

    .line 708
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 709
    return v0

    .line 711
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    instance-of v2, p1, Lbsh/org/objectweb/asm/Type;

    if-nez v2, :cond_1

    goto :goto_1

    .line 714
    :cond_1
    move-object v2, p1

    check-cast v2, Lbsh/org/objectweb/asm/Type;

    .line 715
    .local v2, "t":Lbsh/org/objectweb/asm/Type;
    iget v3, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    iget v4, v2, Lbsh/org/objectweb/asm/Type;->sort:I

    if-eq v3, v4, :cond_2

    .line 716
    return v1

    .line 718
    :cond_2
    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_6

    .line 719
    :cond_3
    iget v3, p0, Lbsh/org/objectweb/asm/Type;->len:I

    iget v4, v2, Lbsh/org/objectweb/asm/Type;->len:I

    if-eq v3, v4, :cond_4

    .line 720
    return v1

    .line 722
    :cond_4
    iget v4, p0, Lbsh/org/objectweb/asm/Type;->off:I

    .local v4, "i":I
    iget v5, v2, Lbsh/org/objectweb/asm/Type;->off:I

    .local v5, "j":I
    add-int/2addr v3, v4

    .local v3, "end":I
    :goto_0
    if-ge v4, v3, :cond_6

    .line 723
    iget-object v6, p0, Lbsh/org/objectweb/asm/Type;->buf:[C

    aget-char v6, v6, v4

    iget-object v7, v2, Lbsh/org/objectweb/asm/Type;->buf:[C

    aget-char v7, v7, v5

    if-eq v6, v7, :cond_5

    .line 724
    return v1

    .line 722
    :cond_5
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 728
    .end local v3    # "end":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_6
    return v0

    .line 712
    .end local v2    # "t":Lbsh/org/objectweb/asm/Type;
    :cond_7
    :goto_1
    return v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 4

    .line 452
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lbsh/org/objectweb/asm/Type;->buf:[C

    iget v2, p0, Lbsh/org/objectweb/asm/Type;->off:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lbsh/org/objectweb/asm/Type;->len:I

    add-int/lit8 v3, v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 2

    .line 478
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 479
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;)V

    .line 480
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDimensions()I
    .locals 3

    .line 425
    const/4 v0, 0x1

    .line 426
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lbsh/org/objectweb/asm/Type;->buf:[C

    iget v2, p0, Lbsh/org/objectweb/asm/Type;->off:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :cond_0
    return v0
.end method

.method public getElementType()Lbsh/org/objectweb/asm/Type;
    .locals 3

    .line 440
    iget-object v0, p0, Lbsh/org/objectweb/asm/Type;->buf:[C

    iget v1, p0, Lbsh/org/objectweb/asm/Type;->off:I

    invoke-virtual {p0}, Lbsh/org/objectweb/asm/Type;->getDimensions()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lbsh/org/objectweb/asm/Type;->getType([CI)Lbsh/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 4

    .line 464
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lbsh/org/objectweb/asm/Type;->buf:[C

    iget v2, p0, Lbsh/org/objectweb/asm/Type;->off:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lbsh/org/objectweb/asm/Type;->len:I

    add-int/lit8 v3, v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getOpcode(I)I
    .locals 1
    .param p1, "opcode"    # I

    .line 657
    const/16 v0, 0x2e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4f

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 680
    :cond_0
    iget v0, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_0

    .line 698
    add-int/lit8 v0, p1, 0x4

    return v0

    .line 694
    :pswitch_0
    add-int/lit8 v0, p1, 0x3

    return v0

    .line 692
    :pswitch_1
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 690
    :pswitch_2
    add-int/lit8 v0, p1, 0x2

    return v0

    .line 688
    :pswitch_3
    return p1

    .line 682
    :pswitch_4
    add-int/lit8 v0, p1, 0x5

    return v0

    .line 658
    :cond_1
    :goto_0
    iget v0, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_1

    .line 677
    add-int/lit8 v0, p1, 0x4

    return v0

    .line 673
    :pswitch_5
    add-int/lit8 v0, p1, 0x3

    return v0

    .line 671
    :pswitch_6
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 669
    :pswitch_7
    add-int/lit8 v0, p1, 0x2

    return v0

    .line 667
    :pswitch_8
    return p1

    .line 665
    :pswitch_9
    add-int/lit8 v0, p1, 0x7

    return v0

    .line 663
    :pswitch_a
    add-int/lit8 v0, p1, 0x6

    return v0

    .line 661
    :pswitch_b
    add-int/lit8 v0, p1, 0x5

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public getSize()I
    .locals 2

    .line 642
    iget v0, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    :goto_1
    return v0
.end method

.method public getSort()I
    .locals 1

    .line 414
    iget v0, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 732
    iget v0, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    mul-int/lit8 v1, v0, 0xd

    .line 733
    .local v1, "hc":I
    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    .line 734
    :cond_0
    iget v0, p0, Lbsh/org/objectweb/asm/Type;->off:I

    .local v0, "i":I
    iget v2, p0, Lbsh/org/objectweb/asm/Type;->len:I

    add-int/2addr v2, v0

    .local v2, "end":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 735
    iget-object v3, p0, Lbsh/org/objectweb/asm/Type;->buf:[C

    aget-char v3, v3, v0

    add-int/2addr v3, v1

    mul-int/lit8 v1, v3, 0x11

    .line 734
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 738
    .end local v0    # "i":I
    .end local v2    # "end":I
    :cond_1
    return v1
.end method
