.class public final Lorg/javatuples/Septet;
.super Lorg/javatuples/Tuple;
.source "Septet.java"

# interfaces
.implements Lorg/javatuples/valueintf/IValue0;
.implements Lorg/javatuples/valueintf/IValue1;
.implements Lorg/javatuples/valueintf/IValue2;
.implements Lorg/javatuples/valueintf/IValue3;
.implements Lorg/javatuples/valueintf/IValue4;
.implements Lorg/javatuples/valueintf/IValue5;
.implements Lorg/javatuples/valueintf/IValue6;


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
        "G:",
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
        "TF;>;",
        "Lorg/javatuples/valueintf/IValue6<",
        "TG;>;"
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x7

.field private static final serialVersionUID:J = -0x1d9cf238bae30d91L


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

.field private final val6:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TG;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;TG;)V"
        }
    .end annotation

    .line 236
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TA;"
    .local p2, "value1":Ljava/lang/Object;, "TB;"
    .local p3, "value2":Ljava/lang/Object;, "TC;"
    .local p4, "value3":Ljava/lang/Object;, "TD;"
    .local p5, "value4":Ljava/lang/Object;, "TE;"
    .local p6, "value5":Ljava/lang/Object;, "TF;"
    .local p7, "value6":Ljava/lang/Object;, "TG;"
    const/4 v0, 0x7

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

    const/4 v1, 0x6

    aput-object p7, v0, v1

    invoke-direct {p0, v0}, Lorg/javatuples/Tuple;-><init>([Ljava/lang/Object;)V

    .line 237
    iput-object p1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    .line 238
    iput-object p2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    .line 239
    iput-object p3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    .line 240
    iput-object p4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    .line 241
    iput-object p5, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    .line 242
    iput-object p6, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    .line 243
    iput-object p7, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    .line 244
    return-void
.end method

.method public static fromArray([Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">([TX;)",
            "Lorg/javatuples/Septet<",
            "TX;TX;TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 82
    .local p0, "array":[Ljava/lang/Object;, "[TX;"
    if-eqz p0, :cond_1

    .line 85
    array-length v0, p0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 88
    new-instance v0, Lorg/javatuples/Septet;

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

    const/4 v1, 0x6

    aget-object v9, p0, v1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array must have exactly 7 elements in order to create a Septet. Size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromCollection(Ljava/util/Collection;)Lorg/javatuples/Septet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TX;>;)",
            "Lorg/javatuples/Septet<",
            "TX;TX;TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 104
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TX;>;"
    invoke-static {p0}, Lorg/javatuples/Septet;->fromIterable(Ljava/lang/Iterable;)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;)Lorg/javatuples/Septet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;)",
            "Lorg/javatuples/Septet<",
            "TX;TX;TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 119
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/javatuples/Septet;->fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;I)Lorg/javatuples/Septet;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;I)",
            "Lorg/javatuples/Septet<",
            "TX;TX;TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 135
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/javatuples/Septet;->fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Septet;

    move-result-object v0

    return-object v0
.end method

.method private static fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Septet;
    .locals 20
    .param p1, "index"    # I
    .param p2, "exactSize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;IZ)",
            "Lorg/javatuples/Septet<",
            "TX;TX;TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 143
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    if-eqz p0, :cond_d

    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "tooFewElements":Z
    const/4 v1, 0x0

    .line 150
    .local v1, "element0":Ljava/lang/Object;, "TX;"
    const/4 v2, 0x0

    .line 151
    .local v2, "element1":Ljava/lang/Object;, "TX;"
    const/4 v3, 0x0

    .line 152
    .local v3, "element2":Ljava/lang/Object;, "TX;"
    const/4 v4, 0x0

    .line 153
    .local v4, "element3":Ljava/lang/Object;, "TX;"
    const/4 v5, 0x0

    .line 154
    .local v5, "element4":Ljava/lang/Object;, "TX;"
    const/4 v6, 0x0

    .line 155
    .local v6, "element5":Ljava/lang/Object;, "TX;"
    const/4 v7, 0x0

    .line 157
    .local v7, "element6":Ljava/lang/Object;, "TX;"
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 159
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    const/4 v9, 0x0

    .line 160
    .local v9, "i":I
    :goto_0
    move/from16 v10, p1

    if-ge v9, v10, :cond_1

    .line 161
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 162
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 164
    :cond_0
    const/4 v0, 0x1

    .line 166
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 170
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 172
    :cond_2
    const/4 v0, 0x1

    .line 175
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 176
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 178
    :cond_3
    const/4 v0, 0x1

    .line 181
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 182
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    .line 184
    :cond_4
    const/4 v0, 0x1

    .line 187
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 188
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    goto :goto_5

    .line 190
    :cond_5
    const/4 v0, 0x1

    .line 193
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 194
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    goto :goto_6

    .line 196
    :cond_6
    const/4 v0, 0x1

    .line 199
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 200
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    goto :goto_7

    .line 202
    :cond_7
    const/4 v0, 0x1

    .line 205
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 206
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    goto :goto_8

    .line 208
    :cond_8
    const/4 v0, 0x1

    .line 211
    :goto_8
    if-eqz v0, :cond_a

    if-nez p2, :cond_9

    goto :goto_9

    .line 212
    :cond_9
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Not enough elements for creating a Septet (7 needed)"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 215
    :cond_a
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    if-nez p2, :cond_b

    goto :goto_a

    .line 216
    :cond_b
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Iterable must have exactly 7 available elements in order to create a Septet."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 219
    :cond_c
    :goto_a
    new-instance v19, Lorg/javatuples/Septet;

    move-object/from16 v11, v19

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-direct/range {v11 .. v18}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v19

    .line 144
    .end local v0    # "tooFewElements":Z
    .end local v1    # "element0":Ljava/lang/Object;, "TX;"
    .end local v2    # "element1":Ljava/lang/Object;, "TX;"
    .end local v3    # "element2":Ljava/lang/Object;, "TX;"
    .end local v4    # "element3":Ljava/lang/Object;, "TX;"
    .end local v5    # "element4":Ljava/lang/Object;, "TX;"
    .end local v6    # "element5":Ljava/lang/Object;, "TX;"
    .end local v7    # "element6":Ljava/lang/Object;, "TX;"
    .end local v8    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    .end local v9    # "i":I
    :cond_d
    move/from16 v10, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Iterable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static with(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
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
            "G:",
            "Ljava/lang/Object;",
            ">(TA;TB;TC;TD;TE;TF;TG;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 68
    .local p0, "value0":Ljava/lang/Object;, "TA;"
    .local p1, "value1":Ljava/lang/Object;, "TB;"
    .local p2, "value2":Ljava/lang/Object;, "TC;"
    .local p3, "value3":Ljava/lang/Object;, "TD;"
    .local p4, "value4":Ljava/lang/Object;, "TE;"
    .local p5, "value5":Ljava/lang/Object;, "TF;"
    .local p6, "value6":Ljava/lang/Object;, "TG;"
    new-instance v8, Lorg/javatuples/Septet;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TG;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 590
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/javatuples/Septet;->addAt7(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Triplet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TG;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 595
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Septet;->addAt7(Lorg/javatuples/Triplet;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TG;TX0;TX1;>;"
        }
    .end annotation

    .line 578
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    invoke-virtual {p0, p1, p2}, Lorg/javatuples/Septet;->addAt7(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Pair;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TG;TX0;TX1;>;"
        }
    .end annotation

    .line 583
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Septet;->addAt7(Lorg/javatuples/Pair;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TF;TG;TX0;>;"
        }
    .end annotation

    .line 566
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Septet;->addAt7(Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Unit;)Lorg/javatuples/Octet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TF;TG;TX0;>;"
        }
    .end annotation

    .line 571
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Septet;->addAt7(Lorg/javatuples/Unit;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Decade<",
            "TX0;TX1;TX2;TA;TB;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 400
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v4, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt0(Lorg/javatuples/Triplet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TX0;TX1;TX2;TA;TB;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 528
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Septet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Ennead<",
            "TX0;TX1;TA;TB;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 346
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v3, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt0(Lorg/javatuples/Pair;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TX0;TX1;TA;TB;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 489
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Septet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Octet<",
            "TX0;TA;TB;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 294
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v2, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt0(Lorg/javatuples/Unit;)Lorg/javatuples/Octet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Octet<",
            "TX0;TA;TB;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 451
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Septet;->addAt0(Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Decade<",
            "TA;TX0;TX1;TX2;TB;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 406
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt1(Lorg/javatuples/Triplet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TX0;TX1;TX2;TB;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 532
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Septet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Ennead<",
            "TA;TX0;TX1;TB;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 352
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v10

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt1(Lorg/javatuples/Pair;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TX0;TX1;TB;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 493
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Septet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Octet<",
            "TA;TX0;TB;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 300
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v9

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt1(Lorg/javatuples/Unit;)Lorg/javatuples/Octet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Octet<",
            "TA;TX0;TB;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 455
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Septet;->addAt1(Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TX0;TX1;TX2;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 412
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v11

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt2(Lorg/javatuples/Triplet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TX0;TX1;TX2;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 536
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Septet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TX0;TX1;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 358
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v10

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt2(Lorg/javatuples/Pair;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TX0;TX1;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 497
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Septet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TX0;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 306
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v9

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt2(Lorg/javatuples/Unit;)Lorg/javatuples/Octet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TX0;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 459
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Septet;->addAt2(Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TX0;TX1;TX2;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 418
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v11

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt3(Lorg/javatuples/Triplet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TX0;TX1;TX2;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 540
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Septet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TX0;TX1;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 364
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v10

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt3(Lorg/javatuples/Pair;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TX0;TX1;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 501
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Septet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TX0;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 312
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v9

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt3(Lorg/javatuples/Unit;)Lorg/javatuples/Octet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TX0;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 463
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Septet;->addAt3(Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TE;TF;TG;>;"
        }
    .end annotation

    .line 424
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v11

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt4(Lorg/javatuples/Triplet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TX0;TX1;TX2;TE;TF;TG;>;"
        }
    .end annotation

    .line 544
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Septet;->addAt4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TX0;TX1;TE;TF;TG;>;"
        }
    .end annotation

    .line 370
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v10

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt4(Lorg/javatuples/Pair;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TX0;TX1;TE;TF;TG;>;"
        }
    .end annotation

    .line 505
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Septet;->addAt4(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TX0;TE;TF;TG;>;"
        }
    .end annotation

    .line 318
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v9

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt4(Lorg/javatuples/Unit;)Lorg/javatuples/Octet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TX0;TE;TF;TG;>;"
        }
    .end annotation

    .line 467
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Septet;->addAt4(Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TX0;TX1;TX2;TF;TG;>;"
        }
    .end annotation

    .line 430
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v11

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt5(Lorg/javatuples/Triplet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TX0;TX1;TX2;TF;TG;>;"
        }
    .end annotation

    .line 548
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Septet;->addAt5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt5(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TX0;TX1;TF;TG;>;"
        }
    .end annotation

    .line 376
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v10

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt5(Lorg/javatuples/Pair;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TX0;TX1;TF;TG;>;"
        }
    .end annotation

    .line 509
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Septet;->addAt5(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt5(Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TX0;TF;TG;>;"
        }
    .end annotation

    .line 324
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v9

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt5(Lorg/javatuples/Unit;)Lorg/javatuples/Octet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TX0;TF;TG;>;"
        }
    .end annotation

    .line 471
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Septet;->addAt5(Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TX0;TX1;TX2;TG;>;"
        }
    .end annotation

    .line 436
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v11

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt6(Lorg/javatuples/Triplet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TX0;TX1;TX2;TG;>;"
        }
    .end annotation

    .line 552
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Septet;->addAt6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt6(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TX0;TX1;TG;>;"
        }
    .end annotation

    .line 382
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v10

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt6(Lorg/javatuples/Pair;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TX0;TX1;TG;>;"
        }
    .end annotation

    .line 513
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Septet;->addAt6(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt6(Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TF;TX0;TG;>;"
        }
    .end annotation

    .line 330
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v9

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt6(Lorg/javatuples/Unit;)Lorg/javatuples/Octet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TF;TX0;TG;>;"
        }
    .end annotation

    .line 475
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Septet;->addAt6(Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public addAt7(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            "X2:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;TX2;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TG;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 442
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    .local p3, "value2":Ljava/lang/Object;, "TX2;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v11

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt7(Lorg/javatuples/Triplet;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TG;TX0;TX1;TX2;>;"
        }
    .end annotation

    .line 556
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Triplet;, "Lorg/javatuples/Triplet<TX0;TX1;TX2;>;"
    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lorg/javatuples/Triplet;->getValue2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/javatuples/Septet;->addAt7(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt7(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TG;TX0;TX1;>;"
        }
    .end annotation

    .line 388
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v10

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt7(Lorg/javatuples/Pair;)Lorg/javatuples/Ennead;
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
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TG;TX0;TX1;>;"
        }
    .end annotation

    .line 517
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Septet;->addAt7(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt7(Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TF;TG;TX0;>;"
        }
    .end annotation

    .line 336
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public addAt7(Lorg/javatuples/Unit;)Lorg/javatuples/Octet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TF;TG;TX0;>;"
        }
    .end annotation

    .line 479
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Septet;->addAt7(Ljava/lang/Object;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 284
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    const/4 v0, 0x7

    return v0
.end method

.method public getValue0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 248
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    iget-object v0, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 253
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    iget-object v0, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 258
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    iget-object v0, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue3()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 263
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    iget-object v0, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue4()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 268
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    iget-object v0, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue5()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .line 273
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    iget-object v0, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue6()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TG;"
        }
    .end annotation

    .line 278
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    iget-object v0, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    return-object v0
.end method

.method public removeFrom0()Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Sextet<",
            "TB;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 649
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public removeFrom1()Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Sextet<",
            "TA;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 654
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public removeFrom2()Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 659
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public removeFrom3()Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TE;TF;TG;>;"
        }
    .end annotation

    .line 664
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public removeFrom4()Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TD;TF;TG;>;"
        }
    .end annotation

    .line 669
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public removeFrom5()Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TD;TE;TG;>;"
        }
    .end annotation

    .line 674
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public removeFrom6()Lorg/javatuples/Sextet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Sextet<",
            "TA;TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .line 679
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    new-instance v7, Lorg/javatuples/Sextet;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/javatuples/Sextet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7
.end method

.method public setAt0(Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Septet<",
            "TX;TB;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 604
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public setAt1(Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Septet<",
            "TA;TX;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 609
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public setAt2(Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TX;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 614
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v8

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public setAt3(Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TX;TE;TF;TG;>;"
        }
    .end annotation

    .line 619
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v8

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public setAt4(Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TX;TF;TG;>;"
        }
    .end annotation

    .line 624
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public setAt5(Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TE;TX;TG;>;"
        }
    .end annotation

    .line 629
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Septet;->val6:Ljava/lang/Object;

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public setAt6(Ljava/lang/Object;)Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TE;TF;TX;>;"
        }
    .end annotation

    .line 634
    .local p0, "this":Lorg/javatuples/Septet;, "Lorg/javatuples/Septet<TA;TB;TC;TD;TE;TF;TG;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Septet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Septet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Septet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Septet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Septet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Septet;->val5:Ljava/lang/Object;

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method
