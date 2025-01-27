.class public final Lorg/javatuples/Octet;
.super Lorg/javatuples/Tuple;
.source "Octet.java"

# interfaces
.implements Lorg/javatuples/valueintf/IValue0;
.implements Lorg/javatuples/valueintf/IValue1;
.implements Lorg/javatuples/valueintf/IValue2;
.implements Lorg/javatuples/valueintf/IValue3;
.implements Lorg/javatuples/valueintf/IValue4;
.implements Lorg/javatuples/valueintf/IValue5;
.implements Lorg/javatuples/valueintf/IValue6;
.implements Lorg/javatuples/valueintf/IValue7;


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
        "H:",
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
        "TG;>;",
        "Lorg/javatuples/valueintf/IValue7<",
        "TH;>;"
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x8

.field private static final serialVersionUID:J = -0x107c77078c3dd3bfL


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

.field private final val7:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TH;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;TG;TH;)V"
        }
    .end annotation

    .line 247
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TA;"
    .local p2, "value1":Ljava/lang/Object;, "TB;"
    .local p3, "value2":Ljava/lang/Object;, "TC;"
    .local p4, "value3":Ljava/lang/Object;, "TD;"
    .local p5, "value4":Ljava/lang/Object;, "TE;"
    .local p6, "value5":Ljava/lang/Object;, "TF;"
    .local p7, "value6":Ljava/lang/Object;, "TG;"
    .local p8, "value7":Ljava/lang/Object;, "TH;"
    const/16 v0, 0x8

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

    const/4 v1, 0x7

    aput-object p8, v0, v1

    invoke-direct {p0, v0}, Lorg/javatuples/Tuple;-><init>([Ljava/lang/Object;)V

    .line 248
    iput-object p1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    .line 249
    iput-object p2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    .line 250
    iput-object p3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    .line 251
    iput-object p4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    .line 252
    iput-object p5, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    .line 253
    iput-object p6, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    .line 254
    iput-object p7, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    .line 255
    iput-object p8, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    .line 256
    return-void
.end method

.method public static fromArray([Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">([TX;)",
            "Lorg/javatuples/Octet<",
            "TX;TX;TX;TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 85
    .local p0, "array":[Ljava/lang/Object;, "[TX;"
    if-eqz p0, :cond_1

    .line 88
    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 91
    new-instance v0, Lorg/javatuples/Octet;

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

    const/4 v1, 0x7

    aget-object v10, p0, v1

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array must have exactly 8 elements in order to create an Octet. Size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromCollection(Ljava/util/Collection;)Lorg/javatuples/Octet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TX;>;)",
            "Lorg/javatuples/Octet<",
            "TX;TX;TX;TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 107
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TX;>;"
    invoke-static {p0}, Lorg/javatuples/Octet;->fromIterable(Ljava/lang/Iterable;)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;)Lorg/javatuples/Octet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;)",
            "Lorg/javatuples/Octet<",
            "TX;TX;TX;TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 122
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/javatuples/Octet;->fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;I)Lorg/javatuples/Octet;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;I)",
            "Lorg/javatuples/Octet<",
            "TX;TX;TX;TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 138
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/javatuples/Octet;->fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Octet;

    move-result-object v0

    return-object v0
.end method

.method private static fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Octet;
    .locals 22
    .param p1, "index"    # I
    .param p2, "exactSize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;IZ)",
            "Lorg/javatuples/Octet<",
            "TX;TX;TX;TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 147
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    if-eqz p0, :cond_e

    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, "tooFewElements":Z
    const/4 v1, 0x0

    .line 154
    .local v1, "element0":Ljava/lang/Object;, "TX;"
    const/4 v2, 0x0

    .line 155
    .local v2, "element1":Ljava/lang/Object;, "TX;"
    const/4 v3, 0x0

    .line 156
    .local v3, "element2":Ljava/lang/Object;, "TX;"
    const/4 v4, 0x0

    .line 157
    .local v4, "element3":Ljava/lang/Object;, "TX;"
    const/4 v5, 0x0

    .line 158
    .local v5, "element4":Ljava/lang/Object;, "TX;"
    const/4 v6, 0x0

    .line 159
    .local v6, "element5":Ljava/lang/Object;, "TX;"
    const/4 v7, 0x0

    .line 160
    .local v7, "element6":Ljava/lang/Object;, "TX;"
    const/4 v8, 0x0

    .line 162
    .local v8, "element7":Ljava/lang/Object;, "TX;"
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 164
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    const/4 v10, 0x0

    .line 165
    .local v10, "i":I
    :goto_0
    move/from16 v11, p1

    if-ge v10, v11, :cond_1

    .line 166
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 167
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 169
    :cond_0
    const/4 v0, 0x1

    .line 171
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 174
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 175
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 177
    :cond_2
    const/4 v0, 0x1

    .line 180
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 181
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 183
    :cond_3
    const/4 v0, 0x1

    .line 186
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 187
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    .line 189
    :cond_4
    const/4 v0, 0x1

    .line 192
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 193
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    goto :goto_5

    .line 195
    :cond_5
    const/4 v0, 0x1

    .line 198
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 199
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    goto :goto_6

    .line 201
    :cond_6
    const/4 v0, 0x1

    .line 204
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 205
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    goto :goto_7

    .line 207
    :cond_7
    const/4 v0, 0x1

    .line 210
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 211
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    goto :goto_8

    .line 213
    :cond_8
    const/4 v0, 0x1

    .line 216
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 217
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    goto :goto_9

    .line 219
    :cond_9
    const/4 v0, 0x1

    .line 222
    :goto_9
    if-eqz v0, :cond_b

    if-nez p2, :cond_a

    goto :goto_a

    .line 223
    :cond_a
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Not enough elements for creating an Octet (8 needed)"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 226
    :cond_b
    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    if-nez p2, :cond_c

    goto :goto_b

    .line 227
    :cond_c
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Iterable must have exactly 8 available elements in order to create an Octet."

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 230
    :cond_d
    :goto_b
    new-instance v21, Lorg/javatuples/Octet;

    move-object/from16 v12, v21

    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-direct/range {v12 .. v20}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v21

    .line 148
    .end local v0    # "tooFewElements":Z
    .end local v1    # "element0":Ljava/lang/Object;, "TX;"
    .end local v2    # "element1":Ljava/lang/Object;, "TX;"
    .end local v3    # "element2":Ljava/lang/Object;, "TX;"
    .end local v4    # "element3":Ljava/lang/Object;, "TX;"
    .end local v5    # "element4":Ljava/lang/Object;, "TX;"
    .end local v6    # "element5":Ljava/lang/Object;, "TX;"
    .end local v7    # "element6":Ljava/lang/Object;, "TX;"
    .end local v8    # "element7":Ljava/lang/Object;, "TX;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    .end local v10    # "i":I
    :cond_e
    move/from16 v11, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Iterable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static with(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
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
            "H:",
            "Ljava/lang/Object;",
            ">(TA;TB;TC;TD;TE;TF;TG;TH;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 71
    .local p0, "value0":Ljava/lang/Object;, "TA;"
    .local p1, "value1":Ljava/lang/Object;, "TB;"
    .local p2, "value2":Ljava/lang/Object;, "TC;"
    .local p3, "value3":Ljava/lang/Object;, "TD;"
    .local p4, "value4":Ljava/lang/Object;, "TE;"
    .local p5, "value5":Ljava/lang/Object;, "TF;"
    .local p6, "value6":Ljava/lang/Object;, "TG;"
    .local p7, "value7":Ljava/lang/Object;, "TH;"
    new-instance v9, Lorg/javatuples/Octet;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TG;TH;TX0;TX1;>;"
        }
    .end annotation

    .line 521
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    invoke-virtual {p0, p1, p2}, Lorg/javatuples/Octet;->addAt8(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Pair;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TG;TH;TX0;TX1;>;"
        }
    .end annotation

    .line 526
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Octet;->addAt8(Lorg/javatuples/Pair;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TG;TH;TX0;>;"
        }
    .end annotation

    .line 509
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Octet;->addAt8(Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Unit;)Lorg/javatuples/Ennead;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TG;TH;TX0;>;"
        }
    .end annotation

    .line 514
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Octet;->addAt8(Lorg/javatuples/Unit;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Decade<",
            "TX0;TX1;TA;TB;TC;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 368
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v3, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt0(Lorg/javatuples/Pair;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TX0;TX1;TA;TB;TC;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 467
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Octet;->addAt0(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Ennead<",
            "TX0;TA;TB;TC;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 310
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v2, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v10

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt0(Lorg/javatuples/Unit;)Lorg/javatuples/Ennead;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Ennead<",
            "TX0;TA;TB;TC;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 425
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Octet;->addAt0(Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Decade<",
            "TA;TX0;TX1;TB;TC;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 374
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v11

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt1(Lorg/javatuples/Pair;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TX0;TX1;TB;TC;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 471
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Octet;->addAt1(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Ennead<",
            "TA;TX0;TB;TC;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 316
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v10

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt1(Lorg/javatuples/Unit;)Lorg/javatuples/Ennead;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Ennead<",
            "TA;TX0;TB;TC;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 429
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Octet;->addAt1(Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TX0;TX1;TC;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 380
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v11

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt2(Lorg/javatuples/Pair;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TX0;TX1;TC;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 475
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Octet;->addAt2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TX0;TC;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 322
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v10

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt2(Lorg/javatuples/Unit;)Lorg/javatuples/Ennead;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TX0;TC;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 433
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Octet;->addAt2(Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TX0;TX1;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 386
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v11

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt3(Lorg/javatuples/Pair;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TX0;TX1;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 479
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Octet;->addAt3(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TX0;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 328
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v10

    move-object v4, p1

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt3(Lorg/javatuples/Unit;)Lorg/javatuples/Ennead;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TX0;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 437
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Octet;->addAt3(Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TX0;TX1;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 392
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v11

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt4(Lorg/javatuples/Pair;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TX0;TX1;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 483
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Octet;->addAt4(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TX0;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 334
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v10

    move-object v5, p1

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt4(Lorg/javatuples/Unit;)Lorg/javatuples/Ennead;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TX0;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 441
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Octet;->addAt4(Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt5(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TX0;TX1;TF;TG;TH;>;"
        }
    .end annotation

    .line 398
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v11

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt5(Lorg/javatuples/Pair;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TX0;TX1;TF;TG;TH;>;"
        }
    .end annotation

    .line 487
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Octet;->addAt5(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt5(Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TX0;TF;TG;TH;>;"
        }
    .end annotation

    .line 340
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v10

    move-object v6, p1

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt5(Lorg/javatuples/Unit;)Lorg/javatuples/Ennead;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TX0;TF;TG;TH;>;"
        }
    .end annotation

    .line 445
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Octet;->addAt5(Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt6(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TX0;TX1;TG;TH;>;"
        }
    .end annotation

    .line 404
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v11

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt6(Lorg/javatuples/Pair;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TX0;TX1;TG;TH;>;"
        }
    .end annotation

    .line 491
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Octet;->addAt6(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt6(Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TX0;TG;TH;>;"
        }
    .end annotation

    .line 346
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v10

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt6(Lorg/javatuples/Unit;)Lorg/javatuples/Ennead;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TX0;TG;TH;>;"
        }
    .end annotation

    .line 449
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Octet;->addAt6(Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt7(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TG;TX0;TX1;TH;>;"
        }
    .end annotation

    .line 410
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v11

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt7(Lorg/javatuples/Pair;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TG;TX0;TX1;TH;>;"
        }
    .end annotation

    .line 495
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Octet;->addAt7(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt7(Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TG;TX0;TH;>;"
        }
    .end annotation

    .line 352
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v10

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt7(Lorg/javatuples/Unit;)Lorg/javatuples/Ennead;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TG;TX0;TH;>;"
        }
    .end annotation

    .line 453
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Octet;->addAt7(Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public addAt8(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            "X1:",
            "Ljava/lang/Object;",
            ">(TX0;TX1;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TG;TH;TX0;TX1;>;"
        }
    .end annotation

    .line 416
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    .local p2, "value1":Ljava/lang/Object;, "TX1;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v11

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt8(Lorg/javatuples/Pair;)Lorg/javatuples/Decade;
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
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TG;TH;TX0;TX1;>;"
        }
    .end annotation

    .line 499
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "tuple":Lorg/javatuples/Pair;, "Lorg/javatuples/Pair<TX0;TX1;>;"
    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/javatuples/Pair;->getValue1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/javatuples/Octet;->addAt8(Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt8(Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TG;TH;TX0;>;"
        }
    .end annotation

    .line 358
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v10

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public addAt8(Lorg/javatuples/Unit;)Lorg/javatuples/Ennead;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TG;TH;TX0;>;"
        }
    .end annotation

    .line 457
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Octet;->addAt8(Ljava/lang/Object;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 301
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    const/16 v0, 0x8

    return v0
.end method

.method public getValue0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 260
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    iget-object v0, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 265
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    iget-object v0, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 270
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    iget-object v0, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue3()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 275
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    iget-object v0, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue4()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 280
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    iget-object v0, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue5()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .line 285
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    iget-object v0, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue6()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TG;"
        }
    .end annotation

    .line 290
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    iget-object v0, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue7()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TH;"
        }
    .end annotation

    .line 295
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    iget-object v0, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    return-object v0
.end method

.method public removeFrom0()Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Septet<",
            "TB;TC;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 584
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public removeFrom1()Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Septet<",
            "TA;TC;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 589
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public removeFrom2()Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Septet<",
            "TA;TB;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 594
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public removeFrom3()Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 599
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public removeFrom4()Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TF;TG;TH;>;"
        }
    .end annotation

    .line 604
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public removeFrom5()Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TE;TG;TH;>;"
        }
    .end annotation

    .line 609
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public removeFrom6()Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TE;TF;TH;>;"
        }
    .end annotation

    .line 614
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public removeFrom7()Lorg/javatuples/Septet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Septet<",
            "TA;TB;TC;TD;TE;TF;TG;>;"
        }
    .end annotation

    .line 619
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    new-instance v8, Lorg/javatuples/Septet;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/javatuples/Septet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public setAt0(Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Octet<",
            "TX;TB;TC;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 535
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public setAt1(Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Octet<",
            "TA;TX;TC;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 540
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v9

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public setAt2(Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TX;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 545
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v9

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public setAt3(Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TX;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 550
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v9

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public setAt4(Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TX;TF;TG;TH;>;"
        }
    .end annotation

    .line 555
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v9

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public setAt5(Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TX;TG;TH;>;"
        }
    .end annotation

    .line 560
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v9

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public setAt6(Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TF;TX;TH;>;"
        }
    .end annotation

    .line 565
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Octet;->val7:Ljava/lang/Object;

    move-object v0, v9

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public setAt7(Ljava/lang/Object;)Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TF;TG;TX;>;"
        }
    .end annotation

    .line 570
    .local p0, "this":Lorg/javatuples/Octet;, "Lorg/javatuples/Octet<TA;TB;TC;TD;TE;TF;TG;TH;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Octet;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Octet;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Octet;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Octet;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Octet;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Octet;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Octet;->val6:Ljava/lang/Object;

    move-object v0, v9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method
