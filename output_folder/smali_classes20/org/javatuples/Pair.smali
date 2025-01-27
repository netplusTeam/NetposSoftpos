.class public final Lorg/javatuples/Pair;
.super Lorg/javatuples/Tuple;
.source "Pair.java"

# interfaces
.implements Lorg/javatuples/valueintf/IValue0;
.implements Lorg/javatuples/valueintf/IValue1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/javatuples/Tuple;",
        "Lorg/javatuples/valueintf/IValue0<",
        "TA;>;",
        "Lorg/javatuples/valueintf/IValue1<",
        "TB;>;"
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x2

.field private static final serialVersionUID:J = 0x21d5dee583774bbaL


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


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 179
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TA;"
    .local p2, "value1":Ljava/lang/Object;, "TB;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, Lorg/javatuples/Tuple;-><init>([Ljava/lang/Object;)V

    .line 180
    iput-object p1, p0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    .line 181
    iput-object p2, p0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public static fromArray([Ljava/lang/Object;)Lorg/javatuples/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">([TX;)",
            "Lorg/javatuples/Pair<",
            "TX;TX;>;"
        }
    .end annotation

    .line 67
    .local p0, "array":[Ljava/lang/Object;, "[TX;"
    if-eqz p0, :cond_1

    .line 70
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 73
    new-instance v0, Lorg/javatuples/Pair;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-direct {v0, v1, v2}, Lorg/javatuples/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array must have exactly 2 elements in order to create a Pair. Size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromCollection(Ljava/util/Collection;)Lorg/javatuples/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TX;>;)",
            "Lorg/javatuples/Pair<",
            "TX;TX;>;"
        }
    .end annotation

    .line 87
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TX;>;"
    invoke-static {p0}, Lorg/javatuples/Pair;->fromIterable(Ljava/lang/Iterable;)Lorg/javatuples/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;)Lorg/javatuples/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;)",
            "Lorg/javatuples/Pair<",
            "TX;TX;>;"
        }
    .end annotation

    .line 102
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/javatuples/Pair;->fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;I)Lorg/javatuples/Pair;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;I)",
            "Lorg/javatuples/Pair<",
            "TX;TX;>;"
        }
    .end annotation

    .line 118
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/javatuples/Pair;->fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Pair;
    .locals 7
    .param p1, "index"    # I
    .param p2, "exactSize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;IZ)",
            "Lorg/javatuples/Pair<",
            "TX;TX;>;"
        }
    .end annotation

    .line 127
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    if-eqz p0, :cond_8

    .line 131
    const/4 v0, 0x0

    .line 133
    .local v0, "tooFewElements":Z
    const/4 v1, 0x0

    .line 134
    .local v1, "element0":Ljava/lang/Object;, "TX;"
    const/4 v2, 0x0

    .line 136
    .local v2, "element1":Ljava/lang/Object;, "TX;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 138
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    const/4 v4, 0x0

    .line 139
    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 140
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 143
    :cond_0
    const/4 v0, 0x1

    .line 145
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 148
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 149
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 151
    :cond_2
    const/4 v0, 0x1

    .line 154
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 157
    :cond_3
    const/4 v0, 0x1

    .line 160
    :goto_3
    if-eqz v0, :cond_5

    if-nez p2, :cond_4

    goto :goto_4

    .line 161
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Not enough elements for creating a Pair (2 needed)"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 164
    :cond_5
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez p2, :cond_6

    goto :goto_5

    .line 165
    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Iterable must have exactly 2 available elements in order to create a Pair."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 168
    :cond_7
    :goto_5
    new-instance v5, Lorg/javatuples/Pair;

    invoke-direct {v5, v1, v2}, Lorg/javatuples/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 128
    .end local v0    # "tooFewElements":Z
    .end local v1    # "element0":Ljava/lang/Object;, "TX;"
    .end local v2    # "element1":Ljava/lang/Object;, "TX;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    .end local v4    # "i":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Iterable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static with(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Lorg/javatuples/Pair<",
            "TA;TB;>;"
        }
    .end annotation

    .line 53
    .local p0, "value0":Ljava/lang/Object;, "TA;"
    .local p1, "value1":Ljava/lang/Object;, "TB;"
    new-instance v0, Lorg/javatuples/Pair;

    invoke-direct {v0, p0, p1}, Lorg/javatuples/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;>;"
        }
    .end annotation

    .line 615
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    .local p8, "value7":Ljava/lang/Object;, "TX7;"
    invoke-virtual/range {p0 .. p8}, Lorg/javatuples/Pair;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Octet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;>;"
        }
    .end annotation

    .line 620
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "tuple":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Pair;->addAt2(Lorg/javatuples/Octet;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;"
        }
    .end annotation

    .line 602
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    invoke-virtual/range {p0 .. p7}, Lorg/javatuples/Pair;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Septet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;"
        }
    .end annotation

    .line 607
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "tuple":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Pair;->addAt2(Lorg/javatuples/Septet;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TX5;>;"
        }
    .end annotation

    .line 589
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    invoke-virtual/range {p0 .. p6}, Lorg/javatuples/Pair;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Sextet;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TX5;>;"
        }
    .end annotation

    .line 594
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "tuple":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TX0;TX1;TX2;TX3;TX4;TX5;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Pair;->addAt2(Lorg/javatuples/Sextet;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quartet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Quartet<",
            "TA;TB;TX0;TX1;>;"
        }
    .end annotation

    .line 539
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    invoke-virtual {p0, p1, p2}, Lorg/javatuples/Pair;->addAt2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quartet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Pair;)Lorg/javatuples/Quartet;
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
            "Lorg/javatuples/Quartet<",
            "TA;TB;TX0;TX1;>;"
        }
    .end annotation

    .line 544
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Pair;->addAt2(Lorg/javatuples/Pair;)Lorg/javatuples/Quartet;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;
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
            "Lorg/javatuples/Quintet<",
            "TA;TB;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 551
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/javatuples/Pair;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Triplet;)Lorg/javatuples/Quintet;
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
            "Lorg/javatuples/Quintet<",
            "TA;TB;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 556
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Pair;->addAt2(Lorg/javatuples/Triplet;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;>;"
        }
    .end annotation

    .line 576
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    invoke-virtual/range {p0 .. p5}, Lorg/javatuples/Pair;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Quintet;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;>;"
        }
    .end annotation

    .line 581
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "tuple":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TX0;TX1;TX2;TX3;TX4;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Pair;->addAt2(Lorg/javatuples/Quintet;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;
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
            "Lorg/javatuples/Sextet<",
            "TA;TB;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 563
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/javatuples/Pair;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Quartet;)Lorg/javatuples/Sextet;
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
            "Lorg/javatuples/Sextet<",
            "TA;TB;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 568
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Pair;->addAt2(Lorg/javatuples/Quartet;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Lorg/javatuples/Triplet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Triplet<",
            "TA;TB;TX0;>;"
        }
    .end annotation

    .line 527
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Pair;->addAt2(Ljava/lang/Object;)Lorg/javatuples/Triplet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Unit;)Lorg/javatuples/Triplet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Triplet<",
            "TA;TB;TX0;>;"
        }
    .end annotation

    .line 532
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Pair;->addAt2(Lorg/javatuples/Unit;)Lorg/javatuples/Triplet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;)",
            "Lorg/javatuples/Decade<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TA;TB;>;"
        }
    .end annotation

    .line 352
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    .local p8, "value7":Ljava/lang/Object;, "TX7;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v10, v0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v11, v0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt0(Lorg/javatuples/Octet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TA;TB;>;"
        }
    .end annotation

    .line 507
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
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

    invoke-virtual/range {v0 .. v8}, Lorg/javatuples/Pair;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            ">(TX0;TX1;TX2;TX3;TX4;TX5;TX6;)",
            "Lorg/javatuples/Ennead<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;TA;TB;>;"
        }
    .end annotation

    .line 332
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    move-object v0, p0

    new-instance v11, Lorg/javatuples/Ennead;

    iget-object v9, v0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt0(Lorg/javatuples/Septet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TX6;TA;TB;>;"
        }
    .end annotation

    .line 488
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
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

    invoke-virtual/range {v0 .. v7}, Lorg/javatuples/Pair;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
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
            ">(TX0;TX1;TX2;TX3;TX4;TX5;)",
            "Lorg/javatuples/Octet<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TA;TB;>;"
        }
    .end annotation

    .line 312
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    move-object v0, p0

    new-instance v10, Lorg/javatuples/Octet;

    iget-object v8, v0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v9, v0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt0(Lorg/javatuples/Sextet;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TA;TB;>;"
        }
    .end annotation

    .line 469
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
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

    invoke-virtual/range {v0 .. v6}, Lorg/javatuples/Pair;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quartet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Quartet<",
            "TX0;TX1;TA;TB;>;"
        }
    .end annotation

    .line 230
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v0, Lorg/javatuples/Quartet;

    iget-object v1, p0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public addAt0(Lorg/javatuples/Pair;)Lorg/javatuples/Quartet;
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
            "Lorg/javatuples/Quartet<",
            "TX0;TX1;TA;TB;>;"
        }
    .end annotation

    .line 392
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Pair;->addAt0(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quartet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Quintet<",
            "TX0;TX1;TX2;TA;TB;>;"
        }
    .end annotation

    .line 251
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v4, p0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public addAt0(Lorg/javatuples/Triplet;)Lorg/javatuples/Quintet;
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
            "Lorg/javatuples/Quintet<",
            "TX0;TX1;TX2;TA;TB;>;"
        }
    .end annotation

    .line 411
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Pair;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
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
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Septet<",
            "TX0;TX1;TX2;TX3;TX4;TA;TB;>;"
        }
    .end annotation

    .line 292
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v6, p0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt0(Lorg/javatuples/Quintet;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TX0;TX1;TX2;TX3;TX4;TA;TB;>;"
        }
    .end annotation

    .line 450
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
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

    invoke-virtual/range {v0 .. v5}, Lorg/javatuples/Pair;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Sextet<",
            "TX0;TX1;TX2;TX3;TA;TB;>;"
        }
    .end annotation

    .line 272
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v5, p0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public addAt0(Lorg/javatuples/Quartet;)Lorg/javatuples/Sextet;
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
            "Lorg/javatuples/Sextet<",
            "TX0;TX1;TX2;TX3;TA;TB;>;"
        }
    .end annotation

    .line 431
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Pair;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;)Lorg/javatuples/Triplet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Triplet<",
            "TX0;TA;TB;>;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v0, Lorg/javatuples/Triplet;

    iget-object v1, p0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2}, Lorg/javatuples/Triplet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public addAt0(Lorg/javatuples/Unit;)Lorg/javatuples/Triplet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Triplet<",
            "TX0;TA;TB;>;"
        }
    .end annotation

    .line 374
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Pair;->addAt0(Ljava/lang/Object;)Lorg/javatuples/Triplet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;)",
            "Lorg/javatuples/Decade<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TB;>;"
        }
    .end annotation

    .line 357
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    .local p8, "value7":Ljava/lang/Object;, "TX7;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v2, v0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v11, v0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    move-object v1, v12

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt1(Lorg/javatuples/Octet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;TB;>;"
        }
    .end annotation

    .line 511
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
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

    invoke-virtual/range {v0 .. v8}, Lorg/javatuples/Pair;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            ">(TX0;TX1;TX2;TX3;TX4;TX5;TX6;)",
            "Lorg/javatuples/Ennead<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TX6;TB;>;"
        }
    .end annotation

    .line 337
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    move-object v0, p0

    new-instance v11, Lorg/javatuples/Ennead;

    iget-object v2, v0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    move-object v1, v11

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt1(Lorg/javatuples/Septet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TX6;TB;>;"
        }
    .end annotation

    .line 492
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
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

    invoke-virtual/range {v0 .. v7}, Lorg/javatuples/Pair;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
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
            ">(TX0;TX1;TX2;TX3;TX4;TX5;)",
            "Lorg/javatuples/Octet<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TB;>;"
        }
    .end annotation

    .line 317
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    move-object v0, p0

    new-instance v10, Lorg/javatuples/Octet;

    iget-object v2, v0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v9, v0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    move-object v1, v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt1(Lorg/javatuples/Sextet;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TB;>;"
        }
    .end annotation

    .line 473
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
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

    invoke-virtual/range {v0 .. v6}, Lorg/javatuples/Pair;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quartet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Quartet<",
            "TA;TX0;TX1;TB;>;"
        }
    .end annotation

    .line 235
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v0, Lorg/javatuples/Quartet;

    iget-object v1, p0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public addAt1(Lorg/javatuples/Pair;)Lorg/javatuples/Quartet;
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
            "Lorg/javatuples/Quartet<",
            "TA;TX0;TX1;TB;>;"
        }
    .end annotation

    .line 396
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Pair;->addAt1(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quartet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Quintet<",
            "TA;TX0;TX1;TX2;TB;>;"
        }
    .end annotation

    .line 256
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v1, p0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public addAt1(Lorg/javatuples/Triplet;)Lorg/javatuples/Quintet;
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
            "Lorg/javatuples/Quintet<",
            "TA;TX0;TX1;TX2;TB;>;"
        }
    .end annotation

    .line 415
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Pair;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
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
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Septet<",
            "TA;TX0;TX1;TX2;TX3;TX4;TB;>;"
        }
    .end annotation

    .line 297
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt1(Lorg/javatuples/Quintet;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TA;TX0;TX1;TX2;TX3;TX4;TB;>;"
        }
    .end annotation

    .line 454
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
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

    invoke-virtual/range {v0 .. v5}, Lorg/javatuples/Pair;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Sextet<",
            "TA;TX0;TX1;TX2;TX3;TB;>;"
        }
    .end annotation

    .line 277
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public addAt1(Lorg/javatuples/Quartet;)Lorg/javatuples/Sextet;
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
            "Lorg/javatuples/Sextet<",
            "TA;TX0;TX1;TX2;TX3;TB;>;"
        }
    .end annotation

    .line 435
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Pair;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;)Lorg/javatuples/Triplet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Triplet<",
            "TA;TX0;TB;>;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v0, Lorg/javatuples/Triplet;

    iget-object v1, p0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2}, Lorg/javatuples/Triplet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public addAt1(Lorg/javatuples/Unit;)Lorg/javatuples/Triplet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Triplet<",
            "TA;TX0;TB;>;"
        }
    .end annotation

    .line 378
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Pair;->addAt1(Ljava/lang/Object;)Lorg/javatuples/Triplet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;>;"
        }
    .end annotation

    .line 362
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    .local p8, "value7":Ljava/lang/Object;, "TX7;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v2, v0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    move-object v1, v12

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt2(Lorg/javatuples/Octet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TX5;TX6;TX7;>;"
        }
    .end annotation

    .line 515
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
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

    invoke-virtual/range {v0 .. v8}, Lorg/javatuples/Pair;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            ">(TX0;TX1;TX2;TX3;TX4;TX5;TX6;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;"
        }
    .end annotation

    .line 342
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    .local p7, "value6":Ljava/lang/Object;, "TX6;"
    move-object v0, p0

    new-instance v11, Lorg/javatuples/Ennead;

    iget-object v2, v0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    move-object v1, v11

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt2(Lorg/javatuples/Septet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TX5;TX6;>;"
        }
    .end annotation

    .line 496
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
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

    invoke-virtual/range {v0 .. v7}, Lorg/javatuples/Pair;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
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
            ">(TX0;TX1;TX2;TX3;TX4;TX5;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TX5;>;"
        }
    .end annotation

    .line 322
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    move-object v0, p0

    new-instance v10, Lorg/javatuples/Octet;

    iget-object v2, v0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    move-object v1, v10

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt2(Lorg/javatuples/Sextet;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TX5;>;"
        }
    .end annotation

    .line 477
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
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

    invoke-virtual/range {v0 .. v6}, Lorg/javatuples/Pair;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quartet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Quartet<",
            "TA;TB;TX0;TX1;>;"
        }
    .end annotation

    .line 240
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v0, Lorg/javatuples/Quartet;

    iget-object v1, p0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public addAt2(Lorg/javatuples/Pair;)Lorg/javatuples/Quartet;
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
            "Lorg/javatuples/Quartet<",
            "TA;TB;TX0;TX1;>;"
        }
    .end annotation

    .line 400
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Pair;->addAt2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quartet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 261
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v1, p0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public addAt2(Lorg/javatuples/Triplet;)Lorg/javatuples/Quintet;
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
            "Lorg/javatuples/Quintet<",
            "TA;TB;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 419
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Pair;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
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
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;>;"
        }
    .end annotation

    .line 302
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    move-object v0, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt2(Lorg/javatuples/Quintet;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;>;"
        }
    .end annotation

    .line 458
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
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

    invoke-virtual/range {v0 .. v5}, Lorg/javatuples/Pair;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 282
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    move-object v0, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public addAt2(Lorg/javatuples/Quartet;)Lorg/javatuples/Sextet;
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
            "Lorg/javatuples/Sextet<",
            "TA;TB;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 439
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Pair;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;)Lorg/javatuples/Triplet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Triplet<",
            "TA;TB;TX0;>;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v0, Lorg/javatuples/Triplet;

    iget-object v1, p0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lorg/javatuples/Triplet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public addAt2(Lorg/javatuples/Unit;)Lorg/javatuples/Triplet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Triplet<",
            "TA;TB;TX0;>;"
        }
    .end annotation

    .line 382
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Pair;->addAt2(Ljava/lang/Object;)Lorg/javatuples/Triplet;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 197
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    const/4 v0, 0x2

    return v0
.end method

.method public getValue0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    iget-object v0, p0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 191
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    iget-object v0, p0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    return-object v0
.end method

.method public removeFrom0()Lorg/javatuples/Unit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Unit<",
            "TB;>;"
        }
    .end annotation

    .line 650
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    new-instance v0, Lorg/javatuples/Unit;

    iget-object v1, p0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/javatuples/Unit;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public removeFrom1()Lorg/javatuples/Unit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Unit<",
            "TA;>;"
        }
    .end annotation

    .line 655
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    new-instance v0, Lorg/javatuples/Unit;

    iget-object v1, p0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/javatuples/Unit;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public setAt0(Ljava/lang/Object;)Lorg/javatuples/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Pair<",
            "TX;TB;>;"
        }
    .end annotation

    .line 632
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v0, Lorg/javatuples/Pair;

    iget-object v1, p0, Lorg/javatuples/Pair;->val1:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lorg/javatuples/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setAt1(Ljava/lang/Object;)Lorg/javatuples/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Pair<",
            "TA;TX;>;"
        }
    .end annotation

    .line 637
    .local p0, "this":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TA;TB;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v0, Lorg/javatuples/Pair;

    iget-object v1, p0, Lorg/javatuples/Pair;->val0:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lorg/javatuples/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
