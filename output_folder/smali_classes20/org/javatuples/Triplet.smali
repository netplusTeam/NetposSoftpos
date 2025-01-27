.class public final Lorg/javatuples/Triplet;
.super Lorg/javatuples/Tuple;
.source "Triplet.java"

# interfaces
.implements Lorg/javatuples/valueintf/IValue0;
.implements Lorg/javatuples/valueintf/IValue1;
.implements Lorg/javatuples/valueintf/IValue2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/javatuples/Tuple;",
        "Lorg/javatuples/valueintf/IValue0<",
        "TA;>;",
        "Lorg/javatuples/valueintf/IValue1<",
        "TB;>;",
        "Lorg/javatuples/valueintf/IValue2<",
        "TC;>;"
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x3

.field private static final serialVersionUID:J = -0x1a0d6312b02a3b5cL


# instance fields
.field private final val0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final val1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field

.field private final val2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;)V"
        }
    .end annotation

    .line 190
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TA;"
    .local p2, "value1":Ljava/lang/Object;, "TB;"
    .local p3, "value2":Ljava/lang/Object;, "TC;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-direct {p0, v0}, Lorg/javatuples/Tuple;-><init>([Ljava/lang/Object;)V

    .line 191
    iput-object p1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    .line 192
    iput-object p2, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    .line 193
    iput-object p3, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public static fromArray([Ljava/lang/Object;)Lorg/javatuples/Triplet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">([TX;)",
            "Lorg/javatuples/Triplet<",
            "TX;TX;TX;>;"
        }
    .end annotation

    .line 70
    .local p0, "array":[Ljava/lang/Object;, "[TX;"
    if-eqz p0, :cond_1

    .line 73
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 76
    new-instance v0, Lorg/javatuples/Triplet;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-direct {v0, v1, v2, v3}, Lorg/javatuples/Triplet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array must have exactly 3 elements in order to create a Triplet. Size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromCollection(Ljava/util/Collection;)Lorg/javatuples/Triplet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TX;>;)",
            "Lorg/javatuples/Triplet<",
            "TX;TX;TX;>;"
        }
    .end annotation

    .line 90
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TX;>;"
    invoke-static {p0}, Lorg/javatuples/Triplet;->fromIterable(Ljava/lang/Iterable;)Lorg/javatuples/Triplet;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;)Lorg/javatuples/Triplet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;)",
            "Lorg/javatuples/Triplet<",
            "TX;TX;TX;>;"
        }
    .end annotation

    .line 105
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/javatuples/Triplet;->fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Triplet;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;I)Lorg/javatuples/Triplet;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;I)",
            "Lorg/javatuples/Triplet<",
            "TX;TX;TX;>;"
        }
    .end annotation

    .line 121
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/javatuples/Triplet;->fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Triplet;

    move-result-object v0

    return-object v0
.end method

.method private static fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Triplet;
    .locals 8
    .param p1, "index"    # I
    .param p2, "exactSize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;IZ)",
            "Lorg/javatuples/Triplet<",
            "TX;TX;TX;>;"
        }
    .end annotation

    .line 129
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    if-eqz p0, :cond_9

    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "tooFewElements":Z
    const/4 v1, 0x0

    .line 136
    .local v1, "element0":Ljava/lang/Object;, "TX;"
    const/4 v2, 0x0

    .line 137
    .local v2, "element1":Ljava/lang/Object;, "TX;"
    const/4 v3, 0x0

    .line 139
    .local v3, "element2":Ljava/lang/Object;, "TX;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 141
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    const/4 v5, 0x0

    .line 142
    .local v5, "i":I
    :goto_0
    if-ge v5, p1, :cond_1

    .line 143
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 144
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 146
    :cond_0
    const/4 v0, 0x1

    .line 148
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 151
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 152
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 154
    :cond_2
    const/4 v0, 0x1

    .line 157
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 158
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 160
    :cond_3
    const/4 v0, 0x1

    .line 163
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 164
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    .line 166
    :cond_4
    const/4 v0, 0x1

    .line 169
    :goto_4
    if-eqz v0, :cond_6

    if-nez p2, :cond_5

    goto :goto_5

    .line 170
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Not enough elements for creating a Triplet (3 needed)"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 173
    :cond_6
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez p2, :cond_7

    goto :goto_6

    .line 174
    :cond_7
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Iterable must have exactly 3 available elements in order to create a Triplet."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 177
    :cond_8
    :goto_6
    new-instance v6, Lorg/javatuples/Triplet;

    invoke-direct {v6, v1, v2, v3}, Lorg/javatuples/Triplet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 130
    .end local v0    # "tooFewElements":Z
    .end local v1    # "element0":Ljava/lang/Object;, "TX;"
    .end local v2    # "element1":Ljava/lang/Object;, "TX;"
    .end local v3    # "element2":Ljava/lang/Object;, "TX;"
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    .end local v5    # "i":I
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Iterable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static with(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Triplet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(TA;TB;TC;)",
            "Lorg/javatuples/Triplet<",
            "TA;TB;TC;>;"
        }
    .end annotation

    .line 56
    .local p0, "value0":Ljava/lang/Object;, "TA;"
    .local p1, "value1":Ljava/lang/Object;, "TB;"
    .local p2, "value2":Ljava/lang/Object;, "TC;"
    new-instance v0, Lorg/javatuples/Triplet;

    invoke-direct {v0, p0, p1, p2}, Lorg/javatuples/Triplet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            "X6:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;TX5;TX6;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;"
        }
    .end annotation

    .line 637
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    invoke-virtual/range {p0 .. p7}, Lorg/javatuples/Triplet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Septet;)Lorg/javatuples/Decade;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            "X6:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Septet<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;"
        }
    .end annotation

    .line 642
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Triplet;->addAt3(Lorg/javatuples/Septet;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;TX5;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TX4;TX5;>;"
        }
    .end annotation

    .line 624
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    invoke-virtual/range {p0 .. p6}, Lorg/javatuples/Triplet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Sextet;)Lorg/javatuples/Ennead;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Sextet<",
            "TX0;TX1;TX2;TX3;TX4;TX5;>;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TX4;TX5;>;"
        }
    .end annotation

    .line 629
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TX0;TX1;TX2;TX3;TX4;TX5;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Triplet;->addAt3(Lorg/javatuples/Sextet;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TX4;>;"
        }
    .end annotation

    .line 611
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    invoke-virtual/range {p0 .. p5}, Lorg/javatuples/Triplet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Quintet;)Lorg/javatuples/Octet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Quintet<",
            "TX0;TX1;TX2;TX3;TX4;>;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TX4;>;"
        }
    .end annotation

    .line 616
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TX0;TX1;TX2;TX3;TX4;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Triplet;->addAt3(Lorg/javatuples/Quintet;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Lorg/javatuples/Quartet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Quartet<",
            "TA;TB;TC;TX0;>;"
        }
    .end annotation

    .line 562
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Triplet;->addAt3(Ljava/lang/Object;)Lorg/javatuples/Quartet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Unit;)Lorg/javatuples/Quartet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Quartet<",
            "TA;TB;TC;TX0;>;"
        }
    .end annotation

    .line 567
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Triplet;->addAt3(Lorg/javatuples/Unit;)Lorg/javatuples/Quartet;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TC;TX0;TX1;>;"
        }
    .end annotation

    .line 574
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    invoke-virtual {p0, p1, p2}, Lorg/javatuples/Triplet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Pair;)Lorg/javatuples/Quintet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Pair<",
            "TX0;TX1;>;)",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TC;TX0;TX1;>;"
        }
    .end annotation

    .line 579
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Triplet;->addAt3(Lorg/javatuples/Pair;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 598
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/javatuples/Triplet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Quartet;)Lorg/javatuples/Septet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Quartet<",
            "TX0;TX1;TX2;TX3;>;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 603
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Triplet;->addAt3(Lorg/javatuples/Quartet;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 586
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/javatuples/Triplet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Triplet;)Lorg/javatuples/Sextet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Triplet<",
            "TX0;TX1;TX2;>;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 591
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Triplet;->addAt3(Lorg/javatuples/Triplet;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            "X6:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;TX5;TX6;)",
            "Lorg/javatuples/Decade<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;TA;TB;TC;>;"
        }
    .end annotation

    .line 377
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v9, v0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v11, v0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt0(Lorg/javatuples/Septet;)Lorg/javatuples/Decade;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            "X6:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Septet<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;)",
            "Lorg/javatuples/Decade<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;TA;TB;TC;>;"
        }
    .end annotation

    .line 541
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;"
    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue0()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue4()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue5()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue6()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/javatuples/Triplet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;TX5;)",
            "Lorg/javatuples/Ennead<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TA;TB;TC;>;"
        }
    .end annotation

    .line 352
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    move-object v0, p0

    new-instance v11, Lorg/javatuples/Ennead;

    iget-object v8, v0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v9, v0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v10}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt0(Lorg/javatuples/Sextet;)Lorg/javatuples/Ennead;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Sextet<",
            "TX0;TX1;TX2;TX3;TX4;TX5;>;)",
            "Lorg/javatuples/Ennead<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TA;TB;TC;>;"
        }
    .end annotation

    .line 518
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TX0;TX1;TX2;TX3;TX4;TX5;>;"
    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue0()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue4()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue5()Ljava/lang/Object;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/javatuples/Triplet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Octet<",
            "TX0;TX1;TX2;TX3;TX4;TA;TB;TC;>;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v6, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt0(Lorg/javatuples/Quintet;)Lorg/javatuples/Octet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Quintet<",
            "TX0;TX1;TX2;TX3;TX4;>;)",
            "Lorg/javatuples/Octet<",
            "TX0;TX1;TX2;TX3;TX4;TA;TB;TC;>;"
        }
    .end annotation

    .line 495
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TX0;TX1;TX2;TX3;TX4;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quintet;->getValue0()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quintet;->getValue1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quintet;->getValue2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/javatuples/Quintet;->getValue3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/javatuples/Quintet;->getValue4()Ljava/lang/Object;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/javatuples/Triplet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;)Lorg/javatuples/Quartet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Quartet<",
            "TX0;TA;TB;TC;>;"
        }
    .end annotation

    .line 226
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v0, Lorg/javatuples/Quartet;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public addAt0(Lorg/javatuples/Unit;)Lorg/javatuples/Quartet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Quartet<",
            "TX0;TA;TB;TC;>;"
        }
    .end annotation

    .line 403
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Triplet;->addAt0(Ljava/lang/Object;)Lorg/javatuples/Quartet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Quintet<",
            "TX0;TX1;TA;TB;TC;>;"
        }
    .end annotation

    .line 250
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v3, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public addAt0(Lorg/javatuples/Pair;)Lorg/javatuples/Quintet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Pair<",
            "TX0;TX1;>;)",
            "Lorg/javatuples/Quintet<",
            "TX0;TX1;TA;TB;TC;>;"
        }
    .end annotation

    .line 425
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Triplet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Septet<",
            "TX0;TX1;TX2;TX3;TA;TB;TC;>;"
        }
    .end annotation

    .line 302
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v5, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt0(Lorg/javatuples/Quartet;)Lorg/javatuples/Septet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Quartet<",
            "TX0;TX1;TX2;TX3;>;)",
            "Lorg/javatuples/Septet<",
            "TX0;TX1;TX2;TX3;TA;TB;TC;>;"
        }
    .end annotation

    .line 472
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Triplet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Sextet<",
            "TX0;TX1;TX2;TA;TB;TC;>;"
        }
    .end annotation

    .line 276
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v4, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public addAt0(Lorg/javatuples/Triplet;)Lorg/javatuples/Sextet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Triplet<",
            "TX0;TX1;TX2;>;)",
            "Lorg/javatuples/Sextet<",
            "TX0;TX1;TX2;TA;TB;TC;>;"
        }
    .end annotation

    .line 448
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Triplet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            "X6:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;TX5;TX6;)",
            "Lorg/javatuples/Decade<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TX6;TB;TC;>;"
        }
    .end annotation

    .line 382
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v2, v0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v11, v0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v1, v12

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt1(Lorg/javatuples/Septet;)Lorg/javatuples/Decade;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            "X6:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Septet<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;)",
            "Lorg/javatuples/Decade<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TX6;TB;TC;>;"
        }
    .end annotation

    .line 545
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;"
    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue0()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue4()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue5()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue6()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/javatuples/Triplet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;TX5;)",
            "Lorg/javatuples/Ennead<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TB;TC;>;"
        }
    .end annotation

    .line 357
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    move-object v0, p0

    new-instance v11, Lorg/javatuples/Ennead;

    iget-object v2, v0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v9, v0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v1, v11

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt1(Lorg/javatuples/Sextet;)Lorg/javatuples/Ennead;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Sextet<",
            "TX0;TX1;TX2;TX3;TX4;TX5;>;)",
            "Lorg/javatuples/Ennead<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TB;TC;>;"
        }
    .end annotation

    .line 522
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TX0;TX1;TX2;TX3;TX4;TX5;>;"
    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue0()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue4()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue5()Ljava/lang/Object;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/javatuples/Triplet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Octet<",
            "TA;TX0;TX1;TX2;TX3;TX4;TB;TC;>;"
        }
    .end annotation

    .line 332
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt1(Lorg/javatuples/Quintet;)Lorg/javatuples/Octet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Quintet<",
            "TX0;TX1;TX2;TX3;TX4;>;)",
            "Lorg/javatuples/Octet<",
            "TA;TX0;TX1;TX2;TX3;TX4;TB;TC;>;"
        }
    .end annotation

    .line 499
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TX0;TX1;TX2;TX3;TX4;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quintet;->getValue0()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quintet;->getValue1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quintet;->getValue2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/javatuples/Quintet;->getValue3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/javatuples/Quintet;->getValue4()Ljava/lang/Object;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/javatuples/Triplet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;)Lorg/javatuples/Quartet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Quartet<",
            "TA;TX0;TB;TC;>;"
        }
    .end annotation

    .line 231
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v0, Lorg/javatuples/Quartet;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public addAt1(Lorg/javatuples/Unit;)Lorg/javatuples/Quartet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Quartet<",
            "TA;TX0;TB;TC;>;"
        }
    .end annotation

    .line 407
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Triplet;->addAt1(Ljava/lang/Object;)Lorg/javatuples/Quartet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Quintet<",
            "TA;TX0;TX1;TB;TC;>;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public addAt1(Lorg/javatuples/Pair;)Lorg/javatuples/Quintet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Pair<",
            "TX0;TX1;>;)",
            "Lorg/javatuples/Quintet<",
            "TA;TX0;TX1;TB;TC;>;"
        }
    .end annotation

    .line 429
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Triplet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Septet<",
            "TA;TX0;TX1;TX2;TX3;TB;TC;>;"
        }
    .end annotation

    .line 307
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt1(Lorg/javatuples/Quartet;)Lorg/javatuples/Septet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Quartet<",
            "TX0;TX1;TX2;TX3;>;)",
            "Lorg/javatuples/Septet<",
            "TA;TX0;TX1;TX2;TX3;TB;TC;>;"
        }
    .end annotation

    .line 476
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Triplet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Sextet<",
            "TA;TX0;TX1;TX2;TB;TC;>;"
        }
    .end annotation

    .line 281
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public addAt1(Lorg/javatuples/Triplet;)Lorg/javatuples/Sextet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Triplet<",
            "TX0;TX1;TX2;>;)",
            "Lorg/javatuples/Sextet<",
            "TA;TX0;TX1;TX2;TB;TC;>;"
        }
    .end annotation

    .line 452
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Triplet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            "X6:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;TX5;TX6;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TX5;TX6;TC;>;"
        }
    .end annotation

    .line 387
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v2, v0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v11, v0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v1, v12

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt2(Lorg/javatuples/Septet;)Lorg/javatuples/Decade;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            "X6:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Septet<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TX5;TX6;TC;>;"
        }
    .end annotation

    .line 549
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;"
    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue0()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue4()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue5()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue6()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/javatuples/Triplet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;TX5;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TX5;TC;>;"
        }
    .end annotation

    .line 362
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    move-object v0, p0

    new-instance v11, Lorg/javatuples/Ennead;

    iget-object v2, v0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v1, v11

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt2(Lorg/javatuples/Sextet;)Lorg/javatuples/Ennead;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Sextet<",
            "TX0;TX1;TX2;TX3;TX4;TX5;>;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TX5;TC;>;"
        }
    .end annotation

    .line 526
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TX0;TX1;TX2;TX3;TX4;TX5;>;"
    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue0()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue4()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue5()Ljava/lang/Object;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/javatuples/Triplet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TC;>;"
        }
    .end annotation

    .line 337
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v0, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt2(Lorg/javatuples/Quintet;)Lorg/javatuples/Octet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Quintet<",
            "TX0;TX1;TX2;TX3;TX4;>;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TC;>;"
        }
    .end annotation

    .line 503
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TX0;TX1;TX2;TX3;TX4;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quintet;->getValue0()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quintet;->getValue1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quintet;->getValue2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/javatuples/Quintet;->getValue3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/javatuples/Quintet;->getValue4()Ljava/lang/Object;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/javatuples/Triplet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;)Lorg/javatuples/Quartet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Quartet<",
            "TA;TB;TX0;TC;>;"
        }
    .end annotation

    .line 236
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v0, Lorg/javatuples/Quartet;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public addAt2(Lorg/javatuples/Unit;)Lorg/javatuples/Quartet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Quartet<",
            "TA;TB;TX0;TC;>;"
        }
    .end annotation

    .line 411
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Triplet;->addAt2(Ljava/lang/Object;)Lorg/javatuples/Quartet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TX0;TX1;TC;>;"
        }
    .end annotation

    .line 260
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public addAt2(Lorg/javatuples/Pair;)Lorg/javatuples/Quintet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Pair<",
            "TX0;TX1;>;)",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TX0;TX1;TC;>;"
        }
    .end annotation

    .line 433
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Triplet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TX0;TX1;TX2;TX3;TC;>;"
        }
    .end annotation

    .line 312
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v0, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt2(Lorg/javatuples/Quartet;)Lorg/javatuples/Septet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Quartet<",
            "TX0;TX1;TX2;TX3;>;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TX0;TX1;TX2;TX3;TC;>;"
        }
    .end annotation

    .line 480
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Triplet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TX0;TX1;TX2;TC;>;"
        }
    .end annotation

    .line 286
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v0, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public addAt2(Lorg/javatuples/Triplet;)Lorg/javatuples/Sextet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Triplet<",
            "TX0;TX1;TX2;>;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TX0;TX1;TX2;TC;>;"
        }
    .end annotation

    .line 456
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Triplet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            "X6:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;TX5;TX6;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;"
        }
    .end annotation

    .line 392
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v2, v0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v4, v0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v1, v12

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt3(Lorg/javatuples/Septet;)Lorg/javatuples/Decade;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            "X6:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Septet<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;"
        }
    .end annotation

    .line 553
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;"
    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue0()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue4()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue5()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Lorg/javatuples/Septet;->getValue6()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/javatuples/Triplet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;TX5;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TX4;TX5;>;"
        }
    .end annotation

    .line 367
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    move-object v0, p0

    new-instance v11, Lorg/javatuples/Ennead;

    iget-object v2, v0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v4, v0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v1, v11

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt3(Lorg/javatuples/Sextet;)Lorg/javatuples/Ennead;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Sextet<",
            "TX0;TX1;TX2;TX3;TX4;TX5;>;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TX4;TX5;>;"
        }
    .end annotation

    .line 530
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TX0;TX1;TX2;TX3;TX4;TX5;>;"
    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue0()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue4()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lorg/javatuples/Sextet;->getValue5()Ljava/lang/Object;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/javatuples/Triplet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TX4;>;"
        }
    .end annotation

    .line 342
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v0, v9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt3(Lorg/javatuples/Quintet;)Lorg/javatuples/Octet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            "X4:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Quintet<",
            "TX0;TX1;TX2;TX3;TX4;>;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TX4;>;"
        }
    .end annotation

    .line 507
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TX0;TX1;TX2;TX3;TX4;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quintet;->getValue0()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quintet;->getValue1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quintet;->getValue2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/javatuples/Quintet;->getValue3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/javatuples/Quintet;->getValue4()Ljava/lang/Object;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/javatuples/Triplet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;)Lorg/javatuples/Quartet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Quartet<",
            "TA;TB;TC;TX0;>;"
        }
    .end annotation

    .line 241
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v0, Lorg/javatuples/Quartet;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public addAt3(Lorg/javatuples/Unit;)Lorg/javatuples/Quartet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Quartet<",
            "TA;TB;TC;TX0;>;"
        }
    .end annotation

    .line 415
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Triplet;->addAt3(Ljava/lang/Object;)Lorg/javatuples/Quartet;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TC;TX0;TX1;>;"
        }
    .end annotation

    .line 265
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public addAt3(Lorg/javatuples/Pair;)Lorg/javatuples/Quintet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Pair<",
            "TX0;TX1;>;)",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TC;TX0;TX1;>;"
        }
    .end annotation

    .line 437
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Triplet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 317
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v0, v8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt3(Lorg/javatuples/Quartet;)Lorg/javatuples/Septet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            "X3:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Quartet<",
            "TX0;TX1;TX2;TX3;>;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 484
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Triplet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 291
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    move-object v0, v7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public addAt3(Lorg/javatuples/Triplet;)Lorg/javatuples/Sextet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Triplet<",
            "TX0;TX1;TX2;>;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 460
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Triplet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 214
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    const/4 v0, 0x3

    return v0
.end method

.method public getValue0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 198
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    iget-object v0, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 203
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    iget-object v0, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 208
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    iget-object v0, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    return-object v0
.end method

.method public removeFrom0()Lorg/javatuples/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Pair<",
            "TB;TC;>;"
        }
    .end annotation

    .line 674
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    new-instance v0, Lorg/javatuples/Pair;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/javatuples/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public removeFrom1()Lorg/javatuples/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Pair<",
            "TA;TC;>;"
        }
    .end annotation

    .line 679
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    new-instance v0, Lorg/javatuples/Pair;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/javatuples/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public removeFrom2()Lorg/javatuples/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Pair<",
            "TA;TB;>;"
        }
    .end annotation

    .line 684
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    new-instance v0, Lorg/javatuples/Pair;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/javatuples/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setAt0(Ljava/lang/Object;)Lorg/javatuples/Triplet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Triplet<",
            "TX;TB;TC;>;"
        }
    .end annotation

    .line 653
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v0, Lorg/javatuples/Triplet;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2}, Lorg/javatuples/Triplet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setAt1(Ljava/lang/Object;)Lorg/javatuples/Triplet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Triplet<",
            "TA;TX;TC;>;"
        }
    .end annotation

    .line 658
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v0, Lorg/javatuples/Triplet;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Triplet;->val2:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2}, Lorg/javatuples/Triplet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setAt2(Ljava/lang/Object;)Lorg/javatuples/Triplet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Triplet<",
            "TA;TB;TX;>;"
        }
    .end annotation

    .line 663
    .local p0, "this":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TA;TB;TC;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v0, Lorg/javatuples/Triplet;

    iget-object v1, p0, Lorg/javatuples/Triplet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Triplet;->val1:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lorg/javatuples/Triplet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
