.class public Lorg/apache/commons/lang/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

.field public static final EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

.field public static final EMPTY_CHAR_ARRAY:[C

.field public static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

.field public static final EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field public static final EMPTY_SHORT_ARRAY:[S

.field public static final EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final INDEX_NOT_FOUND:I = -0x1

.field static synthetic class$java$lang$Object:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 60
    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 64
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 68
    new-array v1, v0, [J

    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    .line 72
    new-array v1, v0, [Ljava/lang/Long;

    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    .line 76
    new-array v1, v0, [I

    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_INT_ARRAY:[I

    .line 80
    new-array v1, v0, [Ljava/lang/Integer;

    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    .line 84
    new-array v1, v0, [S

    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    .line 88
    new-array v1, v0, [Ljava/lang/Short;

    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    .line 92
    new-array v1, v0, [B

    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    .line 96
    new-array v1, v0, [Ljava/lang/Byte;

    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    .line 100
    new-array v1, v0, [D

    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    .line 104
    new-array v1, v0, [Ljava/lang/Double;

    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    .line 108
    new-array v1, v0, [F

    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    .line 112
    new-array v1, v0, [Ljava/lang/Float;

    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    .line 116
    new-array v1, v0, [Z

    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 120
    new-array v1, v0, [Ljava/lang/Boolean;

    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    .line 124
    new-array v1, v0, [C

    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 128
    new-array v0, v0, [Ljava/lang/Character;

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method private static add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;
    .param p3, "clss"    # Ljava/lang/Class;

    .line 4237
    const-string v0, "Index: "

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 4238
    if-nez p1, :cond_0

    .line 4241
    const/4 v0, 0x1

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 4242
    .local v0, "joinedArray":Ljava/lang/Object;
    invoke-static {v0, v1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 4243
    return-object v0

    .line 4239
    .end local v0    # "joinedArray":Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", Length: 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4245
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 4246
    .local v2, "length":I
    if-gt p1, v2, :cond_3

    if-ltz p1, :cond_3

    .line 4249
    add-int/lit8 v0, v2, 0x1

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 4250
    .local v0, "result":Ljava/lang/Object;
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4251
    invoke-static {v0, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 4252
    if-ge p1, v2, :cond_2

    .line 4253
    add-int/lit8 v1, p1, 0x1

    sub-int v3, v2, p1

    invoke-static {p0, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4255
    :cond_2
    return-object v0

    .line 4247
    .end local v0    # "result":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ", Length: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static add([BB)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "element"    # B

    .line 3750
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 3751
    .local v0, "newArray":[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte p1, v0, v1

    .line 3752
    return-object v0
.end method

.method public static add([BIB)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "element"    # B

    .line 4067
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p2}, Ljava/lang/Byte;-><init>(B)V

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static add([CC)[C
    .locals 2
    .param p0, "array"    # [C
    .param p1, "element"    # C

    .line 3777
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    .line 3778
    .local v0, "newArray":[C
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-char p1, v0, v1

    .line 3779
    return-object v0
.end method

.method public static add([CIC)[C
    .locals 2
    .param p0, "array"    # [C
    .param p1, "index"    # I
    .param p2, "element"    # C

    .line 4036
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p2}, Ljava/lang/Character;-><init>(C)V

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static add([DD)[D
    .locals 2
    .param p0, "array"    # [D
    .param p1, "element"    # D

    .line 3804
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    .line 3805
    .local v0, "newArray":[D
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 3806
    return-object v0
.end method

.method public static add([DID)[D
    .locals 2
    .param p0, "array"    # [D
    .param p1, "index"    # I
    .param p2, "element"    # D

    .line 4222
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public static add([FF)[F
    .locals 2
    .param p0, "array"    # [F
    .param p1, "element"    # F

    .line 3831
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    .line 3832
    .local v0, "newArray":[F
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 3833
    return-object v0
.end method

.method public static add([FIF)[F
    .locals 2
    .param p0, "array"    # [F
    .param p1, "index"    # I
    .param p2, "element"    # F

    .line 4191
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p2}, Ljava/lang/Float;-><init>(F)V

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static add([II)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "element"    # I

    .line 3858
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    .line 3859
    .local v0, "newArray":[I
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 3860
    return-object v0
.end method

.method public static add([III)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "index"    # I
    .param p2, "element"    # I

    .line 4129
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static add([JIJ)[J
    .locals 2
    .param p0, "array"    # [J
    .param p1, "index"    # I
    .param p2, "element"    # J

    .line 4160
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static add([JJ)[J
    .locals 2
    .param p0, "array"    # [J
    .param p1, "element"    # J

    .line 3885
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    .line 3886
    .local v0, "newArray":[J
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 3887
    return-object v0
.end method

.method public static add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .line 3965
    const/4 v0, 0x0

    .line 3966
    .local v0, "clss":Ljava/lang/Class;
    if-eqz p0, :cond_0

    .line 3967
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 3968
    :cond_0
    if-eqz p2, :cond_1

    .line 3969
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3973
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    return-object v1

    .line 3971
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    return-object v1
.end method

.method public static add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "element"    # Ljava/lang/Object;

    .line 3689
    if-eqz p0, :cond_0

    .line 3690
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "type":Ljava/lang/Class;
    goto :goto_0

    .line 3691
    .end local v0    # "type":Ljava/lang/Class;
    :cond_0
    if-eqz p1, :cond_1

    .line 3692
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .restart local v0    # "type":Ljava/lang/Class;
    goto :goto_0

    .line 3694
    .end local v0    # "type":Ljava/lang/Class;
    :cond_1
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lorg/apache/commons/lang/ArrayUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->class$java$lang$Object:Ljava/lang/Class;

    .line 3696
    .restart local v0    # "type":Ljava/lang/Class;
    :cond_2
    :goto_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 3697
    .local v1, "newArray":[Ljava/lang/Object;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v1, v2

    .line 3698
    return-object v1
.end method

.method public static add([SIS)[S
    .locals 2
    .param p0, "array"    # [S
    .param p1, "index"    # I
    .param p2, "element"    # S

    .line 4098
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p2}, Ljava/lang/Short;-><init>(S)V

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public static add([SS)[S
    .locals 2
    .param p0, "array"    # [S
    .param p1, "element"    # S

    .line 3912
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    .line 3913
    .local v0, "newArray":[S
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-short p1, v0, v1

    .line 3914
    return-object v0
.end method

.method public static add([ZIZ)[Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "index"    # I
    .param p2, "element"    # Z

    .line 4004
    invoke-static {p2}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method public static add([ZZ)[Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "element"    # Z

    .line 3723
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    .line 3724
    .local v0, "newArray":[Z
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-boolean p1, v0, v1

    .line 3725
    return-object v0
.end method

.method public static addAll([B[B)[B
    .locals 4
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .line 3505
    if-nez p0, :cond_0

    .line 3506
    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 3507
    :cond_0
    if-nez p1, :cond_1

    .line 3508
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 3510
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 3511
    .local v0, "joinedArray":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3512
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3513
    return-object v0
.end method

.method public static addAll([C[C)[C
    .locals 4
    .param p0, "array1"    # [C
    .param p1, "array2"    # [C

    .line 3476
    if-nez p0, :cond_0

    .line 3477
    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->clone([C)[C

    move-result-object v0

    return-object v0

    .line 3478
    :cond_0
    if-nez p1, :cond_1

    .line 3479
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([C)[C

    move-result-object v0

    return-object v0

    .line 3481
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    .line 3482
    .local v0, "joinedArray":[C
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3483
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3484
    return-object v0
.end method

.method public static addAll([D[D)[D
    .locals 4
    .param p0, "array1"    # [D
    .param p1, "array2"    # [D

    .line 3650
    if-nez p0, :cond_0

    .line 3651
    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->clone([D)[D

    move-result-object v0

    return-object v0

    .line 3652
    :cond_0
    if-nez p1, :cond_1

    .line 3653
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([D)[D

    move-result-object v0

    return-object v0

    .line 3655
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [D

    .line 3656
    .local v0, "joinedArray":[D
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3657
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3658
    return-object v0
.end method

.method public static addAll([F[F)[F
    .locals 4
    .param p0, "array1"    # [F
    .param p1, "array2"    # [F

    .line 3621
    if-nez p0, :cond_0

    .line 3622
    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->clone([F)[F

    move-result-object v0

    return-object v0

    .line 3623
    :cond_0
    if-nez p1, :cond_1

    .line 3624
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([F)[F

    move-result-object v0

    return-object v0

    .line 3626
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [F

    .line 3627
    .local v0, "joinedArray":[F
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3628
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3629
    return-object v0
.end method

.method public static addAll([I[I)[I
    .locals 4
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .line 3563
    if-nez p0, :cond_0

    .line 3564
    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->clone([I)[I

    move-result-object v0

    return-object v0

    .line 3565
    :cond_0
    if-nez p1, :cond_1

    .line 3566
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([I)[I

    move-result-object v0

    return-object v0

    .line 3568
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 3569
    .local v0, "joinedArray":[I
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3570
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3571
    return-object v0
.end method

.method public static addAll([J[J)[J
    .locals 4
    .param p0, "array1"    # [J
    .param p1, "array2"    # [J

    .line 3592
    if-nez p0, :cond_0

    .line 3593
    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->clone([J)[J

    move-result-object v0

    return-object v0

    .line 3594
    :cond_0
    if-nez p1, :cond_1

    .line 3595
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([J)[J

    move-result-object v0

    return-object v0

    .line 3597
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 3598
    .local v0, "joinedArray":[J
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3599
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3600
    return-object v0
.end method

.method public static addAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    .line 3402
    if-nez p0, :cond_0

    .line 3403
    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3404
    :cond_0
    if-nez p1, :cond_1

    .line 3405
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3407
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 3409
    .local v0, "joinedArray":[Ljava/lang/Object;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3411
    :try_start_0
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3425
    nop

    .line 3426
    return-object v0

    .line 3412
    :catch_0
    move-exception v1

    .line 3419
    .local v1, "ase":Ljava/lang/ArrayStoreException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 3420
    .local v2, "type1":Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 3421
    .local v3, "type2":Ljava/lang/Class;
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3422
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Cannot store "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " in an array of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3424
    :cond_2
    throw v1
.end method

.method public static addAll([S[S)[S
    .locals 4
    .param p0, "array1"    # [S
    .param p1, "array2"    # [S

    .line 3534
    if-nez p0, :cond_0

    .line 3535
    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->clone([S)[S

    move-result-object v0

    return-object v0

    .line 3536
    :cond_0
    if-nez p1, :cond_1

    .line 3537
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([S)[S

    move-result-object v0

    return-object v0

    .line 3539
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [S

    .line 3540
    .local v0, "joinedArray":[S
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3541
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3542
    return-object v0
.end method

.method public static addAll([Z[Z)[Z
    .locals 4
    .param p0, "array1"    # [Z
    .param p1, "array2"    # [Z

    .line 3447
    if-nez p0, :cond_0

    .line 3448
    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    return-object v0

    .line 3449
    :cond_0
    if-nez p1, :cond_1

    .line 3450
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    return-object v0

    .line 3452
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    .line 3453
    .local v0, "joinedArray":[Z
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3454
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3455
    return-object v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 3694
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static clone([B)[B
    .locals 1
    .param p0, "array"    # [B

    .line 359
    if-nez p0, :cond_0

    .line 360
    const/4 v0, 0x0

    return-object v0

    .line 362
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static clone([C)[C
    .locals 1
    .param p0, "array"    # [C

    .line 343
    if-nez p0, :cond_0

    .line 344
    const/4 v0, 0x0

    return-object v0

    .line 346
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static clone([D)[D
    .locals 1
    .param p0, "array"    # [D

    .line 375
    if-nez p0, :cond_0

    .line 376
    const/4 v0, 0x0

    return-object v0

    .line 378
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public static clone([F)[F
    .locals 1
    .param p0, "array"    # [F

    .line 391
    if-nez p0, :cond_0

    .line 392
    const/4 v0, 0x0

    return-object v0

    .line 394
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static clone([I)[I
    .locals 1
    .param p0, "array"    # [I

    .line 311
    if-nez p0, :cond_0

    .line 312
    const/4 v0, 0x0

    return-object v0

    .line 314
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static clone([J)[J
    .locals 1
    .param p0, "array"    # [J

    .line 295
    if-nez p0, :cond_0

    .line 296
    const/4 v0, 0x0

    return-object v0

    .line 298
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .line 279
    if-nez p0, :cond_0

    .line 280
    const/4 v0, 0x0

    return-object v0

    .line 282
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static clone([S)[S
    .locals 1
    .param p0, "array"    # [S

    .line 327
    if-nez p0, :cond_0

    .line 328
    const/4 v0, 0x0

    return-object v0

    .line 330
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public static clone([Z)[Z
    .locals 1
    .param p0, "array"    # [Z

    .line 407
    if-nez p0, :cond_0

    .line 408
    const/4 v0, 0x0

    return-object v0

    .line 410
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method public static contains([BB)Z
    .locals 2
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .line 2196
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([BB)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([CC)Z
    .locals 2
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .line 2093
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([CC)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([DD)Z
    .locals 2
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .line 2403
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([DD)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([DDD)Z
    .locals 6
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .line 2420
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([DDID)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([FF)Z
    .locals 2
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .line 2523
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([II)Z
    .locals 2
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .line 1882
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([JJ)Z
    .locals 2
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .line 1779
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .line 1676
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([SS)Z
    .locals 2
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .line 1985
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([SS)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([ZZ)Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .line 2628
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "newArrayComponentType"    # Ljava/lang/Class;

    .line 3927
    if-eqz p0, :cond_0

    .line 3928
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 3929
    .local v0, "arrayLength":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 3930
    .local v1, "newArray":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3931
    return-object v1

    .line 3933
    .end local v0    # "arrayLength":I
    .end local v1    # "newArray":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getLength(Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .line 1324
    if-nez p0, :cond_0

    .line 1325
    const/4 v0, 0x0

    return v0

    .line 1327
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .line 193
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([BB)I
    .locals 1
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .line 2109
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static indexOf([BBI)I
    .locals 3
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B
    .param p2, "startIndex"    # I

    .line 2127
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 2128
    return v0

    .line 2130
    :cond_0
    if-gez p2, :cond_1

    .line 2131
    const/4 p2, 0x0

    .line 2133
    :cond_1
    move v1, p2

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 2134
    aget-byte v2, p0, v1

    if-ne p1, v2, :cond_2

    .line 2135
    return v1

    .line 2133
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2138
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method public static indexOf([CC)I
    .locals 1
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .line 2002
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static indexOf([CCI)I
    .locals 3
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C
    .param p2, "startIndex"    # I

    .line 2021
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 2022
    return v0

    .line 2024
    :cond_0
    if-gez p2, :cond_1

    .line 2025
    const/4 p2, 0x0

    .line 2027
    :cond_1
    move v1, p2

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 2028
    aget-char v2, p0, v1

    if-ne p1, v2, :cond_2

    .line 2029
    return v1

    .line 2027
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2032
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method public static indexOf([DD)I
    .locals 1
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .line 2212
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDD)I
    .locals 6
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .line 2229
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDI)I
    .locals 4
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I

    .line 2247
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2248
    return v1

    .line 2250
    :cond_0
    if-gez p3, :cond_1

    .line 2251
    const/4 p3, 0x0

    .line 2253
    :cond_1
    move v0, p3

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 2254
    aget-wide v2, p0, v0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_2

    .line 2255
    return v0

    .line 2253
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2258
    .end local v0    # "i":I
    :cond_3
    return v1
.end method

.method public static indexOf([DDID)I
    .locals 8
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I
    .param p4, "tolerance"    # D

    .line 2279
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2280
    return v1

    .line 2282
    :cond_0
    if-gez p3, :cond_1

    .line 2283
    const/4 p3, 0x0

    .line 2285
    :cond_1
    sub-double v2, p1, p4

    .line 2286
    .local v2, "min":D
    add-double v4, p1, p4

    .line 2287
    .local v4, "max":D
    move v0, p3

    .local v0, "i":I
    :goto_0
    array-length v6, p0

    if-ge v0, v6, :cond_3

    .line 2288
    aget-wide v6, p0, v0

    cmpl-double v6, v6, v2

    if-ltz v6, :cond_2

    aget-wide v6, p0, v0

    cmpg-double v6, v6, v4

    if-gtz v6, :cond_2

    .line 2289
    return v0

    .line 2287
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2292
    .end local v0    # "i":I
    :cond_3
    return v1
.end method

.method public static indexOf([FF)I
    .locals 1
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .line 2436
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static indexOf([FFI)I
    .locals 3
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F
    .param p2, "startIndex"    # I

    .line 2454
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([F)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2455
    return v1

    .line 2457
    :cond_0
    if-gez p2, :cond_1

    .line 2458
    const/4 p2, 0x0

    .line 2460
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 2461
    aget v2, p0, v0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    .line 2462
    return v0

    .line 2460
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2465
    .end local v0    # "i":I
    :cond_3
    return v1
.end method

.method public static indexOf([II)I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .line 1795
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([III)I

    move-result v0

    return v0
.end method

.method public static indexOf([III)I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I
    .param p2, "startIndex"    # I

    .line 1813
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 1814
    return v0

    .line 1816
    :cond_0
    if-gez p2, :cond_1

    .line 1817
    const/4 p2, 0x0

    .line 1819
    :cond_1
    move v1, p2

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 1820
    aget v2, p0, v1

    if-ne p1, v2, :cond_2

    .line 1821
    return v1

    .line 1819
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1824
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method public static indexOf([JJ)I
    .locals 1
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .line 1692
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static indexOf([JJI)I
    .locals 4
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J
    .param p3, "startIndex"    # I

    .line 1710
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 1711
    return v0

    .line 1713
    :cond_0
    if-gez p3, :cond_1

    .line 1714
    const/4 p3, 0x0

    .line 1716
    :cond_1
    move v1, p3

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 1717
    aget-wide v2, p0, v1

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 1718
    return v1

    .line 1716
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1721
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .line 1573
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I

    .line 1591
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 1592
    return v0

    .line 1594
    :cond_0
    if-gez p2, :cond_1

    .line 1595
    const/4 p2, 0x0

    .line 1597
    :cond_1
    if-nez p1, :cond_4

    .line 1598
    move v1, p2

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 1599
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    .line 1600
    return v1

    .line 1598
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_3
    goto :goto_2

    .line 1603
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1604
    move v1, p2

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_6

    .line 1605
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1606
    return v1

    .line 1604
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1610
    .end local v1    # "i":I
    :cond_6
    :goto_2
    return v0
.end method

.method public static indexOf([SS)I
    .locals 1
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .line 1898
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static indexOf([SSI)I
    .locals 3
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S
    .param p2, "startIndex"    # I

    .line 1916
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 1917
    return v0

    .line 1919
    :cond_0
    if-gez p2, :cond_1

    .line 1920
    const/4 p2, 0x0

    .line 1922
    :cond_1
    move v1, p2

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 1923
    aget-short v2, p0, v1

    if-ne p1, v2, :cond_2

    .line 1924
    return v1

    .line 1922
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1927
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method public static indexOf([ZZ)I
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .line 2539
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static indexOf([ZZI)I
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z
    .param p2, "startIndex"    # I

    .line 2558
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2559
    return v1

    .line 2561
    :cond_0
    if-gez p2, :cond_1

    .line 2562
    const/4 p2, 0x0

    .line 2564
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 2565
    aget-boolean v2, p0, v0

    if-ne p1, v2, :cond_2

    .line 2566
    return v0

    .line 2564
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2569
    .end local v0    # "i":I
    :cond_3
    return v1
.end method

.method public static isEmpty([B)Z
    .locals 1
    .param p0, "array"    # [B

    .line 3242
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmpty([C)Z
    .locals 1
    .param p0, "array"    # [C

    .line 3231
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmpty([D)Z
    .locals 1
    .param p0, "array"    # [D

    .line 3253
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmpty([F)Z
    .locals 1
    .param p0, "array"    # [F

    .line 3264
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmpty([I)Z
    .locals 1
    .param p0, "array"    # [I

    .line 3209
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmpty([J)Z
    .locals 1
    .param p0, "array"    # [J

    .line 3198
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .line 3187
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmpty([S)Z
    .locals 1
    .param p0, "array"    # [S

    .line 3220
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmpty([Z)Z
    .locals 1
    .param p0, "array"    # [Z

    .line 3275
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "array1"    # Ljava/lang/Object;
    .param p1, "array2"    # Ljava/lang/Object;

    .line 207
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    return v0
.end method

.method public static isNotEmpty([B)Z
    .locals 1
    .param p0, "array"    # [B

    .line 3342
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNotEmpty([C)Z
    .locals 1
    .param p0, "array"    # [C

    .line 3331
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNotEmpty([D)Z
    .locals 1
    .param p0, "array"    # [D

    .line 3353
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNotEmpty([F)Z
    .locals 1
    .param p0, "array"    # [F

    .line 3364
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNotEmpty([I)Z
    .locals 1
    .param p0, "array"    # [I

    .line 3309
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNotEmpty([J)Z
    .locals 1
    .param p0, "array"    # [J

    .line 3298
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNotEmpty([Ljava/lang/Object;)Z
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .line 3287
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNotEmpty([S)Z
    .locals 1
    .param p0, "array"    # [S

    .line 3320
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNotEmpty([Z)Z
    .locals 1
    .param p0, "array"    # [Z

    .line 3375
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSameLength([B[B)Z
    .locals 2
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .line 1240
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1243
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 1245
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([C[C)Z
    .locals 2
    .param p0, "array1"    # [C
    .param p1, "array2"    # [C

    .line 1222
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1225
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 1227
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([D[D)Z
    .locals 2
    .param p0, "array1"    # [D
    .param p1, "array2"    # [D

    .line 1258
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1261
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 1263
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([F[F)Z
    .locals 2
    .param p0, "array1"    # [F
    .param p1, "array2"    # [F

    .line 1276
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1279
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 1281
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([I[I)Z
    .locals 2
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .line 1186
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1189
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 1191
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([J[J)Z
    .locals 2
    .param p0, "array1"    # [J
    .param p1, "array2"    # [J

    .line 1168
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1171
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 1173
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    .line 1150
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1153
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 1155
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([S[S)Z
    .locals 2
    .param p0, "array1"    # [S
    .param p1, "array2"    # [S

    .line 1204
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1207
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 1209
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([Z[Z)Z
    .locals 2
    .param p0, "array1"    # [Z
    .param p1, "array2"    # [Z

    .line 1294
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1297
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 1299
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array1"    # Ljava/lang/Object;
    .param p1, "array2"    # Ljava/lang/Object;

    .line 1340
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1343
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1341
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lastIndexOf([BB)I
    .locals 1
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .line 2152
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->lastIndexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BBI)I
    .locals 3
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B
    .param p2, "startIndex"    # I

    .line 2170
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 2171
    return v0

    .line 2173
    :cond_0
    if-gez p2, :cond_1

    .line 2174
    return v0

    .line 2175
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 2176
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 2178
    :cond_2
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 2179
    aget-byte v2, p0, v1

    if-ne p1, v2, :cond_3

    .line 2180
    return v1

    .line 2178
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2183
    .end local v1    # "i":I
    :cond_4
    return v0
.end method

.method public static lastIndexOf([CC)I
    .locals 1
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .line 2047
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->lastIndexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([CCI)I
    .locals 3
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C
    .param p2, "startIndex"    # I

    .line 2066
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 2067
    return v0

    .line 2069
    :cond_0
    if-gez p2, :cond_1

    .line 2070
    return v0

    .line 2071
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 2072
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 2074
    :cond_2
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 2075
    aget-char v2, p0, v1

    if-ne p1, v2, :cond_3

    .line 2076
    return v1

    .line 2074
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2079
    .end local v1    # "i":I
    :cond_4
    return v0
.end method

.method public static lastIndexOf([DD)I
    .locals 1
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .line 2306
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/ArrayUtils;->lastIndexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDD)I
    .locals 6
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .line 2323
    const v3, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/ArrayUtils;->lastIndexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDI)I
    .locals 4
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I

    .line 2341
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2342
    return v1

    .line 2344
    :cond_0
    if-gez p3, :cond_1

    .line 2345
    return v1

    .line 2346
    :cond_1
    array-length v0, p0

    if-lt p3, v0, :cond_2

    .line 2347
    array-length v0, p0

    add-int/lit8 p3, v0, -0x1

    .line 2349
    :cond_2
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 2350
    aget-wide v2, p0, v0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_3

    .line 2351
    return v0

    .line 2349
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2354
    .end local v0    # "i":I
    :cond_4
    return v1
.end method

.method public static lastIndexOf([DDID)I
    .locals 8
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I
    .param p4, "tolerance"    # D

    .line 2375
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2376
    return v1

    .line 2378
    :cond_0
    if-gez p3, :cond_1

    .line 2379
    return v1

    .line 2380
    :cond_1
    array-length v0, p0

    if-lt p3, v0, :cond_2

    .line 2381
    array-length v0, p0

    add-int/lit8 p3, v0, -0x1

    .line 2383
    :cond_2
    sub-double v2, p1, p4

    .line 2384
    .local v2, "min":D
    add-double v4, p1, p4

    .line 2385
    .local v4, "max":D
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 2386
    aget-wide v6, p0, v0

    cmpl-double v6, v6, v2

    if-ltz v6, :cond_3

    aget-wide v6, p0, v0

    cmpg-double v6, v6, v4

    if-gtz v6, :cond_3

    .line 2387
    return v0

    .line 2385
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2390
    .end local v0    # "i":I
    :cond_4
    return v1
.end method

.method public static lastIndexOf([FF)I
    .locals 1
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .line 2479
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->lastIndexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([FFI)I
    .locals 3
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F
    .param p2, "startIndex"    # I

    .line 2497
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([F)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2498
    return v1

    .line 2500
    :cond_0
    if-gez p2, :cond_1

    .line 2501
    return v1

    .line 2502
    :cond_1
    array-length v0, p0

    if-lt p2, v0, :cond_2

    .line 2503
    array-length v0, p0

    add-int/lit8 p2, v0, -0x1

    .line 2505
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 2506
    aget v2, p0, v0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_3

    .line 2507
    return v0

    .line 2505
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2510
    .end local v0    # "i":I
    :cond_4
    return v1
.end method

.method public static lastIndexOf([II)I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .line 1838
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->lastIndexOf([III)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([III)I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I
    .param p2, "startIndex"    # I

    .line 1856
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 1857
    return v0

    .line 1859
    :cond_0
    if-gez p2, :cond_1

    .line 1860
    return v0

    .line 1861
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 1862
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 1864
    :cond_2
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 1865
    aget v2, p0, v1

    if-ne p1, v2, :cond_3

    .line 1866
    return v1

    .line 1864
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1869
    .end local v1    # "i":I
    :cond_4
    return v0
.end method

.method public static lastIndexOf([JJ)I
    .locals 1
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .line 1735
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/ArrayUtils;->lastIndexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([JJI)I
    .locals 4
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J
    .param p3, "startIndex"    # I

    .line 1753
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 1754
    return v0

    .line 1756
    :cond_0
    if-gez p3, :cond_1

    .line 1757
    return v0

    .line 1758
    :cond_1
    array-length v1, p0

    if-lt p3, v1, :cond_2

    .line 1759
    array-length v1, p0

    add-int/lit8 p3, v1, -0x1

    .line 1761
    :cond_2
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 1762
    aget-wide v2, p0, v1

    cmp-long v2, p1, v2

    if-nez v2, :cond_3

    .line 1763
    return v1

    .line 1761
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1766
    .end local v1    # "i":I
    :cond_4
    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .line 1624
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I

    .line 1642
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 1643
    return v0

    .line 1645
    :cond_0
    if-gez p2, :cond_1

    .line 1646
    return v0

    .line 1647
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 1648
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 1650
    :cond_2
    if-nez p1, :cond_5

    .line 1651
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 1652
    aget-object v2, p0, v1

    if-nez v2, :cond_3

    .line 1653
    return v1

    .line 1651
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_4
    goto :goto_2

    .line 1656
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1657
    move v1, p2

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_7

    .line 1658
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1659
    return v1

    .line 1657
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1663
    .end local v1    # "i":I
    :cond_7
    :goto_2
    return v0
.end method

.method public static lastIndexOf([SS)I
    .locals 1
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .line 1941
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->lastIndexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([SSI)I
    .locals 3
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S
    .param p2, "startIndex"    # I

    .line 1959
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 1960
    return v0

    .line 1962
    :cond_0
    if-gez p2, :cond_1

    .line 1963
    return v0

    .line 1964
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 1965
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 1967
    :cond_2
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 1968
    aget-short v2, p0, v1

    if-ne p1, v2, :cond_3

    .line 1969
    return v1

    .line 1967
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1972
    .end local v1    # "i":I
    :cond_4
    return v0
.end method

.method public static lastIndexOf([ZZ)I
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .line 2584
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->lastIndexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([ZZI)I
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z
    .param p2, "startIndex"    # I

    .line 2602
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2603
    return v1

    .line 2605
    :cond_0
    if-gez p2, :cond_1

    .line 2606
    return v1

    .line 2607
    :cond_1
    array-length v0, p0

    if-lt p2, v0, :cond_2

    .line 2608
    array-length v0, p0

    add-int/lit8 p2, v0, -0x1

    .line 2610
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 2611
    aget-boolean v2, p0, v0

    if-ne p1, v2, :cond_3

    .line 2612
    return v0

    .line 2610
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2615
    .end local v0    # "i":I
    :cond_4
    return v1
.end method

.method public static nullToEmpty([B)[B
    .locals 1
    .param p0, "array"    # [B

    .line 549
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 552
    :cond_0
    return-object p0

    .line 550
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method public static nullToEmpty([C)[C
    .locals 1
    .param p0, "array"    # [C

    .line 529
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    return-object p0

    .line 530
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v0
.end method

.method public static nullToEmpty([D)[D
    .locals 1
    .param p0, "array"    # [D

    .line 569
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 572
    :cond_0
    return-object p0

    .line 570
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object v0
.end method

.method public static nullToEmpty([F)[F
    .locals 1
    .param p0, "array"    # [F

    .line 589
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    return-object p0

    .line 590
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object v0
.end method

.method public static nullToEmpty([I)[I
    .locals 1
    .param p0, "array"    # [I

    .line 489
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    return-object p0

    .line 490
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v0
.end method

.method public static nullToEmpty([J)[J
    .locals 1
    .param p0, "array"    # [J

    .line 469
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    return-object p0

    .line 470
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Boolean;)[Ljava/lang/Boolean;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Boolean;

    .line 769
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 772
    :cond_0
    return-object p0

    .line 770
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Byte;)[Ljava/lang/Byte;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Byte;

    .line 709
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 712
    :cond_0
    return-object p0

    .line 710
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Character;)[Ljava/lang/Character;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Character;

    .line 689
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 692
    :cond_0
    return-object p0

    .line 690
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Double;)[Ljava/lang/Double;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Double;

    .line 729
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 732
    :cond_0
    return-object p0

    .line 730
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Float;)[Ljava/lang/Float;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Float;

    .line 749
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 752
    :cond_0
    return-object p0

    .line 750
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Integer;)[Ljava/lang/Integer;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Integer;

    .line 649
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 652
    :cond_0
    return-object p0

    .line 650
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Long;)[Ljava/lang/Long;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Long;

    .line 629
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 632
    :cond_0
    return-object p0

    .line 630
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .line 429
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    return-object p0

    .line 430
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Short;)[Ljava/lang/Short;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Short;

    .line 669
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 672
    :cond_0
    return-object p0

    .line 670
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [Ljava/lang/String;

    .line 449
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    return-object p0

    .line 450
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method public static nullToEmpty([S)[S
    .locals 1
    .param p0, "array"    # [S

    .line 509
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    return-object p0

    .line 510
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object v0
.end method

.method public static nullToEmpty([Z)[Z
    .locals 1
    .param p0, "array"    # [Z

    .line 609
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    return-object p0

    .line 610
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object v0
.end method

.method private static remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I

    .line 4865
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 4866
    .local v0, "length":I
    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 4870
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 4871
    .local v1, "result":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4872
    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_0

    .line 4873
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v0, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4876
    :cond_0
    return-object v1

    .line 4867
    .end local v1    # "result":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static remove([BI)[B
    .locals 1
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 4417
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static remove([CI)[C
    .locals 1
    .param p0, "array"    # [C
    .param p1, "index"    # I

    .line 4482
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static remove([DI)[D
    .locals 1
    .param p0, "array"    # [D
    .param p1, "index"    # I

    .line 4547
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public static remove([FI)[F
    .locals 1
    .param p0, "array"    # [F
    .param p1, "index"    # I

    .line 4612
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static remove([II)[I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "index"    # I

    .line 4677
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static remove([JI)[J
    .locals 1
    .param p0, "array"    # [J
    .param p1, "index"    # I

    .line 4742
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static remove([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "index"    # I

    .line 4287
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static remove([SI)[S
    .locals 1
    .param p0, "array"    # [S
    .param p1, "index"    # I

    .line 4807
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public static remove([ZI)[Z
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "index"    # I

    .line 4352
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method public static removeElement([BB)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "element"    # B

    .line 4446
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([BB)I

    move-result v0

    .line 4447
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4448
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([B)[B

    move-result-object v1

    return-object v1

    .line 4450
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->remove([BI)[B

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([CC)[C
    .locals 2
    .param p0, "array"    # [C
    .param p1, "element"    # C

    .line 4511
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([CC)I

    move-result v0

    .line 4512
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4513
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([C)[C

    move-result-object v1

    return-object v1

    .line 4515
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->remove([CI)[C

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([DD)[D
    .locals 2
    .param p0, "array"    # [D
    .param p1, "element"    # D

    .line 4576
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([DD)I

    move-result v0

    .line 4577
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4578
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([D)[D

    move-result-object v1

    return-object v1

    .line 4580
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->remove([DI)[D

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([FF)[F
    .locals 2
    .param p0, "array"    # [F
    .param p1, "element"    # F

    .line 4641
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([FF)I

    move-result v0

    .line 4642
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4643
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([F)[F

    move-result-object v1

    return-object v1

    .line 4645
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->remove([FI)[F

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([II)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "element"    # I

    .line 4706
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([II)I

    move-result v0

    .line 4707
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4708
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([I)[I

    move-result-object v1

    return-object v1

    .line 4710
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->remove([II)[I

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([JJ)[J
    .locals 2
    .param p0, "array"    # [J
    .param p1, "element"    # J

    .line 4771
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([JJ)I

    move-result v0

    .line 4772
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4773
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([J)[J

    move-result-object v1

    return-object v1

    .line 4775
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->remove([JI)[J

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "element"    # Ljava/lang/Object;

    .line 4316
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 4317
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4318
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 4320
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([SS)[S
    .locals 2
    .param p0, "array"    # [S
    .param p1, "element"    # S

    .line 4836
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([SS)I

    move-result v0

    .line 4837
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4838
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([S)[S

    move-result-object v1

    return-object v1

    .line 4840
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->remove([SI)[S

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([ZZ)[Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "element"    # Z

    .line 4381
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    .line 4382
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4383
    invoke-static {p0}, Lorg/apache/commons/lang/ArrayUtils;->clone([Z)[Z

    move-result-object v1

    return-object v1

    .line 4385
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->remove([ZI)[Z

    move-result-object v1

    return-object v1
.end method

.method public static reverse([B)V
    .locals 4
    .param p0, "array"    # [B

    .line 1473
    if-nez p0, :cond_0

    .line 1474
    return-void

    .line 1476
    :cond_0
    const/4 v0, 0x0

    .line 1477
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1479
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 1480
    aget-byte v2, p0, v1

    .line 1481
    .local v2, "tmp":B
    aget-byte v3, p0, v0

    aput-byte v3, p0, v1

    .line 1482
    aput-byte v2, p0, v0

    .line 1483
    add-int/lit8 v1, v1, -0x1

    .line 1484
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1486
    .end local v2    # "tmp":B
    :cond_1
    return-void
.end method

.method public static reverse([C)V
    .locals 4
    .param p0, "array"    # [C

    .line 1450
    if-nez p0, :cond_0

    .line 1451
    return-void

    .line 1453
    :cond_0
    const/4 v0, 0x0

    .line 1454
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1456
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 1457
    aget-char v2, p0, v1

    .line 1458
    .local v2, "tmp":C
    aget-char v3, p0, v0

    aput-char v3, p0, v1

    .line 1459
    aput-char v2, p0, v0

    .line 1460
    add-int/lit8 v1, v1, -0x1

    .line 1461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1463
    .end local v2    # "tmp":C
    :cond_1
    return-void
.end method

.method public static reverse([D)V
    .locals 6
    .param p0, "array"    # [D

    .line 1496
    if-nez p0, :cond_0

    .line 1497
    return-void

    .line 1499
    :cond_0
    const/4 v0, 0x0

    .line 1500
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1502
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 1503
    aget-wide v2, p0, v1

    .line 1504
    .local v2, "tmp":D
    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    .line 1505
    aput-wide v2, p0, v0

    .line 1506
    add-int/lit8 v1, v1, -0x1

    .line 1507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1509
    .end local v2    # "tmp":D
    :cond_1
    return-void
.end method

.method public static reverse([F)V
    .locals 4
    .param p0, "array"    # [F

    .line 1519
    if-nez p0, :cond_0

    .line 1520
    return-void

    .line 1522
    :cond_0
    const/4 v0, 0x0

    .line 1523
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1525
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 1526
    aget v2, p0, v1

    .line 1527
    .local v2, "tmp":F
    aget v3, p0, v0

    aput v3, p0, v1

    .line 1528
    aput v2, p0, v0

    .line 1529
    add-int/lit8 v1, v1, -0x1

    .line 1530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1532
    .end local v2    # "tmp":F
    :cond_1
    return-void
.end method

.method public static reverse([I)V
    .locals 4
    .param p0, "array"    # [I

    .line 1404
    if-nez p0, :cond_0

    .line 1405
    return-void

    .line 1407
    :cond_0
    const/4 v0, 0x0

    .line 1408
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1410
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 1411
    aget v2, p0, v1

    .line 1412
    .local v2, "tmp":I
    aget v3, p0, v0

    aput v3, p0, v1

    .line 1413
    aput v2, p0, v0

    .line 1414
    add-int/lit8 v1, v1, -0x1

    .line 1415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1417
    .end local v2    # "tmp":I
    :cond_1
    return-void
.end method

.method public static reverse([J)V
    .locals 6
    .param p0, "array"    # [J

    .line 1381
    if-nez p0, :cond_0

    .line 1382
    return-void

    .line 1384
    :cond_0
    const/4 v0, 0x0

    .line 1385
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1387
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 1388
    aget-wide v2, p0, v1

    .line 1389
    .local v2, "tmp":J
    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    .line 1390
    aput-wide v2, p0, v0

    .line 1391
    add-int/lit8 v1, v1, -0x1

    .line 1392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1394
    .end local v2    # "tmp":J
    :cond_1
    return-void
.end method

.method public static reverse([Ljava/lang/Object;)V
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;

    .line 1358
    if-nez p0, :cond_0

    .line 1359
    return-void

    .line 1361
    :cond_0
    const/4 v0, 0x0

    .line 1362
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1364
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 1365
    aget-object v2, p0, v1

    .line 1366
    .local v2, "tmp":Ljava/lang/Object;
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 1367
    aput-object v2, p0, v0

    .line 1368
    add-int/lit8 v1, v1, -0x1

    .line 1369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1371
    .end local v2    # "tmp":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public static reverse([S)V
    .locals 4
    .param p0, "array"    # [S

    .line 1427
    if-nez p0, :cond_0

    .line 1428
    return-void

    .line 1430
    :cond_0
    const/4 v0, 0x0

    .line 1431
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1433
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 1434
    aget-short v2, p0, v1

    .line 1435
    .local v2, "tmp":S
    aget-short v3, p0, v0

    aput-short v3, p0, v1

    .line 1436
    aput-short v2, p0, v0

    .line 1437
    add-int/lit8 v1, v1, -0x1

    .line 1438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1440
    .end local v2    # "tmp":S
    :cond_1
    return-void
.end method

.method public static reverse([Z)V
    .locals 4
    .param p0, "array"    # [Z

    .line 1542
    if-nez p0, :cond_0

    .line 1543
    return-void

    .line 1545
    :cond_0
    const/4 v0, 0x0

    .line 1546
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1548
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 1549
    aget-boolean v2, p0, v1

    .line 1550
    .local v2, "tmp":Z
    aget-boolean v3, p0, v0

    aput-boolean v3, p0, v1

    .line 1551
    aput-boolean v2, p0, v0

    .line 1552
    add-int/lit8 v1, v1, -0x1

    .line 1553
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1555
    .end local v2    # "tmp":Z
    :cond_1
    return-void
.end method

.method public static subarray([BII)[B
    .locals 3
    .param p0, "array"    # [B
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 1000
    if-nez p0, :cond_0

    .line 1001
    const/4 v0, 0x0

    return-object v0

    .line 1003
    :cond_0
    if-gez p1, :cond_1

    .line 1004
    const/4 p1, 0x0

    .line 1006
    :cond_1
    array-length v0, p0

    if-le p2, v0, :cond_2

    .line 1007
    array-length p2, p0

    .line 1009
    :cond_2
    sub-int v0, p2, p1

    .line 1010
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 1011
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v1

    .line 1014
    :cond_3
    new-array v1, v0, [B

    .line 1015
    .local v1, "subarray":[B
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1016
    return-object v1
.end method

.method public static subarray([CII)[C
    .locals 3
    .param p0, "array"    # [C
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 961
    if-nez p0, :cond_0

    .line 962
    const/4 v0, 0x0

    return-object v0

    .line 964
    :cond_0
    if-gez p1, :cond_1

    .line 965
    const/4 p1, 0x0

    .line 967
    :cond_1
    array-length v0, p0

    if-le p2, v0, :cond_2

    .line 968
    array-length p2, p0

    .line 970
    :cond_2
    sub-int v0, p2, p1

    .line 971
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 972
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v1

    .line 975
    :cond_3
    new-array v1, v0, [C

    .line 976
    .local v1, "subarray":[C
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 977
    return-object v1
.end method

.method public static subarray([DII)[D
    .locals 3
    .param p0, "array"    # [D
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 1039
    if-nez p0, :cond_0

    .line 1040
    const/4 v0, 0x0

    return-object v0

    .line 1042
    :cond_0
    if-gez p1, :cond_1

    .line 1043
    const/4 p1, 0x0

    .line 1045
    :cond_1
    array-length v0, p0

    if-le p2, v0, :cond_2

    .line 1046
    array-length p2, p0

    .line 1048
    :cond_2
    sub-int v0, p2, p1

    .line 1049
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 1050
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object v1

    .line 1053
    :cond_3
    new-array v1, v0, [D

    .line 1054
    .local v1, "subarray":[D
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1055
    return-object v1
.end method

.method public static subarray([FII)[F
    .locals 3
    .param p0, "array"    # [F
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 1078
    if-nez p0, :cond_0

    .line 1079
    const/4 v0, 0x0

    return-object v0

    .line 1081
    :cond_0
    if-gez p1, :cond_1

    .line 1082
    const/4 p1, 0x0

    .line 1084
    :cond_1
    array-length v0, p0

    if-le p2, v0, :cond_2

    .line 1085
    array-length p2, p0

    .line 1087
    :cond_2
    sub-int v0, p2, p1

    .line 1088
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 1089
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object v1

    .line 1092
    :cond_3
    new-array v1, v0, [F

    .line 1093
    .local v1, "subarray":[F
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1094
    return-object v1
.end method

.method public static subarray([III)[I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 883
    if-nez p0, :cond_0

    .line 884
    const/4 v0, 0x0

    return-object v0

    .line 886
    :cond_0
    if-gez p1, :cond_1

    .line 887
    const/4 p1, 0x0

    .line 889
    :cond_1
    array-length v0, p0

    if-le p2, v0, :cond_2

    .line 890
    array-length p2, p0

    .line 892
    :cond_2
    sub-int v0, p2, p1

    .line 893
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 894
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v1

    .line 897
    :cond_3
    new-array v1, v0, [I

    .line 898
    .local v1, "subarray":[I
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 899
    return-object v1
.end method

.method public static subarray([JII)[J
    .locals 3
    .param p0, "array"    # [J
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 844
    if-nez p0, :cond_0

    .line 845
    const/4 v0, 0x0

    return-object v0

    .line 847
    :cond_0
    if-gez p1, :cond_1

    .line 848
    const/4 p1, 0x0

    .line 850
    :cond_1
    array-length v0, p0

    if-le p2, v0, :cond_2

    .line 851
    array-length p2, p0

    .line 853
    :cond_2
    sub-int v0, p2, p1

    .line 854
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 855
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object v1

    .line 858
    :cond_3
    new-array v1, v0, [J

    .line 859
    .local v1, "subarray":[J
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 860
    return-object v1
.end method

.method public static subarray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 805
    if-nez p0, :cond_0

    .line 806
    const/4 v0, 0x0

    return-object v0

    .line 808
    :cond_0
    if-gez p1, :cond_1

    .line 809
    const/4 p1, 0x0

    .line 811
    :cond_1
    array-length v0, p0

    if-le p2, v0, :cond_2

    .line 812
    array-length p2, p0

    .line 814
    :cond_2
    sub-int v0, p2, p1

    .line 815
    .local v0, "newSize":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 816
    .local v1, "type":Ljava/lang/Class;
    const/4 v2, 0x0

    if-gtz v0, :cond_3

    .line 817
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    return-object v2

    .line 819
    :cond_3
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 820
    .local v3, "subarray":[Ljava/lang/Object;
    invoke-static {p0, p1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 821
    return-object v3
.end method

.method public static subarray([SII)[S
    .locals 3
    .param p0, "array"    # [S
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 922
    if-nez p0, :cond_0

    .line 923
    const/4 v0, 0x0

    return-object v0

    .line 925
    :cond_0
    if-gez p1, :cond_1

    .line 926
    const/4 p1, 0x0

    .line 928
    :cond_1
    array-length v0, p0

    if-le p2, v0, :cond_2

    .line 929
    array-length p2, p0

    .line 931
    :cond_2
    sub-int v0, p2, p1

    .line 932
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 933
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object v1

    .line 936
    :cond_3
    new-array v1, v0, [S

    .line 937
    .local v1, "subarray":[S
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 938
    return-object v1
.end method

.method public static subarray([ZII)[Z
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 1117
    if-nez p0, :cond_0

    .line 1118
    const/4 v0, 0x0

    return-object v0

    .line 1120
    :cond_0
    if-gez p1, :cond_1

    .line 1121
    const/4 p1, 0x0

    .line 1123
    :cond_1
    array-length v0, p0

    if-le p2, v0, :cond_2

    .line 1124
    array-length p2, p0

    .line 1126
    :cond_2
    sub-int v0, p2, p1

    .line 1127
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 1128
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object v1

    .line 1131
    :cond_3
    new-array v1, v0, [Z

    .line 1132
    .local v1, "subarray":[Z
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1133
    return-object v1
.end method

.method public static toMap([Ljava/lang/Object;)Ljava/util/Map;
    .locals 8
    .param p0, "array"    # [Ljava/lang/Object;

    .line 238
    if-nez p0, :cond_0

    .line 239
    const/4 v0, 0x0

    return-object v0

    .line 241
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p0

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 242
    .local v0, "map":Ljava/util/Map;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 243
    aget-object v2, p0, v1

    .line 244
    .local v2, "object":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/Map$Entry;

    if-eqz v3, :cond_1

    .line 245
    move-object v3, v2

    check-cast v3, Ljava/util/Map$Entry;

    .line 246
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .end local v3    # "entry":Ljava/util/Map$Entry;
    goto :goto_1

    :cond_1
    instance-of v3, v2, [Ljava/lang/Object;

    const-string v4, ", \'"

    const-string v5, "Array element "

    if-eqz v3, :cond_3

    .line 248
    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 249
    .local v3, "entry":[Ljava/lang/Object;
    array-length v6, v3

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    .line 254
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .end local v3    # "entry":[Ljava/lang/Object;
    nop

    .line 242
    .end local v2    # "object":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .restart local v2    # "object":Ljava/lang/Object;
    .restart local v3    # "entry":[Ljava/lang/Object;
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\', has a length less than 2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 256
    .end local v3    # "entry":[Ljava/lang/Object;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\', is neither of type Map.Entry nor an Array"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 261
    .end local v1    # "i":I
    .end local v2    # "object":Ljava/lang/Object;
    :cond_4
    return-object v0
.end method

.method public static toObject([Z)[Ljava/lang/Boolean;
    .locals 3
    .param p0, "array"    # [Z

    .line 3166
    if-nez p0, :cond_0

    .line 3167
    const/4 v0, 0x0

    return-object v0

    .line 3168
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3169
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    return-object v0

    .line 3171
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Boolean;

    .line 3172
    .local v0, "result":[Ljava/lang/Boolean;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 3173
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    aput-object v2, v0, v1

    .line 3172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3175
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static toObject([B)[Ljava/lang/Byte;
    .locals 4
    .param p0, "array"    # [B

    .line 2962
    if-nez p0, :cond_0

    .line 2963
    const/4 v0, 0x0

    return-object v0

    .line 2964
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2965
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    return-object v0

    .line 2967
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Byte;

    .line 2968
    .local v0, "result":[Ljava/lang/Byte;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2969
    new-instance v2, Ljava/lang/Byte;

    aget-byte v3, p0, v1

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    aput-object v2, v0, v1

    .line 2968
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2971
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toObject([C)[Ljava/lang/Character;
    .locals 4
    .param p0, "array"    # [C

    .line 2690
    if-nez p0, :cond_0

    .line 2691
    const/4 v0, 0x0

    return-object v0

    .line 2692
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2693
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-object v0

    .line 2695
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Character;

    .line 2696
    .local v0, "result":[Ljava/lang/Character;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2697
    new-instance v2, Ljava/lang/Character;

    aget-char v3, p0, v1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    aput-object v2, v0, v1

    .line 2696
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2699
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toObject([D)[Ljava/lang/Double;
    .locals 5
    .param p0, "array"    # [D

    .line 3030
    if-nez p0, :cond_0

    .line 3031
    const/4 v0, 0x0

    return-object v0

    .line 3032
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3033
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    return-object v0

    .line 3035
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Double;

    .line 3036
    .local v0, "result":[Ljava/lang/Double;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 3037
    new-instance v2, Ljava/lang/Double;

    aget-wide v3, p0, v1

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    aput-object v2, v0, v1

    .line 3036
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3039
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toObject([F)[Ljava/lang/Float;
    .locals 4
    .param p0, "array"    # [F

    .line 3098
    if-nez p0, :cond_0

    .line 3099
    const/4 v0, 0x0

    return-object v0

    .line 3100
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3101
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    return-object v0

    .line 3103
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Float;

    .line 3104
    .local v0, "result":[Ljava/lang/Float;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 3105
    new-instance v2, Ljava/lang/Float;

    aget v3, p0, v1

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    aput-object v2, v0, v1

    .line 3104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3107
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toObject([I)[Ljava/lang/Integer;
    .locals 4
    .param p0, "array"    # [I

    .line 2826
    if-nez p0, :cond_0

    .line 2827
    const/4 v0, 0x0

    return-object v0

    .line 2828
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2829
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    return-object v0

    .line 2831
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Integer;

    .line 2832
    .local v0, "result":[Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2833
    new-instance v2, Ljava/lang/Integer;

    aget v3, p0, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    .line 2832
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2835
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toObject([J)[Ljava/lang/Long;
    .locals 5
    .param p0, "array"    # [J

    .line 2758
    if-nez p0, :cond_0

    .line 2759
    const/4 v0, 0x0

    return-object v0

    .line 2760
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2761
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    return-object v0

    .line 2763
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Long;

    .line 2764
    .local v0, "result":[Ljava/lang/Long;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2765
    new-instance v2, Ljava/lang/Long;

    aget-wide v3, p0, v1

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    .line 2764
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2767
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toObject([S)[Ljava/lang/Short;
    .locals 4
    .param p0, "array"    # [S

    .line 2894
    if-nez p0, :cond_0

    .line 2895
    const/4 v0, 0x0

    return-object v0

    .line 2896
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2897
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    return-object v0

    .line 2899
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Short;

    .line 2900
    .local v0, "result":[Ljava/lang/Short;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2901
    new-instance v2, Ljava/lang/Short;

    aget-short v3, p0, v1

    invoke-direct {v2, v3}, Ljava/lang/Short;-><init>(S)V

    aput-object v2, v0, v1

    .line 2900
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2903
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .locals 3
    .param p0, "array"    # [Ljava/lang/Byte;

    .line 2918
    if-nez p0, :cond_0

    .line 2919
    const/4 v0, 0x0

    return-object v0

    .line 2920
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2921
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 2923
    :cond_1
    array-length v0, p0

    new-array v0, v0, [B

    .line 2924
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2925
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 2924
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2927
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Byte;B)[B
    .locals 4
    .param p0, "array"    # [Ljava/lang/Byte;
    .param p1, "valueForNull"    # B

    .line 2940
    if-nez p0, :cond_0

    .line 2941
    const/4 v0, 0x0

    return-object v0

    .line 2942
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2943
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 2945
    :cond_1
    array-length v0, p0

    new-array v0, v0, [B

    .line 2946
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 2947
    aget-object v2, p0, v1

    .line 2948
    .local v2, "b":Ljava/lang/Byte;
    if-nez v2, :cond_2

    move v3, p1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    :goto_1
    aput-byte v3, v0, v1

    .line 2946
    .end local v2    # "b":Ljava/lang/Byte;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2950
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Character;)[C
    .locals 3
    .param p0, "array"    # [Ljava/lang/Character;

    .line 2646
    if-nez p0, :cond_0

    .line 2647
    const/4 v0, 0x0

    return-object v0

    .line 2648
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2649
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v0

    .line 2651
    :cond_1
    array-length v0, p0

    new-array v0, v0, [C

    .line 2652
    .local v0, "result":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2653
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v0, v1

    .line 2652
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2655
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Character;C)[C
    .locals 4
    .param p0, "array"    # [Ljava/lang/Character;
    .param p1, "valueForNull"    # C

    .line 2668
    if-nez p0, :cond_0

    .line 2669
    const/4 v0, 0x0

    return-object v0

    .line 2670
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2671
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v0

    .line 2673
    :cond_1
    array-length v0, p0

    new-array v0, v0, [C

    .line 2674
    .local v0, "result":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 2675
    aget-object v2, p0, v1

    .line 2676
    .local v2, "b":Ljava/lang/Character;
    if-nez v2, :cond_2

    move v3, p1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v3

    :goto_1
    aput-char v3, v0, v1

    .line 2674
    .end local v2    # "b":Ljava/lang/Character;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2678
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .locals 4
    .param p0, "array"    # [Ljava/lang/Double;

    .line 2986
    if-nez p0, :cond_0

    .line 2987
    const/4 v0, 0x0

    return-object v0

    .line 2988
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2989
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object v0

    .line 2991
    :cond_1
    array-length v0, p0

    new-array v0, v0, [D

    .line 2992
    .local v0, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2993
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 2992
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2995
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Double;D)[D
    .locals 5
    .param p0, "array"    # [Ljava/lang/Double;
    .param p1, "valueForNull"    # D

    .line 3008
    if-nez p0, :cond_0

    .line 3009
    const/4 v0, 0x0

    return-object v0

    .line 3010
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3011
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object v0

    .line 3013
    :cond_1
    array-length v0, p0

    new-array v0, v0, [D

    .line 3014
    .local v0, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 3015
    aget-object v2, p0, v1

    .line 3016
    .local v2, "b":Ljava/lang/Double;
    if-nez v2, :cond_2

    move-wide v3, p1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    :goto_1
    aput-wide v3, v0, v1

    .line 3014
    .end local v2    # "b":Ljava/lang/Double;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3018
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Float;)[F
    .locals 3
    .param p0, "array"    # [Ljava/lang/Float;

    .line 3054
    if-nez p0, :cond_0

    .line 3055
    const/4 v0, 0x0

    return-object v0

    .line 3056
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3057
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object v0

    .line 3059
    :cond_1
    array-length v0, p0

    new-array v0, v0, [F

    .line 3060
    .local v0, "result":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 3061
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 3060
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3063
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Float;F)[F
    .locals 4
    .param p0, "array"    # [Ljava/lang/Float;
    .param p1, "valueForNull"    # F

    .line 3076
    if-nez p0, :cond_0

    .line 3077
    const/4 v0, 0x0

    return-object v0

    .line 3078
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3079
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object v0

    .line 3081
    :cond_1
    array-length v0, p0

    new-array v0, v0, [F

    .line 3082
    .local v0, "result":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 3083
    aget-object v2, p0, v1

    .line 3084
    .local v2, "b":Ljava/lang/Float;
    if-nez v2, :cond_2

    move v3, p1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_1
    aput v3, v0, v1

    .line 3082
    .end local v2    # "b":Ljava/lang/Float;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3086
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Integer;

    .line 2782
    if-nez p0, :cond_0

    .line 2783
    const/4 v0, 0x0

    return-object v0

    .line 2784
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2785
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v0

    .line 2787
    :cond_1
    array-length v0, p0

    new-array v0, v0, [I

    .line 2788
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2789
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 2788
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2791
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Integer;I)[I
    .locals 4
    .param p0, "array"    # [Ljava/lang/Integer;
    .param p1, "valueForNull"    # I

    .line 2804
    if-nez p0, :cond_0

    .line 2805
    const/4 v0, 0x0

    return-object v0

    .line 2806
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2807
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v0

    .line 2809
    :cond_1
    array-length v0, p0

    new-array v0, v0, [I

    .line 2810
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 2811
    aget-object v2, p0, v1

    .line 2812
    .local v2, "b":Ljava/lang/Integer;
    if-nez v2, :cond_2

    move v3, p1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    aput v3, v0, v1

    .line 2810
    .end local v2    # "b":Ljava/lang/Integer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2814
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .locals 4
    .param p0, "array"    # [Ljava/lang/Long;

    .line 2714
    if-nez p0, :cond_0

    .line 2715
    const/4 v0, 0x0

    return-object v0

    .line 2716
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2717
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object v0

    .line 2719
    :cond_1
    array-length v0, p0

    new-array v0, v0, [J

    .line 2720
    .local v0, "result":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2721
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 2720
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2723
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Long;J)[J
    .locals 5
    .param p0, "array"    # [Ljava/lang/Long;
    .param p1, "valueForNull"    # J

    .line 2736
    if-nez p0, :cond_0

    .line 2737
    const/4 v0, 0x0

    return-object v0

    .line 2738
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2739
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object v0

    .line 2741
    :cond_1
    array-length v0, p0

    new-array v0, v0, [J

    .line 2742
    .local v0, "result":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 2743
    aget-object v2, p0, v1

    .line 2744
    .local v2, "b":Ljava/lang/Long;
    if-nez v2, :cond_2

    move-wide v3, p1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_1
    aput-wide v3, v0, v1

    .line 2742
    .end local v2    # "b":Ljava/lang/Long;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2746
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Short;)[S
    .locals 3
    .param p0, "array"    # [Ljava/lang/Short;

    .line 2850
    if-nez p0, :cond_0

    .line 2851
    const/4 v0, 0x0

    return-object v0

    .line 2852
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2853
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object v0

    .line 2855
    :cond_1
    array-length v0, p0

    new-array v0, v0, [S

    .line 2856
    .local v0, "result":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2857
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v0, v1

    .line 2856
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2859
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Short;S)[S
    .locals 4
    .param p0, "array"    # [Ljava/lang/Short;
    .param p1, "valueForNull"    # S

    .line 2872
    if-nez p0, :cond_0

    .line 2873
    const/4 v0, 0x0

    return-object v0

    .line 2874
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2875
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object v0

    .line 2877
    :cond_1
    array-length v0, p0

    new-array v0, v0, [S

    .line 2878
    .local v0, "result":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 2879
    aget-object v2, p0, v1

    .line 2880
    .local v2, "b":Ljava/lang/Short;
    if-nez v2, :cond_2

    move v3, p1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v3

    :goto_1
    aput-short v3, v0, v1

    .line 2878
    .end local v2    # "b":Ljava/lang/Short;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2882
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .locals 3
    .param p0, "array"    # [Ljava/lang/Boolean;

    .line 3122
    if-nez p0, :cond_0

    .line 3123
    const/4 v0, 0x0

    return-object v0

    .line 3124
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3125
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object v0

    .line 3127
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Z

    .line 3128
    .local v0, "result":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 3129
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 3128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3131
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;Z)[Z
    .locals 4
    .param p0, "array"    # [Ljava/lang/Boolean;
    .param p1, "valueForNull"    # Z

    .line 3144
    if-nez p0, :cond_0

    .line 3145
    const/4 v0, 0x0

    return-object v0

    .line 3146
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3147
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object v0

    .line 3149
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Z

    .line 3150
    .local v0, "result":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 3151
    aget-object v2, p0, v1

    .line 3152
    .local v2, "b":Ljava/lang/Boolean;
    if-nez v2, :cond_2

    move v3, p1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_1
    aput-boolean v3, v0, v1

    .line 3150
    .end local v2    # "b":Ljava/lang/Boolean;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3154
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .line 162
    const-string/jumbo v0, "{}"

    invoke-static {p0, v0}, Lorg/apache/commons/lang/ArrayUtils;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "stringIfNull"    # Ljava/lang/String;

    .line 178
    if-nez p0, :cond_0

    .line 179
    return-object p1

    .line 181
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringBuilder;

    sget-object v1, Lorg/apache/commons/lang/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
