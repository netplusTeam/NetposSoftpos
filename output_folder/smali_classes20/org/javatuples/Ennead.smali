.class public final Lorg/javatuples/Ennead;
.super Lorg/javatuples/Tuple;
.source "Ennead.java"

# interfaces
.implements Lorg/javatuples/valueintf/IValue0;
.implements Lorg/javatuples/valueintf/IValue1;
.implements Lorg/javatuples/valueintf/IValue2;
.implements Lorg/javatuples/valueintf/IValue3;
.implements Lorg/javatuples/valueintf/IValue4;
.implements Lorg/javatuples/valueintf/IValue5;
.implements Lorg/javatuples/valueintf/IValue6;
.implements Lorg/javatuples/valueintf/IValue7;
.implements Lorg/javatuples/valueintf/IValue8;


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
        "I:",
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
        "TH;>;",
        "Lorg/javatuples/valueintf/IValue8<",
        "TI;>;"
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x9

.field private static final serialVersionUID:J = -0x425d944219e82356L


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

.field private final val8:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;TG;TH;TI;)V"
        }
    .end annotation

    .line 257
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value0":Ljava/lang/Object;, "TA;"
    .local p2, "value1":Ljava/lang/Object;, "TB;"
    .local p3, "value2":Ljava/lang/Object;, "TC;"
    .local p4, "value3":Ljava/lang/Object;, "TD;"
    .local p5, "value4":Ljava/lang/Object;, "TE;"
    .local p6, "value5":Ljava/lang/Object;, "TF;"
    .local p7, "value6":Ljava/lang/Object;, "TG;"
    .local p8, "value7":Ljava/lang/Object;, "TH;"
    .local p9, "value8":Ljava/lang/Object;, "TI;"
    const/16 v0, 0x9

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

    const/16 v1, 0x8

    aput-object p9, v0, v1

    invoke-direct {p0, v0}, Lorg/javatuples/Tuple;-><init>([Ljava/lang/Object;)V

    .line 258
    iput-object p1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    .line 259
    iput-object p2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    .line 260
    iput-object p3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    .line 261
    iput-object p4, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    .line 262
    iput-object p5, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    .line 263
    iput-object p6, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    .line 264
    iput-object p7, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    .line 265
    iput-object p8, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    .line 266
    iput-object p9, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    .line 267
    return-void
.end method

.method public static fromArray([Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">([TX;)",
            "Lorg/javatuples/Ennead<",
            "TX;TX;TX;TX;TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 88
    .local p0, "array":[Ljava/lang/Object;, "[TX;"
    if-eqz p0, :cond_1

    .line 91
    array-length v0, p0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 94
    new-instance v0, Lorg/javatuples/Ennead;

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

    const/16 v1, 0x8

    aget-object v11, p0, v1

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array must have exactly 9 elements in order to create an Ennead. Size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromCollection(Ljava/util/Collection;)Lorg/javatuples/Ennead;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TX;>;)",
            "Lorg/javatuples/Ennead<",
            "TX;TX;TX;TX;TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 110
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TX;>;"
    invoke-static {p0}, Lorg/javatuples/Ennead;->fromIterable(Ljava/lang/Iterable;)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;)Lorg/javatuples/Ennead;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;)",
            "Lorg/javatuples/Ennead<",
            "TX;TX;TX;TX;TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 125
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/javatuples/Ennead;->fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;I)Lorg/javatuples/Ennead;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;I)",
            "Lorg/javatuples/Ennead<",
            "TX;TX;TX;TX;TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 141
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/javatuples/Ennead;->fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Ennead;

    move-result-object v0

    return-object v0
.end method

.method private static fromIterable(Ljava/lang/Iterable;IZ)Lorg/javatuples/Ennead;
    .locals 24
    .param p1, "index"    # I
    .param p2, "exactSize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TX;>;IZ)",
            "Lorg/javatuples/Ennead<",
            "TX;TX;TX;TX;TX;TX;TX;TX;TX;>;"
        }
    .end annotation

    .line 149
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TX;>;"
    if-eqz p0, :cond_f

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "tooFewElements":Z
    const/4 v1, 0x0

    .line 156
    .local v1, "element0":Ljava/lang/Object;, "TX;"
    const/4 v2, 0x0

    .line 157
    .local v2, "element1":Ljava/lang/Object;, "TX;"
    const/4 v3, 0x0

    .line 158
    .local v3, "element2":Ljava/lang/Object;, "TX;"
    const/4 v4, 0x0

    .line 159
    .local v4, "element3":Ljava/lang/Object;, "TX;"
    const/4 v5, 0x0

    .line 160
    .local v5, "element4":Ljava/lang/Object;, "TX;"
    const/4 v6, 0x0

    .line 161
    .local v6, "element5":Ljava/lang/Object;, "TX;"
    const/4 v7, 0x0

    .line 162
    .local v7, "element6":Ljava/lang/Object;, "TX;"
    const/4 v8, 0x0

    .line 163
    .local v8, "element7":Ljava/lang/Object;, "TX;"
    const/4 v9, 0x0

    .line 165
    .local v9, "element8":Ljava/lang/Object;, "TX;"
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 167
    .local v10, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    const/4 v11, 0x0

    .line 168
    .local v11, "i":I
    :goto_0
    move/from16 v12, p1

    if-ge v11, v12, :cond_1

    .line 169
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 170
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 172
    :cond_0
    const/4 v0, 0x1

    .line 174
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 177
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 178
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 180
    :cond_2
    const/4 v0, 0x1

    .line 183
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 184
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 186
    :cond_3
    const/4 v0, 0x1

    .line 189
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 190
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    .line 192
    :cond_4
    const/4 v0, 0x1

    .line 195
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 196
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    goto :goto_5

    .line 198
    :cond_5
    const/4 v0, 0x1

    .line 201
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 202
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    goto :goto_6

    .line 204
    :cond_6
    const/4 v0, 0x1

    .line 207
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 208
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    goto :goto_7

    .line 210
    :cond_7
    const/4 v0, 0x1

    .line 213
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 214
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    goto :goto_8

    .line 216
    :cond_8
    const/4 v0, 0x1

    .line 219
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 220
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    goto :goto_9

    .line 222
    :cond_9
    const/4 v0, 0x1

    .line 225
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 226
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    goto :goto_a

    .line 228
    :cond_a
    const/4 v0, 0x1

    .line 231
    :goto_a
    if-eqz v0, :cond_c

    if-nez p2, :cond_b

    goto :goto_b

    .line 232
    :cond_b
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Not enough elements for creating an Ennead (9 needed)"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 235
    :cond_c
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    if-nez p2, :cond_d

    goto :goto_c

    .line 236
    :cond_d
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Iterable must have exactly 9 available elements in order to create an Ennead."

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 239
    :cond_e
    :goto_c
    new-instance v23, Lorg/javatuples/Ennead;

    move-object/from16 v13, v23

    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    invoke-direct/range {v13 .. v22}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v23

    .line 150
    .end local v0    # "tooFewElements":Z
    .end local v1    # "element0":Ljava/lang/Object;, "TX;"
    .end local v2    # "element1":Ljava/lang/Object;, "TX;"
    .end local v3    # "element2":Ljava/lang/Object;, "TX;"
    .end local v4    # "element3":Ljava/lang/Object;, "TX;"
    .end local v5    # "element4":Ljava/lang/Object;, "TX;"
    .end local v6    # "element5":Ljava/lang/Object;, "TX;"
    .end local v7    # "element6":Ljava/lang/Object;, "TX;"
    .end local v8    # "element7":Ljava/lang/Object;, "TX;"
    .end local v9    # "element8":Ljava/lang/Object;, "TX;"
    .end local v10    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TX;>;"
    .end local v11    # "i":I
    :cond_f
    move/from16 v12, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Iterable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static with(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
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
            "I:",
            "Ljava/lang/Object;",
            ">(TA;TB;TC;TD;TE;TF;TG;TH;TI;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 74
    .local p0, "value0":Ljava/lang/Object;, "TA;"
    .local p1, "value1":Ljava/lang/Object;, "TB;"
    .local p2, "value2":Ljava/lang/Object;, "TC;"
    .local p3, "value3":Ljava/lang/Object;, "TD;"
    .local p4, "value4":Ljava/lang/Object;, "TE;"
    .local p5, "value5":Ljava/lang/Object;, "TF;"
    .local p6, "value6":Ljava/lang/Object;, "TG;"
    .local p7, "value7":Ljava/lang/Object;, "TH;"
    .local p8, "value8":Ljava/lang/Object;, "TI;"
    new-instance v10, Lorg/javatuples/Ennead;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TG;TH;TI;TX0;>;"
        }
    .end annotation

    .line 429
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Ennead;->addAt9(Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/javatuples/Unit;)Lorg/javatuples/Decade;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TG;TH;TI;TX0;>;"
        }
    .end annotation

    .line 434
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p0, p1}, Lorg/javatuples/Ennead;->addAt9(Lorg/javatuples/Unit;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt0(Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Decade<",
            "TX0;TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 324
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v11

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt0(Lorg/javatuples/Unit;)Lorg/javatuples/Decade;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Decade<",
            "TX0;TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 386
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Ennead;->addAt0(Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt1(Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Decade<",
            "TA;TX0;TB;TC;TD;TE;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 330
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v11

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt1(Lorg/javatuples/Unit;)Lorg/javatuples/Decade;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Decade<",
            "TA;TX0;TB;TC;TD;TE;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 390
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Ennead;->addAt1(Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt2(Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TX0;TC;TD;TE;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 336
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v11

    move-object v3, p1

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt2(Lorg/javatuples/Unit;)Lorg/javatuples/Decade;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TX0;TC;TD;TE;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 394
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Ennead;->addAt2(Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt3(Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TX0;TD;TE;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 342
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v11

    move-object v4, p1

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt3(Lorg/javatuples/Unit;)Lorg/javatuples/Decade;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TX0;TD;TE;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 398
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Ennead;->addAt3(Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt4(Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TX0;TE;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 348
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v11

    move-object v5, p1

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt4(Lorg/javatuples/Unit;)Lorg/javatuples/Decade;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TX0;TE;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 402
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Ennead;->addAt4(Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt5(Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TX0;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 354
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v11

    move-object v6, p1

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt5(Lorg/javatuples/Unit;)Lorg/javatuples/Decade;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TX0;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 406
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Ennead;->addAt5(Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt6(Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TX0;TG;TH;TI;>;"
        }
    .end annotation

    .line 360
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v11

    move-object v7, p1

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt6(Lorg/javatuples/Unit;)Lorg/javatuples/Decade;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TX0;TG;TH;TI;>;"
        }
    .end annotation

    .line 410
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Ennead;->addAt6(Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt7(Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TG;TX0;TH;TI;>;"
        }
    .end annotation

    .line 366
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v11

    move-object v8, p1

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt7(Lorg/javatuples/Unit;)Lorg/javatuples/Decade;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TG;TX0;TH;TI;>;"
        }
    .end annotation

    .line 414
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Ennead;->addAt7(Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt8(Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TG;TH;TX0;TI;>;"
        }
    .end annotation

    .line 372
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v10, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v11

    move-object v9, p1

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt8(Lorg/javatuples/Unit;)Lorg/javatuples/Decade;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TG;TH;TX0;TI;>;"
        }
    .end annotation

    .line 418
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Ennead;->addAt8(Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public addAt9(Ljava/lang/Object;)Lorg/javatuples/Decade;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(TX0;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TG;TH;TI;TX0;>;"
        }
    .end annotation

    .line 378
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value0":Ljava/lang/Object;, "TX0;"
    new-instance v11, Lorg/javatuples/Decade;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v11

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lorg/javatuples/Decade;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11
.end method

.method public addAt9(Lorg/javatuples/Unit;)Lorg/javatuples/Decade;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X0:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/javatuples/Unit<",
            "TX0;>;)",
            "Lorg/javatuples/Decade<",
            "TA;TB;TC;TD;TE;TF;TG;TH;TI;TX0;>;"
        }
    .end annotation

    .line 422
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "tuple":Lorg/javatuples/Unit;, "Lorg/javatuples/Unit<TX0;>;"
    invoke-virtual {p1}, Lorg/javatuples/Unit;->getValue0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javatuples/Ennead;->addAt9(Ljava/lang/Object;)Lorg/javatuples/Decade;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 317
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    const/16 v0, 0x9

    return v0
.end method

.method public getValue0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 271
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    iget-object v0, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 276
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    iget-object v0, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 281
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    iget-object v0, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue3()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 286
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    iget-object v0, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue4()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 291
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    iget-object v0, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue5()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .line 296
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    iget-object v0, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue6()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TG;"
        }
    .end annotation

    .line 301
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    iget-object v0, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue7()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TH;"
        }
    .end annotation

    .line 306
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    iget-object v0, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue8()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .line 311
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    iget-object v0, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    return-object v0
.end method

.method public removeFrom0()Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Octet<",
            "TB;TC;TD;TE;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 493
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public removeFrom1()Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Octet<",
            "TA;TC;TD;TE;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 498
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public removeFrom2()Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Octet<",
            "TA;TB;TD;TE;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 503
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public removeFrom3()Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TE;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 508
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public removeFrom4()Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 513
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public removeFrom5()Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TG;TH;TI;>;"
        }
    .end annotation

    .line 518
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public removeFrom6()Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TF;TH;TI;>;"
        }
    .end annotation

    .line 523
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public removeFrom7()Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TF;TG;TI;>;"
        }
    .end annotation

    .line 528
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public removeFrom8()Lorg/javatuples/Octet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/javatuples/Octet<",
            "TA;TB;TC;TD;TE;TF;TG;TH;>;"
        }
    .end annotation

    .line 533
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    new-instance v9, Lorg/javatuples/Octet;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/javatuples/Octet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public setAt0(Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Ennead<",
            "TX;TB;TC;TD;TE;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 442
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v10

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public setAt1(Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Ennead<",
            "TA;TX;TC;TD;TE;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 447
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v10

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public setAt2(Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TX;TD;TE;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 452
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v10

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public setAt3(Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TX;TE;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 457
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v10

    move-object v4, p1

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public setAt4(Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TX;TF;TG;TH;TI;>;"
        }
    .end annotation

    .line 462
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v10

    move-object v5, p1

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public setAt5(Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TX;TG;TH;TI;>;"
        }
    .end annotation

    .line 467
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v10

    move-object v6, p1

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public setAt6(Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TX;TH;TI;>;"
        }
    .end annotation

    .line 472
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v10

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public setAt7(Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TG;TX;TI;>;"
        }
    .end annotation

    .line 477
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v9, p0, Lorg/javatuples/Ennead;->val8:Ljava/lang/Object;

    move-object v0, v10

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public setAt8(Ljava/lang/Object;)Lorg/javatuples/Ennead;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/javatuples/Ennead<",
            "TA;TB;TC;TD;TE;TF;TG;TH;TX;>;"
        }
    .end annotation

    .line 482
    .local p0, "this":Lorg/javatuples/Ennead;, "Lorg/javatuples/Ennead<TA;TB;TC;TD;TE;TF;TG;TH;TI;>;"
    .local p1, "value":Ljava/lang/Object;, "TX;"
    new-instance v10, Lorg/javatuples/Ennead;

    iget-object v1, p0, Lorg/javatuples/Ennead;->val0:Ljava/lang/Object;

    iget-object v2, p0, Lorg/javatuples/Ennead;->val1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/javatuples/Ennead;->val2:Ljava/lang/Object;

    iget-object v4, p0, Lorg/javatuples/Ennead;->val3:Ljava/lang/Object;

    iget-object v5, p0, Lorg/javatuples/Ennead;->val4:Ljava/lang/Object;

    iget-object v6, p0, Lorg/javatuples/Ennead;->val5:Ljava/lang/Object;

    iget-object v7, p0, Lorg/javatuples/Ennead;->val6:Ljava/lang/Object;

    iget-object v8, p0, Lorg/javatuples/Ennead;->val7:Ljava/lang/Object;

    move-object v0, v10

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lorg/javatuples/Ennead;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method
