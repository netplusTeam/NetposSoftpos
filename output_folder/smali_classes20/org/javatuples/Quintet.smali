.class public final Lorg/javatuples/Quintet;
.super Lorg/javatuples/Tuple;
.source "Quintet.java"

# interfaces
.implements Lorg/javatuples/valueintf/IValue0;
.implements Lorg/javatuples/valueintf/IValue1;
.implements Lorg/javatuples/valueintf/IValue2;
.implements Lorg/javatuples/valueintf/IValue3;
.implements Lorg/javatuples/valueintf/IValue4;


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
        "TE;>;"
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x5

.field private static final serialVersionUID:J = -0x15e9c3d9fca22074L


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


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;)V"
        }
    .end annotation

    .line 212
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TA;"
    .local p2, "value1":Ljava/lang/Object;, "TB;"
    .local p3, "value2":Ljava/lang/Object;, "TC;"
    .local p4, "value3":Ljava/lang/Object;, "TD;"
    .local p5, "value4":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x5

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

    invoke-direct {p0, v0}, Lorg/javatuples/Tuple;-><init>([Ljava/lang/Object;)V

    .line 213
    iput-object p1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    .line 214
    iput-object p2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    .line 215
    iput-object p3, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    .line 216
    iput-object p4, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    .line 217
    iput-object p5, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    .line 218
    return-void
.end method

.method public static fromArray([Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">([TX;)",
            "Lorg/javatuples/Quintet<",
            "TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 76
    .local p0, "array":[Ljava/lang/Object;, "[TX;"
    if-eqz p0, :cond_1

    .line 79
    array-length v0, p0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 82
    new-instance v0, Lorg/javatuples/Quintet;

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

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array must have exactly 5 elements in order to create a Quintet. Size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromCollection(Ljava/util/Collection;)Lorg/javatuples/Quintet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TX;>;)",
            "Lorg/javatuples/Quintet<",
            "TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 97
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TX;>;"
    invoke-static {p0}, Lorg/javatuples/Quintet;->fromIterable(Ljava/lang/Iterable;)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;)Lorg/javatuples/Quintet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;)",
            "Lorg/javatuples/Quintet<",
            "TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 112
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/javatuples/Quintet;->fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;I)Lorg/javatuples/Quintet;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;I)",
            "Lorg/javatuples/Quintet<",
            "TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 128
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/javatuples/Quintet;->fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Quintet;

    move-result-object v0

    return-object v0
.end method

.method private static fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Quintet;
    .locals 16
    .param p1, "index"    # I
    .param p2, "exactSize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;IZ)",
            "Lorg/javatuples/Quintet<",
            "TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 136
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    if-eqz p0, :cond_b

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "tooFewElements":Z
    const/4 v1, 0x0

    .line 143
    .local v1, "element0":Ljava/lang/Object;, "TX;"
    const/4 v2, 0x0

    .line 144
    .local v2, "element1":Ljava/lang/Object;, "TX;"
    const/4 v3, 0x0

    .line 145
    .local v3, "element2":Ljava/lang/Object;, "TX;"
    const/4 v4, 0x0

    .line 146
    .local v4, "element3":Ljava/lang/Object;, "TX;"
    const/4 v5, 0x0

    .line 148
    .local v5, "element4":Ljava/lang/Object;, "TX;"
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 150
    .local v6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    const/4 v7, 0x0

    .line 151
    .local v7, "i":I
    :goto_0
    move/from16 v8, p1

    if-ge v7, v8, :cond_1

    .line 152
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 153
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 155
    :cond_0
    const/4 v0, 0x1

    .line 157
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 160
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 161
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 163
    :cond_2
    const/4 v0, 0x1

    .line 166
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 167
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 169
    :cond_3
    const/4 v0, 0x1

    .line 172
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 173
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    .line 175
    :cond_4
    const/4 v0, 0x1

    .line 178
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 179
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    goto :goto_5

    .line 181
    :cond_5
    const/4 v0, 0x1

    .line 184
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 185
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    goto :goto_6

    .line 187
    :cond_6
    const/4 v0, 0x1

    .line 190
    :goto_6
    if-eqz v0, :cond_8

    if-nez p2, :cond_7

    goto :goto_7

    .line 191
    :cond_7
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Not enough elements for creating a Quintet (5 needed)"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 194
    :cond_8
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    if-nez p2, :cond_9

    goto :goto_8

    .line 195
    :cond_9
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Iterable must have exactly 5 available elements in order to create a Quintet."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 198
    :cond_a
    :goto_8
    new-instance v15, Lorg/javatuples/Quintet;

    move-object v9, v15

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    invoke-direct/range {v9 .. v14}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15

    .line 137
    .end local v0    # "tooFewElements":Z
    .end local v1    # "element0":Ljava/lang/Object;, "TX;"
    .end local v2    # "element1":Ljava/lang/Object;, "TX;"
    .end local v3    # "element2":Ljava/lang/Object;, "TX;"
    .end local v4    # "element3":Ljava/lang/Object;, "TX;"
    .end local v5    # "element4":Ljava/lang/Object;, "TX;"
    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    .end local v7    # "i":I
    :cond_b
    move/from16 v8, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Iterable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static with(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 7
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
            ">(TA;TB;TC;TD;TE;)",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 62
    .local p0, "value0":Ljava/lang/Object;, "TA;"
    .local p1, "value1":Ljava/lang/Object;, "TB;"
    .local p2, "value2":Ljava/lang/Object;, "TC;"
    .local p3, "value3":Ljava/lang/Object;, "TD;"
    .local p4, "value4":Ljava/lang/Object;, "TE;"
    new-instance v6, Lorg/javatuples/Quintet;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TX0;TX1;TX2;TX3;TX4;>;"
        }
    .end annotation

    .line 638
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    invoke-virtual/range {p0 .. p5}, Lorg/javatuples/Quintet;->addAt5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Quintet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TX0;TX1;TX2;TX3;TX4;>;"
        }
    .end annotation

    .line 643
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TX0;TX1;TX2;TX3;TX4;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Quintet;->addAt5(Lorg/javatuples/Quintet;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 625
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/javatuples/Quintet;->addAt5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Quartet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 630
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Quintet;->addAt5(Lorg/javatuples/Quartet;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 613
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/javatuples/Quintet;->addAt5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Triplet;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 618
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Quintet;->addAt5(Lorg/javatuples/Triplet;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TE;TX0;TX1;>;"
        }
    .end annotation

    .line 601
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    invoke-virtual {p0, p1, p2}, Lorg/javatuples/Quintet;->addAt5(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Pair;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TE;TX0;TX1;>;"
        }
    .end annotation

    .line 606
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Quintet;->addAt5(Lorg/javatuples/Pair;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TD;TE;TX0;>;"
        }
    .end annotation

    .line 589
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Quintet;->addAt5(Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Unit;)Lorg/javatuples/Sextet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TD;TE;TX0;>;"
        }
    .end annotation

    .line 594
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Quintet;->addAt5(Lorg/javatuples/Unit;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Decade<",
            "TX0;TX1;TX2;TX3;TX4;TA;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 400
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v7, v0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v8, v0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v9, v0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v11, v0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt0(Lorg/javatuples/Quintet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TX0;TX1;TX2;TX3;TX4;TA;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 560
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
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

    invoke-virtual/range {v0 .. v5}, Lorg/javatuples/Quintet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Ennead<",
            "TX0;TX1;TX2;TX3;TA;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 365
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v5, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt0(Lorg/javatuples/Quartet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TX0;TX1;TX2;TX3;TA;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 529
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Quintet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Octet<",
            "TX0;TX1;TX2;TA;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 329
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt0(Lorg/javatuples/Triplet;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TX0;TX1;TX2;TA;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 497
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Quintet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Septet<",
            "TX0;TX1;TA;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 293
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt0(Lorg/javatuples/Pair;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TX0;TX1;TA;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 466
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Quintet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Sextet<",
            "TX0;TA;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 259
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public addAt0(Lorg/javatuples/Unit;)Lorg/javatuples/Sextet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Sextet<",
            "TX0;TA;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 436
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Quintet;->addAt0(Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Decade<",
            "TA;TX0;TX1;TX2;TX3;TX4;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 405
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v2, v0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v8, v0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v9, v0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v11, v0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v1, v12

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt1(Lorg/javatuples/Quintet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TX0;TX1;TX2;TX3;TX4;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 564
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
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

    invoke-virtual/range {v0 .. v5}, Lorg/javatuples/Quintet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Ennead<",
            "TA;TX0;TX1;TX2;TX3;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 370
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt1(Lorg/javatuples/Quartet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TX0;TX1;TX2;TX3;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 533
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Quintet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Octet<",
            "TA;TX0;TX1;TX2;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 334
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt1(Lorg/javatuples/Triplet;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TX0;TX1;TX2;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 501
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Quintet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Septet<",
            "TA;TX0;TX1;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 298
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt1(Lorg/javatuples/Pair;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TA;TX0;TX1;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 470
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Quintet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Sextet<",
            "TA;TX0;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 264
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public addAt1(Lorg/javatuples/Unit;)Lorg/javatuples/Sextet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Sextet<",
            "TA;TX0;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 440
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Quintet;->addAt1(Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TC;TD;TE;>;"
        }
    .end annotation

    .line 410
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v2, v0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v9, v0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v11, v0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v1, v12

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt2(Lorg/javatuples/Quintet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TX0;TX1;TX2;TX3;TX4;TC;TD;TE;>;"
        }
    .end annotation

    .line 568
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
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

    invoke-virtual/range {v0 .. v5}, Lorg/javatuples/Quintet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TX0;TX1;TX2;TX3;TC;TD;TE;>;"
        }
    .end annotation

    .line 375
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt2(Lorg/javatuples/Quartet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TX0;TX1;TX2;TX3;TC;TD;TE;>;"
        }
    .end annotation

    .line 537
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Quintet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TX0;TX1;TX2;TC;TD;TE;>;"
        }
    .end annotation

    .line 339
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt2(Lorg/javatuples/Triplet;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TB;TX0;TX1;TX2;TC;TD;TE;>;"
        }
    .end annotation

    .line 505
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Quintet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TX0;TX1;TC;TD;TE;>;"
        }
    .end annotation

    .line 303
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v8

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt2(Lorg/javatuples/Pair;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TA;TB;TX0;TX1;TC;TD;TE;>;"
        }
    .end annotation

    .line 474
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Quintet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TX0;TC;TD;TE;>;"
        }
    .end annotation

    .line 269
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public addAt2(Lorg/javatuples/Unit;)Lorg/javatuples/Sextet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TX0;TC;TD;TE;>;"
        }
    .end annotation

    .line 444
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Quintet;->addAt2(Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TX4;TD;TE;>;"
        }
    .end annotation

    .line 415
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v2, v0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v4, v0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v10, v0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v11, v0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v1, v12

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt3(Lorg/javatuples/Quintet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TX4;TD;TE;>;"
        }
    .end annotation

    .line 572
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
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

    invoke-virtual/range {v0 .. v5}, Lorg/javatuples/Quintet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TD;TE;>;"
        }
    .end annotation

    .line 380
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v10

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt3(Lorg/javatuples/Quartet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TX0;TX1;TX2;TX3;TD;TE;>;"
        }
    .end annotation

    .line 541
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Quintet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TX0;TX1;TX2;TD;TE;>;"
        }
    .end annotation

    .line 344
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt3(Lorg/javatuples/Triplet;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TX0;TX1;TX2;TD;TE;>;"
        }
    .end annotation

    .line 509
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Quintet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TX0;TX1;TD;TE;>;"
        }
    .end annotation

    .line 308
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v8

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt3(Lorg/javatuples/Pair;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TX0;TX1;TD;TE;>;"
        }
    .end annotation

    .line 478
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Quintet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TX0;TD;TE;>;"
        }
    .end annotation

    .line 274
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public addAt3(Lorg/javatuples/Unit;)Lorg/javatuples/Sextet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TX0;TD;TE;>;"
        }
    .end annotation

    .line 448
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Quintet;->addAt3(Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TX3;TX4;TE;>;"
        }
    .end annotation

    .line 420
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v2, v0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v4, v0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v5, v0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v11, v0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v1, v12

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt4(Lorg/javatuples/Quintet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TX3;TX4;TE;>;"
        }
    .end annotation

    .line 576
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
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

    invoke-virtual/range {v0 .. v5}, Lorg/javatuples/Quintet;->addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TX3;TE;>;"
        }
    .end annotation

    .line 385
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v10

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt4(Lorg/javatuples/Quartet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TX3;TE;>;"
        }
    .end annotation

    .line 545
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Quintet;->addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TE;>;"
        }
    .end annotation

    .line 349
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v9

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt4(Lorg/javatuples/Triplet;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TE;>;"
        }
    .end annotation

    .line 513
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Quintet;->addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TX0;TX1;TE;>;"
        }
    .end annotation

    .line 313
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v8

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt4(Lorg/javatuples/Pair;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TX0;TX1;TE;>;"
        }
    .end annotation

    .line 482
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Quintet;->addAt4(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TD;TX0;TE;>;"
        }
    .end annotation

    .line 279
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public addAt4(Lorg/javatuples/Unit;)Lorg/javatuples/Sextet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TD;TX0;TE;>;"
        }
    .end annotation

    .line 452
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Quintet;->addAt4(Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public addAt5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            ">(TX0;TX1;TX2;TX3;TX4;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TX0;TX1;TX2;TX3;TX4;>;"
        }
    .end annotation

    .line 425
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    .local p5, "value4":Ljava/lang/Object;, "TX4;"
    move-object v0, p0

    new-instance v12, Lorg/javatuples/Decade;

    iget-object v2, v0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v3, v0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v4, v0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v5, v0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v6, v0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v1, v12

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public addAt5(Lorg/javatuples/Quintet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TX0;TX1;TX2;TX3;TX4;>;"
        }
    .end annotation

    .line 580
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
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

    invoke-virtual/range {v0 .. v5}, Lorg/javatuples/Quintet;->addAt5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
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
            ">(TX0;TX1;TX2;TX3;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 390
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    .local p4, "value3":Ljava/lang/Object;, "TX3;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v10

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt5(Lorg/javatuples/Quartet;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TX0;TX1;TX2;TX3;>;"
        }
    .end annotation

    .line 549
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Quartet;, "Lorg/javatuples/Quartet<TX0;TX1;TX2;TX3;>;"
    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/javatuples/Quartet;->getValue3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javatuples/Quintet;->addAt5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 354
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v9

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt5(Lorg/javatuples/Triplet;)Lorg/javatuples/Octet;
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
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 517
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Quintet;->addAt5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt5(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TE;TX0;TX1;>;"
        }
    .end annotation

    .line 318
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v8

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public addAt5(Lorg/javatuples/Pair;)Lorg/javatuples/Septet;
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
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TE;TX0;TX1;>;"
        }
    .end annotation

    .line 486
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Quintet;->addAt5(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public addAt5(Ljava/lang/Object;)Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TD;TE;TX0;>;"
        }
    .end annotation

    .line 284
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public addAt5(Lorg/javatuples/Unit;)Lorg/javatuples/Sextet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TD;TE;TX0;>;"
        }
    .end annotation

    .line 456
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Quintet;->addAt5(Ljava/lang/Object;)Lorg/javatuples/Sextet;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 248
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    const/4 v0, 0x5

    return v0
.end method

.method public getValue0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 222
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    iget-object v0, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    iget-object v0, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 232
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    iget-object v0, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue3()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 237
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    iget-object v0, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue4()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 242
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    iget-object v0, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    return-object v0
.end method

.method public removeFrom0()Lorg/javatuples/Quartet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Quartet<",
            "TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 684
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    new-instance v0, Lorg/javatuples/Quartet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public removeFrom1()Lorg/javatuples/Quartet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Quartet<",
            "TA;TC;TD;TE;>;"
        }
    .end annotation

    .line 689
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    new-instance v0, Lorg/javatuples/Quartet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public removeFrom2()Lorg/javatuples/Quartet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Quartet<",
            "TA;TB;TD;TE;>;"
        }
    .end annotation

    .line 694
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    new-instance v0, Lorg/javatuples/Quartet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public removeFrom3()Lorg/javatuples/Quartet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Quartet<",
            "TA;TB;TC;TE;>;"
        }
    .end annotation

    .line 699
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    new-instance v0, Lorg/javatuples/Quartet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public removeFrom4()Lorg/javatuples/Quartet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Quartet<",
            "TA;TB;TC;TD;>;"
        }
    .end annotation

    .line 704
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    new-instance v0, Lorg/javatuples/Quartet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/javatuples/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setAt0(Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Quintet<",
            "TX;TB;TC;TD;TE;>;"
        }
    .end annotation

    .line 652
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public setAt1(Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Quintet<",
            "TA;TX;TC;TD;TE;>;"
        }
    .end annotation

    .line 657
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public setAt2(Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TX;TD;TE;>;"
        }
    .end annotation

    .line 662
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public setAt3(Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TC;TX;TE;>;"
        }
    .end annotation

    .line 667
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Quintet;->val4:Ljava/lang/Object;

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public setAt4(Ljava/lang/Object;)Lorg/javatuples/Quintet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Quintet<",
            "TA;TB;TC;TD;TX;>;"
        }
    .end annotation

    .line 672
    .local p0, "this":Lorg/javatuples/Quintet;, "Lorg/javatuples/Quintet<TA;TB;TC;TD;TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v6, Lorg/javatuples/Quintet;

    iget-object v1, p0, Lorg/javatuples/Quintet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Quintet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Quintet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Quintet;->val3:Ljava/lang/Object;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/javatuples/Quintet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method
