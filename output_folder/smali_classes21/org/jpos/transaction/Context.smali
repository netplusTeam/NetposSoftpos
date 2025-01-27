.class public Lorg/jpos/transaction/Context;
.super Ljava/lang/Object;
.source "Context.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lorg/jpos/util/Loggeable;
.implements Lorg/jpos/transaction/Pausable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x59637037a989268dL


# instance fields
.field private transient map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private pmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private resumeOnPause:Z

.field private timeout:J

.field private transient trace:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/transaction/Context;->resumeOnPause:Z

    .line 40
    iput-boolean v0, p0, Lorg/jpos/transaction/Context;->trace:Z

    .line 44
    return-void
.end method

.method private getKeyName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "keyObject"    # Ljava/lang/Object;

    .line 398
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/util/Caller;->shortClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    :goto_0
    return-object v0
.end method

.method private declared-synchronized getPMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lorg/jpos/transaction/Context;->pmap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/Context;->pmap:Ljava/util/Map;

    .line 237
    .end local p0    # "this":Lorg/jpos/transaction/Context;
    :cond_0
    iget-object v0, p0, Lorg/jpos/transaction/Context;->pmap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public checkPoint(Ljava/lang/String;)V
    .locals 1
    .param p1, "detail"    # Ljava/lang/String;

    .line 356
    invoke-virtual {p0}, Lorg/jpos/transaction/Context;->getProfiler()Lorg/jpos/util/Profiler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/util/Profiler;->checkPoint(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lorg/jpos/transaction/Context;->clone()Lorg/jpos/transaction/Context;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jpos/transaction/Context;
    .locals 3

    .line 199
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/transaction/Context;

    .line 200
    .local v0, "context":Lorg/jpos/transaction/Context;
    iget-object v1, p0, Lorg/jpos/transaction/Context;->map:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 201
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lorg/jpos/transaction/Context;->map:Ljava/util/Map;

    .line 202
    iget-object v2, p0, Lorg/jpos/transaction/Context;->map:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 204
    :cond_0
    iget-object v1, p0, Lorg/jpos/transaction/Context;->pmap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 205
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lorg/jpos/transaction/Context;->pmap:Ljava/util/Map;

    .line 206
    iget-object v2, p0, Lorg/jpos/transaction/Context;->pmap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_1
    return-object v0

    .line 209
    .end local v0    # "context":Lorg/jpos/transaction/Context;
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "inner":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<context>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, p1, v0}, Lorg/jpos/transaction/Context;->dumpMap(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</context>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method protected dumpEntry(Ljava/io/PrintStream;Ljava/lang/String;Ljava/util/Map$Entry;)V
    .locals 6
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintStream;",
            "Ljava/lang/String;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 260
    .local p3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jpos/transaction/Context;->getKeyName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "key":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 264
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/jpos/transaction/Context;->pmap:Ljava/util/Map;

    const-string v5, ""

    if-eqz v4, :cond_1

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "(P)"

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    aput-object v4, v1, v3

    const-string v3, "%s%s%s: "

    invoke-virtual {p1, v3, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 265
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 266
    .local v1, "value":Ljava/lang/Object;
    instance-of v3, v1, Lorg/jpos/util/Loggeable;

    if-eqz v3, :cond_2

    .line 267
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 268
    move-object v2, v1

    check-cast v2, Lorg/jpos/util/Loggeable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lorg/jpos/util/Loggeable;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 270
    :cond_2
    instance-of v3, v1, Lorg/jdom2/Element;

    if-eqz v3, :cond_3

    .line 271
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 272
    new-instance v2, Lorg/jdom2/output/XMLOutputter;

    invoke-static {}, Lorg/jdom2/output/Format;->getPrettyFormat()Lorg/jdom2/output/Format;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jdom2/output/XMLOutputter;-><init>(Lorg/jdom2/output/Format;)V

    .line 273
    .local v2, "out":Lorg/jdom2/output/XMLOutputter;
    invoke-virtual {v2}, Lorg/jdom2/output/XMLOutputter;->getFormat()Lorg/jdom2/output/Format;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jdom2/output/Format;->setLineSeparator(Ljava/lang/String;)Lorg/jdom2/output/Format;

    .line 275
    :try_start_0
    move-object v3, v1

    check-cast v3, Lorg/jdom2/Element;

    invoke-virtual {v2, v3, p1}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Element;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    goto :goto_1

    .line 276
    :catch_0
    move-exception v3

    .line 277
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 279
    .end local v3    # "ex":Ljava/io/IOException;
    :goto_1
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 280
    .end local v2    # "out":Lorg/jdom2/output/XMLOutputter;
    goto/16 :goto_2

    :cond_3
    instance-of v3, v1, [B

    if-eqz v3, :cond_4

    .line 281
    move-object v2, v1

    check-cast v2, [B

    check-cast v2, [B

    .line 282
    .local v2, "b":[B
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 283
    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hexdump([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 285
    .end local v2    # "b":[B
    goto :goto_2

    .line 286
    :cond_4
    instance-of v3, v1, [S

    if-eqz v3, :cond_5

    .line 287
    move-object v2, v1

    check-cast v2, [S

    check-cast v2, [S

    invoke-static {v2}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 288
    :cond_5
    instance-of v3, v1, [I

    if-eqz v3, :cond_6

    .line 289
    move-object v2, v1

    check-cast v2, [I

    check-cast v2, [I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 290
    :cond_6
    instance-of v3, v1, [J

    if-eqz v3, :cond_7

    .line 291
    move-object v2, v1

    check-cast v2, [J

    check-cast v2, [J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 292
    :cond_7
    instance-of v3, v1, [Ljava/lang/Object;

    if-eqz v3, :cond_8

    .line 293
    move-object v3, v1

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/jpos/iso/ISOUtil;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 295
    :cond_8
    instance-of v2, v1, Lorg/jpos/util/LogEvent;

    if-eqz v2, :cond_9

    .line 296
    move-object v2, v1

    check-cast v2, Lorg/jpos/util/LogEvent;

    invoke-virtual {v2, p1, p2}, Lorg/jpos/util/LogEvent;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 298
    :cond_9
    if-eqz v1, :cond_a

    .line 299
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v2}, Lorg/jpos/util/LogUtil;->dump(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_a
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 302
    return-void

    .line 262
    .end local v1    # "value":Ljava/lang/Object;
    :cond_b
    :goto_3
    return-void
.end method

.method protected dumpMap(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lorg/jpos/transaction/Context;->map:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 252
    .local v0, "cloned":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/jpos/transaction/Context;->map:Ljava/util/Map;

    monitor-enter v1

    .line 253
    :try_start_0
    iget-object v2, p0, Lorg/jpos/transaction/Context;->map:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 254
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lorg/jpos/transaction/Context$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Lorg/jpos/transaction/Context$$ExternalSyntheticLambda0;-><init>(Lorg/jpos/transaction/Context;Ljava/io/PrintStream;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 257
    .end local v0    # "cloned":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 216
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 217
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 218
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/jpos/transaction/Context;

    .line 219
    .local v2, "context":Lorg/jpos/transaction/Context;
    iget-wide v3, p0, Lorg/jpos/transaction/Context;->timeout:J

    iget-wide v5, v2, Lorg/jpos/transaction/Context;->timeout:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/jpos/transaction/Context;->resumeOnPause:Z

    iget-boolean v4, v2, Lorg/jpos/transaction/Context;->resumeOnPause:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lorg/jpos/transaction/Context;->trace:Z

    iget-boolean v4, v2, Lorg/jpos/transaction/Context;->trace:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/jpos/transaction/Context;->map:Ljava/util/Map;

    iget-object v4, v2, Lorg/jpos/transaction/Context;->map:Ljava/util/Map;

    .line 222
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jpos/transaction/Context;->pmap:Ljava/util/Map;

    iget-object v4, v2, Lorg/jpos/transaction/Context;->pmap:Ljava/util/Map;

    .line 223
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 219
    :goto_0
    return v0

    .line 217
    .end local v2    # "context":Lorg/jpos/transaction/Context;
    :cond_3
    :goto_1
    return v1
.end method

.method public evict(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 89
    invoke-direct {p0}, Lorg/jpos/transaction/Context;->getPMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lorg/jpos/transaction/Context;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 160
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 161
    .local v0, "now":J
    add-long v2, v0, p2

    .line 162
    .local v2, "end":J
    :goto_0
    iget-object v4, p0, Lorg/jpos/transaction/Context;->map:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    .local v5, "obj":Ljava/lang/Object;, "TT;"
    if-nez v4, :cond_0

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v6

    cmp-long v4, v6, v2

    if-gez v4, :cond_0

    .line 166
    sub-long v6, v2, v0

    :try_start_1
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    goto :goto_0

    .end local p0    # "this":Lorg/jpos/transaction/Context;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 169
    :cond_0
    monitor-exit p0

    return-object v5

    .line 159
    .end local v0    # "now":J
    .end local v2    # "end":J
    .end local v5    # "obj":Ljava/lang/Object;, "TT;"
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "timeout":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .line 115
    .local p2, "defValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lorg/jpos/transaction/Context;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public declared-synchronized getLogEvent()Lorg/jpos/util/LogEvent;
    .locals 2

    monitor-enter p0

    .line 310
    :try_start_0
    sget-object v0, Lorg/jpos/transaction/ContextConstants;->LOGEVT:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v0}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/transaction/Context;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/util/LogEvent;

    .line 311
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    if-nez v0, :cond_0

    .line 312
    new-instance v1, Lorg/jpos/util/LogEvent;

    invoke-direct {v1}, Lorg/jpos/util/LogEvent;-><init>()V

    move-object v0, v1

    .line 313
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->setNoArmor(Z)V

    .line 314
    sget-object v1, Lorg/jpos/transaction/ContextConstants;->LOGEVT:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v1}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    .end local p0    # "this":Lorg/jpos/transaction/Context;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 309
    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lorg/jpos/transaction/Context;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/transaction/Context;->map:Ljava/util/Map;

    .line 245
    .end local p0    # "this":Lorg/jpos/transaction/Context;
    :cond_0
    iget-object v0, p0, Lorg/jpos/transaction/Context;->map:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPausedTransaction()Lorg/jpos/transaction/PausedTransaction;
    .locals 1

    .line 367
    sget-object v0, Lorg/jpos/transaction/ContextConstants;->PAUSED_TRANSACTION:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v0}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/transaction/Context;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/transaction/PausedTransaction;

    return-object v0
.end method

.method public getPausedTransaction(J)Lorg/jpos/transaction/PausedTransaction;
    .locals 1
    .param p1, "timeout"    # J

    .line 370
    sget-object v0, Lorg/jpos/transaction/ContextConstants;->PAUSED_TRANSACTION:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v0}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/jpos/transaction/Context;->get(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/transaction/PausedTransaction;

    return-object v0
.end method

.method public declared-synchronized getProfiler()Lorg/jpos/util/Profiler;
    .locals 2

    monitor-enter p0

    .line 323
    :try_start_0
    sget-object v0, Lorg/jpos/transaction/ContextConstants;->PROFILER:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v0}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/transaction/Context;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/util/Profiler;

    .line 324
    .local v0, "prof":Lorg/jpos/util/Profiler;
    if-nez v0, :cond_0

    .line 325
    new-instance v1, Lorg/jpos/util/Profiler;

    invoke-direct {v1}, Lorg/jpos/util/Profiler;-><init>()V

    move-object v0, v1

    .line 326
    sget-object v1, Lorg/jpos/transaction/ContextConstants;->PROFILER:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v1}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .end local p0    # "this":Lorg/jpos/transaction/Context;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 322
    .end local v0    # "prof":Lorg/jpos/util/Profiler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResult()Lorg/jpos/rc/Result;
    .locals 2

    monitor-enter p0

    .line 336
    :try_start_0
    sget-object v0, Lorg/jpos/transaction/ContextConstants;->RESULT:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v0}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/transaction/Context;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/rc/Result;

    .line 337
    .local v0, "result":Lorg/jpos/rc/Result;
    if-nez v0, :cond_0

    .line 338
    new-instance v1, Lorg/jpos/rc/Result;

    invoke-direct {v1}, Lorg/jpos/rc/Result;-><init>()V

    move-object v0, v1

    .line 339
    sget-object v1, Lorg/jpos/transaction/ContextConstants;->RESULT:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v1}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    .end local p0    # "this":Lorg/jpos/transaction/Context;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 335
    .end local v0    # "result":Lorg/jpos/rc/Result;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 130
    invoke-virtual {p0}, Lorg/jpos/transaction/Context;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 131
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 132
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 133
    :cond_0
    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 135
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lorg/jpos/transaction/Context;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 140
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 141
    :cond_0
    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 143
    :cond_1
    return-object p2
.end method

.method public getTimeout()J
    .locals 2

    .line 377
    iget-wide v0, p0, Lorg/jpos/transaction/Context;->timeout:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 228
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jpos/transaction/Context;->map:Ljava/util/Map;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/transaction/Context;->pmap:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/jpos/transaction/Context;->timeout:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lorg/jpos/transaction/Context;->resumeOnPause:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lorg/jpos/transaction/Context;->trace:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isTrace()Z
    .locals 1

    .line 389
    iget-boolean v0, p0, Lorg/jpos/transaction/Context;->trace:Z

    return v0
.end method

.method synthetic lambda$dumpMap$0$org-jpos-transaction-Context(Ljava/io/PrintStream;Ljava/lang/String;Ljava/util/Map$Entry;)V
    .locals 0
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/util/Map$Entry;

    .line 255
    invoke-virtual {p0, p1, p2, p3}, Lorg/jpos/transaction/Context;->dumpEntry(Ljava/io/PrintStream;Ljava/lang/String;Ljava/util/Map$Entry;)V

    return-void
.end method

.method public log(Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 349
    invoke-virtual {p0}, Lorg/jpos/transaction/Context;->getMap()Ljava/util/Map;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lorg/jpos/transaction/Context;->getLogEvent()Lorg/jpos/util/LogEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 351
    :cond_0
    return-void
.end method

.method public persist(Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 79
    invoke-virtual {p0, p1}, Lorg/jpos/transaction/Context;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/io/Serializable;

    if-eqz v1, :cond_0

    .line 81
    invoke-direct {p0}, Lorg/jpos/transaction/Context;->getPMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 50
    iget-boolean v0, p0, Lorg/jpos/transaction/Context;->trace:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lorg/jpos/transaction/Context;->getProfiler()Lorg/jpos/util/Profiler;

    move-result-object v0

    const-string v1, "%s=\'%s\' [%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 52
    invoke-direct {p0, p1}, Lorg/jpos/transaction/Context;->getKeyName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v4, 0x2

    invoke-static {v3}, Lorg/jpos/util/Caller;->info(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lorg/jpos/util/Profiler;->checkPoint(Ljava/lang/String;)V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/transaction/Context;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 58
    monitor-exit p0

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "persist"    # Z

    .line 64
    iget-boolean v0, p0, Lorg/jpos/transaction/Context;->trace:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lorg/jpos/transaction/Context;->getProfiler()Lorg/jpos/util/Profiler;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1}, Lorg/jpos/transaction/Context;->getKeyName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v3, 0x2

    invoke-static {v2}, Lorg/jpos/util/Caller;->info(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "%s(P)=\'%s\' [%s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lorg/jpos/util/Profiler;->checkPoint(Ljava/lang/String;)V

    .line 69
    :cond_0
    if-eqz p3, :cond_1

    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 70
    invoke-direct {p0}, Lorg/jpos/transaction/Context;->getPMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_1
    invoke-virtual {p0}, Lorg/jpos/transaction/Context;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 185
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    .line 186
    invoke-virtual {p0}, Lorg/jpos/transaction/Context;->getMap()Ljava/util/Map;

    .line 187
    invoke-direct {p0}, Lorg/jpos/transaction/Context;->getPMap()Ljava/util/Map;

    .line 188
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 189
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 190
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 191
    .local v2, "k":Ljava/lang/String;
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 192
    .local v3, "v":Ljava/lang/Object;
    iget-object v4, p0, Lorg/jpos/transaction/Context;->map:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v4, p0, Lorg/jpos/transaction/Context;->pmap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .end local v2    # "k":Ljava/lang/String;
    .end local v3    # "v":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    .line 123
    :try_start_0
    invoke-direct {p0}, Lorg/jpos/transaction/Context;->getPMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p0}, Lorg/jpos/transaction/Context;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    monitor-exit p0

    return-object v0

    .line 122
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    .end local p0    # "this":Lorg/jpos/transaction/Context;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resume()V
    .locals 3

    monitor-enter p0

    .line 380
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/transaction/Context;->getPausedTransaction()Lorg/jpos/transaction/PausedTransaction;

    move-result-object v0

    .line 381
    .local v0, "pt":Lorg/jpos/transaction/PausedTransaction;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jpos/transaction/PausedTransaction;->isResumed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 382
    invoke-virtual {v0, v1}, Lorg/jpos/transaction/PausedTransaction;->setResumed(Z)V

    .line 383
    invoke-virtual {v0}, Lorg/jpos/transaction/PausedTransaction;->getTransactionManager()Lorg/jpos/transaction/TransactionManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/jpos/transaction/TransactionManager;->push(Ljava/io/Serializable;)V

    goto :goto_0

    .line 385
    .end local p0    # "this":Lorg/jpos/transaction/Context;
    :cond_0
    iput-boolean v1, p0, Lorg/jpos/transaction/Context;->resumeOnPause:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :goto_0
    monitor-exit p0

    return-void

    .line 379
    .end local v0    # "pt":Lorg/jpos/transaction/PausedTransaction;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPausedTransaction(Lorg/jpos/transaction/PausedTransaction;)V
    .locals 1
    .param p1, "p"    # Lorg/jpos/transaction/PausedTransaction;

    .line 359
    sget-object v0, Lorg/jpos/transaction/ContextConstants;->PAUSED_TRANSACTION:Lorg/jpos/transaction/ContextConstants;

    invoke-virtual {v0}, Lorg/jpos/transaction/ContextConstants;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jpos/transaction/Context;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    monitor-enter p0

    .line 361
    :try_start_0
    iget-boolean v0, p0, Lorg/jpos/transaction/Context;->resumeOnPause:Z

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lorg/jpos/transaction/Context;->resume()V

    .line 364
    :cond_0
    monitor-exit p0

    .line 365
    return-void

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .line 374
    iput-wide p1, p0, Lorg/jpos/transaction/Context;->timeout:J

    .line 375
    return-void
.end method

.method public setTrace(Z)V
    .locals 0
    .param p1, "trace"    # Z

    .line 392
    if-eqz p1, :cond_0

    .line 393
    invoke-virtual {p0}, Lorg/jpos/transaction/Context;->getProfiler()Lorg/jpos/util/Profiler;

    .line 394
    :cond_0
    iput-boolean p1, p0, Lorg/jpos/transaction/Context;->trace:Z

    .line 395
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 173
    invoke-direct {p0}, Lorg/jpos/transaction/Context;->getPMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 174
    .local v0, "s":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 175
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 176
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 178
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 179
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 180
    .end local v2    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method
