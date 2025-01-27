.class public Lcom/sleepycat/json_simple/JsonObject;
.super Ljava/util/HashMap;
.source "JsonObject.java"

# interfaces
.implements Lcom/sleepycat/json_simple/Jsonable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/sleepycat/json_simple/Jsonable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 47
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getBigDecimal(Lcom/sleepycat/json_simple/JsonKey;)Ljava/math/BigDecimal;
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 63
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    .local v0, "returnable":Ljava/lang/Object;
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 68
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 69
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 71
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 73
    :cond_2
    :goto_0
    move-object v1, v0

    check-cast v1, Ljava/math/BigDecimal;

    return-object v1
.end method

.method public getBigDecimalOrDefault(Lcom/sleepycat/json_simple/JsonKey;)Ljava/math/BigDecimal;
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 90
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "returnable":Ljava/lang/Object;
    goto :goto_0

    .line 93
    .end local v0    # "returnable":Ljava/lang/Object;
    :cond_0
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 95
    .restart local v0    # "returnable":Ljava/lang/Object;
    :goto_0
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 97
    :cond_1
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 99
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 100
    :cond_2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 102
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 104
    :cond_3
    :goto_1
    move-object v1, v0

    check-cast v1, Ljava/math/BigDecimal;

    return-object v1
.end method

.method public getBoolean(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 114
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    .local v0, "returnable":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 116
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 118
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    return-object v1
.end method

.method public getBooleanOrDefault(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 129
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "returnable":Ljava/lang/Object;
    goto :goto_0

    .line 132
    .end local v0    # "returnable":Ljava/lang/Object;
    :cond_0
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 134
    .restart local v0    # "returnable":Ljava/lang/Object;
    :goto_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 135
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 137
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    return-object v1
.end method

.method public getByte(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/Byte;
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 150
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, "returnable":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 152
    const/4 v1, 0x0

    return-object v1

    .line 154
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 156
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 158
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method

.method public getByteOrDefault(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/Byte;
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 173
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "returnable":Ljava/lang/Object;
    goto :goto_0

    .line 176
    .end local v0    # "returnable":Ljava/lang/Object;
    :cond_0
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 178
    .restart local v0    # "returnable":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_1

    .line 179
    const/4 v1, 0x0

    return-object v1

    .line 181
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 183
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 185
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method

.method public getCollection(Lcom/sleepycat/json_simple/JsonKey;)Ljava/util/Collection;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection<",
            "*>;>(",
            "Lcom/sleepycat/json_simple/JsonKey;",
            ")TT;"
        }
    .end annotation

    .line 200
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public getCollectionOrDefault(Lcom/sleepycat/json_simple/JsonKey;)Ljava/util/Collection;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection<",
            "*>;>(",
            "Lcom/sleepycat/json_simple/JsonKey;",
            ")TT;"
        }
    .end annotation

    .line 216
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "returnable":Ljava/lang/Object;
    goto :goto_0

    .line 219
    .end local v0    # "returnable":Ljava/lang/Object;
    :cond_0
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 221
    .restart local v0    # "returnable":Ljava/lang/Object;
    :goto_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    return-object v1
.end method

.method public getDouble(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/Double;
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 234
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    .local v0, "returnable":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 236
    const/4 v1, 0x0

    return-object v1

    .line 238
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 240
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 242
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public getDoubleOrDefault(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/Double;
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 257
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "returnable":Ljava/lang/Object;
    goto :goto_0

    .line 260
    .end local v0    # "returnable":Ljava/lang/Object;
    :cond_0
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 262
    .restart local v0    # "returnable":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_1

    .line 263
    const/4 v1, 0x0

    return-object v1

    .line 265
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 267
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 269
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public getFloat(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/Float;
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 282
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 283
    .local v0, "returnable":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 284
    const/4 v1, 0x0

    return-object v1

    .line 286
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 288
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 290
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method public getFloatOrDefault(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/Float;
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 305
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "returnable":Ljava/lang/Object;
    goto :goto_0

    .line 308
    .end local v0    # "returnable":Ljava/lang/Object;
    :cond_0
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 310
    .restart local v0    # "returnable":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_1

    .line 311
    const/4 v1, 0x0

    return-object v1

    .line 313
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 315
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 317
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method public getInteger(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/Integer;
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 330
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 331
    .local v0, "returnable":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 332
    const/4 v1, 0x0

    return-object v1

    .line 334
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 336
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 338
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getIntegerOrDefault(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/Integer;
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 353
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "returnable":Ljava/lang/Object;
    goto :goto_0

    .line 356
    .end local v0    # "returnable":Ljava/lang/Object;
    :cond_0
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 358
    .restart local v0    # "returnable":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_1

    .line 359
    const/4 v1, 0x0

    return-object v1

    .line 361
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 363
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 365
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getLong(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 378
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 379
    .local v0, "returnable":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 380
    const/4 v1, 0x0

    return-object v1

    .line 382
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 384
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 386
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public getLongOrDefault(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/Long;
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 401
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "returnable":Ljava/lang/Object;
    goto :goto_0

    .line 404
    .end local v0    # "returnable":Ljava/lang/Object;
    :cond_0
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 406
    .restart local v0    # "returnable":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_1

    .line 407
    const/4 v1, 0x0

    return-object v1

    .line 409
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 411
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 413
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public getMap(Lcom/sleepycat/json_simple/JsonKey;)Ljava/util/Map;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map<",
            "**>;>(",
            "Lcom/sleepycat/json_simple/JsonKey;",
            ")TT;"
        }
    .end annotation

    .line 427
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getMapOrDefault(Lcom/sleepycat/json_simple/JsonKey;)Ljava/util/Map;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map<",
            "**>;>(",
            "Lcom/sleepycat/json_simple/JsonKey;",
            ")TT;"
        }
    .end annotation

    .line 442
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "returnable":Ljava/lang/Object;
    goto :goto_0

    .line 445
    .end local v0    # "returnable":Ljava/lang/Object;
    :cond_0
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 447
    .restart local v0    # "returnable":Ljava/lang/Object;
    :goto_0
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    return-object v1
.end method

.method public getShort(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/Short;
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 460
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 461
    .local v0, "returnable":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 462
    const/4 v1, 0x0

    return-object v1

    .line 464
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 466
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 468
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1
.end method

.method public getShortOrDefault(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/Short;
    .locals 3
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 483
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "returnable":Ljava/lang/Object;
    goto :goto_0

    .line 486
    .end local v0    # "returnable":Ljava/lang/Object;
    :cond_0
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 488
    .restart local v0    # "returnable":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_1

    .line 489
    const/4 v1, 0x0

    return-object v1

    .line 491
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 493
    new-instance v1, Ljava/math/BigDecimal;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 495
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1
.end method

.method public getString(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 505
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 506
    .local v0, "returnable":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 508
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 509
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    :cond_1
    :goto_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getStringOrDefault(Lcom/sleepycat/json_simple/JsonKey;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Lcom/sleepycat/json_simple/JsonKey;

    .line 522
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "returnable":Ljava/lang/Object;
    goto :goto_0

    .line 525
    .end local v0    # "returnable":Ljava/lang/Object;
    :cond_0
    invoke-interface {p1}, Lcom/sleepycat/json_simple/JsonKey;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 527
    .restart local v0    # "returnable":Ljava/lang/Object;
    :goto_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 528
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 529
    :cond_1
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 530
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    :cond_2
    :goto_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public varargs requireKeys([Lcom/sleepycat/json_simple/JsonKey;)V
    .locals 6
    .param p1, "keys"    # [Lcom/sleepycat/json_simple/JsonKey;

    .line 541
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 542
    .local v0, "missing":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/json_simple/JsonKey;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 543
    .local v3, "k":Lcom/sleepycat/json_simple/JsonKey;
    invoke-interface {v3}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sleepycat/json_simple/JsonObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 544
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 542
    .end local v3    # "k":Lcom/sleepycat/json_simple/JsonKey;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 547
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/json_simple/JsonKey;

    .line 551
    .restart local v3    # "k":Lcom/sleepycat/json_simple/JsonKey;
    invoke-interface {v3}, Lcom/sleepycat/json_simple/JsonKey;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .end local v3    # "k":Lcom/sleepycat/json_simple/JsonKey;
    goto :goto_1

    .line 553
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 554
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    const-string v2, "s"

    goto :goto_2

    :cond_3
    const-string v2, ""

    .line 555
    .local v2, "s":Ljava/lang/String;
    :goto_2
    new-instance v3, Ljava/util/NoSuchElementException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A JsonObject is missing required key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 557
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "s":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .line 563
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 565
    .local v0, "writable":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonObject;->toJson(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    goto :goto_0

    .line 566
    :catch_0
    move-exception v1

    .line 569
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Ljava/io/Writer;)V
    .locals 4
    .param p1, "writable"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    const/4 v0, 0x1

    .line 578
    .local v0, "isFirstEntry":Z
    invoke-virtual {p0}, Lcom/sleepycat/json_simple/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 579
    .local v1, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/16 v2, 0x7b

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 580
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    if-eqz v0, :cond_0

    .line 582
    const/4 v0, 0x0

    goto :goto_1

    .line 584
    :cond_0
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 586
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 587
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 588
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 589
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 590
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 591
    :cond_1
    const/16 v2, 0x7d

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 592
    return-void
.end method
