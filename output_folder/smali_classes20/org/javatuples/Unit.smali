.class public final Lorg/javatuples/Unit;
.super Lorg/javatuples/Tuple;
.source "Unit.java"

# interfaces
.implements Lorg/javatuples/valueintf/IValue0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/javatuples/Tuple;",
        "Lorg/javatuples/valueintf/IValue0<",
        "TA;>;"
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x1

.field private static final serialVersionUID:J = -0x7e78498ee58bf548L


# instance fields
.field private final val0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 172
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TA;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lorg/javatuples/Tuple;-><init>([Ljava/lang/Object;)V

    .line 173
    iput-object p1, p0, Lorg/javatuples/Unit;->val0:Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public static fromArray([Ljava/lang/Object;)Lorg/javatuples/Unit;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">([TX;)",
            "Lorg/javatuples/Unit<",
            "TX;>;"
        }
    .end annotation

    .line 63
    .local p0, "array":[Ljava/lang/Object;, "[TX;"
    if-eqz p0, :cond_1

    .line 66
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 69
    new-instance v0, Lorg/javatuples/Unit;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lorg/javatuples/Unit;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array must have exactly 1 element in order to create a Unit. Size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromCollection(Ljava/util/Collection;)Lorg/javatuples/Unit;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TX;>;)",
            "Lorg/javatuples/Unit<",
            "TX;>;"
        }
    .end annotation

    .line 83
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TX;>;"
    if-eqz p0, :cond_1

    .line 86
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 89
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 90
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    new-instance v1, Lorg/javatuples/Unit;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/javatuples/Unit;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 87
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collection must have exactly 1 element in order to create a Unit. Size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Collection cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;)Lorg/javatuples/Unit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;)",
            "Lorg/javatuples/Unit<",
            "TX;>;"
        }
    .end annotation

    .line 105
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/javatuples/Unit;->fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;I)Lorg/javatuples/Unit;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;I)",
            "Lorg/javatuples/Unit<",
            "TX;>;"
        }
    .end annotation

    .line 121
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/javatuples/Unit;->fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Unit;

    move-result-object v0

    return-object v0
.end method

.method private static fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Unit;
    .locals 6
    .param p1, "index"    # I
    .param p2, "exactSize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;IZ)",
            "Lorg/javatuples/Unit<",
            "TX;>;"
        }
    .end annotation

    .line 130
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    if-eqz p0, :cond_7

    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "tooFewElements":Z
    const/4 v1, 0x0

    .line 138
    .local v1, "element0":Ljava/lang/Object;, "TX;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 140
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    const/4 v3, 0x0

    .line 141
    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_1

    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 145
    :cond_0
    const/4 v0, 0x1

    .line 147
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 151
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 153
    :cond_2
    const/4 v0, 0x1

    .line 156
    :goto_2
    if-eqz v0, :cond_4

    if-nez p2, :cond_3

    goto :goto_3

    .line 157
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Not enough elements for creating a Unit (1 needed)"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 160
    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez p2, :cond_5

    goto :goto_4

    .line 161
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Iterable must have exactly 1 available element in order to create a Unit."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    :cond_6
    :goto_4
    new-instance v4, Lorg/javatuples/Unit;

    invoke-direct {v4, v1}, Lorg/javatuples/Unit;-><init>(Ljava/lang/Object;)V

    return-object v4

    .line 131
    .end local v0    # "tooFewElements":Z
    .end local v1    # "element0":Ljava/lang/Object;, "TX;"
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    .end local v3    # "i":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Iterable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static with(Ljava/lang/Object;)Lorg/javatuples/Unit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Lorg/javatuples/Unit<",
            "TA;>;"
        }
    .end annotation

    .line 49
    .local p0, "value0":Ljava/lang/Object;, "TA;"
    new-instance v0, Lorg/javatuples/Unit;

    invoke-direct {v0, p0}, Lorg/javatuples/Unit;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            "X7:",
            "Ljava/lang/Object;",
            "X8:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TX8;)",
            "Lorg/javatuples/Decade<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TX8;>;"
        }
    .end annotation

    .line 573
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    .local p8, "value7":Ljava/lang/Object;, "TX7;"
    .local p9, "value8":Ljava/lang/Object;, "TX8;"
    invoke-virtual/range {p0 .. p9}, Lorg/javatuples/Unit;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Ennead;)Lorg/javatuples/Decade;
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
            "X7:",
            "Ljava/lang/Object;",
            "X8:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Ennead<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TX8;>;)",
            "Lorg/javatuples/Decade<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TX8;>;"
        }
    .end annotation

    .line 578
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TX8;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Unit;->addAt1(Lorg/javatuples/Ennead;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            "X7:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;)",
            "Lorg/javatuples/Ennead<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;>;"
        }
    .end annotation

    .line 560
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    .local p8, "value7":Ljava/lang/Object;, "TX7;"
    invoke-virtual/range {p0 .. p8}, Lorg/javatuples/Unit;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Octet;)Lorg/javatuples/Ennead;
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
            "X7:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Octet<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;>;)",
            "Lorg/javatuples/Ennead<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;>;"
        }
    .end annotation

    .line 565
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Unit;->addAt1(Lorg/javatuples/Octet;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;"
        }
    .end annotation

    .line 547
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    invoke-virtual/range {p0 .. p7}, Lorg/javatuples/Unit;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Septet;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;"
        }
    .end annotation

    .line 552
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Unit;->addAt1(Lorg/javatuples/Septet;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Lorg/javatuples/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Pair<",
            "TA;TX0;>;"
        }
    .end annotation

    .line 472
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Unit;->addAt1(Ljava/lang/Object;)Lorg/javatuples/Pair;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Unit;)Lorg/javatuples/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Pair<",
            "TA;TX0;>;"
        }
    .end annotation

    .line 477
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Unit;->addAt1(Lorg/javatuples/Unit;)Lorg/javatuples/Pair;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quartet;
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
            "Lorg/javatuples/Quartet<",
            "TA;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 496
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/javatuples/Unit;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quartet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Triplet;)Lorg/javatuples/Quartet;
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
            "Lorg/javatuples/Quartet<",
            "TA;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 501
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Unit;->addAt1(Lorg/javatuples/Triplet;)Lorg/javatuples/Quartet;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;
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
            "Lorg/javatuples/Quintet<",
            "TA;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 508
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/javatuples/Unit;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Quartet;)Lorg/javatuples/Quintet;
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
            "Lorg/javatuples/Quintet<",
            "TA;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 513
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Unit;->addAt1(Lorg/javatuples/Quartet;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;>;"
        }
    .end annotation

    .line 534
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    invoke-virtual/range {p0 .. p6}, Lorg/javatuples/Unit;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Sextet;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;>;"
        }
    .end annotation

    .line 539
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TX0;TX1;TX2;TX3;TX4;TX5;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Unit;->addAt1(Lorg/javatuples/Sextet;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;
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
            "Lorg/javatuples/Sextet<",
            "TA;TX0;TX1;TX2;TX3;TX4;>;"
        }
    .end annotation

    .line 521
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    invoke-virtual/range {p0 .. p5}, Lorg/javatuples/Unit;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Quintet;)Lorg/javatuples/Sextet;
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
            "Lorg/javatuples/Sextet<",
            "TA;TX0;TX1;TX2;TX3;TX4;>;"
        }
    .end annotation

    .line 526
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TX0;TX1;TX2;TX3;TX4;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Unit;->addAt1(Lorg/javatuples/Quintet;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Triplet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Triplet<",
            "TA;TX0;TX1;>;"
        }
    .end annotation

    .line 484
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    invoke-virtual {p0, p1, p2}, Lorg/javatuples/Unit;->addAt1(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Triplet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Pair;)Lorg/javatuples/Triplet;
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
            "Lorg/javatuples/Triplet<",
            "TA;TX0;TX1;>;"
        }
    .end annotation

    .line 489
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Unit;->addAt1(Lorg/javatuples/Pair;)Lorg/javatuples/Triplet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            "X7:",
            "Ljava/lang/Object;",
            "X8:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TX8;)",
            "Lorg/javatuples/Decade<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TX8;TA;>;"
        }
    .end annotation

    .line 319
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    .local p8, "value7":Ljava/lang/Object;, "TX7;"
    .local p9, "value8":Ljava/lang/Object;, "TX8;"
    new-instance v11, Lorg/javatuples/Decade;

    move-object v12, p0

    iget-object v10, v12, Lorg/javatuples/Unit;->val0:Ljava/lang/Object;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt0(Lorg/javatuples/Ennead;)Lorg/javatuples/Decade;
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
            "X5:",
            "Ljava/lang/Object;",
            "X6:",
            "Ljava/lang/Object;",
            "X7:",
            "Ljava/lang/Object;",
            "X8:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Ennead<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TX8;>;)",
            "Lorg/javatuples/Decade<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TX8;TA;>;"
        }
    .end annotation

    .line 456
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TX8;>;"
    invoke-virtual {p1}, Lorg/javatuples/Ennead;->getValue0()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Ennead;->getValue1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Ennead;->getValue2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/javatuples/Ennead;->getValue3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/javatuples/Ennead;->getValue4()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lorg/javatuples/Ennead;->getValue5()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Lorg/javatuples/Ennead;->getValue6()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1}, Lorg/javatuples/Ennead;->getValue7()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1}, Lorg/javatuples/Ennead;->getValue8()Ljava/lang/Object;

    move-result-object v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/javatuples/Unit;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            "X6:",
            "Ljava/lang/Object;",
            "X7:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;)",
            "Lorg/javatuples/Ennead<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TA;>;"
        }
    .end annotation

    .line 304
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    .local p8, "value7":Ljava/lang/Object;, "TX7;"
    new-instance v10, Lorg/javatuples/Ennead;

    move-object v11, p0

    iget-object v9, v11, Lorg/javatuples/Unit;->val0:Ljava/lang/Object;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt0(Lorg/javatuples/Octet;)Lorg/javatuples/Ennead;
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
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            "X6:",
            "Ljava/lang/Object;",
            "X7:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Octet<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;>;)",
            "Lorg/javatuples/Ennead<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TA;>;"
        }
    .end annotation

    .line 441
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;>;"
    invoke-virtual {p1}, Lorg/javatuples/Octet;->getValue0()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Octet;->getValue1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Octet;->getValue2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/javatuples/Octet;->getValue3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/javatuples/Octet;->getValue4()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lorg/javatuples/Octet;->getValue5()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Lorg/javatuples/Octet;->getValue6()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1}, Lorg/javatuples/Octet;->getValue7()Ljava/lang/Object;

    move-result-object v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/javatuples/Unit;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 11
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
            "Lorg/javatuples/Octet<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;TA;>;"
        }
    .end annotation

    .line 289
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    new-instance v9, Lorg/javatuples/Octet;

    move-object v10, p0

    iget-object v8, v10, Lorg/javatuples/Unit;->val0:Ljava/lang/Object;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt0(Lorg/javatuples/Septet;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;TA;>;"
        }
    .end annotation

    .line 426
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
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

    invoke-virtual/range {v0 .. v7}, Lorg/javatuples/Unit;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;)Lorg/javatuples/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Pair<",
            "TX0;TA;>;"
        }
    .end annotation

    .line 198
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v0, Lorg/javatuples/Pair;

    iget-object v1, p0, Lorg/javatuples/Unit;->val0:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lorg/javatuples/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public addAt0(Lorg/javatuples/Unit;)Lorg/javatuples/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Pair<",
            "TX0;TA;>;"
        }
    .end annotation

    .line 336
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Unit;->addAt0(Ljava/lang/Object;)Lorg/javatuples/Pair;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quartet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Quartet<",
            "TX0;TX1;TX2;TA;>;"
        }
    .end annotation

    .line 228
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v0, Lorg/javatuples/Quartet;

    iget-object v1, p0, Lorg/javatuples/Unit;->val0:Ljava/lang/Object;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public addAt0(Lorg/javatuples/Triplet;)Lorg/javatuples/Quartet;
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
            "Lorg/javatuples/Quartet<",
            "TX0;TX1;TX2;TA;>;"
        }
    .end annotation

    .line 365
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Unit;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quartet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Quintet<",
            "TX0;TX1;TX2;TX3;TA;>;"
        }
    .end annotation

    .line 244
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v5, p0, Lorg/javatuples/Unit;->val0:Ljava/lang/Object;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public addAt0(Lorg/javatuples/Quartet;)Lorg/javatuples/Quintet;
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
            "Lorg/javatuples/Quintet<",
            "TX0;TX1;TX2;TX3;TA;>;"
        }
    .end annotation

    .line 381
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Unit;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
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
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;TX5;)",
            "Lorg/javatuples/Septet<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TA;>;"
        }
    .end annotation

    .line 274
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v7, p0, Lorg/javatuples/Unit;->val0:Ljava/lang/Object;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt0(Lorg/javatuples/Sextet;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TA;>;"
        }
    .end annotation

    .line 411
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
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

    invoke-virtual/range {v0 .. v6}, Lorg/javatuples/Unit;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;
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
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Sextet<",
            "TX0;TX1;TX2;TX3;TX4;TA;>;"
        }
    .end annotation

    .line 259
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v6, p0, Lorg/javatuples/Unit;->val0:Ljava/lang/Object;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public addAt0(Lorg/javatuples/Quintet;)Lorg/javatuples/Sextet;
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
            "Lorg/javatuples/Sextet<",
            "TX0;TX1;TX2;TX3;TX4;TA;>;"
        }
    .end annotation

    .line 396
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
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

    invoke-virtual/range {v0 .. v5}, Lorg/javatuples/Unit;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Triplet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Triplet<",
            "TX0;TX1;TA;>;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v0, Lorg/javatuples/Triplet;

    iget-object v1, p0, Lorg/javatuples/Unit;->val0:Ljava/lang/Object;

    invoke-direct {v0, p1, p2, v1}, Lorg/javatuples/Triplet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public addAt0(Lorg/javatuples/Pair;)Lorg/javatuples/Triplet;
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
            "Lorg/javatuples/Triplet<",
            "TX0;TX1;TA;>;"
        }
    .end annotation

    .line 350
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Unit;->addAt0(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Triplet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            "X7:",
            "Ljava/lang/Object;",
            "X8:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TX8;)",
            "Lorg/javatuples/Decade<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TX8;>;"
        }
    .end annotation

    .line 324
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    .local p8, "value7":Ljava/lang/Object;, "TX7;"
    .local p9, "value8":Ljava/lang/Object;, "TX8;"
    new-instance v11, Lorg/javatuples/Decade;

    move-object v12, p0

    iget-object v1, v12, Lorg/javatuples/Unit;->val0:Ljava/lang/Object;

    move-object v0, v11

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt1(Lorg/javatuples/Ennead;)Lorg/javatuples/Decade;
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
            "X5:",
            "Ljava/lang/Object;",
            "X6:",
            "Ljava/lang/Object;",
            "X7:",
            "Ljava/lang/Object;",
            "X8:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Ennead<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TX8;>;)",
            "Lorg/javatuples/Decade<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TX8;>;"
        }
    .end annotation

    .line 460
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TX8;>;"
    invoke-virtual {p1}, Lorg/javatuples/Ennead;->getValue0()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Ennead;->getValue1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Ennead;->getValue2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/javatuples/Ennead;->getValue3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/javatuples/Ennead;->getValue4()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lorg/javatuples/Ennead;->getValue5()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Lorg/javatuples/Ennead;->getValue6()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1}, Lorg/javatuples/Ennead;->getValue7()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1}, Lorg/javatuples/Ennead;->getValue8()Ljava/lang/Object;

    move-result-object v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/javatuples/Unit;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            "X6:",
            "Ljava/lang/Object;",
            "X7:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;)",
            "Lorg/javatuples/Ennead<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;>;"
        }
    .end annotation

    .line 309
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    .local p8, "value7":Ljava/lang/Object;, "TX7;"
    new-instance v10, Lorg/javatuples/Ennead;

    move-object v11, p0

    iget-object v1, v11, Lorg/javatuples/Unit;->val0:Ljava/lang/Object;

    move-object v0, v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt1(Lorg/javatuples/Octet;)Lorg/javatuples/Ennead;
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
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            "X6:",
            "Ljava/lang/Object;",
            "X7:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Octet<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;>;)",
            "Lorg/javatuples/Ennead<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;>;"
        }
    .end annotation

    .line 445
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;>;"
    invoke-virtual {p1}, Lorg/javatuples/Octet;->getValue0()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Octet;->getValue1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Octet;->getValue2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/javatuples/Octet;->getValue3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/javatuples/Octet;->getValue4()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lorg/javatuples/Octet;->getValue5()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Lorg/javatuples/Octet;->getValue6()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1}, Lorg/javatuples/Octet;->getValue7()Ljava/lang/Object;

    move-result-object v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/javatuples/Unit;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 11
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
            "Lorg/javatuples/Octet<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;"
        }
    .end annotation

    .line 294
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    new-instance v9, Lorg/javatuples/Octet;

    move-object v10, p0

    iget-object v1, v10, Lorg/javatuples/Unit;->val0:Ljava/lang/Object;

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt1(Lorg/javatuples/Septet;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;"
        }
    .end annotation

    .line 430
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
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

    invoke-virtual/range {v0 .. v7}, Lorg/javatuples/Unit;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;)Lorg/javatuples/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Pair<",
            "TA;TX0;>;"
        }
    .end annotation

    .line 203
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v0, Lorg/javatuples/Pair;

    iget-object v1, p0, Lorg/javatuples/Unit;->val0:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lorg/javatuples/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public addAt1(Lorg/javatuples/Unit;)Lorg/javatuples/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Pair<",
            "TA;TX0;>;"
        }
    .end annotation

    .line 340
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Unit;->addAt1(Ljava/lang/Object;)Lorg/javatuples/Pair;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quartet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Quartet<",
            "TA;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v0, Lorg/javatuples/Quartet;

    iget-object v1, p0, Lorg/javatuples/Unit;->val0:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public addAt1(Lorg/javatuples/Triplet;)Lorg/javatuples/Quartet;
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
            "Lorg/javatuples/Quartet<",
            "TA;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 369
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Unit;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quartet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Quintet<",
            "TA;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 249
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v1, p0, Lorg/javatuples/Unit;->val0:Ljava/lang/Object;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public addAt1(Lorg/javatuples/Quartet;)Lorg/javatuples/Quintet;
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
            "Lorg/javatuples/Quintet<",
            "TA;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 385
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Unit;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
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
            "X4:",
            "Ljava/lang/Object;",
            "X5:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;TX3;TX4;TX5;)",
            "Lorg/javatuples/Septet<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;>;"
        }
    .end annotation

    .line 279
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Unit;->val0:Ljava/lang/Object;

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt1(Lorg/javatuples/Sextet;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;>;"
        }
    .end annotation

    .line 415
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
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

    invoke-virtual/range {v0 .. v6}, Lorg/javatuples/Unit;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;
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
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Sextet<",
            "TA;TX0;TX1;TX2;TX3;TX4;>;"
        }
    .end annotation

    .line 264
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Unit;->val0:Ljava/lang/Object;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public addAt1(Lorg/javatuples/Quintet;)Lorg/javatuples/Sextet;
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
            "Lorg/javatuples/Sextet<",
            "TA;TX0;TX1;TX2;TX3;TX4;>;"
        }
    .end annotation

    .line 400
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
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

    invoke-virtual/range {v0 .. v5}, Lorg/javatuples/Unit;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Triplet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Triplet<",
            "TA;TX0;TX1;>;"
        }
    .end annotation

    .line 217
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v0, Lorg/javatuples/Triplet;

    iget-object v1, p0, Lorg/javatuples/Unit;->val0:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Lorg/javatuples/Triplet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public addAt1(Lorg/javatuples/Pair;)Lorg/javatuples/Triplet;
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
            "Lorg/javatuples/Triplet<",
            "TA;TX0;TX1;>;"
        }
    .end annotation

    .line 354
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Unit;->addAt1(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Triplet;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 184
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public getValue0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 178
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    iget-object v0, p0, Lorg/javatuples/Unit;->val0:Ljava/lang/Object;

    return-object v0
.end method

.method public setAt0(Ljava/lang/Object;)Lorg/javatuples/Unit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Unit<",
            "TX;>;"
        }
    .end annotation

    .line 591
    .local p0, "this":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TA;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v0, Lorg/javatuples/Unit;

    invoke-direct {v0, p1}, Lorg/javatuples/Unit;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
