.class public final Lorg/javatuples/Sextet;
.super Lorg/javatuples/Tuple;
.source "Sextet.java"

# interfaces
.implements Lorg/javatuples/valueintf/IValue0;
.implements Lorg/javatuples/valueintf/IValue1;
.implements Lorg/javatuples/valueintf/IValue2;
.implements Lorg/javatuples/valueintf/IValue3;
.implements Lorg/javatuples/valueintf/IValue4;
.implements Lorg/javatuples/valueintf/IValue5;


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
        "E:",
        "Ljava/lang/Object;",
        "F:",
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
        "TD;>;",
        "Lorg/javatuples/valueintf/IValue4<",
        "TE;>;",
        "Lorg/javatuples/valueintf/IValue5<",
        "TF;>;"
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x6

.field private static final serialVersionUID:J = -0x51a413db279476fL


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

.field private final val4:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final val5:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;)V"
        }
    .end annotation

    .line 225
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TA;"
    .local p2, "value1":Ljava/lang/Object;, "TB;"
    .local p3, "value2":Ljava/lang/Object;, "TC;"
    .local p4, "value3":Ljava/lang/Object;, "TD;"
    .local p5, "value4":Ljava/lang/Object;, "TE;"
    .local p6, "value5":Ljava/lang/Object;, "TF;"
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    invoke-direct {p0, v0}, Lorg/javatuples/Tuple;-><init>([Ljava/lang/Object;)V

    .line 226
    iput-object p1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    .line 227
    iput-object p2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    .line 228
    iput-object p3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    .line 229
    iput-object p4, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    .line 230
    iput-object p5, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    .line 231
    iput-object p6, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    .line 232
    return-void
.end method

.method public static fromArray([Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">([TX;)",
            "Lorg/javatuples/Sextet<",
            "TX;TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 79
    .local p0, "array":[Ljava/lang/Object;, "[TX;"
    if-eqz p0, :cond_1

    .line 82
    array-length v0, p0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 85
    new-instance v0, Lorg/javatuples/Sextet;

    const/4 v1, 0x0

    aget-object v3, p0, v1

    const/4 v1, 0x1

    aget-object v4, p0, v1

    const/4 v1, 0x2

    aget-object v5, p0, v1

    const/4 v1, 0x3

    aget-object v6, p0, v1

    const/4 v1, 0x4

    aget-object v7, p0, v1

    const/4 v1, 0x5

    aget-object v8, p0, v1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array must have exactly 6 elements in order to create a Sextet. Size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromCollection(Ljava/util/Collection;)Lorg/javatuples/Sextet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TX;>;)",
            "Lorg/javatuples/Sextet<",
            "TX;TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 101
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TX;>;"
    invoke-static {p0}, Lorg/javatuples/Sextet;->fromIterable(Ljava/lang/Iterable;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;)Lorg/javatuples/Sextet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;)",
            "Lorg/javatuples/Sextet<",
            "TX;TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 116
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/javatuples/Sextet;->fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;I)Lorg/javatuples/Sextet;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;I)",
            "Lorg/javatuples/Sextet<",
            "TX;TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 132
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/javatuples/Sextet;->fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method private static fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Sextet;
    .locals 18
    .param p1, "index"    # I
    .param p2, "exactSize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;IZ)",
            "Lorg/javatuples/Sextet<",
            "TX;TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 140
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    if-eqz p0, :cond_c

    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, "tooFewElements":Z
    const/4 v1, 0x0

    .line 147
    .local v1, "element0":Ljava/lang/Object;, "TX;"
    const/4 v2, 0x0

    .line 148
    .local v2, "element1":Ljava/lang/Object;, "TX;"
    const/4 v3, 0x0

    .line 149
    .local v3, "element2":Ljava/lang/Object;, "TX;"
    const/4 v4, 0x0

    .line 150
    .local v4, "element3":Ljava/lang/Object;, "TX;"
    const/4 v5, 0x0

    .line 151
    .local v5, "element4":Ljava/lang/Object;, "TX;"
    const/4 v6, 0x0

    .line 153
    .local v6, "element5":Ljava/lang/Object;, "TX;"
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 155
    .local v7, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    const/4 v8, 0x0

    .line 156
    .local v8, "i":I
    :goto_0
    move/from16 v9, p1

    if-ge v8, v9, :cond_1

    .line 157
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 158
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 160
    :cond_0
    const/4 v0, 0x1

    .line 162
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 165
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 166
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 168
    :cond_2
    const/4 v0, 0x1

    .line 171
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 172
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 174
    :cond_3
    const/4 v0, 0x1

    .line 177
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 178
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    .line 180
    :cond_4
    const/4 v0, 0x1

    .line 183
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 184
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    goto :goto_5

    .line 186
    :cond_5
    const/4 v0, 0x1

    .line 189
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 190
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    goto :goto_6

    .line 192
    :cond_6
    const/4 v0, 0x1

    .line 195
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 196
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    goto :goto_7

    .line 198
    :cond_7
    const/4 v0, 0x1

    .line 201
    :goto_7
    if-eqz v0, :cond_9

    if-nez p2, :cond_8

    goto :goto_8

    .line 202
    :cond_8
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Not enough elements for creating a Sextet (6 needed)"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 205
    :cond_9
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    if-nez p2, :cond_a

    goto :goto_9

    .line 206
    :cond_a
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Iterable must have exactly 6 available elements in order to create a Sextet."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 209
    :cond_b
    :goto_9
    new-instance v17, Lorg/javatuples/Sextet;

    move-object/from16 v10, v17

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    invoke-direct/range {v10 .. v16}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v17

    .line 141
    .end local v0    # "tooFewElements":Z
    .end local v1    # "element0":Ljava/lang/Object;, "TX;"
    .end local v2    # "element1":Ljava/lang/Object;, "TX;"
    .end local v3    # "element2":Ljava/lang/Object;, "TX;"
    .end local v4    # "element3":Ljava/lang/Object;, "TX;"
    .end local v5    # "element4":Ljava/lang/Object;, "TX;"
    .end local v6    # "element5":Ljava/lang/Object;, "TX;"
    .end local v7    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    .end local v8    # "i":I
    :cond_c
    move/from16 v9, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Iterable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static with(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
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
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(TA;TB;TC;TD;TE;TF;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 65
    .local p0, "value0":Ljava/lang/Object;, "TA;"
    .local p1, "value1":Ljava/lang/Object;, "TB;"
    .local p2, "value2":Ljava/lang/Object;, "TC;"
    .local p3, "value3":Ljava/lang/Object;, "TD;"
    .local p4, "value4":Ljava/lang/Object;, "TE;"
    .local p5, "value5":Ljava/lang/Object;, "TF;"
    new-instance v7, Lorg/javatuples/Sextet;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 615
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/javatuples/Sextet;->addAt6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Quartet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 620
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Sextet;->addAt6(Lorg/javatuples/Quartet;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 603
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/javatuples/Sextet;->addAt6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Triplet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 608
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Sextet;->addAt6(Lorg/javatuples/Triplet;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TF;TX0;TX1;>;"
        }
    .end annotation

    .line 591
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    invoke-virtual {p0, p1, p2}, Lorg/javatuples/Sextet;->addAt6(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Pair;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TF;TX0;TX1;>;"
        }
    .end annotation

    .line 596
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Sextet;->addAt6(Lorg/javatuples/Pair;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TE;TF;TX0;>;"
        }
    .end annotation

    .line 579
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Sextet;->addAt6(Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Unit;)Lorg/javatuples/Septet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TE;TF;TX0;>;"
        }
    .end annotation

    .line 584
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Sextet;->addAt6(Lorg/javatuples/Unit;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Decade<",
            "TX0;TX1;TX2;TX3;TA;TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 399
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v6, v0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v7, v0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v8, v0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v9, v0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v11, v0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt0(Lorg/javatuples/Quartet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TX0;TX1;TX2;TX3;TA;TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 543
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Sextet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Ennead<",
            "TX0;TX1;TX2;TA;TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 358
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt0(Lorg/javatuples/Triplet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TX0;TX1;TX2;TA;TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 507
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Sextet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Octet<",
            "TX0;TX1;TA;TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 317
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt0(Lorg/javatuples/Pair;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TX0;TX1;TA;TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 472
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Sextet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Septet<",
            "TX0;TA;TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 278
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt0(Lorg/javatuples/Unit;)Lorg/javatuples/Septet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Septet<",
            "TX0;TA;TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 438
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Sextet;->addAt0(Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Decade<",
            "TA;TX0;TX1;TX2;TX3;TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 404
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v2, v0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v7, v0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v8, v0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v9, v0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v11, v0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v1, v12

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt1(Lorg/javatuples/Quartet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TX0;TX1;TX2;TX3;TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 547
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Sextet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Ennead<",
            "TA;TX0;TX1;TX2;TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 363
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt1(Lorg/javatuples/Triplet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TX0;TX1;TX2;TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 511
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Sextet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Octet<",
            "TA;TX0;TX1;TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 322
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt1(Lorg/javatuples/Pair;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TX0;TX1;TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 476
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Sextet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Septet<",
            "TA;TX0;TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 283
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt1(Lorg/javatuples/Unit;)Lorg/javatuples/Septet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Septet<",
            "TA;TX0;TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 442
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Sextet;->addAt1(Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TX0;TX1;TX2;TX3;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 409
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v2, v0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v8, v0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v9, v0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v11, v0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v1, v12

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt2(Lorg/javatuples/Quartet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TX0;TX1;TX2;TX3;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 551
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Sextet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TX0;TX1;TX2;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 368
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt2(Lorg/javatuples/Triplet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TX0;TX1;TX2;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 515
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Sextet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TX0;TX1;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v9

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt2(Lorg/javatuples/Pair;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TB;TX0;TX1;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 480
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Sextet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TX0;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 288
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v8

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt2(Lorg/javatuples/Unit;)Lorg/javatuples/Septet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TX0;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 446
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Sextet;->addAt2(Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TD;TE;TF;>;"
        }
    .end annotation

    .line 414
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v2, v0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v4, v0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v9, v0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v11, v0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v1, v12

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt3(Lorg/javatuples/Quartet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TD;TE;TF;>;"
        }
    .end annotation

    .line 555
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Sextet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TX0;TX1;TX2;TD;TE;TF;>;"
        }
    .end annotation

    .line 373
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v10

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt3(Lorg/javatuples/Triplet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TX0;TX1;TX2;TD;TE;TF;>;"
        }
    .end annotation

    .line 519
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Sextet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TX0;TX1;TD;TE;TF;>;"
        }
    .end annotation

    .line 332
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v9

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt3(Lorg/javatuples/Pair;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TX0;TX1;TD;TE;TF;>;"
        }
    .end annotation

    .line 484
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Sextet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TX0;TD;TE;TF;>;"
        }
    .end annotation

    .line 293
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v8

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt3(Lorg/javatuples/Unit;)Lorg/javatuples/Septet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TX0;TD;TE;TF;>;"
        }
    .end annotation

    .line 450
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Sextet;->addAt3(Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TX3;TE;TF;>;"
        }
    .end annotation

    .line 419
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v2, v0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v4, v0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v5, v0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v11, v0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v1, v12

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt4(Lorg/javatuples/Quartet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TX3;TE;TF;>;"
        }
    .end annotation

    .line 559
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Sextet;->addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TE;TF;>;"
        }
    .end annotation

    .line 378
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v10

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt4(Lorg/javatuples/Triplet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TE;TF;>;"
        }
    .end annotation

    .line 523
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Sextet;->addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TX0;TX1;TE;TF;>;"
        }
    .end annotation

    .line 337
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v9

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt4(Lorg/javatuples/Pair;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TX0;TX1;TE;TF;>;"
        }
    .end annotation

    .line 488
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Sextet;->addAt4(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TX0;TE;TF;>;"
        }
    .end annotation

    .line 298
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt4(Lorg/javatuples/Unit;)Lorg/javatuples/Septet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TX0;TE;TF;>;"
        }
    .end annotation

    .line 454
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Sextet;->addAt4(Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TX0;TX1;TX2;TX3;TF;>;"
        }
    .end annotation

    .line 424
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v2, v0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v4, v0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v5, v0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v6, v0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v11, v0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v1, v12

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt5(Lorg/javatuples/Quartet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TX0;TX1;TX2;TX3;TF;>;"
        }
    .end annotation

    .line 563
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Sextet;->addAt5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TX0;TX1;TX2;TF;>;"
        }
    .end annotation

    .line 383
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v10

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt5(Lorg/javatuples/Triplet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TX0;TX1;TX2;TF;>;"
        }
    .end annotation

    .line 527
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Sextet;->addAt5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt5(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TX0;TX1;TF;>;"
        }
    .end annotation

    .line 342
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v9

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt5(Lorg/javatuples/Pair;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TX0;TX1;TF;>;"
        }
    .end annotation

    .line 492
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Sextet;->addAt5(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt5(Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TE;TX0;TF;>;"
        }
    .end annotation

    .line 303
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt5(Lorg/javatuples/Unit;)Lorg/javatuples/Septet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TE;TX0;TF;>;"
        }
    .end annotation

    .line 458
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Sextet;->addAt5(Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 429
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v2, v0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v4, v0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v5, v0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v6, v0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v7, v0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v1, v12

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt6(Lorg/javatuples/Quartet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 567
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Sextet;->addAt6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 388
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v10

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt6(Lorg/javatuples/Triplet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 531
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Sextet;->addAt6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt6(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TF;TX0;TX1;>;"
        }
    .end annotation

    .line 347
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v9

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt6(Lorg/javatuples/Pair;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TF;TX0;TX1;>;"
        }
    .end annotation

    .line 496
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Sextet;->addAt6(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt6(Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TE;TF;TX0;>;"
        }
    .end annotation

    .line 308
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt6(Lorg/javatuples/Unit;)Lorg/javatuples/Septet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TE;TF;TX0;>;"
        }
    .end annotation

    .line 462
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Sextet;->addAt6(Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 267
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    const/4 v0, 0x6

    return v0
.end method

.method public getValue0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 236
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    iget-object v0, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 241
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    iget-object v0, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 246
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    iget-object v0, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue3()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 251
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    iget-object v0, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue4()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 256
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    iget-object v0, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue5()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .line 261
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    iget-object v0, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    return-object v0
.end method

.method public removeFrom0()Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Quintet<",
            "TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 667
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public removeFrom1()Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Quintet<",
            "TA;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 672
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public removeFrom2()Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TD;TE;TF;>;"
        }
    .end annotation

    .line 677
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public removeFrom3()Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TC;TE;TF;>;"
        }
    .end annotation

    .line 682
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public removeFrom4()Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TC;TD;TF;>;"
        }
    .end annotation

    .line 687
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public removeFrom5()Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 692
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public setAt0(Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Sextet<",
            "TX;TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 631
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public setAt1(Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Sextet<",
            "TA;TX;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 636
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public setAt2(Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TX;TD;TE;TF;>;"
        }
    .end annotation

    .line 641
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public setAt3(Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TX;TE;TF;>;"
        }
    .end annotation

    .line 646
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public setAt4(Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TD;TX;TF;>;"
        }
    .end annotation

    .line 651
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Sextet;->val5:Ljava/lang/Object;

    move-object v0, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public setAt5(Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TD;TE;TX;>;"
        }
    .end annotation

    .line 656
    .local p0, "this":Lorg/javatuples/Sextet;, "Lorg/javatuples/Sextet<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Sextet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Sextet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Sextet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Sextet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Sextet;->val4:Ljava/lang/Object;

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method
