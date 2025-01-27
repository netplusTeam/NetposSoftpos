.class final Lio/netty/util/internal/logging/MessageFormatter;
.super Ljava/lang/Object;
.source "MessageFormatter.java"


# static fields
.field private static final DELIM_STR:Ljava/lang/String; = "{}"

.field private static final ESCAPE_CHAR:C = '\\'


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    return-void
.end method

.method static arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;
    .locals 16
    .param p0, "messagePattern"    # Ljava/lang/String;
    .param p1, "argArray"    # [Ljava/lang/Object;

    .line 172
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    array-length v3, v1

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 176
    :cond_0
    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 177
    .local v3, "lastArrIdx":I
    aget-object v5, v1, v3

    .line 178
    .local v5, "lastEntry":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    move-object v6, v2

    .line 180
    .local v6, "throwable":Ljava/lang/Throwable;
    :goto_0
    if-nez v0, :cond_2

    .line 181
    new-instance v4, Lio/netty/util/internal/logging/FormattingTuple;

    invoke-direct {v4, v2, v6}, Lio/netty/util/internal/logging/FormattingTuple;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4

    .line 184
    :cond_2
    const-string v7, "{}"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 185
    .local v8, "j":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 187
    new-instance v2, Lio/netty/util/internal/logging/FormattingTuple;

    invoke-direct {v2, v0, v6}, Lio/netty/util/internal/logging/FormattingTuple;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    .line 190
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x32

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 191
    .local v10, "sbuf":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 192
    .local v11, "i":I
    const/4 v12, 0x0

    .line 194
    .local v12, "L":I
    :goto_1
    const/4 v13, 0x0

    const/16 v14, 0x5c

    if-eqz v8, :cond_5

    add-int/lit8 v15, v8, -0x1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v14, :cond_4

    goto :goto_2

    :cond_4
    move v15, v13

    goto :goto_3

    :cond_5
    :goto_2
    move v15, v4

    .line 195
    .local v15, "notEscaped":Z
    :goto_3
    if-eqz v15, :cond_6

    .line 197
    invoke-virtual {v10, v0, v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 199
    :cond_6
    add-int/lit8 v4, v8, -0x1

    invoke-virtual {v10, v0, v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 201
    const/4 v4, 0x2

    if-lt v8, v4, :cond_7

    add-int/lit8 v4, v8, -0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v14, :cond_7

    const/4 v13, 0x1

    :cond_7
    move v15, v13

    .line 204
    :goto_4
    add-int/lit8 v11, v8, 0x2

    .line 205
    if-eqz v15, :cond_8

    .line 206
    aget-object v4, v1, v12

    invoke-static {v10, v4, v2}, Lio/netty/util/internal/logging/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Set;)V

    .line 207
    add-int/lit8 v12, v12, 0x1

    .line 208
    if-le v12, v3, :cond_9

    .line 209
    goto :goto_5

    .line 212
    :cond_8
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_9
    invoke-virtual {v0, v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 215
    .end local v15    # "notEscaped":Z
    if-ne v8, v9, :cond_b

    .line 218
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v10, v0, v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 219
    new-instance v4, Lio/netty/util/internal/logging/FormattingTuple;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-gt v12, v3, :cond_a

    move-object v2, v6

    :cond_a
    invoke-direct {v4, v7, v2}, Lio/netty/util/internal/logging/FormattingTuple;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4

    .line 215
    :cond_b
    const/4 v4, 0x1

    goto :goto_1

    .line 173
    .end local v3    # "lastArrIdx":I
    .end local v5    # "lastEntry":Ljava/lang/Object;
    .end local v6    # "throwable":Ljava/lang/Throwable;
    .end local v8    # "j":I
    .end local v10    # "sbuf":Ljava/lang/StringBuilder;
    .end local v11    # "i":I
    .end local v12    # "L":I
    :cond_c
    :goto_6
    new-instance v3, Lio/netty/util/internal/logging/FormattingTuple;

    invoke-direct {v3, v0, v2}, Lio/netty/util/internal/logging/FormattingTuple;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method

.method private static booleanArrayAppend(Ljava/lang/StringBuilder;[Z)V
    .locals 2
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "a"    # [Z

    .line 308
    array-length v0, p1

    if-nez v0, :cond_0

    .line 309
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x0

    aget-boolean v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 312
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 313
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static byteArrayAppend(Ljava/lang/StringBuilder;[B)V
    .locals 2
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "a"    # [B

    .line 319
    array-length v0, p1

    if-nez v0, :cond_0

    .line 320
    return-void

    .line 322
    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 324
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static charArrayAppend(Ljava/lang/StringBuilder;[C)V
    .locals 2
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "a"    # [C

    .line 330
    array-length v0, p1

    if-nez v0, :cond_0

    .line 331
    return-void

    .line 333
    :cond_0
    const/4 v0, 0x0

    aget-char v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 335
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static deeplyAppendParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 225
    .local p2, "seenSet":Ljava/util/Set;, "Ljava/util/Set<[Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 226
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    return-void

    .line 229
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 230
    .local v0, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_7

    .line 231
    const-class v1, Ljava/lang/Number;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 233
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_1

    .line 234
    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 235
    :cond_1
    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_5

    const-class v1, Ljava/lang/Short;

    if-eq v0, v1, :cond_5

    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 237
    :cond_2
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_3

    .line 238
    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 239
    :cond_3
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_4

    .line 240
    move-object v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 242
    :cond_4
    invoke-static {p0, p1}, Lio/netty/util/internal/logging/MessageFormatter;->safeObjectAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 236
    :cond_5
    :goto_0
    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 245
    :cond_6
    invoke-static {p0, p1}, Lio/netty/util/internal/logging/MessageFormatter;->safeObjectAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 250
    :cond_7
    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    const-class v1, [Z

    if-ne v0, v1, :cond_8

    .line 252
    move-object v1, p1

    check-cast v1, [Z

    check-cast v1, [Z

    invoke-static {p0, v1}, Lio/netty/util/internal/logging/MessageFormatter;->booleanArrayAppend(Ljava/lang/StringBuilder;[Z)V

    goto :goto_1

    .line 253
    :cond_8
    const-class v1, [B

    if-ne v0, v1, :cond_9

    .line 254
    move-object v1, p1

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {p0, v1}, Lio/netty/util/internal/logging/MessageFormatter;->byteArrayAppend(Ljava/lang/StringBuilder;[B)V

    goto :goto_1

    .line 255
    :cond_9
    const-class v1, [C

    if-ne v0, v1, :cond_a

    .line 256
    move-object v1, p1

    check-cast v1, [C

    check-cast v1, [C

    invoke-static {p0, v1}, Lio/netty/util/internal/logging/MessageFormatter;->charArrayAppend(Ljava/lang/StringBuilder;[C)V

    goto :goto_1

    .line 257
    :cond_a
    const-class v1, [S

    if-ne v0, v1, :cond_b

    .line 258
    move-object v1, p1

    check-cast v1, [S

    check-cast v1, [S

    invoke-static {p0, v1}, Lio/netty/util/internal/logging/MessageFormatter;->shortArrayAppend(Ljava/lang/StringBuilder;[S)V

    goto :goto_1

    .line 259
    :cond_b
    const-class v1, [I

    if-ne v0, v1, :cond_c

    .line 260
    move-object v1, p1

    check-cast v1, [I

    check-cast v1, [I

    invoke-static {p0, v1}, Lio/netty/util/internal/logging/MessageFormatter;->intArrayAppend(Ljava/lang/StringBuilder;[I)V

    goto :goto_1

    .line 261
    :cond_c
    const-class v1, [J

    if-ne v0, v1, :cond_d

    .line 262
    move-object v1, p1

    check-cast v1, [J

    check-cast v1, [J

    invoke-static {p0, v1}, Lio/netty/util/internal/logging/MessageFormatter;->longArrayAppend(Ljava/lang/StringBuilder;[J)V

    goto :goto_1

    .line 263
    :cond_d
    const-class v1, [F

    if-ne v0, v1, :cond_e

    .line 264
    move-object v1, p1

    check-cast v1, [F

    check-cast v1, [F

    invoke-static {p0, v1}, Lio/netty/util/internal/logging/MessageFormatter;->floatArrayAppend(Ljava/lang/StringBuilder;[F)V

    goto :goto_1

    .line 265
    :cond_e
    const-class v1, [D

    if-ne v0, v1, :cond_f

    .line 266
    move-object v1, p1

    check-cast v1, [D

    check-cast v1, [D

    invoke-static {p0, v1}, Lio/netty/util/internal/logging/MessageFormatter;->doubleArrayAppend(Ljava/lang/StringBuilder;[D)V

    goto :goto_1

    .line 268
    :cond_f
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {p0, v1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->objectArrayAppend(Ljava/lang/StringBuilder;[Ljava/lang/Object;Ljava/util/Set;)V

    .line 270
    :goto_1
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    :goto_2
    return-void
.end method

.method private static doubleArrayAppend(Ljava/lang/StringBuilder;[D)V
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "a"    # [D

    .line 385
    array-length v0, p1

    if-nez v0, :cond_0

    .line 386
    return-void

    .line 388
    :cond_0
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 389
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 390
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static floatArrayAppend(Ljava/lang/StringBuilder;[F)V
    .locals 2
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "a"    # [F

    .line 374
    array-length v0, p1

    if-nez v0, :cond_0

    .line 375
    return-void

    .line 377
    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 378
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 379
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static format(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;
    .locals 2
    .param p0, "messagePattern"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/Object;

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lio/netty/util/internal/logging/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    return-object v0
.end method

.method static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;
    .locals 2
    .param p0, "messagePattern"    # Ljava/lang/String;
    .param p1, "argA"    # Ljava/lang/Object;
    .param p2, "argB"    # Ljava/lang/Object;

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lio/netty/util/internal/logging/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    return-object v0
.end method

.method private static intArrayAppend(Ljava/lang/StringBuilder;[I)V
    .locals 2
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "a"    # [I

    .line 352
    array-length v0, p1

    if-nez v0, :cond_0

    .line 353
    return-void

    .line 355
    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 357
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static longArrayAppend(Ljava/lang/StringBuilder;[J)V
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "a"    # [J

    .line 363
    array-length v0, p1

    if-nez v0, :cond_0

    .line 364
    return-void

    .line 366
    :cond_0
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 367
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 368
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static objectArrayAppend(Ljava/lang/StringBuilder;[Ljava/lang/Object;Ljava/util/Set;)V
    .locals 2
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "a"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 288
    .local p2, "seenSet":Ljava/util/Set;, "Ljava/util/Set<[Ljava/lang/Object;>;"
    array-length v0, p1

    if-nez v0, :cond_0

    .line 289
    return-void

    .line 291
    :cond_0
    if-nez p2, :cond_1

    .line 292
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    move-object p2, v0

    .line 294
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {p0, v0, p2}, Lio/netty/util/internal/logging/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Set;)V

    .line 296
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 297
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    aget-object v1, p1, v0

    invoke-static {p0, v1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Set;)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 303
    :cond_3
    const-string v0, "..."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :goto_1
    return-void
.end method

.method private static safeObjectAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 4
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "o"    # Ljava/lang/Object;

    .line 276
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "oAsString":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    nop

    .end local v0    # "oAsString":Ljava/lang/String;
    goto :goto_0

    .line 278
    :catchall_0
    move-exception v0

    .line 279
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLF4J: Failed toString() invocation on an object of type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 281
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 283
    const-string v1, "[FAILED toString()]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static shortArrayAppend(Ljava/lang/StringBuilder;[S)V
    .locals 2
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "a"    # [S

    .line 341
    array-length v0, p1

    if-nez v0, :cond_0

    .line 342
    return-void

    .line 344
    :cond_0
    const/4 v0, 0x0

    aget-short v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 346
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
