.class final Ltimber/log/Timber$1;
.super Ltimber/log/Timber$Tree;
.source "Timber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltimber/log/Timber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 218
    invoke-direct {p0}, Ltimber/log/Timber$Tree;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 241
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 242
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 243
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 255
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 256
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 257
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/Throwable;)V

    .line 256
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 248
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 249
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 250
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 304
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 305
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 306
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 318
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 319
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 320
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 319
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 311
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 312
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 313
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    :cond_0
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 262
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 263
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 264
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    :cond_0
    return-void
.end method

.method public i(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 276
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 277
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 278
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->i(Ljava/lang/Throwable;)V

    .line 277
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    :cond_0
    return-void
.end method

.method public varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 269
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 270
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 271
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :cond_0
    return-void
.end method

.method protected log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    .line 367
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Missing override for log method."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 346
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 347
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 348
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 347
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    :cond_0
    return-void
.end method

.method public log(ILjava/lang/Throwable;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 360
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 361
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 362
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->log(ILjava/lang/Throwable;)V

    .line 361
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    :cond_0
    return-void
.end method

.method public varargs log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 353
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 354
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 355
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1, p2, p3, p4}, Ltimber/log/Timber$Tree;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    :cond_0
    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 220
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 221
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 222
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    :cond_0
    return-void
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 234
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 235
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 236
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->v(Ljava/lang/Throwable;)V

    .line 235
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_0
    return-void
.end method

.method public varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 227
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 228
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 229
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 283
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 284
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 285
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 297
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 298
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 299
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->w(Ljava/lang/Throwable;)V

    .line 298
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    :cond_0
    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 290
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 291
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 292
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    :cond_0
    return-void
.end method

.method public varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 325
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 326
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 327
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    :cond_0
    return-void
.end method

.method public wtf(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 339
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 340
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 341
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->wtf(Ljava/lang/Throwable;)V

    .line 340
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    :cond_0
    return-void
.end method

.method public varargs wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 332
    sget-object v0, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 333
    .local v0, "forest":[Ltimber/log/Timber$Tree;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 334
    .local v3, "tree":Ltimber/log/Timber$Tree;
    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    .end local v3    # "tree":Ltimber/log/Timber$Tree;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    :cond_0
    return-void
.end method
