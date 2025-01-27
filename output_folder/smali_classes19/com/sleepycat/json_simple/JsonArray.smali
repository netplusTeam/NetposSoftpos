.class public Lcom/sleepycat/json_simple/JsonArray;
.super Ljava/util/ArrayList;
.source "JsonArray.java"

# interfaces
.implements Lcom/sleepycat/json_simple/Jsonable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/sleepycat/json_simple/Jsonable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 43
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    return-void
.end method


# virtual methods
.method public asCollection(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 56
    .local p1, "destination":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-virtual {p0}, Lcom/sleepycat/json_simple/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, "o":Ljava/lang/Object;
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v1    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 3
    .param p1, "index"    # I

    .line 71
    invoke-virtual {p0, p1}, Lcom/sleepycat/json_simple/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, "returnable":Ljava/lang/Object;
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 76
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 77
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 79
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 81
    :cond_2
    :goto_0
    move-object v1, v0

    check-cast v1, Ljava/math/BigDecimal;

    return-object v1
.end method

.method public getBoolean(I)Ljava/lang/Boolean;
    .locals 2
    .param p1, "index"    # I

    .line 90
    invoke-virtual {p0, p1}, Lcom/sleepycat/json_simple/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, "returnable":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 92
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 94
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    return-object v1
.end method

.method public getByte(I)Ljava/lang/Byte;
    .locals 3
    .param p1, "index"    # I

    .line 106
    invoke-virtual {p0, p1}, Lcom/sleepycat/json_simple/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, "returnable":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 108
    const/4 v1, 0x0

    return-object v1

    .line 110
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 112
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 114
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method

.method public getCollection(I)Ljava/util/Collection;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection<",
            "*>;>(I)TT;"
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1}, Lcom/sleepycat/json_simple/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public getDouble(I)Ljava/lang/Double;
    .locals 3
    .param p1, "index"    # I

    .line 141
    invoke-virtual {p0, p1}, Lcom/sleepycat/json_simple/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 142
    .local v0, "returnable":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 143
    const/4 v1, 0x0

    return-object v1

    .line 145
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 147
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 149
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public getFloat(I)Ljava/lang/Float;
    .locals 3
    .param p1, "index"    # I

    .line 161
    invoke-virtual {p0, p1}, Lcom/sleepycat/json_simple/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 162
    .local v0, "returnable":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 163
    const/4 v1, 0x0

    return-object v1

    .line 165
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 167
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 169
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method public getInteger(I)Ljava/lang/Integer;
    .locals 3
    .param p1, "index"    # I

    .line 181
    invoke-virtual {p0, p1}, Lcom/sleepycat/json_simple/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 182
    .local v0, "returnable":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 183
    const/4 v1, 0x0

    return-object v1

    .line 185
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 187
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 189
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getLong(I)Ljava/lang/Long;
    .locals 3
    .param p1, "index"    # I

    .line 201
    invoke-virtual {p0, p1}, Lcom/sleepycat/json_simple/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 202
    .local v0, "returnable":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 203
    const/4 v1, 0x0

    return-object v1

    .line 205
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 207
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 209
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public getMap(I)Ljava/util/Map;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map<",
            "**>;>(I)TT;"
        }
    .end annotation

    .line 223
    invoke-virtual {p0, p1}, Lcom/sleepycat/json_simple/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getShort(I)Ljava/lang/Short;
    .locals 3
    .param p1, "index"    # I

    .line 235
    invoke-virtual {p0, p1}, Lcom/sleepycat/json_simple/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 236
    .local v0, "returnable":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 237
    const/4 v1, 0x0

    return-object v1

    .line 239
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 241
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 243
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 252
    invoke-virtual {p0, p1}, Lcom/sleepycat/json_simple/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 253
    .local v0, "returnable":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 256
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_1
    :goto_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .line 265
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 267
    .local v0, "writable":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonArray;->toJson(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    goto :goto_0

    .line 268
    :catch_0
    move-exception v1

    .line 271
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Ljava/io/Writer;)V
    .locals 3
    .param p1, "writable"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    const/4 v0, 0x1

    .line 279
    .local v0, "isFirstElement":Z
    invoke-virtual {p0}, Lcom/sleepycat/json_simple/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 280
    .local v1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 281
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x0

    goto :goto_1

    .line 285
    :cond_0
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 287
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 290
    return-void
.end method
