.class public final Lorg/javatuples/Quartet;
.super Lorg/javatuples/Tuple;
.source "Quartet.java"

# interfaces
.implements Lorg/javatuples/valueintf/IValue0;
.implements Lorg/javatuples/valueintf/IValue1;
.implements Lorg/javatuples/valueintf/IValue2;
.implements Lorg/javatuples/valueintf/IValue3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/javatuples/Tuple;",
        "Lorg/javatuples/valueintf/IValue0<",
        "TA;>;",
        "Lorg/javatuples/valueintf/IValue1<",
        "TB;>;",
        "Lorg/javatuples/valueintf/IValue2<",
        "TC;>;",
        "Lorg/javatuples/valueintf/IValue3<",
        "TD;>;"
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x4

.field private static final serialVersionUID:J = 0x21eede480551d89dL


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

.field private final val3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;)V"
        }
    .end annotation

    .line 200
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TA;"
    .local p2, "value1":Ljava/lang/Object;, "TB;"
    .local p3, "value2":Ljava/lang/Object;, "TC;"
    .local p4, "value3":Ljava/lang/Object;, "TD;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-direct {p0, v0}, Lorg/javatuples/Tuple;-><init>([Ljava/lang/Object;)V

    .line 201
    iput-object p1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    .line 202
    iput-object p2, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    .line 203
    iput-object p3, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    .line 204
    iput-object p4, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public static fromArray([Ljava/lang/Object;)Lorg/javatuples/Quartet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">([TX;)",
            "Lorg/javatuples/Quartet<",
            "TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 73
    .local p0, "array":[Ljava/lang/Object;, "[TX;"
    if-eqz p0, :cond_1

    .line 76
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 79
    new-instance v0, Lorg/javatuples/Quartet;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x2

    aget-object v3, p0, v3

    const/4 v4, 0x3

    aget-object v4, p0, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array must have exactly 4 elements in order to create a Quartet. Size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromCollection(Ljava/util/Collection;)Lorg/javatuples/Quartet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TX;>;)",
            "Lorg/javatuples/Quartet<",
            "TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 93
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TX;>;"
    invoke-static {p0}, Lorg/javatuples/Quartet;->fromIterable(Ljava/lang/Iterable;)Lorg/javatuples/Quartet;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;)Lorg/javatuples/Quartet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;)",
            "Lorg/javatuples/Quartet<",
            "TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 109
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/javatuples/Quartet;->fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Quartet;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;I)Lorg/javatuples/Quartet;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;I)",
            "Lorg/javatuples/Quartet<",
            "TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 125
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/javatuples/Quartet;->fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Quartet;

    move-result-object v0

    return-object v0
.end method

.method private static fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Quartet;
    .locals 9
    .param p1, "index"    # I
    .param p2, "exactSize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;IZ)",
            "Lorg/javatuples/Quartet<",
            "TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 133
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    if-eqz p0, :cond_a

    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, "tooFewElements":Z
    const/4 v1, 0x0

    .line 140
    .local v1, "element0":Ljava/lang/Object;, "TX;"
    const/4 v2, 0x0

    .line 141
    .local v2, "element1":Ljava/lang/Object;, "TX;"
    const/4 v3, 0x0

    .line 142
    .local v3, "element2":Ljava/lang/Object;, "TX;"
    const/4 v4, 0x0

    .line 144
    .local v4, "element3":Ljava/lang/Object;, "TX;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 146
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    const/4 v6, 0x0

    .line 147
    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 148
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 149
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 151
    :cond_0
    const/4 v0, 0x1

    .line 153
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 157
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 159
    :cond_2
    const/4 v0, 0x1

    .line 162
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 163
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 165
    :cond_3
    const/4 v0, 0x1

    .line 168
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 169
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    .line 171
    :cond_4
    const/4 v0, 0x1

    .line 174
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 175
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    goto :goto_5

    .line 177
    :cond_5
    const/4 v0, 0x1

    .line 180
    :goto_5
    if-eqz v0, :cond_7

    if-nez p2, :cond_6

    goto :goto_6

    .line 181
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Not enough elements for creating a Quartet (4 needed)"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 184
    :cond_7
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    if-nez p2, :cond_8

    goto :goto_7

    .line 185
    :cond_8
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Iterable must have exactly 4 available elements in order to create a Quartet."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 188
    :cond_9
    :goto_7
    new-instance v7, Lorg/javatuples/Quartet;

    invoke-direct {v7, v1, v2, v3, v4}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    .line 134
    .end local v0    # "tooFewElements":Z
    .end local v1    # "element0":Ljava/lang/Object;, "TX;"
    .end local v2    # "element1":Ljava/lang/Object;, "TX;"
    .end local v3    # "element2":Ljava/lang/Object;, "TX;"
    .end local v4    # "element3":Ljava/lang/Object;, "TX;"
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    .end local v6    # "i":I
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Iterable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static with(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quartet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(TA;TB;TC;TD;)",
            "Lorg/javatuples/Quartet<",
            "TA;TB;TC;TD;>;"
        }
    .end annotation

    .line 59
    .local p0, "value0":Ljava/lang/Object;, "TA;"
    .local p1, "value1":Ljava/lang/Object;, "TB;"
    .local p2, "value2":Ljava/lang/Object;, "TC;"
    .local p3, "value3":Ljava/lang/Object;, "TD;"
    new-instance v0, Lorg/javatuples/Quartet;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TX3;TX4;TX5;>;"
        }
    .end annotation

    .line 644
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    invoke-virtual/range {p0 .. p6}, Lorg/javatuples/Quartet;->addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Sextet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TX3;TX4;TX5;>;"
        }
    .end annotation

    .line 649
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TX0;TX1;TX2;TX3;TX4;TX5;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Quartet;->addAt4(Lorg/javatuples/Sextet;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TX3;TX4;>;"
        }
    .end annotation

    .line 631
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    invoke-virtual/range {p0 .. p5}, Lorg/javatuples/Quartet;->addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Quintet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TX3;TX4;>;"
        }
    .end annotation

    .line 636
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TX0;TX1;TX2;TX3;TX4;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Quartet;->addAt4(Lorg/javatuples/Quintet;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 618
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/javatuples/Quartet;->addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Quartet;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 623
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Quartet;->addAt4(Lorg/javatuples/Quartet;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TC;TD;TX0;>;"
        }
    .end annotation

    .line 582
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Quartet;->addAt4(Ljava/lang/Object;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Unit;)Lorg/javatuples/Quintet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TC;TD;TX0;>;"
        }
    .end annotation

    .line 587
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Quartet;->addAt4(Lorg/javatuples/Unit;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 606
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/javatuples/Quartet;->addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Triplet;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 611
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Quartet;->addAt4(Lorg/javatuples/Triplet;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TD;TX0;TX1;>;"
        }
    .end annotation

    .line 594
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    invoke-virtual {p0, p1, p2}, Lorg/javatuples/Quartet;->addAt4(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Pair;)Lorg/javatuples/Sextet;
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
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TD;TX0;TX1;>;"
        }
    .end annotation

    .line 599
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Quartet;->addAt4(Lorg/javatuples/Pair;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;TX4;TX5;)",
            "Lorg/javatuples/Decade<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TA;TB;TC;TD;>;"
        }
    .end annotation

    .line 391
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v8, v0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v9, v0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v11, v0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt0(Lorg/javatuples/Sextet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TX0;TX1;TX2;TX3;TX4;TX5;TA;TB;TC;TD;>;"
        }
    .end annotation

    .line 557
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
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

    invoke-virtual/range {v0 .. v6}, Lorg/javatuples/Quartet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Ennead<",
            "TX0;TX1;TX2;TX3;TX4;TA;TB;TC;TD;>;"
        }
    .end annotation

    .line 361
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    move-object v0, p0

    new-instance v11, Lorg/javatuples/Ennead;

    iget-object v7, v0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v8, v0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v9, v0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v10}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt0(Lorg/javatuples/Quintet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TX0;TX1;TX2;TX3;TX4;TA;TB;TC;TD;>;"
        }
    .end annotation

    .line 530
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
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

    invoke-virtual/range {v0 .. v5}, Lorg/javatuples/Quartet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Octet<",
            "TX0;TX1;TX2;TX3;TA;TB;TC;TD;>;"
        }
    .end annotation

    .line 331
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v5, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt0(Lorg/javatuples/Quartet;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TX0;TX1;TX2;TX3;TA;TB;TC;TD;>;"
        }
    .end annotation

    .line 503
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Quartet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Quintet<",
            "TX0;TA;TB;TC;TD;>;"
        }
    .end annotation

    .line 240
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public addAt0(Lorg/javatuples/Unit;)Lorg/javatuples/Quintet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Quintet<",
            "TX0;TA;TB;TC;TD;>;"
        }
    .end annotation

    .line 422
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Quartet;->addAt0(Ljava/lang/Object;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Septet<",
            "TX0;TX1;TX2;TA;TB;TC;TD;>;"
        }
    .end annotation

    .line 300
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v4, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt0(Lorg/javatuples/Triplet;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TX0;TX1;TX2;TA;TB;TC;TD;>;"
        }
    .end annotation

    .line 475
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Quartet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Sextet<",
            "TX0;TX1;TA;TB;TC;TD;>;"
        }
    .end annotation

    .line 269
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v3, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public addAt0(Lorg/javatuples/Pair;)Lorg/javatuples/Sextet;
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
            "Lorg/javatuples/Sextet<",
            "TX0;TX1;TA;TB;TC;TD;>;"
        }
    .end annotation

    .line 448
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Quartet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;TX4;TX5;)",
            "Lorg/javatuples/Decade<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TB;TC;TD;>;"
        }
    .end annotation

    .line 396
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v2, v0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v9, v0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v11, v0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v1, v12

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt1(Lorg/javatuples/Sextet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TX0;TX1;TX2;TX3;TX4;TX5;TB;TC;TD;>;"
        }
    .end annotation

    .line 561
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
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

    invoke-virtual/range {v0 .. v6}, Lorg/javatuples/Quartet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Ennead<",
            "TA;TX0;TX1;TX2;TX3;TX4;TB;TC;TD;>;"
        }
    .end annotation

    .line 366
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    move-object v0, p0

    new-instance v11, Lorg/javatuples/Ennead;

    iget-object v2, v0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v8, v0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v9, v0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v1, v11

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v10}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt1(Lorg/javatuples/Quintet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TX0;TX1;TX2;TX3;TX4;TB;TC;TD;>;"
        }
    .end annotation

    .line 534
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
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

    invoke-virtual/range {v0 .. v5}, Lorg/javatuples/Quartet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Octet<",
            "TA;TX0;TX1;TX2;TX3;TB;TC;TD;>;"
        }
    .end annotation

    .line 336
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt1(Lorg/javatuples/Quartet;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TX0;TX1;TX2;TX3;TB;TC;TD;>;"
        }
    .end annotation

    .line 507
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Quartet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Quintet<",
            "TA;TX0;TB;TC;TD;>;"
        }
    .end annotation

    .line 245
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public addAt1(Lorg/javatuples/Unit;)Lorg/javatuples/Quintet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Quintet<",
            "TA;TX0;TB;TC;TD;>;"
        }
    .end annotation

    .line 426
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Quartet;->addAt1(Ljava/lang/Object;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Septet<",
            "TA;TX0;TX1;TX2;TB;TC;TD;>;"
        }
    .end annotation

    .line 305
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt1(Lorg/javatuples/Triplet;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TA;TX0;TX1;TX2;TB;TC;TD;>;"
        }
    .end annotation

    .line 479
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Quartet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Sextet<",
            "TA;TX0;TX1;TB;TC;TD;>;"
        }
    .end annotation

    .line 274
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public addAt1(Lorg/javatuples/Pair;)Lorg/javatuples/Sextet;
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
            "Lorg/javatuples/Sextet<",
            "TA;TX0;TX1;TB;TC;TD;>;"
        }
    .end annotation

    .line 452
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Quartet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;TX4;TX5;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TX5;TC;TD;>;"
        }
    .end annotation

    .line 401
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v2, v0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v11, v0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v1, v12

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt2(Lorg/javatuples/Sextet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TX5;TC;TD;>;"
        }
    .end annotation

    .line 565
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
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

    invoke-virtual/range {v0 .. v6}, Lorg/javatuples/Quartet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TC;TD;>;"
        }
    .end annotation

    .line 371
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    move-object v0, p0

    new-instance v11, Lorg/javatuples/Ennead;

    iget-object v2, v0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v9, v0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v1, v11

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v10}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt2(Lorg/javatuples/Quintet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TC;TD;>;"
        }
    .end annotation

    .line 538
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
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

    invoke-virtual/range {v0 .. v5}, Lorg/javatuples/Quartet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TX0;TX1;TX2;TX3;TC;TD;>;"
        }
    .end annotation

    .line 341
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v0, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt2(Lorg/javatuples/Quartet;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TB;TX0;TX1;TX2;TX3;TC;TD;>;"
        }
    .end annotation

    .line 511
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Quartet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TX0;TC;TD;>;"
        }
    .end annotation

    .line 250
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public addAt2(Lorg/javatuples/Unit;)Lorg/javatuples/Quintet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TX0;TC;TD;>;"
        }
    .end annotation

    .line 430
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Quartet;->addAt2(Ljava/lang/Object;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TX0;TX1;TX2;TC;TD;>;"
        }
    .end annotation

    .line 310
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v0, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt2(Lorg/javatuples/Triplet;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TA;TB;TX0;TX1;TX2;TC;TD;>;"
        }
    .end annotation

    .line 483
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Quartet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TX0;TX1;TC;TD;>;"
        }
    .end annotation

    .line 279
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v0, v7

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public addAt2(Lorg/javatuples/Pair;)Lorg/javatuples/Sextet;
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
            "Lorg/javatuples/Sextet<",
            "TA;TB;TX0;TX1;TC;TD;>;"
        }
    .end annotation

    .line 456
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Quartet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;TX4;TX5;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TX4;TX5;TD;>;"
        }
    .end annotation

    .line 406
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v2, v0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v4, v0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v11, v0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v1, v12

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt3(Lorg/javatuples/Sextet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TX4;TX5;TD;>;"
        }
    .end annotation

    .line 569
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
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

    invoke-virtual/range {v0 .. v6}, Lorg/javatuples/Quartet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TX4;TD;>;"
        }
    .end annotation

    .line 376
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    move-object v0, p0

    new-instance v11, Lorg/javatuples/Ennead;

    iget-object v2, v0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v4, v0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v1, v11

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt3(Lorg/javatuples/Quintet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TX4;TD;>;"
        }
    .end annotation

    .line 542
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
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

    invoke-virtual/range {v0 .. v5}, Lorg/javatuples/Quartet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TD;>;"
        }
    .end annotation

    .line 346
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v0, v9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt3(Lorg/javatuples/Quartet;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TD;>;"
        }
    .end annotation

    .line 515
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Quartet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TC;TX0;TD;>;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public addAt3(Lorg/javatuples/Unit;)Lorg/javatuples/Quintet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TC;TX0;TD;>;"
        }
    .end annotation

    .line 434
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Quartet;->addAt3(Ljava/lang/Object;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TX0;TX1;TX2;TD;>;"
        }
    .end annotation

    .line 315
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v0, v8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt3(Lorg/javatuples/Triplet;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TX0;TX1;TX2;TD;>;"
        }
    .end annotation

    .line 487
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Quartet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TX0;TX1;TD;>;"
        }
    .end annotation

    .line 284
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v0, v7

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public addAt3(Lorg/javatuples/Pair;)Lorg/javatuples/Sextet;
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
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TX0;TX1;TD;>;"
        }
    .end annotation

    .line 460
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Quartet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;TX4;TX5;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TX3;TX4;TX5;>;"
        }
    .end annotation

    .line 411
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    .local p6, "value5":Ljava/lang/Object;, "TX5;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v2, v0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v4, v0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v5, v0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v1, v12

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt4(Lorg/javatuples/Sextet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TX3;TX4;TX5;>;"
        }
    .end annotation

    .line 573
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
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

    invoke-virtual/range {v0 .. v6}, Lorg/javatuples/Quartet;->addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TX3;TX4;>;"
        }
    .end annotation

    .line 381
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    move-object v0, p0

    new-instance v11, Lorg/javatuples/Ennead;

    iget-object v2, v0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v4, v0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v5, v0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v1, v11

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt4(Lorg/javatuples/Quintet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TX3;TX4;>;"
        }
    .end annotation

    .line 546
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
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

    invoke-virtual/range {v0 .. v5}, Lorg/javatuples/Quartet;->addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 351
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v0, v9

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt4(Lorg/javatuples/Quartet;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 519
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Quartet;->addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TC;TD;TX0;>;"
        }
    .end annotation

    .line 260
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public addAt4(Lorg/javatuples/Unit;)Lorg/javatuples/Quintet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TC;TD;TX0;>;"
        }
    .end annotation

    .line 438
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Quartet;->addAt4(Ljava/lang/Object;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 320
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v0, v8

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt4(Lorg/javatuples/Triplet;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 491
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Quartet;->addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TD;TX0;TX1;>;"
        }
    .end annotation

    .line 289
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    move-object v0, v7

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public addAt4(Lorg/javatuples/Pair;)Lorg/javatuples/Sextet;
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
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TD;TX0;TX1;>;"
        }
    .end annotation

    .line 464
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Quartet;->addAt4(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 230
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    const/4 v0, 0x4

    return v0
.end method

.method public getValue0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 209
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    iget-object v0, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 214
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    iget-object v0, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 219
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    iget-object v0, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue3()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 224
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    iget-object v0, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    return-object v0
.end method

.method public removeFrom0()Lorg/javatuples/Triplet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Triplet<",
            "TB;TC;TD;>;"
        }
    .end annotation

    .line 691
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    new-instance v0, Lorg/javatuples/Triplet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lorg/javatuples/Triplet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public removeFrom1()Lorg/javatuples/Triplet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Triplet<",
            "TA;TC;TD;>;"
        }
    .end annotation

    .line 696
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    new-instance v0, Lorg/javatuples/Triplet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lorg/javatuples/Triplet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public removeFrom2()Lorg/javatuples/Triplet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Triplet<",
            "TA;TB;TD;>;"
        }
    .end annotation

    .line 701
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    new-instance v0, Lorg/javatuples/Triplet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lorg/javatuples/Triplet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public removeFrom3()Lorg/javatuples/Triplet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Triplet<",
            "TA;TB;TC;>;"
        }
    .end annotation

    .line 706
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    new-instance v0, Lorg/javatuples/Triplet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lorg/javatuples/Triplet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setAt0(Ljava/lang/Object;)Lorg/javatuples/Quartet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Quartet<",
            "TX;TB;TC;TD;>;"
        }
    .end annotation

    .line 661
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v0, Lorg/javatuples/Quartet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setAt1(Ljava/lang/Object;)Lorg/javatuples/Quartet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Quartet<",
            "TA;TX;TC;TD;>;"
        }
    .end annotation

    .line 666
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v0, Lorg/javatuples/Quartet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setAt2(Ljava/lang/Object;)Lorg/javatuples/Quartet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Quartet<",
            "TA;TB;TX;TD;>;"
        }
    .end annotation

    .line 671
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v0, Lorg/javatuples/Quartet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quartet;->val3:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setAt3(Ljava/lang/Object;)Lorg/javatuples/Quartet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Quartet<",
            "TA;TB;TC;TX;>;"
        }
    .end annotation

    .line 676
    .local p0, "this":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TA;TB;TC;TD;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v0, Lorg/javatuples/Quartet;

    iget-object v1, p0, Lorg/javatuples/Quartet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quartet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quartet;->val2:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
