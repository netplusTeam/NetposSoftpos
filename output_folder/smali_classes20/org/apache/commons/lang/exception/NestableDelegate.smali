.class public Lorg/apache/commons/lang/exception/NestableDelegate;
.super Ljava/lang/Object;
.source "NestableDelegate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final transient MUST_BE_THROWABLE:Ljava/lang/String; = "The Nestable implementation passed to the NestableDelegate(Nestable) constructor must extend java.lang.Throwable"

.field static synthetic class$org$apache$commons$lang$exception$Nestable:Ljava/lang/Class; = null

.field public static matchSubclasses:Z = false

.field private static final serialVersionUID:J = 0x1L

.field public static topDown:Z

.field public static trimStackFrames:Z


# instance fields
.field private nestable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/commons/lang/exception/NestableDelegate;->topDown:Z

    .line 88
    sput-boolean v0, Lorg/apache/commons/lang/exception/NestableDelegate;->trimStackFrames:Z

    .line 98
    sput-boolean v0, Lorg/apache/commons/lang/exception/NestableDelegate;->matchSubclasses:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang/exception/Nestable;)V
    .locals 2
    .param p1, "nestable"    # Lorg/apache/commons/lang/exception/Nestable;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableDelegate;->nestable:Ljava/lang/Throwable;

    .line 109
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 110
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableDelegate;->nestable:Ljava/lang/Throwable;

    .line 114
    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Nestable implementation passed to the NestableDelegate(Nestable) constructor must extend java.lang.Throwable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 131
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getMessage(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 130
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/exception/NestableDelegate;->getThrowable(I)Ljava/lang/Throwable;

    move-result-object v0

    .line 131
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/apache/commons/lang/exception/NestableDelegate;->class$org$apache$commons$lang$exception$Nestable:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.commons.lang.exception.Nestable"

    invoke-static {v1}, Lorg/apache/commons/lang/exception/NestableDelegate;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/exception/NestableDelegate;->class$org$apache$commons$lang$exception$Nestable:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    move-object v1, v0

    check-cast v1, Lorg/apache/commons/lang/exception/Nestable;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/apache/commons/lang/exception/Nestable;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 134
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "baseMsg"    # Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableDelegate;->nestable:Ljava/lang/Throwable;

    invoke-static {v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 149
    .local v0, "nestedCause":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "causeMsg":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_1

    .line 153
    :cond_1
    if-nez p1, :cond_2

    .line 154
    return-object v1

    .line 156
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 151
    :cond_3
    :goto_1
    return-object p1
.end method

.method public getMessages()[Ljava/lang/String;
    .locals 5

    .line 169
    invoke-virtual {p0}, Lorg/apache/commons/lang/exception/NestableDelegate;->getThrowables()[Ljava/lang/Throwable;

    move-result-object v0

    .line 170
    .local v0, "throwables":[Ljava/lang/Throwable;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 171
    .local v1, "msgs":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 172
    sget-object v3, Lorg/apache/commons/lang/exception/NestableDelegate;->class$org$apache$commons$lang$exception$Nestable:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "org.apache.commons.lang.exception.Nestable"

    invoke-static {v3}, Lorg/apache/commons/lang/exception/NestableDelegate;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/exception/NestableDelegate;->class$org$apache$commons$lang$exception$Nestable:Ljava/lang/Class;

    :cond_0
    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, v0, v2

    check-cast v3, Lorg/apache/commons/lang/exception/Nestable;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/apache/commons/lang/exception/Nestable;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v1, v2

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method protected getStackFrames(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 365
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 366
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 369
    .local v1, "pw":Ljava/io/PrintWriter;
    instance-of v2, p1, Lorg/apache/commons/lang/exception/Nestable;

    if-eqz v2, :cond_0

    .line 370
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/lang/exception/Nestable;

    invoke-interface {v2, v1}, Lorg/apache/commons/lang/exception/Nestable;->printPartialStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 374
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getStackFrames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getThrowable(I)Ljava/lang/Throwable;
    .locals 2
    .param p1, "index"    # I

    .line 193
    if-nez p1, :cond_0

    .line 194
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableDelegate;->nestable:Ljava/lang/Throwable;

    return-object v0

    .line 196
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/lang/exception/NestableDelegate;->getThrowables()[Ljava/lang/Throwable;

    move-result-object v0

    .line 197
    .local v0, "throwables":[Ljava/lang/Throwable;
    aget-object v1, v0, p1

    return-object v1
.end method

.method public getThrowableCount()I
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableDelegate;->nestable:Ljava/lang/Throwable;

    invoke-static {v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getThrowableCount(Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public getThrowables()[Ljava/lang/Throwable;
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableDelegate;->nestable:Ljava/lang/Throwable;

    invoke-static {v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public indexOfThrowable(Ljava/lang/Class;I)I
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "fromIndex"    # I

    .line 248
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 249
    return v0

    .line 251
    :cond_0
    const-string v1, "The start index was out of bounds: "

    if-ltz p2, :cond_7

    .line 254
    iget-object v2, p0, Lorg/apache/commons/lang/exception/NestableDelegate;->nestable:Ljava/lang/Throwable;

    invoke-static {v2}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v2

    .line 255
    .local v2, "throwables":[Ljava/lang/Throwable;
    array-length v3, v2

    if-ge p2, v3, :cond_6

    .line 259
    sget-boolean v1, Lorg/apache/commons/lang/exception/NestableDelegate;->matchSubclasses:Z

    if-eqz v1, :cond_3

    .line 260
    move v1, p2

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 261
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    return v1

    .line 260
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    goto :goto_2

    .line 266
    :cond_3
    move v1, p2

    .restart local v1    # "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 267
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 268
    return v1

    .line 266
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 272
    .end local v1    # "i":I
    :cond_5
    :goto_2
    return v0

    .line 256
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " >= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    .end local v2    # "throwables":[Ljava/lang/Throwable;
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public printStackTrace()V
    .locals 1

    .line 280
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->printStackTrace(Ljava/io/PrintStream;)V

    .line 281
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 291
    monitor-enter p1

    .line 292
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 293
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 295
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 296
    .end local v0    # "pw":Ljava/io/PrintWriter;
    monitor-exit p1

    .line 297
    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 311
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableDelegate;->nestable:Ljava/lang/Throwable;

    .line 313
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lorg/apache/commons/lang/exception/ExceptionUtils;->isThrowableNested()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    instance-of v1, v0, Lorg/apache/commons/lang/exception/Nestable;

    if-eqz v1, :cond_0

    .line 315
    move-object v1, v0

    check-cast v1, Lorg/apache/commons/lang/exception/Nestable;

    invoke-interface {v1, p1}, Lorg/apache/commons/lang/exception/Nestable;->printPartialStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 319
    :goto_0
    return-void

    .line 323
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v1, "stacks":Ljava/util/List;
    :goto_1
    if-eqz v0, :cond_2

    .line 325
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->getStackFrames(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "st":[Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-static {v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 328
    .end local v2    # "st":[Ljava/lang/String;
    goto :goto_1

    .line 331
    :cond_2
    const-string v2, "Caused by: "

    .line 332
    .local v2, "separatorLine":Ljava/lang/String;
    sget-boolean v3, Lorg/apache/commons/lang/exception/NestableDelegate;->topDown:Z

    if-nez v3, :cond_3

    .line 333
    const-string v2, "Rethrown as: "

    .line 334
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 338
    :cond_3
    sget-boolean v3, Lorg/apache/commons/lang/exception/NestableDelegate;->trimStackFrames:Z

    if-eqz v3, :cond_4

    .line 339
    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/exception/NestableDelegate;->trimStackFrames(Ljava/util/List;)V

    .line 342
    :cond_4
    monitor-enter p1

    .line 343
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 344
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    .line 345
    .local v4, "st":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v4

    .local v6, "len":I
    :goto_3
    if-ge v5, v6, :cond_5

    .line 346
    aget-object v7, v4, v5

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 348
    .end local v5    # "i":I
    .end local v6    # "len":I
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 349
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 351
    .end local v4    # "st":[Ljava/lang/String;
    :cond_6
    goto :goto_2

    .line 352
    .end local v3    # "iter":Ljava/util/Iterator;
    :cond_7
    monitor-exit p1

    .line 353
    return-void

    .line 352
    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected trimStackFrames(Ljava/util/List;)V
    .locals 9
    .param p1, "stacks"    # Ljava/util/List;

    .line 386
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 387
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    .line 388
    .local v2, "curr":[Ljava/lang/String;
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    .line 390
    .local v3, "next":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 391
    .local v4, "currList":Ljava/util/List;
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 392
    .local v5, "nextList":Ljava/util/List;
    invoke-static {v4, v5}, Lorg/apache/commons/lang/exception/ExceptionUtils;->removeCommonFrames(Ljava/util/List;Ljava/util/List;)V

    .line 394
    array-length v6, v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v6, v7

    .line 395
    .local v6, "trimmed":I
    if-lez v6, :cond_0

    .line 396
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "\t... "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " more"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 386
    .end local v2    # "curr":[Ljava/lang/String;
    .end local v3    # "next":[Ljava/lang/String;
    .end local v4    # "currList":Ljava/util/List;
    .end local v5    # "nextList":Ljava/util/List;
    .end local v6    # "trimmed":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 403
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
