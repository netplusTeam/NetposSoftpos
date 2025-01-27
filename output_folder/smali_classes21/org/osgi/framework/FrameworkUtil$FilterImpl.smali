.class final Lorg/osgi/framework/FrameworkUtil$FilterImpl;
.super Ljava/lang/Object;
.source "FrameworkUtil.java"

# interfaces
.implements Lorg/osgi/framework/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osgi/framework/FrameworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FilterImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;
    }
.end annotation


# static fields
.field private static final AND:I = 0x7

.field private static final APPROX:I = 0x2

.field private static final EQUAL:I = 0x1

.field private static final GREATER:I = 0x3

.field private static final LESS:I = 0x4

.field private static final NOT:I = 0x9

.field private static final OR:I = 0x8

.field private static final PRESENT:I = 0x5

.field private static final SUBSTRING:I = 0x6


# instance fields
.field private final attr:Ljava/lang/String;

.field private transient filterString:Ljava/lang/String;

.field private final op:I

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "operation"    # I
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput p1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->op:I

    .line 383
    iput-object p2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->attr:Ljava/lang/String;

    .line 384
    iput-object p3, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->value:Ljava/lang/Object;

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->filterString:Ljava/lang/String;

    .line 386
    return-void
.end method

.method private static approxString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "input"    # Ljava/lang/String;

    .line 1250
    const/4 v0, 0x0

    .line 1251
    .local v0, "changed":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1252
    .local v1, "output":[C
    const/4 v2, 0x0

    .line 1253
    .local v2, "cursor":I
    move-object v3, v1

    .local v3, "arr$":[C
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_1

    aget-char v6, v3, v5

    .line 1254
    .local v6, "c":C
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1255
    const/4 v0, 0x1

    .line 1256
    goto :goto_1

    .line 1259
    :cond_0
    aput-char v6, v1, v2

    .line 1260
    add-int/lit8 v2, v2, 0x1

    .line 1253
    .end local v6    # "c":C
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1263
    .end local v3    # "arr$":[C
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    if-eqz v0, :cond_2

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    :cond_2
    move-object v3, p0

    :goto_2
    return-object v3
.end method

.method private compare(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "operation"    # I
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "value2"    # Ljava/lang/Object;

    .line 731
    if-nez p2, :cond_0

    .line 732
    const/4 v0, 0x0

    return v0

    .line 734
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 735
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_String(ILjava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 738
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 739
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 740
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 741
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 742
    invoke-direct {p0, p1, v1, p2, p3}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_PrimitiveArray(ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 744
    :cond_2
    move-object v2, p2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v2, p3}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_ObjectArray(I[Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 746
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    instance-of v1, p2, Ljava/util/Collection;

    if-eqz v1, :cond_4

    .line 747
    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p0, p1, v1, p3}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_Collection(ILjava/util/Collection;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 749
    :cond_4
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 750
    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1, p3}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_Integer(IILjava/lang/Object;)Z

    move-result v1

    return v1

    .line 752
    :cond_5
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 753
    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2, p3}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_Long(IJLjava/lang/Object;)Z

    move-result v1

    return v1

    .line 755
    :cond_6
    instance-of v1, p2, Ljava/lang/Byte;

    if-eqz v1, :cond_7

    .line 756
    move-object v1, p2

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-direct {p0, p1, v1, p3}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_Byte(IBLjava/lang/Object;)Z

    move-result v1

    return v1

    .line 758
    :cond_7
    instance-of v1, p2, Ljava/lang/Short;

    if-eqz v1, :cond_8

    .line 759
    move-object v1, p2

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-direct {p0, p1, v1, p3}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_Short(ISLjava/lang/Object;)Z

    move-result v1

    return v1

    .line 761
    :cond_8
    instance-of v1, p2, Ljava/lang/Character;

    if-eqz v1, :cond_9

    .line 762
    move-object v1, p2

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, p1, v1, p3}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_Character(ICLjava/lang/Object;)Z

    move-result v1

    return v1

    .line 764
    :cond_9
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_a

    .line 765
    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, p1, v1, p3}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_Float(IFLjava/lang/Object;)Z

    move-result v1

    return v1

    .line 767
    :cond_a
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_b

    .line 768
    move-object v1, p2

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2, p3}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_Double(IDLjava/lang/Object;)Z

    move-result v1

    return v1

    .line 770
    :cond_b
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    .line 771
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, p1, v1, p3}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_Boolean(IZLjava/lang/Object;)Z

    move-result v1

    return v1

    .line 773
    :cond_c
    instance-of v1, p2, Ljava/lang/Comparable;

    if-eqz v1, :cond_d

    .line 775
    move-object v1, p2

    check-cast v1, Ljava/lang/Comparable;

    .line 776
    .local v1, "comparable":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, v1, p3}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_Comparable(ILjava/lang/Comparable;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 778
    .end local v1    # "comparable":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_Unknown(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private compare_Boolean(IZLjava/lang/Object;)Z
    .locals 2
    .param p1, "operation"    # I
    .param p2, "boolval"    # Z
    .param p3, "value2"    # Ljava/lang/Object;

    .line 1073
    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 1074
    return v0

    .line 1076
    :cond_0
    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1077
    .local v1, "boolval2":Z
    packed-switch p1, :pswitch_data_0

    .line 1085
    return v0

    .line 1082
    :pswitch_0
    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private compare_Byte(IBLjava/lang/Object;)Z
    .locals 3
    .param p1, "operation"    # I
    .param p2, "byteval"    # B
    .param p3, "value2"    # Ljava/lang/Object;

    .line 993
    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 994
    return v0

    .line 998
    :cond_0
    :try_start_0
    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    .local v1, "byteval2":B
    nop

    .line 1003
    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1015
    return v0

    .line 1012
    :pswitch_0
    if-gt p2, v1, :cond_1

    move v0, v2

    :cond_1
    return v0

    .line 1009
    :pswitch_1
    if-lt p2, v1, :cond_2

    move v0, v2

    :cond_2
    return v0

    .line 1006
    :pswitch_2
    if-ne p2, v1, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 999
    .end local v1    # "byteval2":B
    :catch_0
    move-exception v1

    move v2, v0

    .line 1000
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    .local v2, "byteval2":B
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private compare_Character(ICLjava/lang/Object;)Z
    .locals 5
    .param p1, "operation"    # I
    .param p2, "charval"    # C
    .param p3, "value2"    # Ljava/lang/Object;

    .line 1045
    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 1046
    return v0

    .line 1050
    :cond_0
    :try_start_0
    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    .local v1, "charval2":C
    nop

    .line 1055
    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1069
    return v0

    .line 1066
    :pswitch_0
    if-gt p2, v1, :cond_1

    move v0, v2

    :cond_1
    return v0

    .line 1063
    :pswitch_1
    if-lt p2, v1, :cond_2

    move v0, v2

    :cond_2
    return v0

    .line 1060
    :pswitch_2
    if-eq p2, v1, :cond_3

    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v3, v4, :cond_3

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-ne v3, v4, :cond_4

    :cond_3
    move v0, v2

    :cond_4
    return v0

    .line 1057
    :pswitch_3
    if-ne p2, v1, :cond_5

    move v0, v2

    :cond_5
    return v0

    .line 1051
    .end local v1    # "charval2":C
    :catch_0
    move-exception v1

    move v2, v0

    .line 1052
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    .local v2, "charval2":C
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private compare_Collection(ILjava/util/Collection;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "operation"    # I
    .param p3, "value2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 782
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 783
    .local v1, "value1":Ljava/lang/Object;
    invoke-direct {p0, p1, v1, p3}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 784
    const/4 v2, 0x1

    return v2

    .end local v1    # "value1":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 787
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private compare_Comparable(ILjava/lang/Comparable;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "operation"    # I
    .param p3, "value2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1189
    .local p2, "value1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 1190
    return v0

    .line 1192
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .line 1193
    if-nez p3, :cond_1

    .line 1194
    return v0

    .line 1197
    :cond_1
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1212
    goto :goto_0

    .line 1206
    :pswitch_0
    :try_start_0
    invoke-interface {p2, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 1203
    :pswitch_1
    invoke-interface {p2, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 1200
    :pswitch_2
    invoke-interface {p2, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_4

    move v0, v1

    :cond_4
    return v0

    .line 1209
    :catch_0
    move-exception v1

    .line 1211
    .local v1, "e":Ljava/lang/Exception;
    return v0

    .line 1213
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private compare_Double(IDLjava/lang/Object;)Z
    .locals 5
    .param p1, "operation"    # I
    .param p2, "doubleval"    # D
    .param p4, "value2"    # Ljava/lang/Object;

    .line 1115
    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 1116
    return v0

    .line 1120
    :cond_0
    const-wide/16 v1, 0x0

    :try_start_0
    move-object v3, p4

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    .local v1, "doubleval2":D
    nop

    .line 1125
    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1137
    return v0

    .line 1134
    :pswitch_0
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-gtz v4, :cond_1

    move v0, v3

    :cond_1
    return v0

    .line 1131
    :pswitch_1
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-ltz v4, :cond_2

    move v0, v3

    :cond_2
    return v0

    .line 1128
    :pswitch_2
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-nez v4, :cond_3

    move v0, v3

    :cond_3
    return v0

    .line 1121
    .end local v1    # "doubleval2":D
    :catch_0
    move-exception v3

    .line 1122
    .restart local v1    # "doubleval2":D
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private compare_Float(IFLjava/lang/Object;)Z
    .locals 4
    .param p1, "operation"    # I
    .param p2, "floatval"    # F
    .param p3, "value2"    # Ljava/lang/Object;

    .line 1089
    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 1090
    return v0

    .line 1094
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    .local v1, "floatval2":F
    nop

    .line 1099
    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1111
    return v0

    .line 1108
    :pswitch_0
    invoke-static {p2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gtz v3, :cond_1

    move v0, v2

    :cond_1
    return v0

    .line 1105
    :pswitch_1
    invoke-static {p2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-ltz v3, :cond_2

    move v0, v2

    :cond_2
    return v0

    .line 1102
    :pswitch_2
    invoke-static {p2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 1095
    .end local v1    # "floatval2":F
    :catch_0
    move-exception v2

    .line 1096
    .restart local v1    # "floatval2":F
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private compare_Integer(IILjava/lang/Object;)Z
    .locals 3
    .param p1, "operation"    # I
    .param p2, "intval"    # I
    .param p3, "value2"    # Ljava/lang/Object;

    .line 942
    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 943
    return v0

    .line 947
    :cond_0
    :try_start_0
    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    .local v1, "intval2":I
    nop

    .line 951
    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 963
    return v0

    .line 960
    :pswitch_0
    if-gt p2, v1, :cond_1

    move v0, v2

    :cond_1
    return v0

    .line 957
    :pswitch_1
    if-lt p2, v1, :cond_2

    move v0, v2

    :cond_2
    return v0

    .line 954
    :pswitch_2
    if-ne p2, v1, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 948
    .end local v1    # "intval2":I
    :catch_0
    move-exception v1

    move v2, v0

    .line 949
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    .local v2, "intval2":I
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private compare_Long(IJLjava/lang/Object;)Z
    .locals 5
    .param p1, "operation"    # I
    .param p2, "longval"    # J
    .param p4, "value2"    # Ljava/lang/Object;

    .line 967
    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 968
    return v0

    .line 972
    :cond_0
    const-wide/16 v1, 0x0

    :try_start_0
    move-object v3, p4

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    .local v1, "longval2":J
    nop

    .line 977
    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    .line 989
    return v0

    .line 986
    :pswitch_0
    cmp-long v4, p2, v1

    if-gtz v4, :cond_1

    move v0, v3

    :cond_1
    return v0

    .line 983
    :pswitch_1
    cmp-long v4, p2, v1

    if-ltz v4, :cond_2

    move v0, v3

    :cond_2
    return v0

    .line 980
    :pswitch_2
    cmp-long v4, p2, v1

    if-nez v4, :cond_3

    move v0, v3

    :cond_3
    return v0

    .line 973
    .end local v1    # "longval2":J
    :catch_0
    move-exception v3

    .line 974
    .restart local v1    # "longval2":J
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private compare_ObjectArray(I[Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "operation"    # I
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "value2"    # Ljava/lang/Object;

    .line 791
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 792
    .local v3, "value1":Ljava/lang/Object;
    invoke-direct {p0, p1, v3, p3}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 793
    const/4 v4, 0x1

    return v4

    .line 791
    .end local v3    # "value1":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 796
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private compare_PrimitiveArray(ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "operation"    # I
    .param p3, "primarray"    # Ljava/lang/Object;
    .param p4, "value2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 800
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 801
    move-object v0, p3

    check-cast v0, [I

    check-cast v0, [I

    .line 802
    .local v0, "array":[I
    move-object v3, v0

    .local v3, "arr$":[I
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, v3, v5

    .line 803
    .local v6, "value1":I
    invoke-direct {p0, p1, v6, p4}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_Integer(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 804
    return v2

    .line 802
    .end local v6    # "value1":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 807
    .end local v3    # "arr$":[I
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    return v1

    .line 809
    .end local v0    # "array":[I
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 810
    move-object v0, p3

    check-cast v0, [J

    check-cast v0, [J

    .line 811
    .local v0, "array":[J
    move-object v3, v0

    .local v3, "arr$":[J
    array-length v4, v3

    .restart local v4    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v4, :cond_4

    aget-wide v6, v3, v5

    .line 812
    .local v6, "value1":J
    invoke-direct {p0, p1, v6, v7, p4}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_Long(IJLjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 813
    return v2

    .line 811
    .end local v6    # "value1":J
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 816
    .end local v3    # "arr$":[J
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_4
    return v1

    .line 818
    .end local v0    # "array":[J
    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 819
    move-object v0, p3

    check-cast v0, [B

    check-cast v0, [B

    .line 820
    .local v0, "array":[B
    move-object v3, v0

    .local v3, "arr$":[B
    array-length v4, v3

    .restart local v4    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_2
    if-ge v5, v4, :cond_7

    aget-byte v6, v3, v5

    .line 821
    .local v6, "value1":B
    invoke-direct {p0, p1, v6, p4}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_Byte(IBLjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 822
    return v2

    .line 820
    .end local v6    # "value1":B
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 825
    .end local v3    # "arr$":[B
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_7
    return v1

    .line 827
    .end local v0    # "array":[B
    :cond_8
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 828
    move-object v0, p3

    check-cast v0, [S

    check-cast v0, [S

    .line 829
    .local v0, "array":[S
    move-object v3, v0

    .local v3, "arr$":[S
    array-length v4, v3

    .restart local v4    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v4, :cond_a

    aget-short v6, v3, v5

    .line 830
    .local v6, "value1":S
    invoke-direct {p0, p1, v6, p4}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_Short(ISLjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 831
    return v2

    .line 829
    .end local v6    # "value1":S
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 834
    .end local v3    # "arr$":[S
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_a
    return v1

    .line 836
    .end local v0    # "array":[S
    :cond_b
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 837
    move-object v0, p3

    check-cast v0, [C

    check-cast v0, [C

    .line 838
    .local v0, "array":[C
    move-object v3, v0

    .local v3, "arr$":[C
    array-length v4, v3

    .restart local v4    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_4
    if-ge v5, v4, :cond_d

    aget-char v6, v3, v5

    .line 839
    .local v6, "value1":C
    invoke-direct {p0, p1, v6, p4}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_Character(ICLjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 840
    return v2

    .line 838
    .end local v6    # "value1":C
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 843
    .end local v3    # "arr$":[C
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_d
    return v1

    .line 845
    .end local v0    # "array":[C
    :cond_e
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 846
    move-object v0, p3

    check-cast v0, [F

    check-cast v0, [F

    .line 847
    .local v0, "array":[F
    move-object v3, v0

    .local v3, "arr$":[F
    array-length v4, v3

    .restart local v4    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_5
    if-ge v5, v4, :cond_10

    aget v6, v3, v5

    .line 848
    .local v6, "value1":F
    invoke-direct {p0, p1, v6, p4}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_Float(IFLjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 849
    return v2

    .line 847
    .end local v6    # "value1":F
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 852
    .end local v3    # "arr$":[F
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_10
    return v1

    .line 854
    .end local v0    # "array":[F
    :cond_11
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 855
    move-object v0, p3

    check-cast v0, [D

    check-cast v0, [D

    .line 856
    .local v0, "array":[D
    move-object v3, v0

    .local v3, "arr$":[D
    array-length v4, v3

    .restart local v4    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_6
    if-ge v5, v4, :cond_13

    aget-wide v6, v3, v5

    .line 857
    .local v6, "value1":D
    invoke-direct {p0, p1, v6, v7, p4}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_Double(IDLjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 858
    return v2

    .line 856
    .end local v6    # "value1":D
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 861
    .end local v3    # "arr$":[D
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_13
    return v1

    .line 863
    .end local v0    # "array":[D
    :cond_14
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 864
    move-object v0, p3

    check-cast v0, [Z

    check-cast v0, [Z

    .line 865
    .local v0, "array":[Z
    move-object v3, v0

    .local v3, "arr$":[Z
    array-length v4, v3

    .restart local v4    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_7
    if-ge v5, v4, :cond_16

    aget-boolean v6, v3, v5

    .line 866
    .local v6, "value1":Z
    invoke-direct {p0, p1, v6, p4}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare_Boolean(IZLjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 867
    return v2

    .line 865
    .end local v6    # "value1":Z
    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 870
    .end local v3    # "arr$":[Z
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_16
    return v1

    .line 872
    .end local v0    # "array":[Z
    :cond_17
    return v1
.end method

.method private compare_Short(ISLjava/lang/Object;)Z
    .locals 3
    .param p1, "operation"    # I
    .param p2, "shortval"    # S
    .param p3, "value2"    # Ljava/lang/Object;

    .line 1019
    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 1020
    return v0

    .line 1024
    :cond_0
    :try_start_0
    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    .local v1, "shortval2":S
    nop

    .line 1029
    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1041
    return v0

    .line 1038
    :pswitch_0
    if-gt p2, v1, :cond_1

    move v0, v2

    :cond_1
    return v0

    .line 1035
    :pswitch_1
    if-lt p2, v1, :cond_2

    move v0, v2

    :cond_2
    return v0

    .line 1032
    :pswitch_2
    if-ne p2, v1, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 1025
    .end local v1    # "shortval2":S
    :catch_0
    move-exception v1

    move v2, v0

    .line 1026
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    .local v2, "shortval2":S
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private compare_String(ILjava/lang/String;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "operation"    # I
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "value2"    # Ljava/lang/Object;

    .line 876
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 938
    :pswitch_0
    return v0

    .line 878
    :pswitch_1
    move-object v2, p3

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    .line 879
    .local v2, "substrings":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 880
    .local v3, "pos":I
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, v2

    .local v5, "size":I
    :goto_0
    if-ge v4, v5, :cond_7

    .line 881
    aget-object v6, v2, v4

    .line 883
    .local v6, "substr":Ljava/lang/String;
    add-int/lit8 v7, v4, 0x1

    if-ge v7, v5, :cond_5

    .line 884
    if-nez v6, :cond_3

    .line 885
    add-int/lit8 v7, v4, 0x1

    aget-object v7, v2, v7

    .line 887
    .local v7, "substr2":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 888
    goto :goto_1

    .line 890
    :cond_0
    invoke-virtual {p2, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 891
    .local v8, "index":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 892
    return v0

    .line 895
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v8

    .line 896
    .end local v3    # "pos":I
    .local v9, "pos":I
    add-int/lit8 v3, v4, 0x2

    if-ge v3, v5, :cond_2

    .line 902
    add-int/lit8 v4, v4, 0x1

    .line 903
    .end local v7    # "substr2":Ljava/lang/String;
    .end local v8    # "index":I
    :cond_2
    move v3, v9

    goto :goto_1

    .line 904
    .end local v9    # "pos":I
    .restart local v3    # "pos":I
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 905
    .local v7, "len":I
    invoke-virtual {p2, v3, v6, v0, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 906
    add-int/2addr v3, v7

    .line 910
    .end local v7    # "len":I
    nop

    .line 880
    .end local v6    # "substr":Ljava/lang/String;
    :goto_1
    add-int/2addr v4, v1

    goto :goto_0

    .line 908
    .restart local v6    # "substr":Ljava/lang/String;
    .restart local v7    # "len":I
    :cond_4
    return v0

    .line 912
    .end local v7    # "len":I
    :cond_5
    if-nez v6, :cond_6

    .line 913
    return v1

    .line 916
    :cond_6
    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 920
    .end local v4    # "i":I
    .end local v5    # "size":I
    .end local v6    # "substr":Ljava/lang/String;
    :cond_7
    return v1

    .line 935
    .end local v2    # "substrings":[Ljava/lang/String;
    .end local v3    # "pos":I
    :pswitch_2
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_8

    move v0, v1

    :cond_8
    return v0

    .line 932
    :pswitch_3
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_9

    move v0, v1

    :cond_9
    return v0

    .line 926
    :pswitch_4
    invoke-static {p2}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->approxString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 927
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->approxString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, "string2":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 923
    .end local v0    # "string2":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private compare_Unknown(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "operation"    # I
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "value2"    # Ljava/lang/Object;

    .line 1217
    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 1218
    return v0

    .line 1220
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .line 1221
    if-nez p3, :cond_1

    .line 1222
    return v0

    .line 1225
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1236
    goto :goto_0

    .line 1230
    :pswitch_0
    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1233
    :catch_0
    move-exception v1

    .line 1235
    .local v1, "e":Ljava/lang/Exception;
    return v0

    .line 1237
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static encodeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .line 699
    const/4 v0, 0x0

    .line 700
    .local v0, "encoded":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 701
    .local v1, "inlen":I
    shl-int/lit8 v2, v1, 0x1

    .line 703
    .local v2, "outlen":I
    new-array v3, v2, [C

    .line 704
    .local v3, "output":[C
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 706
    const/4 v5, 0x0

    .line 707
    .local v5, "cursor":I
    move v6, v1

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 708
    aget-char v7, v3, v6

    .line 710
    .local v7, "c":C
    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    .line 715
    :sswitch_0
    const/16 v8, 0x5c

    aput-char v8, v3, v5

    .line 716
    add-int/lit8 v5, v5, 0x1

    .line 717
    const/4 v0, 0x1

    .line 723
    :goto_1
    aput-char v7, v3, v5

    .line 724
    nop

    .end local v7    # "c":C
    add-int/lit8 v5, v5, 0x1

    .line 707
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 727
    .end local v6    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    :cond_1
    move-object v6, p0

    :goto_2
    return-object v6

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method static newInstance(Ljava/lang/String;)Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    .locals 1
    .param p0, "filterString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/InvalidSyntaxException;
        }
    .end annotation

    .line 378
    new-instance v0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;

    invoke-direct {v0, p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->parse()Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    move-result-object v0

    return-object v0
.end method

.method private normalize()Ljava/lang/StringBuffer;
    .locals 7

    .line 560
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 561
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 563
    iget v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->op:I

    const/16 v2, 0x3d

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 587
    :pswitch_0
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 588
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->value:Ljava/lang/Object;

    check-cast v1, Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    .line 589
    .local v1, "filter":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    invoke-direct {v1}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->normalize()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 591
    goto/16 :goto_4

    .line 576
    .end local v1    # "filter":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    :pswitch_1
    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 578
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->value:Ljava/lang/Object;

    check-cast v1, [Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    check-cast v1, [Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    .line 579
    .local v1, "filters":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    move-object v2, v1

    .local v2, "arr$":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 580
    .local v5, "f":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    invoke-direct {v5}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->normalize()Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 579
    .end local v5    # "f":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 583
    .end local v2    # "arr$":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    goto/16 :goto_4

    .line 565
    .end local v1    # "filters":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    :pswitch_2
    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 567
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->value:Ljava/lang/Object;

    check-cast v1, [Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    check-cast v1, [Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    .line 568
    .restart local v1    # "filters":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    move-object v2, v1

    .restart local v2    # "arr$":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    array-length v3, v2

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 569
    .restart local v5    # "f":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    invoke-direct {v5}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->normalize()Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 568
    .end local v5    # "f":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 572
    .end local v2    # "arr$":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_1
    goto/16 :goto_4

    .line 595
    .end local v1    # "filters":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    :pswitch_3
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->attr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 598
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->value:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    .line 600
    .local v1, "substrings":[Ljava/lang/String;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v3, v2

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 601
    .local v5, "substr":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 602
    const/16 v6, 0x2a

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 604
    :cond_2
    invoke-static {v5}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->encodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    .end local v5    # "substr":Ljava/lang/String;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 608
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_3
    goto :goto_4

    .line 640
    .end local v1    # "substrings":[Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->attr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 641
    const-string v1, "=*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 625
    :pswitch_5
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->attr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 626
    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->encodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 629
    goto :goto_4

    .line 618
    :pswitch_6
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->attr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    const-string v1, ">="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 620
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->encodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 622
    goto :goto_4

    .line 632
    :pswitch_7
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->attr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 633
    const-string v1, "~="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->approxString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->encodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 636
    goto :goto_4

    .line 611
    :pswitch_8
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->attr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 613
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->encodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 615
    nop

    .line 647
    :goto_4
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 649
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static setAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .locals 1
    .param p0, "accessible"    # Ljava/lang/reflect/AccessibleObject;

    .line 1183
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1184
    new-instance v0, Lorg/osgi/framework/FrameworkUtil$SetAccessibleAction;

    invoke-direct {v0, p0}, Lorg/osgi/framework/FrameworkUtil$SetAccessibleAction;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 1186
    :cond_0
    return-void
.end method

.method private static valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "value2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1144
    .local p0, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "valueOf"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1147
    .local v3, "method":Ljava/lang/reflect/Method;
    nop

    .line 1148
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1149
    invoke-static {v3}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 1151
    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    return-object v2

    .line 1152
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 1153
    .local v0, "e":Ljava/lang/IllegalAccessException;
    return-object v2

    .line 1145
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v3

    move-object v4, v2

    .line 1146
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    .local v4, "method":Ljava/lang/reflect/Method;
    move-object v3, v4

    .line 1163
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :try_start_2
    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6

    .line 1166
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    nop

    .line 1167
    invoke-static {v3}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 1169
    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    .line 1174
    :catch_3
    move-exception v0

    .line 1175
    .local v0, "e":Ljava/lang/InstantiationException;
    return-object v2

    .line 1172
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v0

    .line 1173
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    return-object v2

    .line 1170
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v0

    .line 1171
    .local v0, "e":Ljava/lang/IllegalAccessException;
    return-object v2

    .line 1164
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_6
    move-exception v0

    move-object v1, v3

    .line 1165
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    nop

    .line 1179
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 667
    if-ne p1, p0, :cond_0

    .line 668
    const/4 v0, 0x1

    return v0

    .line 671
    :cond_0
    instance-of v0, p1, Lorg/osgi/framework/Filter;

    if-nez v0, :cond_1

    .line 672
    const/4 v0, 0x0

    return v0

    .line 675
    :cond_1
    invoke-virtual {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 689
    invoke-virtual {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/util/Dictionary;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Dictionary<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    .line 418
    .local p1, "dictionary":Ljava/util/Dictionary;, "Ljava/util/Dictionary<Ljava/lang/String;*>;"
    new-instance v0, Lorg/osgi/framework/FrameworkUtil$CaseInsensitiveMap;

    invoke-direct {v0, p1}, Lorg/osgi/framework/FrameworkUtil$CaseInsensitiveMap;-><init>(Ljava/util/Dictionary;)V

    invoke-virtual {p0, v0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->matches(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public match(Lorg/osgi/framework/ServiceReference;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/ServiceReference<",
            "*>;)Z"
        }
    .end annotation

    .line 401
    .local p1, "reference":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<*>;"
    new-instance v0, Lorg/osgi/framework/FrameworkUtil$ServiceReferenceMap;

    invoke-direct {v0, p1}, Lorg/osgi/framework/FrameworkUtil$ServiceReferenceMap;-><init>(Lorg/osgi/framework/ServiceReference;)V

    invoke-virtual {p0, v0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->matches(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public matchCase(Ljava/util/Dictionary;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Dictionary<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    .line 433
    .local p1, "dictionary":Ljava/util/Dictionary;, "Ljava/util/Dictionary<Ljava/lang/String;*>;"
    iget v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->op:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 474
    return v2

    .line 455
    :pswitch_0
    iget-object v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->value:Ljava/lang/Object;

    check-cast v0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    .line 456
    .local v0, "filter":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    invoke-virtual {v0, p1}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->matchCase(Ljava/util/Dictionary;)Z

    move-result v1

    xor-int/2addr v1, v3

    return v1

    .line 445
    .end local v0    # "filter":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    :pswitch_1
    iget-object v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->value:Ljava/lang/Object;

    check-cast v0, [Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    check-cast v0, [Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    .line 446
    .local v0, "filters":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    move-object v1, v0

    .local v1, "arr$":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 447
    .local v6, "f":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    invoke-virtual {v6, p1}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->matchCase(Ljava/util/Dictionary;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 448
    return v3

    .line 446
    .end local v6    # "f":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 451
    .end local v1    # "arr$":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    return v2

    .line 435
    .end local v0    # "filters":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    :pswitch_2
    iget-object v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->value:Ljava/lang/Object;

    check-cast v0, [Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    check-cast v0, [Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    .line 436
    .restart local v0    # "filters":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    move-object v1, v0

    .restart local v1    # "arr$":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    array-length v4, v1

    .restart local v4    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v1, v5

    .line 437
    .restart local v6    # "f":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    invoke-virtual {v6, p1}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->matchCase(Ljava/util/Dictionary;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 438
    return v2

    .line 436
    .end local v6    # "f":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 441
    .end local v1    # "arr$":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_3
    return v3

    .line 469
    .end local v0    # "filters":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    :pswitch_3
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->attr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    move-object v0, v1

    .line 470
    .local v0, "prop":Ljava/lang/Object;
    if-eqz v0, :cond_5

    move v2, v3

    :cond_5
    return v2

    .line 464
    .end local v0    # "prop":Ljava/lang/Object;
    :pswitch_4
    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->attr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    move-object v0, v1

    .line 465
    .restart local v0    # "prop":Ljava/lang/Object;
    iget v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->op:I

    iget-object v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->value:Ljava/lang/Object;

    invoke-direct {p0, v1, v0, v2}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public matches(Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    .line 490
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    iget v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->op:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 531
    return v2

    .line 512
    :pswitch_0
    iget-object v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->value:Ljava/lang/Object;

    check-cast v0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    .line 513
    .local v0, "filter":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    invoke-virtual {v0, p1}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->matches(Ljava/util/Map;)Z

    move-result v1

    xor-int/2addr v1, v3

    return v1

    .line 502
    .end local v0    # "filter":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    :pswitch_1
    iget-object v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->value:Ljava/lang/Object;

    check-cast v0, [Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    check-cast v0, [Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    .line 503
    .local v0, "filters":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    move-object v1, v0

    .local v1, "arr$":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 504
    .local v6, "f":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    invoke-virtual {v6, p1}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->matches(Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 505
    return v3

    .line 503
    .end local v6    # "f":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 508
    .end local v1    # "arr$":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    return v2

    .line 492
    .end local v0    # "filters":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    :pswitch_2
    iget-object v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->value:Ljava/lang/Object;

    check-cast v0, [Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    check-cast v0, [Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    .line 493
    .restart local v0    # "filters":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    move-object v1, v0

    .restart local v1    # "arr$":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    array-length v4, v1

    .restart local v4    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v1, v5

    .line 494
    .restart local v6    # "f":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    invoke-virtual {v6, p1}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->matches(Ljava/util/Map;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 495
    return v2

    .line 493
    .end local v6    # "f":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 498
    .end local v1    # "arr$":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_3
    return v3

    .line 526
    .end local v0    # "filters":[Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    :pswitch_3
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->attr:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    move-object v0, v1

    .line 527
    .local v0, "prop":Ljava/lang/Object;
    if-eqz v0, :cond_5

    move v2, v3

    :cond_5
    return v2

    .line 521
    .end local v0    # "prop":Ljava/lang/Object;
    :pswitch_4
    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->attr:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    move-object v0, v1

    .line 522
    .restart local v0    # "prop":Ljava/lang/Object;
    iget v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->op:I

    iget-object v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->value:Ljava/lang/Object;

    invoke-direct {p0, v1, v0, v2}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->compare(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 544
    iget-object v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->filterString:Ljava/lang/String;

    .line 545
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 546
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->normalize()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl;->filterString:Ljava/lang/String;

    .line 548
    :cond_0
    return-object v0
.end method
